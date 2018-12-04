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

    	Node src, dst;
    	String pro, srcnode, dstnode;

    	buildRouterProtocol();

    	for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
    		String router = entry.getKey();
    		phyNodeMap.put(router, new HashSet<Node>());
    	}


    	for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
    		String router = entry.getKey();
    		List<GraphEdge> edges = entry.getValue();
    		for (Protocol proto : _protocols.get(router)) {
    			for (GraphEdge e : edges) {
    				Configuration conf = g.getConfigurations().get(router);
    				if (g.isEdgeUsed(conf, proto, e)) {
    					System.out.println(e.getRouter() + " " + e.getPeer() + " " + proto);
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
					        EdgeCost ec = new EdgeCost();
					        ec.setAS(1);
					        ec.setAD(10);
							dg.add(src, dst, ec, protocol.BGP);
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
					        EdgeCost ec = new EdgeCost();
					        ec.setOSPF(e.getStart().getOspfCost());
					        ec.setAD(5);
							dg.add(src, dst, ec, protocol.OSPF);
							phyNodeMap.get(e.getRouter()).add(src);
							phyNodeMap.get(e.getPeer()).add(dst);

    					} else if (proto.isStatic()) {
    						System.out.println("Static " + srcnode + " - " + dstnode);
    					}
    				}
    			}
    		}

    	}

    }

    public void buildRouterProtocol() {

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
