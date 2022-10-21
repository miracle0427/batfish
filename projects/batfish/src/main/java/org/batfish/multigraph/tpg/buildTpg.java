package org.batfish.multigraph.tpg;

import lombok.Data;
import org.batfish.datamodel.*;
import org.batfish.datamodel.acl.MatchHeaderSpace;
import org.batfish.datamodel.routing_policy.RoutingPolicy;
import org.batfish.datamodel.routing_policy.expr.LiteralInt;
import org.batfish.datamodel.routing_policy.expr.LiteralLong;
import org.batfish.datamodel.routing_policy.expr.MatchPrefixSet;
import org.batfish.datamodel.routing_policy.expr.NamedPrefixSet;
import org.batfish.datamodel.routing_policy.statement.*;
import org.batfish.multigraph.graph.EdgeCost;
import org.batfish.multigraph.graph.protocol;
import org.batfish.multigraph.rag.Rag;
import org.batfish.multigraph.rag.buildRag;
import org.batfish.symbolic.Graph;
import org.batfish.symbolic.GraphEdge;
import org.batfish.symbolic.Protocol;

import java.util.*;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;

@Data
public class buildTpg implements Runnable {

    private Graph g;
    private Tpg tpg;
    private buildRag ragBuild;
    private Rag rag;
    private Map<String, List<Protocol>> protocols;
    private Map<String, TpgNode> multigraphNode;
    private Map<String, Set<TpgNode>> phyNodeMap;
    private Map<String, Set<TpgEdge>> phyEdgeMap;
    private IpWildcard srcIp;
    private IpWildcard dstIp;
    private TpgNode srcTC = null;
    private TpgNode dstTC = null;
    private String srcNodeName = null;
    private String dstNodeName = null;
    private long generateTime = 0;
    private int countmap = 0;
    private ConcurrentHashMap<String, Tpg> conMap = null;
    private boolean correctSrcDst = false;

    public buildTpg(Graph g, IpWildcard src, IpWildcard dst, ConcurrentHashMap<String, Tpg> map) {
        this(g, null, null, src, dst, map);
    }

    public buildTpg(Graph g, String src, String dst, IpWildcard srcip, IpWildcard dstip, ConcurrentHashMap<String, Tpg> map) {
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
        conMap = map;
    }

    private String createName(String router, String prefix) {
        return router + "-" + prefix;
    }

    private String bgpName(String router) {
        return router + "-BGP";
    }

    private String bgpName(String router, String next) {
        return router + "-BGP_" + next;
    }

    private String intfName(String router, String intf) {
        return router + "_" + intf;
    }

    private String ospfName(String router) {
        return router + "-OSPF";
    }


    private void addDependenceGraph(GraphEdge depEdge) {

        String prefix = intfName(depEdge.getRouter(), depEdge.getStart().getName());

        String protName = null, protName1 = null, protName2 = null;
        TpgNode protNode = null;
        //System.out.println("Prefix\t" + prefix + "\t" + depEdge.getStart().getName() + "\t" + depEdge.getEnd().getName());
        //creating all relevant nodes
        //System.out.println("#################NODES        CREATED########################");
        for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
            String router = entry.getKey();
            List<GraphEdge> edges = entry.getValue();
            Configuration conf = g.getConfigurations().get(router);

            if (protocols.get(router).contains(Protocol.OSPF)) {
                protName = prefix + '_' + createName(router, "OSPF");
                protNode = new TpgNode(protName, protocol.OSPF, router);
                //System.out.println(protName);
                tpg.addVertex(protNode);
                multigraphNode.put(protName, protNode);
                phyNodeMap.get(router).add(protNode);
            }
            //System.out.println("VRF " + conf.getVrfs());
            for (GraphEdge e : edges) {
                if (g.isEdgeUsed(conf, Protocol.BGP, e)) {
                    continue;
                }
                if (e.getStart() != null && e.getEnd() != null) {
                    protName = prefix + '_' + intfName(e.getRouter(), e.getStart().getName());
                    addInterface(e.getRouter(), protName);
                    //System.out.println(protName+"\tIO");
                    //protName = prefix + '_' + intfName(e.getPeer(), e.getEnd().getName());
                    //addInterface(e.getPeer(), protName);
                }
            }
        }
        //System.out.println("#########################################");
        // create all relevant edges
        for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
            String router = entry.getKey();
            List<GraphEdge> edges = entry.getValue();
            Configuration conf = g.getConfigurations().get(router);

