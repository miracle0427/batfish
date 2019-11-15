package org.batfish.mulgraph;

import java.util.HashMap;
import java.util.List;
import java.util.HashSet;
import java.util.Set;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;
import java.util.Map.Entry;

import org.batfish.datamodel.Configuration;
import org.batfish.datamodel.DeviceType;
import org.batfish.datamodel.IpWildcard;

import org.batfish.symbolic.Graph;
import org.batfish.symbolic.GraphEdge;
import org.batfish.symbolic.Protocol;
import org.batfish.datamodel.routing_policy.RoutingPolicy;
import org.batfish.datamodel.routing_policy.expr.LiteralInt;
import org.batfish.datamodel.routing_policy.expr.LiteralLong;
import org.batfish.datamodel.routing_policy.statement.Statement;
import org.batfish.datamodel.routing_policy.statement.If;
import org.batfish.datamodel.routing_policy.statement.SetLocalPreference;
import org.batfish.datamodel.routing_policy.statement.SetWeight;
import org.batfish.datamodel.routing_policy.statement.SetMetric;
import org.batfish.datamodel.routing_policy.statement.SetAdministrativeCost;

import org.batfish.datamodel.routing_policy.expr.MatchPrefixSet;
import org.batfish.datamodel.routing_policy.expr.NamedPrefixSet;
import org.batfish.datamodel.RouteFilterList;
import org.batfish.datamodel.RouteFilterLine;
import org.batfish.datamodel.LineAction;

import org.batfish.datamodel.IpAccessList;
import org.batfish.datamodel.IpAccessListLine;
import org.batfish.datamodel.acl.MatchHeaderSpace;
import org.batfish.datamodel.Interface;
import org.batfish.datamodel.IpWildcardIpSpace;
import org.batfish.datamodel.Prefix;


import org.batfish.datamodel.routing_policy.expr.Conjunction;
import org.batfish.datamodel.routing_policy.expr.CallExpr;
import org.batfish.datamodel.routing_policy.expr.BooleanExpr;
import org.batfish.datamodel.routing_policy.expr.Disjunction;
import org.batfish.datamodel.routing_policy.expr.Conjunction;
import org.batfish.datamodel.routing_policy.expr.WithEnvironmentExpr;

import org.batfish.datamodel.StaticRoute;

import org.batfish.symbolic.AstVisitor;

import java.util.concurrent.ConcurrentHashMap;

public class buildTpg implements Runnable {
	
	Graph g;
	Tpg tpg;
    buildRag ragBuild;
    Rag rpg;

	Map<String, List<Protocol>> _protocols;
    private Map<String, TpgNode> multigraphNode;
    private Map<String, Set<TpgNode>> phyNodeMap;
    private Map<String, Set<Edge>> phyEdgeMap;

    IpWildcard srcIp;
    IpWildcard dstIp;

    public TpgNode srcTC = null;
    public TpgNode dstTC = null;

    String srcNodeName = null;
    String dstNodeName = null;

    long generateTime = 0;

    int countmap = 0;

    ConcurrentHashMap<String, Tpg> conMap = null;

    boolean correctSrcDst = false;

    public buildTpg(Graph g, IpWildcard src, IpWildcard dst,
     ConcurrentHashMap<String, Tpg> conncMap) {
        this.g = g;
        tpg = new Tpg();
        srcIp = src;
        dstIp = dst;
        multigraphNode = new HashMap<>();
        phyNodeMap = new HashMap<>();
        phyEdgeMap = new HashMap<>();
        ragBuild = new buildRag(g, srcIp, dstIp);
        conMap = conncMap;
    }

    public buildTpg(Graph g, String src, String dst, IpWildcard srcip, IpWildcard dstip,
     ConcurrentHashMap<String, Tpg> conncMap) {
        this.g = g;
        tpg = new Tpg();
        srcNodeName = src;
        dstNodeName = dst;
        srcIp = srcip;
        dstIp = dstip;
        multigraphNode = new HashMap<>();
        phyNodeMap = new HashMap<>();
        phyEdgeMap = new HashMap<>();
        ragBuild = new buildRag(g, srcNodeName, dstNodeName, srcIp, dstIp);
        conMap = conncMap;
    }

    public Tpg getTpg() {
    	return tpg;
    }

