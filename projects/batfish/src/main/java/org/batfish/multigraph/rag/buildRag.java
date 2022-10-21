package org.batfish.multigraph.rag;

import lombok.Data;
import org.batfish.datamodel.*;
import org.batfish.datamodel.routing_policy.RoutingPolicy;
import org.batfish.datamodel.routing_policy.expr.MatchPrefixSet;
import org.batfish.datamodel.routing_policy.expr.NamedPrefixSet;
import org.batfish.datamodel.routing_policy.statement.If;
import org.batfish.datamodel.routing_policy.statement.Statement;
import org.batfish.multigraph.graph.EdgeCost;
import org.batfish.multigraph.graph.protocol;
import org.batfish.symbolic.Graph;
import org.batfish.symbolic.GraphEdge;
import org.batfish.symbolic.Protocol;


import java.util.*;
@Data
public class buildRag implements Runnable {
	private Graph g;
	private Rag rag;
	private Map<String, List<Protocol>> protocols;
    private Map<String, RagNode> multigraphNode;
    private Map<String, Set<RagNode>> phyNodeMap;
    private IpWildcard srcIp;
    private IpWildcard dstIp;
    private RagNode srcTC = null;
    private RagNode dstTC = null;
    private String srcNodeName = null;
    private String dstNodeName = null;
    private long generateTime = 0;
    private boolean correctSrcDst = false;

    public buildRag(Graph g, IpWildcard src, IpWildcard dst) {
        this(g, null, null, src, dst);
    }

    public buildRag(Graph g, String src, String dst, IpWildcard srcip, IpWildcard dstip) {
        this.g = g;
        rag = new Rag();
        srcNodeName = src;
        dstNodeName = dst;
        srcIp = srcip;
        dstIp = dstip;
        multigraphNode = new HashMap<>();
        phyNodeMap = new HashMap<>();
        protocols = new HashMap<>();
    }

    private void setNodes() {

        //System.out.println(srcNodeName + "\t" + dstNodeName);

        if (srcNodeName == null || "".equals(srcNodeName) || dstNodeName == null || "".equals(dstNodeName)) {
            for (Map.Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
                String router = entry.getKey();
                Configuration conf = g.getConfigurations().get(router);
                for (Protocol proto : protocols.get(router)) {
                    Set<Prefix> prefixes = Graph.getOriginatedNetworks(conf, proto);
                    //System.out.println(router + "\t" + prefixes);
                    for (Prefix pp : prefixes) {
                        if (pp.containsPrefix(srcIp.toPrefix())) {
                            srcNodeName = router;
                        }
                        if (pp.containsPrefix(dstIp.toPrefix())) {
                            dstNodeName = router;
                        }
                    }
                }
            }
        }
        //System.out.println(phyNodeMap);
        if (srcNodeName != null && phyNodeMap.containsKey(srcNodeName)) {
            //System.out.println(srcNodeName);
            srcTC = new RagNode(srcNodeName, protocol.SRC);
            rag.addVertex(srcTC);
            Set<RagNode> allnode = phyNodeMap.get(srcNodeName);
            for (RagNode anode : allnode) {
                //rag.add(srcTC, anode, protocol.SRC);
                rag.addEdge(anode, srcTC, protocol.SRC);
            }
        }
        if (dstNodeName != null && phyNodeMap.containsKey(dstNodeName)) {
            //System.out.println(dstNodeName);
            dstTC = new RagNode(dstNodeName, protocol.DST);
            rag.addVertex(dstTC);
            Set<RagNode> allnode = phyNodeMap.get(dstNodeName);
            for (RagNode anode : allnode) {
                //rag.add(anode, dstTC, protocol.DST);
                rag.addEdge(dstTC, anode, protocol.DST);
            }
        }
        correctSrcDst = false;
        if (srcTC!=null && dstTC!=null) {
            rag.setSrcTCNode(srcTC);
            rag.setDstTCNode(dstTC);
            correctSrcDst = true;
        }
    }