            for (GraphEdge e : edges) {
                if (e.getStart() != null && e.getEnd() != null) {
                    if (g.isEdgeUsed(conf, Protocol.BGP, e)) {
                        continue;
                    }
                    protName1 = prefix + '_' + intfName(e.getRouter(), e.getStart().getName());
                    protName2 = prefix + '_' + intfName(e.getPeer(), e.getEnd().getName());
                    addIntraIntfEdge(protName1);
                    addIntraIntfEdge(protName2);
                    boolean acl = blockAcl(e.getEnd(), e.getStart());
                    addInterIntfEdge(protName1, protName2, e.getRouter(), e.getPeer(), acl);

                    //exit edges
                    //System.out.println("@@\t"+e.getPeer()+"\t"+depEdge.getPeer());
                    if (e.getPeer().equals(depEdge.getPeer())) {
                        //System.out.println("##\t"+protName2);
                        addTpgEdge(protName2 + "_I", createName(depEdge.getPeer(), "BGP"), protocol.BGP);
                    }

                    if (g.isEdgeUsed(conf, Protocol.OSPF, e)) {
                        EdgeCost ec = new EdgeCost();
                        ec.setOSPF(e.getEnd().getOspfCost());
                        addTpgEdge(prefix + '_' + createName(router, "OSPF"), protName1 + "_O", protocol.OSPF, ec);
                    }
                }
            }
        }
        /*
        System.out.println("Exit edge\t"+intfName(depEdge.getPeer(), depEdge.getEnd().getName()));
        protName2 = prefix + '_' + intfName(depEdge.getPeer(), depEdge.getEnd().getName()) + "_I";
        addTpgEdge(protName2, createName(depEdge.getPeer(), "BGP"), protocol.BGP);         
        */
    }

    private void addTpgEdge(String name1, String name2, protocol prot) {
        TpgNode in = multigraphNode.get(name1);
        TpgNode out = multigraphNode.get(name2);
        if (in == null || out == null) {
            //System.out.println("addTpgEdge Null val " + name1 + "\t" + name2 + "\t"  + in + "\t"  + out);
            return;
        }
        tpg.addEdge(in, out, new EdgeCost(), prot);
    }

    private void addTpgEdge(String name1, String name2, protocol prot, EdgeCost ec) {
        TpgNode in = multigraphNode.get(name1);
        TpgNode out = multigraphNode.get(name2);
        if (in == null || out == null) {
            //System.out.println("addTpgEdge Null val " + name1 + "\t" + name2 + "\t"  + in + "\t"  + out);
            return;
        }
        tpg.addEdge(in, out, ec, prot);
    }

    private void addIntraIntfEdge(String name) {
        TpgNode in = multigraphNode.get(name + "_I");
        TpgNode out = multigraphNode.get(name + "_O");
        if (in == null || out == null) {
            //System.out.println("addIntraIntfEdge Null val");
            return;
        }
        tpg.addEdge(in, out, new EdgeCost(), protocol.INTF);
    }

    private void addInterIntfEdge(String name1, String name2, String srcRouter, String dstRouter, boolean acl) {
        TpgNode in = multigraphNode.get(name1 + "_O");
        TpgNode out = multigraphNode.get(name2 + "_I");
        if (in == null || out == null) {
            //System.out.println("addInterIntfEdge Null val");
            return;
        }
        String key = srcRouter + "_" + dstRouter;
        TpgEdge thisEdge = tpg.addEdge(in, out, new EdgeCost(), protocol.INTF);

        if (acl) {
            thisEdge.setHasACL(true);
        }

        thisEdge.setCanRemove(true);

        if (!phyEdgeMap.containsKey(key)) {
            phyEdgeMap.put(key, new HashSet<>());
        }
        phyEdgeMap.get(key).add(thisEdge);
    }

    private void addInterface(String router, String protName) {
        String inName = protName + "_I";

        if (multigraphNode.containsKey(inName)) return;
        TpgNode protNode = new TpgNode(inName, protocol.INTF, router);
        tpg.addVertex(protNode);
        multigraphNode.put(inName, protNode);
        phyNodeMap.get(router).add(protNode);

        String outName = protName + "_O";
        protNode = new TpgNode(outName, protocol.INTF, router);
        tpg.addVertex(protNode);
        multigraphNode.put(outName, protNode);
        phyNodeMap.get(router).add(protNode);
    }

    private void setNodes() {
        //System.out.println(srcNodeName + "\t" + dstNodeName);
        if (srcNodeName == null || "".equals(srcNodeName) || dstNodeName == null || "".equals(dstNodeName)) {
            for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
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

        if (srcNodeName != null && phyNodeMap.containsKey(srcNodeName)) {
            //System.out.println(srcNodeName);
            srcTC = new TpgNode(srcNodeName, protocol.SRC, srcNodeName);
            tpg.addVertex(srcTC);
            String ribSrc = createName(srcNodeName, "RIB");
            TpgNode ribSrcNode = tpg.getVertex(ribSrc);
            if (ribSrcNode != null) {
                tpg.addEdge(srcTC, ribSrcNode, new EdgeCost(), protocol.SRC);
            } else {
                //System.out.println("Invalid Source");
            }

            /*
            String ospfRouter = createName(srcNodeName, "OSPF");
            String bgpRouter = createName(srcNodeName, "BGP");

            TpgNode ospfNode = tpg.getVertex(ospfRouter);
            if (ospfNode != null) {
                tpg.add(ospfNode, srcTC, new EdgeCost(), protocol.SRC);
            }
            TpgNode bgpNode = tpg.getVertex(bgpRouter);
            if (bgpNode != null) {
                tpg.add(bgpNode, srcTC, new EdgeCost(), protocol.SRC);
            }*/
        }
        if (dstNodeName != null && phyNodeMap.containsKey(dstNodeName)) {
            //System.out.println(dstNodeName);
            dstTC = new TpgNode(dstNodeName, protocol.DST, dstNodeName);
            tpg.addVertex(dstTC);
            String ribDst = createName(dstNodeName, "RIB");
            TpgNode ribDstNode = tpg.getVertex(ribDst);
            if (ribDstNode != null) {
                tpg.addEdge(ribDstNode, dstTC, new EdgeCost(), protocol.DST);
            } else {
                //System.out.println("Invalid Destination");
            }            
            /*
            String ospfRouter = createName(dstNodeName, "OSPF");
            String bgpRouter = createName(dstNodeName, "BGP");

            TpgNode ospfNode = tpg.getVertex(ospfRouter);
            if (ospfNode != null) {
                tpg.add(dstTC, ospfNode, new EdgeCost(), protocol.DST);
            }
            TpgNode bgpNode = tpg.getVertex(bgpRouter);
            if (bgpNode != null) {
                tpg.add(dstTC, bgpNode, new EdgeCost(), protocol.DST);
            }
            */
        }
        correctSrcDst = false;
        if (srcTC != null && dstTC != null) {
            tpg.setSrcTCNode(srcTC);
            tpg.setDstTCNode(dstTC);
            correctSrcDst = true;
        }
    }

    private boolean blockFilter(RoutingPolicy rp, Configuration conf) {
        if (rp == null)
            return false;
        for (Statement st : rp.getStatements()) {
            if (st instanceof If) {
                If i = (If) st;
                if (i.getGuard() instanceof MatchPrefixSet) {
                    MatchPrefixSet m = (MatchPrefixSet) i.getGuard();
                    if (m.getPrefixSet() instanceof NamedPrefixSet) {
                        NamedPrefixSet x = (NamedPrefixSet) m.getPrefixSet();
                        RouteFilterList fl = conf.getRouteFilterLists().get(x.getName());
                        if (fl != null) {
                            for (RouteFilterLine line : fl.getLines()) {
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

    private boolean blockAcl(Interface out, Interface in) {
        //Interface i = ge.getStart();

        IpAccessList outbound = out.getOutgoingFilter();

        if (outbound != null) {
            for (IpAccessListLine line : outbound.getLines()) {
                if (line.getAction() == LineAction.DENY) {
                    if (line.getMatchCondition() instanceof MatchHeaderSpace) {
                        MatchHeaderSpace mhs = (MatchHeaderSpace) line.getMatchCondition();

                        if (mhs.getHeaderspace().getSrcIps() instanceof IpWildcardIpSpace &&
                                mhs.getHeaderspace().getDstIps() instanceof IpWildcardIpSpace) {
                            IpWildcardIpSpace srcWildCard = (IpWildcardIpSpace) mhs.getHeaderspace().getSrcIps();
                            IpWildcardIpSpace dstWildCard = (IpWildcardIpSpace) mhs.getHeaderspace().getDstIps();
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
            for (IpAccessListLine line : inbound.getLines()) {
                if (line.getAction() == LineAction.DENY) {
                    if (line.getMatchCondition() instanceof MatchHeaderSpace) {
                        MatchHeaderSpace mhs = (MatchHeaderSpace) line.getMatchCondition();

                        if (mhs.getHeaderspace().getSrcIps() instanceof IpWildcardIpSpace &&
                                mhs.getHeaderspace().getDstIps() instanceof IpWildcardIpSpace) {
                            IpWildcardIpSpace srcWildCard = (IpWildcardIpSpace) mhs.getHeaderspace().getSrcIps();
                            IpWildcardIpSpace dstWildCard = (IpWildcardIpSpace) mhs.getHeaderspace().getDstIps();
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

    private void setBGPCost(RoutingPolicy importRP, RoutingPolicy exportRP, EdgeCost ec, Configuration conf) {
        setBGPCostPol(importRP, ec, conf);
        setBGPCostPol(exportRP, ec, conf);
    }

    private void setBGPCostPol(RoutingPolicy rp, EdgeCost ec, Configuration conf) {
        if (rp != null) {
            for (Statement st : rp.getStatements()) {
                if (st instanceof SetLocalPreference) {
                    SetLocalPreference i = (SetLocalPreference) st;
                    if (i.getLocalPreference() instanceof LiteralInt) {
                        LiteralInt li = (LiteralInt) i.getLocalPreference();
                        ec.setLP(li.getValue());
                    }
                } else if (st instanceof SetMetric) {
                    SetMetric i = (SetMetric) st;
                    if (i.getMetric() instanceof LiteralLong) {
                        LiteralLong li = (LiteralLong) i.getMetric();
                        ec.setMED(((int) li.getValue()));
                    }
                } else if (st instanceof SetWeight) {
                    SetWeight i = (SetWeight) st;
                    if (i.getWeight() instanceof LiteralInt) {
                        LiteralInt li = (LiteralInt) i.getWeight();
                        ec.setWeight(li.getValue());
                    }
                } else if (st instanceof SetAdministrativeCost) {
                    SetAdministrativeCost i = (SetAdministrativeCost) st;
                    if (i.getAdmin() instanceof LiteralInt) {
                        LiteralInt li = (LiteralInt) i.getAdmin();
                        ec.setAD(li.getValue());
                    }
                } else if (st instanceof If) {
                    If i = (If) st;
                    //System.out.println(i.getGuard()+"\t"+i.getTrueStatements()+"\t"+i.getFalseStatements());
                    if (i.getGuard() instanceof MatchPrefixSet) {
                        MatchPrefixSet m = (MatchPrefixSet) i.getGuard();
                        if (m.getPrefixSet() instanceof NamedPrefixSet) {
                            NamedPrefixSet x = (NamedPrefixSet) m.getPrefixSet();
                            RouteFilterList fl = conf.getRouteFilterLists().get(x.getName());
                            if (matches(fl)) {
                                for (Statement trueStmt : i.getTrueStatements()) {
                                    if (trueStmt instanceof SetLocalPreference) {
                                        SetLocalPreference lp = (SetLocalPreference) trueStmt;
                                        if (lp.getLocalPreference() instanceof LiteralInt) {
                                            LiteralInt li = (LiteralInt) lp.getLocalPreference();
                                            ec.setLP(li.getValue());
                                        }
                                    } else if (trueStmt instanceof SetMetric) {
                                        SetMetric lmetric = (SetMetric) trueStmt;
                                        if (lmetric.getMetric() instanceof LiteralLong) {
                                            LiteralLong li = (LiteralLong) lmetric.getMetric();
                                            ec.setMED(((int) li.getValue()));
                                        }
                                    } else if (trueStmt instanceof SetWeight) {
                                        SetWeight lweight = (SetWeight) trueStmt;
                                        if (lweight.getWeight() instanceof LiteralInt) {
                                            LiteralInt li = (LiteralInt) lweight.getWeight();
                                            ec.setWeight(li.getValue());
                                        }
                                    } else if (trueStmt instanceof SetAdministrativeCost) {
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

    private boolean matches(RouteFilterList fl) {
        if (fl != null) {
            for (RouteFilterLine line : fl.getLines()) {
                if (line.getIpWildcard().intersects(dstIp))
                    return true;
            }
        }
        return false;
    }

    private void buildTpgEdges() {
        //TODO: ADD EDGE FROM RIB CORRECTLY BASED ON TAINTS
        String protName = null, protName1 = null, protName2 = null;
        for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
            String router = entry.getKey();
            List<GraphEdge> edges = entry.getValue();
            Configuration conf = g.getConfigurations().get(router);

            //System.out.println("VRF " + conf.getVrfs());
            for (GraphEdge e : edges) {
                //System.out.println(e.getStart()+"\t"+e.getEnd());
                if (e.getStart() != null) {
                    protName = intfName(e.getRouter(), e.getStart().getName());
                    addIntraIntfEdge(protName);
                    addTpgEdge(protName + "_I", createName(router, "RIB"), protocol.RIB);

                    if (g.isEdgeUsed(conf, Protocol.OSPF, e)) {
                        EdgeCost ec = new EdgeCost();
                        ec.setOSPF(e.getEnd().getOspfCost());
                        addTpgEdge(createName(router, "OSPF"), protName + "_O", protocol.OSPF, ec);
                    }
                }

//                if (e.getEnd() != null) {
//                    protName = intfName(e.getPeer(), e.getEnd().getName());
//                    addIntraIntfEdge(protName);
//                    //addTpgEdge(protName+"_I", createName(router, "RIB"), protocol.RIB);
//                }

                if (e.getStart() != null && e.getEnd() != null) {
                    protName1 = intfName(e.getRouter(), e.getStart().getName());
                    protName2 = intfName(e.getPeer(), e.getEnd().getName());
                    boolean acl = blockAcl(e.getEnd(), e.getStart());
                    addInterIntfEdge(protName1, protName2, e.getRouter(), e.getPeer(), acl);

                    if (g.isEdgeUsed(conf, Protocol.BGP, e)) {

                        RoutingPolicy importRP = g.findImportRoutingPolicy(router, Protocol.BGP, e);
                        RoutingPolicy exportRP = g.findExportRoutingPolicy(router, Protocol.BGP, e);

                        //if (importRP != null)
                        //    System.out.println(router + "\tImport\t" + importRP.getStatements());
                        //if (exportRP != null)
                        //    System.out.println(router + "\tExport\t" + exportRP.getStatements());

                        if (blockFilter(importRP, conf) || blockFilter(exportRP, conf)) {
                            //System.out.print("Filter blocks it");
                            continue;
                        }

                        protName1 = bgpName(e.getRouter(), e.getPeer());
                        protName2 = intfName(e.getRouter(), e.getStart().getName()) + "_O";
                        EdgeCost ec = new EdgeCost();
                        setBGPCost(importRP, exportRP, ec, conf);

                        addTpgEdge(createName(router, "BGP"), protName1, protocol.BGP, ec);
                        if (g.getIbgpNeighbors().containsKey(e)) {
                            //System.out.println("iBGP " + e);
                            addDependenceGraph(e);
                            String prefixOspf = intfName(e.getRouter(), e.getStart().getName()) + '_' + createName(router, "OSPF");
                            addTpgEdge(protName1, prefixOspf, protocol.IBGP, ec);
                        } else {
                            addTpgEdge(protName1, protName2, protocol.BGP, ec);
                        }

                    } else if (g.isEdgeUsed(conf, Protocol.STATIC, e)) {
                        //skipping static routes to unreachable IP
                        protName1 = createName(e.getRouter(), "RIB");
                        protName2 = intfName(e.getRouter(), e.getStart().getName()) + "_O";
                        addTpgEdge(protName1, protName2, protocol.STAT);
                    }
                }
            }
        }

        Map<String, Configuration> allConf = g.getConfigurations();
        for (String router : allConf.keySet()) {
            String ribRouter = createName(router, "RIB");
            if (protocols.get(router).contains(Protocol.OSPF)) {
                String ospfRouter = createName(router, "OSPF");
                if (rag.getVertex(ospfRouter) != null && rag.getVertex(ospfRouter).isTaint())
                    addTpgEdge(ribRouter, ospfRouter, protocol.OSPF);
            }
            if (protocols.get(router).contains(Protocol.BGP)) {
                String bgpRouter = createName(router, "BGP");
                if (rag.getVertex(bgpRouter) != null && rag.getVertex(bgpRouter).isTaint())
                    addTpgEdge(ribRouter, bgpRouter, protocol.BGP);
            }
        }
    }

    private void buildTpgNodes() {
        Map<String, Configuration> allConf = g.getConfigurations();
        TpgNode protNode = null;
        String protName = null;
        for (String router : allConf.keySet()) {
            Configuration conf = allConf.get(router);
            if (conf.getDeviceType() == DeviceType.SWITCH) {
                continue;
            }
            protName = createName(router, "RIB");
            protNode = new TpgNode(protName, protocol.RIB, router);
            tpg.addVertex(protNode);
            multigraphNode.put(protName, protNode);
            phyNodeMap.get(router).add(protNode);

            if (protocols.get(router).contains(Protocol.OSPF)) {
                protName = createName(router, "OSPF");
                protNode = new TpgNode(protName, protocol.OSPF, router);
                tpg.addVertex(protNode);
                multigraphNode.put(protName, protNode);
                phyNodeMap.get(router).add(protNode);
            }
            if (protocols.get(router).contains(Protocol.BGP)) {
                protName = createName(router, "BGP");
                protNode = new TpgNode(protName, protocol.BGP, router);
                tpg.addVertex(protNode);
                multigraphNode.put(protName, protNode);
                phyNodeMap.get(router).add(protNode);
            }
        }
        //System.out.println("Edges interface");
        for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
            String router = entry.getKey();
            List<GraphEdge> edges = entry.getValue();
            Configuration conf = allConf.get(router);

            //System.out.println("VRF " + conf.getVrfs());
            for (GraphEdge e : edges) {
                //System.out.println(e.getStart()+"\t"+e.getEnd());
                if (g.isEdgeUsed(conf, Protocol.BGP, e)) {
                    if (e.getStart() != null && e.getEnd() != null) {
                        protName = bgpName(e.getRouter(), e.getPeer());
                        protNode = new TpgNode(protName, protocol.BGP, e.getRouter());
                        tpg.addVertex(protNode);
                        multigraphNode.put(protName, protNode);
                        phyNodeMap.get(router).add(protNode);
                    }
                }
                if (e.getStart() != null) {
                    protName = intfName(e.getRouter(), e.getStart().getName());
                    addInterface(e.getRouter(), protName);
                }
                if (e.getEnd() != null) {
                    protName = intfName(e.getPeer(), e.getEnd().getName());
                    addInterface(e.getPeer(), protName);
                }
            }
        }
    }

    private void initialize() {

        // create physical router to logical router-process mapping
        //System.out.println("Original Routers");
        for (Entry<String, List<GraphEdge>> entry : g.getEdgeMap().entrySet()) {
            String router = entry.getKey();
            phyNodeMap.put(router, new HashSet<>());
        }
    }

    private void buildGraph() {
        long startTime = System.nanoTime();
        ragBuild.run();
        rag = ragBuild.getRag();
        // buildRouterProtocol
        protocols = ragBuild.getProtocols();
        initialize();
        buildTpgNodes();
        buildTpgEdges();
        long endTime = System.nanoTime();
        setNodes();

        tpg.setLogicalPhysicalMap(phyEdgeMap);
        String key = srcIp.toString() + "-" + dstIp.toString();
        if (conMap != null && correctSrcDst) {
            conMap.put(key, tpg);
        }

        generateTime = endTime - startTime;
        System.out.println(tpg);
        System.out.println("src: " + srcTC + "dst: " + dstTC);
        System.out.println("Generate Time: " + generateTime / 1000000 + " ms");
    }

    private void draw() {
        System.out.println("Edges");
        for (TpgNode n : tpg.getNeighbors().keySet()) {
            System.out.println(n + "\t" + tpg.getNeighbors().get(n));
        }
    }

    public void run() {
        buildGraph();
        draw();

        System.out.println("Number of nodes: " + tpg.getAllVertices().size());
        System.out.println("Number of edges: " + tpg.getNumberOfEdges());
        System.out.println("Total edgecost var: " + tpg.getNumberOfEdges() * 7);
    }
}
