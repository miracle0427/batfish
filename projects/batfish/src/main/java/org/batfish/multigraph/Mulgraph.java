package org.batfish.mulgraph;

import static org.batfish.symbolic.CommunityVarCollector.collectCommunityVars;

import java.util.HashMap;
import java.util.List;
import java.util.HashSet;
import java.util.Set;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;
import java.util.Map.Entry;

import org.batfish.datamodel.Configuration;
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


import org.batfish.datamodel.routing_policy.statement.AddCommunity;
import org.batfish.datamodel.routing_policy.statement.DeleteCommunity;
import org.batfish.datamodel.routing_policy.statement.RetainCommunity;
import org.batfish.datamodel.routing_policy.statement.SetCommunity;
import org.batfish.datamodel.routing_policy.expr.MatchCommunitySet;
import org.batfish.datamodel.routing_policy.expr.CommunitySetExpr;
import org.batfish.datamodel.routing_policy.expr.Conjunction;
import org.batfish.datamodel.routing_policy.expr.CallExpr;
import org.batfish.datamodel.routing_policy.expr.BooleanExpr;

import org.batfish.symbolic.AstVisitor;
import org.batfish.symbolic.CommunityVar;


public class Mulgraph {
	
	Graph g;
	Digraph dg;

	Map<String, List<Protocol>> _protocols;
	// Map of vertex-key to multilayer graph node 
	private Map<String, Node> multigraphNode;
    private Map<String, Set<Node>> phyNodeMap;
    private Map<String, Set<Edge>> phyEdgeMap;


    public Map<String, Long> _communityID;
    public Map<String, Set<Long>> _actCommunity;
    public Map<String, Set<Long>> _addCommunity;
    public Map<String, Set<Long>> _removeCommunity;


    IpWildcard srcIp;
    IpWildcard dstIp;

    Node srcNode;
    Node dstNode;

    public Mulgraph(Graph g, IpWildcard src, IpWildcard dst) {//, String src, String dst){
    	this.g = g;
    	dg = new Digraph();

        srcIp = src;
        dstIp = dst;

    	multigraphNode = new HashMap<>();
    	phyNodeMap = new HashMap<>();
        phyEdgeMap = new HashMap<>();

        _communityID = new TreeMap<>();
        _actCommunity = new TreeMap<>();
        _addCommunity = new TreeMap<>();
        _removeCommunity = new TreeMap<>();


    	buildGraph();
    	System.out.println(dg);
		/*for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
			String router = entry.getKey();
			List<GraphEdge> edges = entry.getValue();
			for (GraphEdge e : edges) {
				if (e.getStart()!=null)
					System.out.print(e.getStart().getVrfName() + "\t");
				if (e.getEnd()!=null)
					System.out.println(e.getEnd().getVrfName() + "\t");
			}
		}*/

    	/*
    	System.out.println("Community Map " + g._communityID);
  		System.out.println("ACT " + g._actCommunity);
  		System.out.println("ADD " + g._addCommunity);
  		System.out.println("REMOVE " + g._removeCommunity);*/
    }

    public Digraph getDigraph() {
    	return dg;
    }

