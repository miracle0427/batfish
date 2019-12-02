package org.batfish.mulgraph;

import java.util.HashMap;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import java.util.HashSet;
import java.util.Iterator;


public class TPVP {

	Tpg g;

    Map<TpgNode, EdgeCost> weight;
    Map<TpgNode, TpgNode> nextHop;
    Map<TpgNode, TpgPath> bestPath;

	public TPVP(Tpg graph) {	
		g = graph;

        weight = new HashMap<TpgNode, EdgeCost>();
        nextHop = new HashMap<TpgNode, TpgNode>();

        initializeGraph();
	}

    public void initializeGraph() {

        // Step 1: Initialize distances from src to all other 
        // vertices as INFINITE 
        for(TpgNode v : g.getVertices()) {
            weight.put(v, new EdgeCost());
            weight.get(v).setInvalid();
            nextHop.put(v, null);
        }
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
            ec.AD = dist.AD;
        } else if (type == protocol.SRC) {
            // compare other vertices
            ec = weight_u.copy();
        } else if (type == protocol.DST) {
            // just use edge
            ec = dist.copy();
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
        /*
        // lp1 > lp2: static > ospf > BGP ; as1 < as2
        if (x.AD < y.AD) {
            return true;
        } else if (x.AD > y.AD) {
            return false;
        } else {
            // if it is BGP
            if ( (x.AD == Edge.protocol_map.get(protocol.BGP) && y.AD == Edge.protocol_map.get(protocol.BGP)) ||
                (x.AD == Edge.protocol_map.get(protocol.IBGP) && y.AD == Edge.protocol_map.get(protocol.IBGP)) ){

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
            } else if (x.AD == Edge.protocol_map.get(protocol.OSPF) && y.AD == Edge.protocol_map.get(protocol.OSPF)) { // if it is ospf
                if (x.ospf_cost < y.ospf_cost) {
                    return true;
                } else if (x.ospf_cost > y.ospf_cost) {
                    return false;
                } else {
                    return false;
                }
            } else if (x.AD == Edge.protocol_map.get(protocol.SWITCH) && y.AD == Edge.protocol_map.get(protocol.SWITCH)) { // if it is ospf
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
        //System.out.println("Same WEIGHT");*/
        return false;
    }

}