package org.batfish.mulgraph;

import java.io.IOException;

public class TestConn {

    public static void main(String[] args) throws IOException {

        Digraph graph = new Digraph();
        //Unreachable unreachable = new Unreachable(graph);
        //Cycle cycle = new Cycle(graph);
        //BasicOperation basic = new BasicOperation(graph);
        Disconnect kconn = new Disconnect(graph);
        //BellmanFord bf = new BellmanFord(graph);

        Node v1 = new Node("v1", protocol.BGP);
        Node v2 = new Node("v2", protocol.BGP);
        Node v3 = new Node("v3", protocol.BGP);
        Node v4 = new Node("v4", protocol.BGP);
        Node v5 = new Node("v5", protocol.BGP);
        Node v6 = new Node("v6", protocol.BGP);
        Node v7 = new Node("v7", protocol.BGP);
        Node v8 = new Node("v8", protocol.BGP);
        Node v9 = new Node("v9", protocol.BGP);
        Node v10 = new Node("v10", protocol.BGP);
        Node v11 = new Node("v11", protocol.BGP);
        Node v12 = new Node("v12", protocol.BGP);

        /*v9.addCommunity(1);
        v8.addCommunity(1);
        v10.blockCommunity(1);
        v12.removeCommunity(1);*/


        graph.add(v1);
        graph.add(v2);
        graph.add(v3);
        graph.add(v4);
        graph.add(v5);
        graph.add(v6);
        graph.add(v7);
        graph.add(v8);
        graph.add(v9);
        graph.add(v10);
        graph.add(v11);
        graph.add(v12);

        //*
        EdgeCost ec = new EdgeCost();
        ec.ospf_cost = 3;
        //*
        graph.add(v1, v2, ec, protocol.IBGP);
        graph.add(v2, v3, ec, protocol.OSPF);
        graph.add(v3, v6, ec, protocol.OSPF);
        graph.add(v3, v4, ec, protocol.DEF);
        graph.add(v4, v5, ec, protocol.OSPF);
        graph.add(v6, v5, ec, protocol.OSPF);//*/
        graph.add(v1, v7, ec, protocol.OSPF);
        graph.add(v7, v9, ec, protocol.OSPF);
        graph.add(v9, v10, ec, protocol.OSPF);
        graph.add(v10, v5, ec, protocol.OSPF);
        graph.add(v1, v8, ec, protocol.OSPF);
        graph.add(v8, v11, ec, protocol.OSPF);
        graph.add(v11, v10, ec, protocol.OSPF);
        graph.add(v11, v12, ec, protocol.OSPF);
        graph.add(v12, v10, ec, protocol.OSPF);

        //graph.addPhysicalMap(v2, v3, 1);
        //graph.addPhysicalMap(v10, v5, 1);

        kconn.formulate(v1,v5);
        kconn.run();

        //System.out.println(basic.printAllPaths(v1,v5));

        /*

        System.out.println("Is cyclic? "+ cycle.isCyclic());
        System.out.println("Is unreachable? "+ unreachable.isUnreachable(v1, v3));
        System.out.println("Is reachable? "+ unreachable.isUnreachable(3, 0));
        System.out.println("Is reachable? "+ graph.isReachable(0, 3));
        System.out.println("Is reachable? "+ graph.isReachable(3, 0));
        System.out.println("The nr. of vertices is: " + graph.getVertices().size());
        System.out.println("The nr. of edges is: " + graph.getNumberOfEdges()); // to be fixed
        System.out.println("The current graph: " + graph);
        System.out.println("In-degrees for 0: " + graph.inDegree(0));
        System.out.println("Out-degrees for 0: " + graph.outDegree(0));
        System.out.println("In-degrees for 3: " + graph.inDegree(3));
        System.out.println("Out-degrees for 3: " + graph.outDegree(3));
        System.out.println("Outbounds for 1: "+ graph.outboundNeighbors(1));
        System.out.println("Inbounds for 1: "+ graph.inboundNeighbors(1));
        System.out.println("(0,2)? " + (graph.isEdge(0, 2) ? "It's an edge" : "It's not an edge"));
        System.out.println("(1,3)? " + (graph.isEdge(1, 3) ? "It's an edge" : "It's not an edge"));
    
        System.out.println("Cost for (1,3)? "+ graph.getCost(1, 3));
        System.out.println("Is reachable? "+ graph.isReachable(1, 3));
        System.out.println("Is reachable? "+ graph.isReachable(3, 1));
        System.out.println("Paths 1 to 3 ");
        ArrayList<ArrayList<Integer>> allPath = graph.printAllPaths(1, 3);

        for (ArrayList<Integer> localPathList: allPath) {
            System.out.println(localPathList);
        }
        System.out.println("Is cycle? "+ graph.isCyclic());
        */

    }
}
