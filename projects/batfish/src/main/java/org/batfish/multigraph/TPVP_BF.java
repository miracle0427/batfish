package org.batfish.mulgraph;

import java.util.HashMap;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import java.util.HashSet;
import java.util.Iterator;


public class TPVP_BF {

	Tpg g;

    Map<TpgNode, EdgeCost> weight;
    Map<TpgNode, TpgNode> nextHop;
    Map<TpgNode, TpgPath> bestPath;
    HashSet<TpgEdge> failedSet;
    Map<TpgNode, Boolean> hasChanged;

	public TPVP_BF(Tpg graph) {	
		g = graph;

        weight = new HashMap<TpgNode, EdgeCost>();
        nextHop = new HashMap<TpgNode, TpgNode>();
        bestPath = new HashMap<TpgNode, TpgPath>();
        hasChanged = new HashMap<TpgNode, Boolean>();
        failedSet = new HashSet<>();
        initializeGraph();
	}

    public void initializeGraph() {

        // Step 1: Initialize distances from src to all other 
        // vertices as INFINITE 
        for(TpgNode v : g.getVertices()) {
            weight.put(v, new EdgeCost());
            weight.get(v).setInvalid();
            nextHop.put(v, null);
            bestPath.put(v, new TpgPath());
        }
    }

    public void setFailSet(HashSet<TpgEdge> fails) {
        failedSet = fails;
    }

    public EdgeCost update(EdgeCost weight_u, EdgeCost dist, protocol type) {
        EdgeCost ec = new EdgeCost();
        if (type == protocol.INTF) {
            // copy edge value
            ec = weight_u.copy();
        } else if (type == protocol.OSPF) { 
            // copy all variable just update ospf
            ec = weight_u.copy();
            ec.setOSPF(weight_u.ospf_cost + dist.ospf_cost);
            ec.AD =  dist.AD;
        } else if (type == protocol.BGP) {
            // update MED, LP as edge value, update AS
            ec = dist.copy();
            ec.setAS(weight_u.as_length + dist.as_length);
            ec.lp = dist.lp;
            ec.lp = dist.med;
            ec.AD = dist.AD;
        } else if (type == protocol.SWITCH) {
            // copy edge value
            ec = weight_u.copy();
        } else if (type == protocol.STAT) {
            // nothing really
            ec = weight_u.copy();
            ec.AD = dist.AD;
        } else if (type == protocol.SRC) {
            // compare other vertices
            ec = weight_u.copy();
        } else if (type == protocol.DST) {
            // just use edge
            ec = weight_u.copy();
            //ec.AD = dist.AD;
            //ec.AD = Edge.protocol_map.get(protocol.DST);
        } else if (type == protocol.IBGP) {
            // update MED, LP as edge value, update AS
            ec = dist.copy();
            ec.setAS(weight_u.as_length);
            //ec.AD = dist.AD;
        } else if (type == protocol.RIB) {
            // update MED, LP as edge value, update AS
            ec = weight_u.copy();
            //ec.AD = dist.AD;
        }  
        return ec;
    }