    public long returnGenerateTime() {
        return generateTime;
    }

    public void buildGraph() {
        //long startTime = System.nanoTime();
        ragBuild.run();
        rpg = ragBuild.getRag();
        buildRouterProtocol();
        initialize();
    	buildTpgNodes();
    	buildTpgEdges();
        //long endTime = System.nanoTime();
        //setNodes();
        String key = srcIp.toString() + "-" + dstIp.toString();
        if (conMap != null && correctSrcDst == true) {
            conMap.put(key, tpg);
        }

        //generateTime = endTime - startTime;
        //System.out.println(Tpg);
        //System.out.println("src: " + srcTC + "dst: " + dstTC);
        //System.out.println("Generate Time: " + generateTime/1000000 + " ms");
    }

    public void run() {
        buildGraph();
        draw();
        /*
        System.out.println("Number of nodes: " + tpg.getVertices().size());
        System.out.println("Number of edges: " + tpg.getNumberOfEdges());
        System.out.println("Total edgecost var: " + tpg.getNumberOfEdges() * 7);
        */

    }
    public void draw() {
        System.out.println("Edges");
        for ( TpgNode n : tpg.getNeighborMap().keySet()) {
            System.out.println(n+"\t"+tpg.getNeighborMap().get(n));
        }
        /*
        System.out.println("Edges");
        for ( TpgNode r : tpg.getNeighborMap().keySet()) {
            for ( TpgEdge e : tpg.getNeighborMap().get(r)) {
                System.out.println(e.getSrc().getId() + "\t" + e.getDst().getId());
            }
        }
        */
    }

