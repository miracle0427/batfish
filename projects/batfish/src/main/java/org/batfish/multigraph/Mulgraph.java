package org.batfish.mulgraph;

import java.util.HashMap;
import java.util.List;
import java.util.HashSet;
import java.util.Set;
import java.util.ArrayList;
import java.util.Map;
import java.util.Map.Entry;
import org.batfish.datamodel.Configuration;
import org.batfish.symbolic.Graph;
import org.batfish.symbolic.GraphEdge;
import org.batfish.symbolic.Protocol;


public class Mulgraph {

	Graph g;
	Digraph dg;

	Map<String, List<Protocol>> _protocols;
	/** Map of vertex-key to multilayer graph node */
	private Map<String, Node> multigraphNode;
	private Map<String, Set<Node>> phyNodeMap;

    public Mulgraph(Graph g){
    	this.g = g;
    	dg = new Digraph();
    	multigraphNode = new HashMap<>();
    	phyNodeMap = new HashMap<>();
    	buildGraph();
    	System.out.println(dg);
    }

    public void buildGraph() {

    	buildRouterProtocol();
    	buildNodes();
    	buildEdges();
    }

    public void buildEdges() {

    	Node src, dst;
    	String pro, srcnode, dstnode;

		// create edges connecting routing processes
    	for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
    		String router = entry.getKey();
    		List<GraphEdge> edges = entry.getValue();
    		for (Protocol proto : _protocols.get(router)) {
    			for (GraphEdge e : edges) {
    				Configuration conf = g.getConfigurations().get(router);
    				if (g.isEdgeUsed(conf, proto, e)) {
						srcnode = e.getRouter();
						dstnode = e.getPeer();
    					if (proto.isBgp()) {
    						srcnode = srcnode + "-BGP";
    						dstnode = dstnode + "-BGP";
    						src = multigraphNode.get(srcnode);
    						dst = multigraphNode.get(dstnode);
					        EdgeCost ec = new EdgeCost();
					        ec.setAS(1);
					        ec.setAD(10);
							dg.add(src, dst, ec, protocol.BGP);

    					} else if (proto.isOspf()) {
    						srcnode = srcnode + "-OSPF";
    						dstnode = dstnode + "-OSPF";
							src = multigraphNode.get(srcnode);
    						dst = multigraphNode.get(dstnode);
    						EdgeCost ec = new EdgeCost();
					        ec.setOSPF(e.getStart().getOspfCost());
					        ec.setAD(5);
							dg.add(src, dst, ec, protocol.OSPF);
    					} else if (proto.isStatic()) {
							Set<Node> srcRouters = phyNodeMap.get(srcnode);
							Set<Node> dstRouters = phyNodeMap.get(dstnode);

    						srcnode = srcnode + "-STATIC";
    						dstnode = dstnode + "-STATIC";
							src = multigraphNode.get(srcnode);
    						dst = multigraphNode.get(dstnode);
    						EdgeCost ec = new EdgeCost();
					        ec.setAD(50);
							dg.add(src, dst, ec, protocol.STAT);

							for (Node s : srcRouters) {
								if (s.getType() == protocol.STAT)
									continue;
								for (Node d : dstRouters) {
									if (d.getType() == protocol.STAT)
										continue;
									dg.add(s, d, ec, protocol.STAT);									
								}
							}

    					}
    				}
    			}
    		}

    	}