    private boolean blockFilter(RoutingPolicy rp, Configuration conf) {
        if (rp == null)
            return false;
        for ( Statement st : rp.getStatements() ) {
            if ( st instanceof If ) {
                If i = (If) st;
                if (i.getGuard() instanceof MatchPrefixSet) {
                    MatchPrefixSet m = (MatchPrefixSet) i.getGuard();
                    if (m.getPrefixSet() instanceof NamedPrefixSet) {
                        NamedPrefixSet x = (NamedPrefixSet) m.getPrefixSet();
                        RouteFilterList fl = conf.getRouteFilterLists().get(x.getName());
                        if (fl != null) {
                            for ( RouteFilterLine line : fl.getLines() ) {
                                if (line.getAction() == LineAction.DENY && line.getIpWildcard().intersects(dstIp))
                                    return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    private void buildRagEdges() {

    	RagNode src, dst;
    	String srcnode, dstnode, srcname, dstname;

		// create edges connecting routing processes
    	for (Map.Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
    		String router = entry.getKey();
    		List<GraphEdge> edges = entry.getValue();
    		Configuration conf = g.getConfigurations().get(router);

    		for (Protocol proto : protocols.get(router)) {
    			for (GraphEdge e : edges) {
    				if (g.isEdgeUsed(conf, proto, e)) {
						srcnode = e.getRouter();
						dstnode = e.getPeer();

						if (srcnode == null || dstnode == null)
							continue;
    					if (proto.isBgp()) {
                            RoutingPolicy importRP = g.findImportRoutingPolicy(router, proto, e);
                            RoutingPolicy exportRP = g.findExportRoutingPolicy(router, proto, e);
                            /*
                            if (importRP != null)
                                System.out.println(router + "\tImport\t" + importRP.getStatements());
                            if (exportRP != null)
                                System.out.println(router + "\tExport\t" + exportRP.getStatements());*/
                            if(blockFilter(importRP, conf) || blockFilter(exportRP, conf)) {
                                //System.out.print("Filter blocks it");
                                continue;
                            }
                            EdgeCost ec = new EdgeCost();
                            srcnode = bgpName(srcnode);
                            dstnode = bgpName(dstnode);
                            ec.setAS(1);
              				src = multigraphNode.get(srcnode);
    						dst = multigraphNode.get(dstnode);
                            if (g.getIbgpNeighbors().containsKey(e)) {
                                rag.addEdge(src, dst, protocol.IBGP);
                            } else {
                                rag.addEdge(src, dst, protocol.BGP);
                            }
                            
    					} else if (proto.isOspf()) {
    						srcnode = ospfName(srcnode);
    						dstnode = ospfName(dstnode);
							src = multigraphNode.get(srcnode);
    						dst = multigraphNode.get(dstnode);
    						rag.addEdge(src, dst, protocol.OSPF);
                        }
    				}
    			}
    		}
    	}


    	// add edges representing redistribution
    	for (Map.Entry<String, Configuration> entry : g.getConfigurations().entrySet()) {
    		String router = entry.getKey();
    		Configuration conf = entry.getValue();
    		for (Protocol proto : protocols.get(router)) {
                protocol srcType = protocol.NONE;
                if (proto.isBgp()) {
                    srcnode = bgpName(router);
                    srcType = protocol.BGP;
                }else if (proto.isOspf()) {
                    srcnode = ospfName(router);
                    srcType = protocol.OSPF;
                } else {
                    continue;
                }
    			src = multigraphNode.get(srcnode);
    			RoutingPolicy pol = Graph.findCommonRoutingPolicy(conf, proto);
    			if (pol == null) {
    				continue;
    			}
    			Set<Protocol> ps = g.findRedistributedProtocols(conf, pol, proto);

    			for (Protocol p : ps) {
                    protocol dstType = protocol.NONE;
                    if (p.isBgp()) {
                        dstnode = bgpName(router);
                        dstType = protocol.BGP;
                    }else if (p.isOspf()) {
                        dstnode = ospfName(router);
                        dstType = protocol.OSPF;
                    } else {
                        continue;
                    }

	    			dst = multigraphNode.get(dstnode);
                    if (src == null || dst == null) {
                            continue;
                    }
					rag.addEdge(src, dst, protocol.BGP);
    			}
    		}
    	}
    }

    private void buildRagNodes() {
        Map<String, Configuration> allConf = g.getConfigurations();
        RagNode protNode = null;
        String protName = null;
        for (String router : allConf.keySet()) {
            Configuration conf = g.getConfigurations().get(router);
            if (conf.getDeviceType() == DeviceType.SWITCH) {
                continue;
            }
            for (Protocol proto : protocols.get(router)) {

                if (proto.isBgp()) {
                    protName = bgpName(router);
                    protNode = new RagNode(protName, protocol.BGP);
                    rag.addVertex(protNode);
                    multigraphNode.put(protName, protNode);
                    phyNodeMap.get(router).add(protNode);
                } else if (proto.isOspf()) {
                    protName = ospfName(router);
                    protNode = new RagNode(protName, protocol.OSPF);
                    rag.addVertex(protNode);
                    multigraphNode.put(protName, protNode);
                    phyNodeMap.get(router).add(protNode);
                }
            }
        }
    }

    private String bgpName(String router) {
        return router+"-BGP";
    }

    private String ospfName(String router) {
        return router+"-OSPF";
    }
    private void initialize() {

        // create physical router to logical router-process mapping
        //System.out.println("Original Routers");
        for (Map.Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
            String router = entry.getKey();
            phyNodeMap.put(router, new HashSet<>());
        }
    }

    private void buildRouterProtocol() {
    	// create physical router to protocols mapping
    	g.getConfigurations().forEach(
    		(router, conf) -> {
                protocols.put(router, new ArrayList<>());
                List<Protocol> protos = protocols.get(router);
                if(conf.getDefaultVrf().getOspfProcess() != null) {
                    protos.add(Protocol.OSPF);
                }
                if(conf.getDefaultVrf().getBgpProcess() != null) {
                    protos.add(Protocol.BGP);
                }
                if(!conf.getDefaultVrf().getStaticRoutes().isEmpty()) {
                    protos.add(Protocol.STATIC);
                }
            });
    }
    private void buildGraph() {
        long startTime = System.nanoTime();
        buildRouterProtocol();
        initialize();
        buildRagNodes();
        buildRagEdges();
        long endTime = System.nanoTime();
        setNodes();
        generateTime = endTime - startTime;
        System.out.println(rag);
        System.out.println("src: " + srcTC + "dst: " + dstTC);
        System.out.println("Generate Time: " + generateTime/1000000 + " ms");
    }

    private void draw() {
        System.out.println("Edges");
        for ( RagNode r : rag.getNeighbors().keySet()) {
            for ( RagEdge e : rag.getNeighbors().get(r)) {
                System.out.println(e.getSrc().getId() + "\t" + e.getDst().getId());
            }
        }
    }

    private void printtaint() {
        System.out.println("Taint information");
        for ( RagNode r : rag.getNeighbors().keySet()) {
            System.out.println(r.getId() + "\t" + r.isTaint());
        }
    }

    public void run() {
        buildGraph();
        rag.taint();

        draw();
        printtaint();

        System.out.println("Number of nodes: " + rag.getAllVertices().size());
        System.out.println("Number of edges: " + rag.getNumberOfEdges());
        System.out.println("Total edgecost var: " + rag.getNumberOfEdges() * 7);
    }
}