    public void initialize() {

        // create physical router to logical router-process mapping
        //System.out.println("Original Routers");
        for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
            String router = entry.getKey();
            phyNodeMap.put(router, new HashSet<TpgNode>());
        }

    }

    public void buildTpgNodes() {

        Map<String, Configuration> allConf = g.getConfigurations();
        TpgNode protNode = null;
        String protName = null;
        for (String router : allConf.keySet()) {
            Configuration conf = g.getConfigurations().get(router);
            if (conf.getDeviceType() == DeviceType.SWITCH) {
                continue;
            }
            protName = createName(router, "RIB");
            protNode = new TpgNode(protName, protocol.RIB);
            tpg.add(protNode);
            multigraphNode.put(protName, protNode);
            phyNodeMap.get(router).add(protNode);

            if (_protocols.get(router).contains(Protocol.OSPF)) {
                protName = createName(router, "OSPF");
                protNode = new TpgNode(protName, protocol.OSPF);
                tpg.add(protNode);
                multigraphNode.put(protName, protNode);
                phyNodeMap.get(router).add(protNode);
            }
            if (_protocols.get(router).contains(Protocol.BGP)) {
                protName = createName(router, "BGP");
                protNode = new TpgNode(protName, protocol.BGP);
                tpg.add(protNode);
                multigraphNode.put(protName, protNode);
                phyNodeMap.get(router).add(protNode);
            }
        }
        //System.out.println("Edges interface");
        for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
            String router = entry.getKey();
            List<GraphEdge> edges = entry.getValue();
            Configuration conf = g.getConfigurations().get(router);

            //System.out.println("VRF " + conf.getVrfs());
            for (GraphEdge e : edges) {
                //System.out.println(e.getStart()+"\t"+e.getEnd());
                if (g.isEdgeUsed(conf, Protocol.BGP, e)) {
                    if (e.getStart()!=null && e.getEnd()!=null) {
                        protName = bgpName(e.getRouter(), e.getPeer());
                        protNode = new TpgNode(protName, protocol.BGP);
                        tpg.add(protNode);
                        multigraphNode.put(protName, protNode);
                        phyNodeMap.get(router).add(protNode);
                    }
                }
                if (e.getStart()!=null) {
                    protName = intfName(e.getRouter(), e.getStart().getName());
                    addInterface(e.getRouter(), protName);
                }
                if (e.getEnd()!=null) {
                    protName = intfName(e.getPeer(), e.getEnd().getName());
                    addInterface(e.getRouter(), protName);
                }
            }
        }
        
    }

    public void buildTpgEdges() {

        String protName = null, protName1 = null, protName2 = null;
        for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
            String router = entry.getKey();
            List<GraphEdge> edges = entry.getValue();
            Configuration conf = g.getConfigurations().get(router);

            //System.out.println("VRF " + conf.getVrfs());
            for (GraphEdge e : edges) {
                //System.out.println(e.getStart()+"\t"+e.getEnd());
                if (e.getStart()!=null) {
                    protName = intfName(e.getRouter(), e.getStart().getName());
                    addIntraIntfEdge(protName);
                    addTpgEdge(protName+"_I", createName(router, "RIB"), protocol.RIB);

                    if (g.isEdgeUsed(conf, Protocol.OSPF, e)) {
                        addTpgEdge(createName(router, "OSPF"), protName+"_O", protocol.OSPF);    
                    }

                }
                if (e.getEnd()!=null) {
                    protName = intfName(e.getPeer(), e.getEnd().getName());
                    addIntraIntfEdge(protName);
                    //addTpgEdge(protName+"_I", createName(router, "RIB"), protocol.RIB);
                }
                if (e.getStart()!=null && e.getEnd()!=null) {
                    protName1 = intfName(e.getRouter(), e.getStart().getName());
                    protName2 = intfName(e.getPeer(), e.getEnd().getName());
                    addInterIntfEdge(protName1, protName2);

                    if (g.isEdgeUsed(conf, Protocol.BGP, e)) {
                        protName = bgpName(e.getRouter(), e.getPeer());
                        addTpgEdge(createName(router, "BGP"), protName, protocol.BGP);    
                    }
                }
            }
        }

        Map<String, Configuration> allConf = g.getConfigurations();
        for (String router : allConf.keySet()) {
            if (_protocols.get(router).contains(Protocol.OSPF)) {
                addTpgEdge(createName(router, "RIB"), createName(router, "OSPF"), protocol.RIB);
            }
            if (_protocols.get(router).contains(Protocol.BGP)) {
                addTpgEdge(createName(router, "RIB"), createName(router, "BGP"), protocol.RIB);
            }
        }


    }

    public void addTpgEdge(String name1, String name2, protocol prot) {
        TpgNode in = multigraphNode.get(name1);
        TpgNode out = multigraphNode.get(name2);
        tpg.add(in, out, new EdgeCost(), prot);
    }

    public void addIntraIntfEdge(String name) {
        TpgNode in = multigraphNode.get(name+"_I");
        TpgNode out = multigraphNode.get(name+"_O");
        tpg.add(in, out, new EdgeCost(), protocol.INTF);
    }

    public void addInterIntfEdge(String name1, String name2) {
        TpgNode in = multigraphNode.get(name1+"_O");
        TpgNode out = multigraphNode.get(name2+"_I");
        tpg.add(in, out, new EdgeCost(), protocol.INTF);
    }


    public void addInterface(String router, String protName) {
        String inName = protName+"_I";
        if (multigraphNode.containsKey(inName))
            return;
        TpgNode protNode = new TpgNode(inName, protocol.INTF);
        tpg.add(protNode);
        multigraphNode.put(inName, protNode);
        phyNodeMap.get(router).add(protNode);                    

        String outName = protName+"_O";
        protNode = new TpgNode(outName, protocol.INTF);
        tpg.add(protNode);
        multigraphNode.put(outName, protNode);
        phyNodeMap.get(router).add(protNode);                    
    }

    public String createName(String router, String prefix) {
        return router+"-"+prefix;
    }

    public String bgpName(String router) {
        return router+"-BGP";
    }

    public String bgpName(String router, String next) {
        return router+"-BGP_"+next;
    }

    public String intfName(String router, String intf) {
        return router+"_"+intf;
    }

    public String ospfName(String router) {
        return router+"-OSPF";
    }

    /*
    public void setNodes() {

        //System.out.println(srcNodeName + "\t" + dstNodeName);

        if (srcNodeName == null || srcNodeName == "" || dstNodeName == null || dstNodeName == "") {
            for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
                String router = entry.getKey();
                Configuration conf = g.getConfigurations().get(router);
                for (Protocol proto : _protocols.get(router)) {
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
            srcTC = new TpgNode(srcNodeName, protocol.SRC);
            tpg.add(srcTC);
            Set<TpgNode> allnode = phyNodeMap.get(srcNodeName);
            for (TpgNode anode : allnode) {
                //tpg.add(srcTC, anode, protocol.SRC);
                tpg.add(anode, srcTC, protocol.SRC);
            }
        }
        if (dstNodeName != null && phyNodeMap.containsKey(dstNodeName)) {
            //System.out.println(dstNodeName);
            dstTC = new TpgNode(dstNodeName, protocol.DST);
            tpg.add(dstTC);
            Set<TpgNode> allnode = phyNodeMap.get(dstNodeName);
            for (TpgNode anode : allnode) {
                //tpg.add(anode, dstTC, protocol.DST);
                tpg.add(dstTC, anode, protocol.DST);
            }

        }
        correctSrcDst = false;
        if (srcTC!=null && dstTC!=null) {
            tpg.setSourceDest(srcTC, dstTC);
            correctSrcDst = true;
        }
    }

    public boolean blockFilter(RoutingPolicy rp, Configuration conf) {
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

    public void buildTpgEdges() {

    	TpgNode src, dst;
    	String pro, srcnode, dstnode, srcname, dstname;

		// create edges connecting routing processes
    	for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
    		String router = entry.getKey();
    		List<GraphEdge> edges = entry.getValue();
    		Configuration conf = g.getConfigurations().get(router);

    		for (Protocol proto : _protocols.get(router)) {
    			for (GraphEdge e : edges) {
    				if (g.isEdgeUsed(conf, proto, e)) {
						srcnode = e.getRouter();
						dstnode = e.getPeer();
                        srcname = e.getRouter();
                        dstname = e.getPeer();

						if (srcnode == null || dstnode == null)
							continue;
    					if (proto.isBgp()) {
                            RoutingPolicy importRP = g.findImportRoutingPolicy(router, proto, e);
                            RoutingPolicy exportRP = g.findExportRoutingPolicy(router, proto, e);
                            
                            //if (importRP != null)
                            //    System.out.println(router + "\tImport\t" + importRP.getStatements());
                            //if (exportRP != null)
                            //    System.out.println(router + "\tExport\t" + exportRP.getStatements());

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
                                tpg.add(src, dst, protocol.IBGP);
                            } else {
                                tpg.add(src, dst, protocol.BGP);
                            }
                            
    					} else if (proto.isOspf()) {
    						srcnode = ospfName(srcnode);
    						dstnode = ospfName(dstnode);
							src = multigraphNode.get(srcnode);
    						dst = multigraphNode.get(dstnode);
    						tpg.add(src, dst, protocol.OSPF);
    					}
    				}
    			}
    		}
    	}


    	// add edges representing redistribution
    	for (Entry<String, Configuration> entry : g.getConfigurations().entrySet()) {
    		String router = entry.getKey();
    		Configuration conf = entry.getValue();
    		for (Protocol proto : _protocols.get(router)) {
                protocol srcType = protocol.NONE;
                if (proto.isBgp()) {
                    srcnode = bgpName(router);
                    srcType = protocol.BGP;
                }
                else if (proto.isOspf()) {
                    srcnode = "OSPF";
                    srcType = protocol.OSPF;
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
                    }
                    else if (p.isOspf()) {
                        dstnode = ospfName(router);
                        dstType = protocol.OSPF;
                    }

	    			dst = multigraphNode.get(dstnode);
                    if (src == null || dst == null) {
                            continue;
                    }
					tpg.add(src, dst, protocol.BGP);
    			}
    		}
    	}
    }

    */
    public void buildRouterProtocol() {
    	// create physical router to protocols mapping
    	_protocols = new HashMap<>();
    	g.getConfigurations().forEach((router, conf) -> _protocols.put(router, new ArrayList<>()));
    	g.getConfigurations()
    	.forEach(
    		(router, conf) -> {
              List<Protocol> protos = _protocols.get(router);
              if (conf.getDefaultVrf().getOspfProcess() != null) {
                protos.add(Protocol.OSPF);
              }
              if (conf.getDefaultVrf().getBgpProcess() != null) {
                protos.add(Protocol.BGP);
              }
              if (!conf.getDefaultVrf().getStaticRoutes().isEmpty()) {
                protos.add(Protocol.STATIC);
              }
        });
    }
}
