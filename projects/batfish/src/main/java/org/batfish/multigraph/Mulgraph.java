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
import org.batfish.datamodel.routing_policy.expr.Disjunction;
import org.batfish.datamodel.routing_policy.expr.Conjunction;
import org.batfish.datamodel.routing_policy.expr.WithEnvironmentExpr;

import org.batfish.datamodel.CommunityList;
import org.batfish.datamodel.CommunityListLine;
import org.batfish.datamodel.StaticRoute;

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
    public Map<String, Set<String>> _actCommunity;
    public Map<String, Set<String>> _addCommunity;
    public Map<String, Set<String>> _removeCommunity;

    public Map<String, Map<String, EdgeCost>> _routerCommunityLp;

    public Map<String, Set<String>> _vrfMap;
    public Set<String> _allVrfMap;

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

        _actCommunity = new TreeMap<>();
        _addCommunity = new TreeMap<>();
        _removeCommunity = new TreeMap<>();
        _routerCommunityLp = new TreeMap<>();
        _vrfMap = new TreeMap<>();
        _allVrfMap = new HashSet<>();

    	buildGraph();
    	System.out.println(dg);
        System.out.println(_vrfMap);
    }

    public Digraph getDigraph() {
    	return dg;
    }

    public void buildGraph() {
        buildVrfMap();
        buildRouterProtocol();
        buildCommunity();
    	buildNodes();
    	buildEdges();
    }

    public void buildVrfMap() {

        for (String router : g.getRouters()) {
            _vrfMap.put(router, new HashSet<>());
        }

        for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
            String router = entry.getKey();

            List<GraphEdge> edges = entry.getValue();
            for (GraphEdge e : edges) {
                boolean addedStart = false, addedEnd = false;
                String startVrfName = "", endVrfName = "";
                String peer = e.getPeer();
                if (e.getStart()!=null) {
                    startVrfName = e.getStart().getVrfName();
                    if (!(startVrfName.equals("default") || startVrfName.equals("Mgmt-intf"))) {
                        _allVrfMap.add(startVrfName);
                        addedStart = true;
                        _vrfMap.get(router).add(startVrfName);
                    }
                }
                if (e.getEnd()!=null) {
                    endVrfName = e.getEnd().getVrfName();
                    if (!(endVrfName.equals("default") || endVrfName.equals("Mgmt-intf"))) {
                        _allVrfMap.add(endVrfName);
                        addedEnd = true;
                        _vrfMap.get(peer).add(endVrfName);
                    }
                }
                if (addedStart == true && addedEnd == false) {
                    _vrfMap.get(peer).add(startVrfName);
                } else if (addedEnd == true && addedStart == false) {
                    _vrfMap.get(router).add(endVrfName);
                }

            }
        }

        for (String router : g.getRouters()) {
            if (_vrfMap.get(router).size() == 0 && g.getConfigurations().get(router).getMPLS())
                _vrfMap.get(router).addAll(_allVrfMap);
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

    public boolean blockAcl(Interface out, Interface in) {
        //Interface i = ge.getStart();

        IpAccessList outbound = out.getOutgoingFilter();

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

        //Interface i = ge.getEnd();
        IpAccessList inbound = in.getIncomingFilter();

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
        setBGPCostPol(importRP, ec, conf);
        setBGPCostPol(exportRP, ec, conf);
    }

    public void setRouterCommunityCost(List<Statement> stmt, String router, String comm) {
        EdgeCost ec = new EdgeCost();
        boolean set = false;
        for (Statement st : stmt) {
            if ( st instanceof SetLocalPreference ) {
                SetLocalPreference i = (SetLocalPreference) st;
                if (i.getLocalPreference() instanceof LiteralInt) {
                    LiteralInt li = (LiteralInt) i.getLocalPreference();
                    ec.setLP(li.getValue());
                    set = true;
                }
            } else if ( st instanceof SetMetric ) {
                SetMetric i = (SetMetric) st;
                if (i.getMetric() instanceof LiteralLong) {
                    LiteralLong li = (LiteralLong) i.getMetric();
                    ec.setMED(((int)li.getValue()));
                    set = true;
                }
            }  else if ( st instanceof SetWeight ) {
                SetWeight i = (SetWeight) st;
                if (i.getWeight() instanceof LiteralInt) {
                    LiteralInt li = (LiteralInt) i.getWeight();
                    ec.setWeight(li.getValue());
                    set = true;
                }
            } else if ( st instanceof SetAdministrativeCost ) {
                SetAdministrativeCost i = (SetAdministrativeCost) st;
                if (i.getAdmin() instanceof LiteralInt) {
                    LiteralInt li = (LiteralInt) i.getAdmin();
                    ec.setAD(li.getValue());
                    set = true;
                }
            }
        }
        if (set)
            _routerCommunityLp.get(router).put(comm, ec);
    }



    public void setBGPCostPol(RoutingPolicy rp, EdgeCost ec, Configuration conf) {
        if (rp != null) {
            for (Statement st : rp.getStatements()) {
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
    }


    public void appliesRP(String router, List<Statement> stmts) {

        Configuration conf = g.getConfigurations().get(router);
        for (Statement stmt : stmts) {
            if (stmt instanceof SetCommunity) {
              SetCommunity sc = (SetCommunity) stmt;
              for (CommunityVar cv : collectCommunityVars(conf, sc.getExpr())) {
                _addCommunity.get(router).add( cv.getValue().replace("$","").replace("^","") );
              }
            } else if (stmt instanceof AddCommunity) {
              AddCommunity ac = (AddCommunity) stmt;
              for (CommunityVar cv : collectCommunityVars(conf, ac.getExpr())) {
                _addCommunity.get(router).add( cv.getValue().replace("$","").replace("^","") );
              }
            } else if (stmt instanceof DeleteCommunity) {
              DeleteCommunity dc = (DeleteCommunity) stmt;
              for (CommunityVar cv : collectCommunityVars(conf, dc.getExpr())) {
                _removeCommunity.get(router).add( cv.getValue().replace("$","").replace("^","") );
              }
            } else if ( stmt instanceof If ) {
                If i = (If) stmt;
                // do nothing
                //System.out.println("Check " + i.getGuard()+"\t"+i.getTrueStatements()+"\t"+i.getFalseStatements());
            }

        }

    }
/*
  public void check(Statement stmt, Configuration conf) {
      AstVisitor v = new AstVisitor();
      v.visit(
          conf,
          stmt,
          st -> {
            if ( st instanceof SetLocalPreference ) {
                SetLocalPreference i = (SetLocalPreference) st;
                if (i.getLocalPreference() instanceof LiteralInt) {
                    LiteralInt li = (LiteralInt) i.getLocalPreference();
                    System.out.println("1. \t" + li.getValue());
                }
            } else if ( st instanceof SetMetric ) {
                SetMetric i = (SetMetric) st;
                if (i.getMetric() instanceof LiteralLong) {
                    LiteralLong li = (LiteralLong) i.getMetric();
                    System.out.println("1. \t" + li.getValue());
                }
            }  else if ( st instanceof SetWeight ) {
                SetWeight i = (SetWeight) st;
                if (i.getWeight() instanceof LiteralInt) {
                    LiteralInt li = (LiteralInt) i.getWeight();
                    System.out.println("1. \t" + li.getValue());
                }
            } else if ( st instanceof SetAdministrativeCost ) {
                SetAdministrativeCost i = (SetAdministrativeCost) st;
                if (i.getAdmin() instanceof LiteralInt) {
                    LiteralInt li = (LiteralInt) i.getAdmin();
                    System.out.println("1. \t" + li.getValue());
                }
            }

          },
          expr -> {
            if (expr instanceof MatchCommunitySet) {
              MatchCommunitySet m = (MatchCommunitySet) expr;
              CommunitySetExpr ce = m.getExpr();
            }
          });
  }
*/
    public void appliesCommunity (String router, RoutingPolicy rp) {
        if (rp != null) {
            Configuration conf = g.getConfigurations().get(router);
            //System.out.println("CHECK RP " + rp.getStatements()+"\n*****************");
            for ( Statement st : rp.getStatements() ) {
                if ( st instanceof If ) {
                    If i = (If) st;
                    //System.out.println(i.getGuard()+"\t"+i.getTrueStatements()+"\t"+i.getFalseStatements());
                    if (i.getGuard() instanceof Conjunction) {
                        Conjunction cj = (Conjunction) i.getGuard();
                        for (BooleanExpr be : cj.getConjuncts()) {
                            if (be instanceof CallExpr) {
                                CallExpr ce = (CallExpr) be;
                                appliesRP(router, conf.getRoutingPolicies().get(ce.getCalledPolicyName()).getStatements());
                            }
                        }
                    } else if (i.getGuard() instanceof MatchPrefixSet) {
                        MatchPrefixSet m = (MatchPrefixSet) i.getGuard();
                        if (m.getPrefixSet() instanceof NamedPrefixSet) {
                            NamedPrefixSet x = (NamedPrefixSet) m.getPrefixSet();
                            RouteFilterList fl = conf.getRouteFilterLists().get(x.getName());
                            if (fl != null) {
                                for ( RouteFilterLine line : fl.getLines() ) {
                                    //System.out.println("IP. "+ line.getIpWildcard() +"\t"+i.getTrueStatements());
                                    if (line.getIpWildcard().intersects(dstIp)) {
                                        appliesRP(router, i.getTrueStatements());
                                    }        
                                }
                            }
                        }
                    } else if (i.getGuard() instanceof MatchCommunitySet) {
                        MatchCommunitySet m = (MatchCommunitySet) i.getGuard();
                        //System.out.println("@. " + m.getExpr() + "\t" +i.getTrueStatements());
                        // Right now allow it. afterwards need to modify, when it is set
                        CommunitySetExpr ce = m.getExpr();

                        //LineAction la = ce.getAction();
                        for (CommunityVar cv : collectCommunityVars(conf, ce)) {
                            String cvName = ""+cv.getValue().replace("$","").replace("^","");
                            if (isBlockedCommunity(router, cvName)) {
                                _actCommunity.get(router).add(cvName);
                                //System.out.println("Long - " + cvName);
                            }
                            setRouterCommunityCost(i.getTrueStatements(), router, cvName);
                        }
                        appliesRP(router, i.getTrueStatements());
                    }
                }
            }
            //System.out.println("############################");
        }

    }

    public boolean isBlockedCommunity(String router, String cvName) {
        Configuration conf = g.getConfigurations().get(router);
        _routerCommunityLp.put(router, new TreeMap<>());
        for (Entry<String, CommunityList> entry : conf.getCommunityLists().entrySet()) {
            String name = entry.getKey();
            CommunityList cl = entry.getValue();
            for (CommunityListLine cll : cl.getLines()) {
              CommunitySetExpr matchCondition = cll.getMatchCondition();
              LineAction la = cll.getAction();
              
              for (CommunityVar cv : collectCommunityVars(conf, matchCondition)) {
                if(la  == LineAction.DENY && cv.asLong()!=null) {
                  String thisCvName = "" + cv.getValue().replace("$","").replace("^","");
                  //System.out.println(thisCvName + "\tX\t" + cvName);
                  if (thisCvName.equals(cvName))   
                    return true;
                }
              }          
            }
        }
        return false;
    }

    public void setAllCommunity (String router, RoutingPolicy importRP, RoutingPolicy exportRP) {
        Configuration conf = g.getConfigurations().get(router);
        appliesCommunity(router, importRP);
        appliesCommunity(router, exportRP);
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
                            _addCommunity.put(router, new HashSet<>());
                            _removeCommunity.put(router, new HashSet<>());
                            _actCommunity.put(router, new HashSet<>());                            
                            setAllCommunity(router, importRP, exportRP);
                        }
                    }
                }
            }
        }

    }

    public boolean ibgpcontains(String srcname, String dstname) {
        return dg.isEdge(dg.getNode(srcname+"-STATIC"), dg.getNode(dstname+"-STATIC"));
    }

    public void buildEdges() {

    	Node src, dst;
    	String pro, srcnode, dstnode, srcname, dstname;

		// create edges connecting routing processes
    	for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
    		String router = entry.getKey();
    		List<GraphEdge> edges = entry.getValue();
    		Configuration conf = g.getConfigurations().get(router);

    		//System.out.println("VRF " + conf.getVrfs());
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
                            if (g.getIbgpNeighbors().containsKey(e)) {
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
                            EdgeCost ec = new EdgeCost();
                            srcnode = srcnode + "-BGP";
                            dstnode = dstnode + "-BGP";
                            ec.setAS(1);
              				src = multigraphNode.get(srcnode);
    						dst = multigraphNode.get(dstnode);
					        //ec.setAD(10);
                            setBGPCost(importRP, exportRP, ec, conf);
                            //System.out.println("Cost " + ec);
                            boolean acl = blockAcl(e.getEnd(), e.getStart());
                            dg.add(dst, src, ec, protocol.BGP);
                            dg.getEdge(dst, src).setIsACL(acl);                                

    					} else if (proto.isOspf()) {
    						srcnode = srcnode + "-OSPF";
    						dstnode = dstnode + "-OSPF";
							src = multigraphNode.get(srcnode);
    						dst = multigraphNode.get(dstnode);
    						EdgeCost ec = new EdgeCost();
					        //ec.setOSPF(e.getStart().getOspfCost());
                            ec.setOSPF(e.getEnd().getOspfCost());
					        //ec.setAD(5);
							dg.add(src, dst, ec, protocol.OSPF);
                            boolean acl = blockAcl(e.getStart(), e.getEnd());
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
                            boolean applies = false;
                            for (StaticRoute sr : g.getStaticRoutes().get(conf.getHostname(), e.getStart().getName())) {
                                if (dstIp.containsIp(sr.getNextHopIp())) {
                                    applies = true;
                                    int staticWeight = sr.getMetric().intValue();
                                    ec.setWeight(staticWeight);
                                    break;
                                }
                            }
                            if (applies == false)
                                continue;

							dg.add(src, dst, ec, protocol.STAT);
                            boolean acl = blockAcl(e.getStart(), e.getEnd());
                            dg.getEdge(src, dst).setIsACL(acl);

							for (Node s : srcRouters) {
								if (s.getType() != protocol.STAT)
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
                    if (src == null || dst == null) {
                        System.out.println("Can't add redis between "+ srcnode + " " + dstnode);
                        continue;
                    }

					EdgeCost ec = new EdgeCost();
					if (srcType == protocol.BGP && dstType == protocol.OSPF) {
                        ec.setAS(1);
						dg.add(dst, src, ec, protocol.REDISOB);
					} else if (srcType == protocol.OSPF && dstType == protocol.BGP) {
                        ec.setOSPF(1);
						dg.add(dst, src, ec, protocol.REDISBO);
					} else if (srcType == protocol.BGP && dstType == protocol.STAT) {
                        ec.setOSPF(20);
						dg.add(src, dst, ec, protocol.REDISSO);
					} else if (srcType == protocol.BGP && dstType == protocol.STAT) {
                        ec.setAS(1);
                        dg.add(dst, src, ec, protocol.REDISSB);
                    } 
    			}
    		}
    	}

        for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
            String router = entry.getKey();
            List<GraphEdge> edges = entry.getValue();
            Configuration conf = g.getConfigurations().get(router);
            for (Protocol proto : _protocols.get(router)) {
                for (GraphEdge e : edges) {
                    if (proto.isBgp() && g.isEdgeUsed(conf, proto, e) && g.getIbgpNeighbors().containsKey(e)) {
                        srcnode = e.getRouter();
                        dstnode = e.getPeer();

                        if (srcnode == null || dstnode == null)
                            continue;
                        if (ibgpcontains(dstnode, srcnode)) {
                            RoutingPolicy importRP = g.findImportRoutingPolicy(router, proto, e);
                            RoutingPolicy exportRP = g.findExportRoutingPolicy(router, proto, e);
                            if(blockFilter(importRP, conf) || blockFilter(exportRP, conf)) {
                                continue;
                            }
                            EdgeCost ec = new EdgeCost();
                            srcnode = srcnode + "-IBGP";
                            dstnode = dstnode + "-IBGP";
                            ec.setAS(0);
                            src = multigraphNode.get(srcnode);
                            dst = multigraphNode.get(dstnode);
                            setBGPCost(importRP, exportRP, ec, conf);
                            boolean acl = blockAcl(e.getEnd(), e.getStart());
                            dg.add(dst, src, ec, protocol.IBGP);
                            dg.getEdge(dst, src).setIsACL(acl);                                
                        }

                    }
                }
            }

        }


    }


    public void buildNodes() {

    	Node src = null, dst = null;
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
            /*
   			System.out.print(router + "\t"); 
            for (Protocol proto : _protocols.get(router)) {
                System.out.print(proto.name() + "\t"); 
            }*/
    		for (Protocol proto : _protocols.get(router)) {
    			for (GraphEdge e : edges) {
    				Configuration conf = g.getConfigurations().get(router);
    				srcname = e.getRouter();
    				dstname = e.getPeer();
    				if (g.isEdgeUsed(conf, proto, e)) {
						srcnode = e.getRouter();
						dstnode = e.getPeer();
                        if (proto.isConnected())
                            System.out.println("Connected: " + srcname + "\t" + dstnode);
						if (srcnode == null || dstnode == null)
							continue;
                        else if (proto.isBgp()) {
                            protocol thisProtocol = protocol.BGP;
    						if (g.getIbgpNeighbors().containsKey(e)) {
                                srcnode = srcnode + "-IBGP";
                                dstnode = dstnode + "-IBGP";
                                thisProtocol = protocol.IBGP;
    						} else {
                                srcnode = srcnode + "-BGP";
                                dstnode = dstnode + "-BGP";
                            }
    						if (multigraphNode.containsKey(srcnode))
    							src = multigraphNode.get(srcnode);
    						else {
    							src = new Node(srcnode, thisProtocol);
    							dg.add(src);
    							multigraphNode.put(srcnode, src);
    						}
    						if (multigraphNode.containsKey(dstnode))
    							dst = multigraphNode.get(dstnode);
    						else {
    							dst = new Node(dstnode, thisProtocol);
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

                        if(_actCommunity.containsKey(srcname))
                            src.setBlockCommunity(_actCommunity.get(srcname));
                        if(_addCommunity.containsKey(srcname))
                            src.setAddCommunity(_addCommunity.get(srcname));
                        if(_removeCommunity.containsKey(srcname))
                            src.setRemoveCommunity(_removeCommunity.get(srcname));

                        if(_actCommunity.containsKey(dstname))
                            dst.setBlockCommunity(_actCommunity.get(dstname));
                        if(_addCommunity.containsKey(dstname))
                            dst.setAddCommunity(_addCommunity.get(dstname));
                        if(_removeCommunity.containsKey(dstname))
                            dst.setRemoveCommunity(_removeCommunity.get(dstname));
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