    public void buildGraph() {
        buildRouterProtocol();
        buildCommunity();
    	buildNodes();
    	buildEdges();
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

    public boolean blockAcl(GraphEdge ge) {
        Interface i = ge.getStart();

        IpAccessList outbound = i.getOutgoingFilter();

        if (outbound != null) {
            for ( IpAccessListLine line : outbound.getLines() ) {
                if (line.getAction() == LineAction.DENY) {
                    if ( line.getMatchCondition() instanceof MatchHeaderSpace) {
                        MatchHeaderSpace mhs = (MatchHeaderSpace)line.getMatchCondition();

                        if (mhs.getHeaderspace().getSrcIps() instanceof IpWildcardIpSpace &&
                            mhs.getHeaderspace().getDstIps() instanceof IpWildcardIpSpace) {
                            IpWildcardIpSpace srcWildCard = (IpWildcardIpSpace)mhs.getHeaderspace().getSrcIps();
                            IpWildcardIpSpace dstWildCard = (IpWildcardIpSpace)mhs.getHeaderspace().getDstIps();
                            if (srcWildCard.getIpWildcard().intersects(srcIp) && 
                                dstWildCard.getIpWildcard().intersects(dstIp)) {
                                //System.out.println("Blocked by ACL " + mhs.getHeaderspace().getSrcIps() + 
                                //    "\t" + mhs.getHeaderspace().getDstIps());
                                return true;
                            }
                        }
                    }
                }
            }
        }

        IpAccessList inbound = i.getIncomingFilter();

        if (inbound != null) {
            for ( IpAccessListLine line : inbound.getLines() ) {
                if (line.getAction() == LineAction.DENY) {
                    if ( line.getMatchCondition() instanceof MatchHeaderSpace) {
                        MatchHeaderSpace mhs = (MatchHeaderSpace)line.getMatchCondition();

                        if (mhs.getHeaderspace().getSrcIps() instanceof IpWildcardIpSpace &&
                            mhs.getHeaderspace().getDstIps() instanceof IpWildcardIpSpace) {
                            IpWildcardIpSpace srcWildCard = (IpWildcardIpSpace)mhs.getHeaderspace().getSrcIps();
                            IpWildcardIpSpace dstWildCard = (IpWildcardIpSpace)mhs.getHeaderspace().getDstIps();
                            if (srcWildCard.getIpWildcard().intersects(srcIp) && 
                                dstWildCard.getIpWildcard().intersects(dstIp)) {
                                //System.out.println("Blocked by ACL " + mhs.getHeaderspace().getSrcIps() + 
                                //    "\t" + mhs.getHeaderspace().getDstIps());
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public boolean matches(RouteFilterList fl) {
        if (fl != null) {
            for ( RouteFilterLine line : fl.getLines() ) {
                if (line.getIpWildcard().intersects(dstIp))
                    return true;
            }
        }
        return false;
    }

    public void setBGPCost(RoutingPolicy importRP, RoutingPolicy exportRP, EdgeCost ec, Configuration conf) {
        if (importRP != null) {
            for (Statement st : importRP.getStatements()) {
                if ( st instanceof SetLocalPreference ) {
                    SetLocalPreference i = (SetLocalPreference) st;
                    if (i.getLocalPreference() instanceof LiteralInt) {
                        LiteralInt li = (LiteralInt) i.getLocalPreference();
                        ec.setLP(li.getValue());
                    }
                } else if ( st instanceof SetMetric ) {
                    SetMetric i = (SetMetric) st;
                    if (i.getMetric() instanceof LiteralLong) {
                        LiteralLong li = (LiteralLong) i.getMetric();
                        ec.setMED(((int)li.getValue()));
                    }
                }  else if ( st instanceof SetWeight ) {
                    SetWeight i = (SetWeight) st;
                    if (i.getWeight() instanceof LiteralInt) {
                        LiteralInt li = (LiteralInt) i.getWeight();
                        ec.setWeight(li.getValue());
                    }
                } else if ( st instanceof SetAdministrativeCost ) {
                    SetAdministrativeCost i = (SetAdministrativeCost) st;
                    if (i.getAdmin() instanceof LiteralInt) {
                        LiteralInt li = (LiteralInt) i.getAdmin();
                        ec.setAD(li.getValue());
                    }
                } else if ( st instanceof If ) {
                    If i = (If) st;
                    //System.out.println(i.getGuard()+"\t"+i.getTrueStatements()+"\t"+i.getFalseStatements());
                    if (i.getGuard() instanceof MatchPrefixSet) {
                        MatchPrefixSet m = (MatchPrefixSet) i.getGuard();
                        if (m.getPrefixSet() instanceof NamedPrefixSet) {
                            NamedPrefixSet x = (NamedPrefixSet) m.getPrefixSet();
                            RouteFilterList fl = conf.getRouteFilterLists().get(x.getName());
                            if (matches(fl)) {
                                for ( Statement trueStmt : i.getTrueStatements()) {
                                    if ( trueStmt instanceof SetLocalPreference ) {
                                        SetLocalPreference lp = (SetLocalPreference) trueStmt;
                                        if (lp.getLocalPreference() instanceof LiteralInt) {
                                            LiteralInt li = (LiteralInt) lp.getLocalPreference();
                                            ec.setLP(li.getValue());
                                        }
                                    } else if ( trueStmt instanceof SetMetric ) {
                                        SetMetric lmetric = (SetMetric) trueStmt;
                                        if (lmetric.getMetric() instanceof LiteralLong) {
                                            LiteralLong li = (LiteralLong) lmetric.getMetric();
                                            ec.setMED(((int)li.getValue()));
                                        }
                                    }  else if ( trueStmt instanceof SetWeight ) {
                                        SetWeight lweight = (SetWeight) trueStmt;
                                        if (lweight.getWeight() instanceof LiteralInt) {
                                            LiteralInt li = (LiteralInt) lweight.getWeight();
                                            ec.setWeight(li.getValue());
                                        }
                                    }  else if ( trueStmt instanceof SetAdministrativeCost ) {
                                        SetAdministrativeCost lad = (SetAdministrativeCost) trueStmt;
                                        if (lad.getAdmin() instanceof LiteralInt) {
                                            LiteralInt li = (LiteralInt) lad.getAdmin();
                                            ec.setAD(li.getValue());
                                        }
                                    }
                                }
                            }
                        }

                    }
                }
            }

        }
        if (exportRP != null) {
            //System.out.println(router + " Export RP.\t"+exportRP.getStatements());    
        }

    }

    public boolean appliesCommunity (String policyName, RoutingPolicy importRP, RoutingPolicy exportRP, Configuration conf) {

        if (importRP != null) {
            String temp = ""+ importRP.getStatements();
            if (temp.contains(policyName))
                return true;
            for ( Statement st : importRP.getStatements() ) {
                if ( st instanceof If ) {
                    If i = (If) st;
                    System.out.println(i.getGuard()+"\t"+i.getTrueStatements()+"\t"+i.getFalseStatements());
                    temp = "" + i.getGuard();
                    if (i.getGuard() instanceof Conjunction) {
                        Conjunction cj = (Conjunction) i.getGuard();
                        for (BooleanExpr be : cj.getConjuncts()) {
                            if (be instanceof CallExpr) {
                                CallExpr ce = (CallExpr) be;
                                System.out.println("Pol " + ce.getCalledPolicyName() + conf.getRoutingPolicies().get(ce.getCalledPolicyName()));
                            }
                        }
                    }
                    if (temp.contains(policyName))
                        return true;
                }
            }
        }

        if (exportRP != null) {
            String temp = ""+ exportRP.getStatements();
            if (temp.contains(policyName))
                return true;
            for ( Statement st : exportRP.getStatements() ) {
                if ( st instanceof If ) {
                    If i = (If) st;
                    System.out.println(i.getGuard()+"\t"+i.getTrueStatements()+"\t"+i.getFalseStatements());
                    temp = "" + i.getGuard();
                    if (i.getGuard() instanceof Conjunction) {
                        Conjunction cj = (Conjunction) i.getGuard();
                        for (BooleanExpr be : cj.getConjuncts()) {
                            if (be instanceof CallExpr) {
                                CallExpr ce = (CallExpr) be;
                                System.out.println("Pol " + ce.getCalledPolicyName() + conf.getRoutingPolicies().get(ce.getCalledPolicyName()));
                            }
                        }
                    }
                    if (temp.contains(policyName))
                        return true;
                }
            }
        }

        return false;
    }

    public void setAllCommunity (String router, RoutingPolicy importRP, RoutingPolicy exportRP) {
        Configuration conf = g.getConfigurations().get(router);
        for (String key : conf.getRoutingPolicies().keySet()) {
            RoutingPolicy pol = conf.getRoutingPolicies().get(key);
            AstVisitor v = new AstVisitor();
            v.visit(
                conf,
                pol.getStatements(),
                stmt -> {
                    if (stmt instanceof SetCommunity) {
                      SetCommunity sc = (SetCommunity) stmt;
                      for (CommunityVar cv : collectCommunityVars(conf, sc.getExpr())) {
                        if (appliesCommunity(key, importRP, exportRP, conf)) {
                            System.out.println("SET");
                            g._addCommunity.get(router).add( g._communityID.get(cv.getValue()) );
                        }
                        //System.out.println(cv.getValue() + " " + cv.asLong());
                      }
                    }
                    if (stmt instanceof AddCommunity) {
                      AddCommunity ac = (AddCommunity) stmt;
                      for (CommunityVar cv : collectCommunityVars(conf, ac.getExpr())) {
                        if (appliesCommunity(key, importRP, exportRP, conf)) {
                            g._addCommunity.get(router).add( g._communityID.get(cv.getValue()) );
                            System.out.println("ADD");
                        }
                      }
                    }
                    if (stmt instanceof DeleteCommunity) {
                      DeleteCommunity dc = (DeleteCommunity) stmt;
                      for (CommunityVar cv : collectCommunityVars(conf, dc.getExpr())) {
                        if (appliesCommunity(key, importRP, exportRP, conf)) {
                            g._removeCommunity.get(router).add( g._communityID.get(cv.getValue().replace("$","").replace("^","")) );
                            System.out.println("DEL");
                        }
                      }
                    }/*
                    if (stmt instanceof RetainCommunity) {
                      RetainCommunity rc = (RetainCommunity) stmt;
                      for (CommunityVar cv : collectCommunityVars(conf, rc.getExpr())) {
                      }
                    }*/
                },
                expr -> {
                    if (expr instanceof MatchCommunitySet) {/*
                      MatchCommunitySet m = (MatchCommunitySet) expr;
                      CommunitySetExpr ce = m.getExpr();
                      for (CommunityVar cv : collectCommunityVars(conf, ce)) {
                        System.out.println("Match");
                      }*/
                    }
                }
            );
        }
    }

    public void buildCommunity() {
        for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
            String router = entry.getKey();
            List<GraphEdge> edges = entry.getValue();
            Configuration conf = g.getConfigurations().get(router);

            for (Protocol proto : _protocols.get(router)) {
                for (GraphEdge e : edges) {
                    if (g.isEdgeUsed(conf, proto, e)) {
                        if (proto.isBgp()) {
                            RoutingPolicy importRP = g.findImportRoutingPolicy(router, proto, e);
                            RoutingPolicy exportRP = g.findExportRoutingPolicy(router, proto, e);
                            setAllCommunity(router, importRP, exportRP);
                        }
                    }
                }
            }
        }

    }

    public void buildEdges() {

    	Node src, dst;
    	String pro, srcnode, dstnode;

		// create edges connecting routing processes
    	for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
    		String router = entry.getKey();
    		List<GraphEdge> edges = entry.getValue();
    		Configuration conf = g.getConfigurations().get(router);

    		//System.out.println("VRF " + conf.getVrfs());
    		for (Protocol proto : _protocols.get(router)) {
    			for (GraphEdge e : edges) {
                    boolean acl = blockAcl(e);

    				if (g.isEdgeUsed(conf, proto, e)) {
						srcnode = e.getRouter();
						dstnode = e.getPeer();
						if (srcnode == null || dstnode == null)
							continue;
    					if (proto.isBgp()) {
    						if (g.getIbgpNeighbors().containsKey(e)) {
    							//System.out.println("IBGP " + e);
    							continue;
    						}
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

    						srcnode = srcnode + "-BGP";
    						dstnode = dstnode + "-BGP";
    						src = multigraphNode.get(srcnode);
    						dst = multigraphNode.get(dstnode);
					        EdgeCost ec = new EdgeCost();
					        ec.setAS(1);
					        //ec.setAD(10);
                            setBGPCost(importRP, exportRP, ec, conf);
                            //System.out.println("Cost " + ec);
							dg.add(src, dst, ec, protocol.BGP);
                            dg.getEdge(src, dst).setIsACL(acl);

    					} else if (proto.isOspf()) {
    						srcnode = srcnode + "-OSPF";
    						dstnode = dstnode + "-OSPF";
							src = multigraphNode.get(srcnode);
    						dst = multigraphNode.get(dstnode);
    						EdgeCost ec = new EdgeCost();
					        ec.setOSPF(e.getStart().getOspfCost());
					        //ec.setAD(5);
							dg.add(src, dst, ec, protocol.OSPF);
                            dg.getEdge(src, dst).setIsACL(acl);
							//System.out.println(e.getStart() + "" + e.getStart().getOspfCost() + 
							//	"" + e.getEnd() + "" + e.getEnd().getOspfCost());
    						

    					} else if (proto.isStatic()) {

    						//skipping static routes to unreachable IP
    						if (dstnode == null)
    							continue;    						
							Set<Node> srcRouters = phyNodeMap.get(srcnode);
							Set<Node> dstRouters = phyNodeMap.get(dstnode);

    						srcnode = srcnode + "-STATIC";
    						dstnode = dstnode + "-STATIC";
							src = multigraphNode.get(srcnode);
    						dst = multigraphNode.get(dstnode);
    						EdgeCost ec = new EdgeCost();
					        //ec.setAD(50);
							dg.add(src, dst, ec, protocol.STAT);
                            dg.getEdge(src, dst).setIsACL(acl);

							for (Node s : srcRouters) {
								if (s.getType() == protocol.STAT)
									continue;
								for (Node d : dstRouters) {
									if (d.getType() == protocol.STAT)
										continue;
									dg.add(s, d, ec, protocol.STAT);									
                                    dg.getEdge(s, d).setIsACL(acl);
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
    		for (Protocol proto : _protocols.get(router)) {
    			srcnode = router + ( (proto.isBgp()) ? "-BGP" : (proto.isOspf()) ? "-OSPF" : (proto.isStatic()) ? "-STATIC" : "");
    			src = multigraphNode.get(srcnode);
    			protocol srcType = proto.isBgp() ? protocol.BGP : (proto.isOspf()) ? protocol.OSPF : (proto.isStatic()) ? protocol.STAT : protocol.NONE;
    			RoutingPolicy pol = Graph.findCommonRoutingPolicy(conf, proto);
    			if (pol == null) {
    				continue;
    			}
    			Set<Protocol> ps = g.findRedistributedProtocols(conf, pol, proto);
    			for (Protocol p : ps) {

	    			dstnode = router + ( (p.isBgp()) ? "-BGP" : (p.isOspf()) ? "-OSPF" : (p.isStatic()) ? "-STATIC" : "");
	    			dst = multigraphNode.get(dstnode);
	    			protocol dstType = p.isBgp() ? protocol.BGP : (p.isOspf()) ? protocol.OSPF : (p.isStatic()) ? protocol.STAT : protocol.NONE;
	    			//fix cost
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
						dg.add(src, dst, ec, protocol.REDISSTAT);
					}
    			}
    		}
    	}

    }


    public void buildNodes() {

    	Node src, dst;
    	String pro, srcnode, dstnode, srcname, dstname;

    	// create physical router to logical router-process mapping
    	for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
    		String router = entry.getKey();
    		phyNodeMap.put(router, new HashSet<Node>());
    	}

    	// create nodes representing routing processes
    	for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
    		String router = entry.getKey();
    		List<GraphEdge> edges = entry.getValue();
   			//System.out.println(router + "\t" + edges);

    		for (Protocol proto : _protocols.get(router)) {
    			for (GraphEdge e : edges) {
    				Configuration conf = g.getConfigurations().get(router);
    				srcname = e.getRouter();
    				dstname = e.getPeer();
    				if (g.isEdgeUsed(conf, proto, e)) {
						srcnode = e.getRouter();
						dstnode = e.getPeer();
						if (srcnode == null || dstnode == null)
							continue;
    					if (proto.isBgp()) {
    						if (g.getIbgpNeighbors().containsKey(e)) {
    							System.out.println("IBGP " + e);
    							continue;
    						}
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
    						//System.out.println(e + " - Rou "+ e.getRouter() + " - peer - " + e.getPeer());
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
    						//skipping static routes to unreachable IP
    						srcnode = srcnode + "-STATIC";							
    						if (multigraphNode.containsKey(srcnode))
    							src = multigraphNode.get(srcnode);
    						else {
    							src = new Node(srcnode, protocol.STAT);
    							dg.add(src);
    							multigraphNode.put(srcnode, src);
    						}
							phyNodeMap.get(e.getRouter()).add(src);
    						if (dstnode == null)
    							continue;
    						dstnode = dstnode + "-STATIC";
    						if (multigraphNode.containsKey(dstnode))
    							dst = multigraphNode.get(dstnode);
    						else {
    							dst = new Node(dstnode, protocol.STAT);
    							dg.add(dst);
    							multigraphNode.put(dstnode, dst);
    						}
							phyNodeMap.get(e.getPeer()).add(dst);

    					} else {
                            continue;
                        }

                        if(g._actCommunity.containsKey(srcname))
                            src.setBlockCommunity(g._actCommunity.get(srcname));
                        if(g._addCommunity.containsKey(srcname))
                            src.setAddCommunity(g._addCommunity.get(srcname));
                        if(g._removeCommunity.containsKey(srcname))
                            src.setRemoveCommunity(g._removeCommunity.get(srcname));

                        if(g._actCommunity.containsKey(dstname))
                            dst.setBlockCommunity(g._actCommunity.get(dstname));
                        if(g._addCommunity.containsKey(dstname))
                            dst.setAddCommunity(g._addCommunity.get(dstname));
                        if(g._removeCommunity.containsKey(dstname))
                            dst.setRemoveCommunity(g._removeCommunity.get(dstname));
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