    public Boolean compare(EdgeCost x, EdgeCost y) {
        // lp1 > lp2: static > ospf > BGP ; as1 < as2
        if (x.AD < y.AD) {
            return true;
        } else if (x.AD > y.AD) {
            return false;
        } else {
            // if it is BGP
            if ( (x.AD == TpgEdge.protocol_map.get(protocol.BGP) && y.AD == TpgEdge.protocol_map.get(protocol.BGP)) ||
                (x.AD == TpgEdge.protocol_map.get(protocol.IBGP) && y.AD == TpgEdge.protocol_map.get(protocol.IBGP)) ){

                if (x.lp > y.lp) {
                    return true;
                } else if (x.lp < y.lp) {
                    return false;
                } else {
                    if (x.as_length < y.as_length) {
                        return true;
                    } else if (x.as_length > y.as_length) {
                        return false;
                    } else {
                        if (x.med < y.med) {
                            return true;
                        } else if (x.med > y.med) {
                            return false;
                        }
                        return false;
                    }
                }
            } else if (x.AD == TpgEdge.protocol_map.get(protocol.OSPF) && y.AD == TpgEdge.protocol_map.get(protocol.OSPF)) { // if it is ospf
                if (x.ospf_cost < y.ospf_cost) {
                    return true;
                } else if (x.ospf_cost > y.ospf_cost) {
                    return false;
                } else {
                    return false;
                }
            } else if ( (x.AD == TpgEdge.protocol_map.get(protocol.INTF) && y.AD == TpgEdge.protocol_map.get(protocol.INTF)) || 
                        (x.AD == TpgEdge.protocol_map.get(protocol.SWITCH) && y.AD == TpgEdge.protocol_map.get(protocol.SWITCH)) ) { // if it is ospf
                if (x.lp > y.lp) {
                    return true;
                } else if (x.lp < y.lp) {
                    return false;
                } else {
                    if (x.as_length < y.as_length) {
                        return true;
                    } else if (x.as_length > y.as_length) {
                        return false;
                    } else {
                        if (x.med < y.med) {
                            return true;
                        } else if (x.med > y.med) {
                            return false;
                        } else {
                            if (x.ospf_cost < y.ospf_cost) {
                                return true;
                            } else if (x.ospf_cost > y.ospf_cost) {
                                return false;
                            } else {
                                return false;
                            }
                        }
                    }
                }

            }
        }
        //System.out.println("Same WEIGHT");
        return false;
    }

    // return shortest path
    public TpgPath shortestPath(TpgNode src, TpgNode dst) { 
        TpgNode s = g.getVertex(src.getId());
        TpgNode d = g.getVertex(dst.getId());
        //System.out.println(((Node)src).getId());
        //System.out.println(currWeight);
        for(TpgNode v : g.getVertices()) {
            hasChanged.put(v, false);
        }

        EdgeCost currWeight;
        weight.put(d, new EdgeCost());
        weight.get(d).AD = TpgEdge.protocol_map.get(protocol.DST);
        weight.get(d).valid = true;
        nextHop.put(d, d);
        bestPath.get(d).add(d);
        hasChanged.put(d, true);
        // Step 2: Relax all edges |V| - 1 times. A simple 
        // shortest path from src to any other Node can 
        // have at-most |V| - 1 edges 
        //System.out.println("Starting weight calc");
        boolean changed = true;
        //for(Node vertices : g.getVertices()) {
        boolean firstIteration = true;
        while (changed) {
          changed = false;
          for(TpgNode u : g.getVertices()) {
            boolean curChanged = false;
            for(TpgEdge e1 : g.getNeighbors(u)) {
                if (failedSet.contains(e1)) {
                    continue;
                }
                TpgNode v = e1.getDst(); 
                if (hasChanged.get(v) == false) {
                    continue;
                }
                EdgeCost dist = e1.getCost();
                EdgeCost weight_u = weight.get(u);
                EdgeCost weight_v = weight.get(v);
                TpgPath path_v = bestPath.get(v);

                if (weight_v.valid) {
                    currWeight = update(weight_v, dist, e1.getType());
                    //System.out.println(u + "\t" + v + "\t" + currWeight);
                    /*if (u.getId().equals("c-BGP")){
                        System.out.println(u + "\t" + currWeight+ "\t" + weight_u);
                        System.out.println(e1 + "  " + weight_v);
                    }*/

                    if (compare(currWeight, weight_u) && !path_v.contains(u)) {
                        //System.out.println(u + "\t" + v + "\t" + currWeight);
                        weight.put(u, currWeight);
                        nextHop.put(u, v);
                        TpgPath path_u = new TpgPath(path_v);
                        path_u.add(u);
                        bestPath.put(u, path_u);
                        changed = true;
                        curChanged = true;
                        hasChanged.put(u, true);
                    }
                }
            }
            if (!curChanged && !firstIteration) {
                hasChanged.put(u, false);
            }
          } //break;
          firstIteration = false;
        }
        //System.out.println(bestPath.get(s));

        if (weight.get(s).valid) {
            return bestPath.get(s);
        }
        return null;
        //*/
    } 


}