    	// add edges representing redistribution
    	for (Entry<String, Configuration> entry : g.getConfigurations().entrySet()) {
    		String router = entry.getKey();
    		Configuration conf = entry.getValue();
    		for (Protocol proto : getProtocols().get(router)) {
    			srcnode = router + ( (proto.isBgp()) ? "-BGP" : (proto.isOspf()) ? "-OSPF" : (proto.isStatic()) ? "-STATIC" : "");
    			protocol srcType = proto.isBgp() ? protocol.BGP : (proto.isOspf()) ? protocol.OSPF : (proto.isStatic()) ? protocol.STAT : protocol.NONE;
    			Set<Protocol> ps = g.findRedistributedProtocols(conf, pol, proto);
    			for (Protocol p : ps) {
	    			dstnode = router + ( (ps.isBgp()) ? "-BGP" : (ps.isOspf()) ? "-OSPF" : (ps.isStatic()) ? "-STATIC" : "");
	    			protocol dstType = ps.isBgp() ? protocol.BGP : (ps.isOspf()) ? protocol.OSPF : (ps.isStatic()) ? protocol.STAT : protocol.NONE;

					EdgeCost ec = new EdgeCost();
					if (dstType == protocol.BGP) {
						ec.setAD(10);
						dg.add(src, dst, ec, protocol.REDISBO);
					}
					else if (dstType == protocol.OSPF) {
						ec.setAD(5);
						dg.add(src, dst, ec, protocol.REDISBO);
					} else if (dstType == protocol.STAT) {
						ec.setAD(50);
					}

					

    			}
    		}
    	}

    }


    public void buildNodes() {

    	Node src, dst;
    	String pro, srcnode, dstnode;

    	// create physical router to logical router-process mapping
    	for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
    		String router = entry.getKey();
    		phyNodeMap.put(router, new HashSet<Node>());
    	}

    	// create nodes representing routing processes
    	for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
    		String router = entry.getKey();
    		List<GraphEdge> edges = entry.getValue();
    		for (Protocol proto : _protocols.get(router)) {
    			for (GraphEdge e : edges) {
    				Configuration conf = g.getConfigurations().get(router);
    				if (g.isEdgeUsed(conf, proto, e)) {
						srcnode = e.getRouter();
						dstnode = e.getPeer();
    					if (proto.isBgp()) {
    						srcnode = srcnode + "-BGP";
    						dstnode = dstnode + "-BGP";
    						if (multigraphNode.containsKey(srcnode))
    							src = multigraphNode.get(srcnode);
    						else {
    							src = new Node(srcnode, protocol.BGP);
    							dg.add(src);
    							multigraphNode.put(srcnode, src);
    						}
    						if (multigraphNode.containsKey(dstnode))
    							dst = multigraphNode.get(dstnode);
    						else {
    							dst = new Node(dstnode, protocol.BGP);
    							dg.add(dst);
    							multigraphNode.put(dstnode, dst);
    						}
							phyNodeMap.get(e.getRouter()).add(src);
							phyNodeMap.get(e.getPeer()).add(dst);

    					} else if (proto.isOspf()) {
    						srcnode = srcnode + "-OSPF";
    						dstnode = dstnode + "-OSPF";
							
    						if (multigraphNode.containsKey(srcnode))
    							src = multigraphNode.get(srcnode);
    						else {
    							src = new Node(srcnode, protocol.OSPF);
    							dg.add(src);
    							multigraphNode.put(srcnode, src);
    						}
    						if (multigraphNode.containsKey(dstnode))
    							dst = multigraphNode.get(dstnode);
    						else {
    							dst = new Node(dstnode, protocol.OSPF);
    							dg.add(dst);
    							multigraphNode.put(dstnode, dst);
    						}
							phyNodeMap.get(e.getRouter()).add(src);
							phyNodeMap.get(e.getPeer()).add(dst);

    					} else if (proto.isStatic()) {
    						srcnode = srcnode + "-STATIC";
    						dstnode = dstnode + "-STATIC";
							
    						if (multigraphNode.containsKey(srcnode))
    							src = multigraphNode.get(srcnode);
    						else {
    							src = new Node(srcnode, protocol.STAT);
    							dg.add(src);
    							multigraphNode.put(srcnode, src);
    						}
    						if (multigraphNode.containsKey(dstnode))
    							dst = multigraphNode.get(dstnode);
    						else {
    							dst = new Node(dstnode, protocol.STAT);
    							dg.add(dst);
    							multigraphNode.put(dstnode, dst);
    						}
							phyNodeMap.get(e.getRouter()).add(src);
							phyNodeMap.get(e.getPeer()).add(dst);
    					}
    				}
    			}
    		}

    	}

    }


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
