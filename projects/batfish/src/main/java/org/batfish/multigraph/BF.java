package org.batfish.mulgraph;

import java.util.HashMap;
import java.util.ArrayList;
import java.util.Map;


public class BF {

	Digraph g;

	public BF(Digraph graph) {	
		g = graph;
	}

    public EdgeCost update(EdgeCost weight_u, EdgeCost dist) {
        EdgeCost ec = new EdgeCost();
        if (dist.AD == 20) {

            ec.setOSPF(weight_u.ospf_cost + dist.ospf_cost);
            ec.AD =  20;

        } else if (dist.AD == 30) {

            ec.setAS(weight_u.as_length + dist.as_length);
            ec.AD = 30;
            ec.setLP(dist.getLP());

        }
        return ec;
        //return weight_u.ospf_cost + dist.ospf_cost;
    }

    public Boolean compare(EdgeCost x, EdgeCost y) {

        // lp1 > lp2: static > ospf > BGP ; as1 < as2
        if (x.AD < y.AD) {
            return true;
        } else if (x.AD > y.AD) {
            return false;
        } else {
            // if it is BGP
            if (x.as_length != Integer.MAX_VALUE) {

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
                        //System.out.println("Same BGP");
                        return false;
                    }
                }
            } else if (x.ospf_cost != Integer.MAX_VALUE) { // if it is ospf

                if (x.ospf_cost < y.ospf_cost) {
                    return true;
                } else if (x.ospf_cost > y.ospf_cost) {
                    return false;
                } else {
                    //System.out.println("Same OSPF");
                    return false;
                }
            }
        }
        //System.out.println("Same WEIGHT");
        return false;
    }

    // return shortest path
    public Path shortestPath(Node src, Node dst) { 

        Map<Node, EdgeCost> weight = new HashMap<Node, EdgeCost>();
        Map<Node, Node> nextHop = new HashMap<Node, Node>();
        EdgeCost currWeight = new EdgeCost();
        Path path = new Path();
        Node s = g.getNode(src.getId());
        Node d = g.getNode(dst.getId());
        //System.out.println(((Node)src).getId());
        //System.out.println(currWeight);
        //*

        // Step 1: Initialize distances from src to all other 
        // vertices as INFINITE 
        for(Node v : g.getVertices()) {
            weight.put(v, new EdgeCost());
            nextHop.put(v, null);
        }
        EdgeCost ec = new EdgeCost();
        if (src.getType() == protocol.OSPF)
            ec.setOSPF(0);
        else if (src.getType() == protocol.BGP)
            ec.setAS(0);

        weight.put(d, ec);
        nextHop.put(d, d);

        // Step 2: Relax all edges |V| - 1 times. A simple 
        // shortest path from src to any other vertex can 
        // have at-most |V| - 1 edges 
        for(Node vertices : g.getVertices()) { 
          for(Node u : g.getVertices()) {
            for(Edge e1 : g.getNeighbors(u)) {

                Node v = e1.getDst(); 
                EdgeCost dist = e1.getCost();
                EdgeCost weight_u = weight.get(u);
                EdgeCost weight_v = weight.get(v);

                if ( (weight_v.valid == true) ) {
                    currWeight = update(weight_v, dist);
                    if (compare(currWeight, weight_u)) {
                        weight.put(u, currWeight); 
                        nextHop.put(u, v);
                    }
                }
            }
          } 
        }

        Node cur = s;
        path.add(s);
        //System.out.println(nextHop);
        //System.out.println("Path");
        //System.out.print(cur);
        //System.out.print("--");
        while( cur!= d ) {
            if (nextHop.get(cur) == null) {
                break;
            }
            path.add(nextHop.get(cur), g.getEdge(cur, nextHop.get(cur)));
            cur = nextHop.get(cur);
            //System.out.print(cur);
            //System.out.print("--");
        }
        //path.setPath();
        //System.out.println(path);
        if (cur.getId().equals(d.getId())) {
            //path.setPath();
            return path;
        }
        //System.out.println("Path doesn't exist" + s + " " + d);
        return null;
        //*/
    } 

}