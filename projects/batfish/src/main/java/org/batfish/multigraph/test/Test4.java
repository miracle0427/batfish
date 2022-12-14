package org.batfish.multigraph.test;

import org.batfish.multigraph.graph.Digraph;
import org.batfish.multigraph.graph.EdgeCost;
import org.batfish.multigraph.graph.Node;
import org.batfish.multigraph.policy.RKConnected;
import org.batfish.multigraph.graph.protocol;

import java.io.IOException;

public class Test4 {

    public static void main(String[] args) throws IOException {

        Digraph graph = new Digraph();
        //Unreachable unreachable = new Unreachable(graph);
        //Cycle cycle = new Cycle(graph);
        //BasicOperation basic = new BasicOperation(graph);
        //BellmanFord bf = new BellmanFord(graph);
        
        //PathLength kconn = new PathLength(graph);

        Node v1 = new Node("v1", protocol.BGP);
        Node v2 = new Node("v2", protocol.BGP);
        Node v3 = new Node("v3", protocol.BGP);
        Node v4 = new Node("v4", protocol.BGP);
        Node v5 = new Node("v5", protocol.BGP);
        Node v6 = new Node("v6", protocol.BGP);
        Node v7 = new Node("v7", protocol.BGP);
        Node v8 = new Node("v8", protocol.BGP);
        Node v9 = new Node("v9", protocol.BGP);
        Node v10 = new Node("v10", protocol.IBGP);
        Node v11 = new Node("v11", protocol.OSPF);
        Node v12 = new Node("v12", protocol.OSPF);
        Node v13 = new Node("v13", protocol.BGP);

        
        v4.addCommunity("10");
        //v8.removeCommunity("10");
        v7.blockCommunity("10");

        
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
        graph.add(v13);

        //*
        EdgeCost ec = new EdgeCost();
        ec.setAS(1);
        ec.setAD(30);

        EdgeCost ec2 = new EdgeCost();
        ec2.setAS(2);
        ec2.setAD(30);


        graph.add(v1, v2, ec, protocol.BGP);
        graph.add(v2, v3, ec, protocol.BGP);
        graph.add(v3, v4, ec, protocol.BGP);
        graph.add(v1, v5, ec2, protocol.BGP);
        graph.add(v5, v4, ec2, protocol.BGP);
        graph.add(v1, v7, ec2, protocol.BGP);
        graph.add(v7, v8, ec2, protocol.BGP);
        graph.add(v8, v9, ec2, protocol.BGP);
        graph.add(v9, v4, ec2, protocol.BGP);
        graph.add(v1, v10, ec, protocol.BGP);
        graph.add(v10, v11, ec, protocol.IBGP);
        graph.add(v11, v12, ec, protocol.OSPF);
        graph.add(v12, v13, ec, protocol.OSPF );
        /*
        graph.add(v10, v11, ec, protocol.OSPF);
        graph.add(v11, v12, ec, protocol.OSPF);
        graph.add(v12, v13, ec, protocol.IBGP);

        */
        graph.add(v13, v4, ec, protocol.BGP);

        //graph.reverseEdge()

        /*
        graph.add(v1, v2, ec, protocol.BGP);
        graph.add(v2, v3, ec, protocol.DEF);
        graph.add(v3, v4, ec, protocol.BGP);
        graph.add(v1, v5, ec2, protocol.BGP);
        graph.add(v5, v4, ec2, protocol.DEF);
        graph.add(v1, v7, ec2, protocol.BGP);
        graph.add(v7, v8, ec2, protocol.BGP);
        graph.add(v8, v9, ec2, protocol.DEF);
        graph.add(v9, v4, ec2, protocol.BGP);
        graph.add(v1, v10, ec, protocol.BGP);
        graph.add(v10, v11, ec, protocol.IBGP);
        graph.add(v11, v12, ec, protocol.OSPF);
        graph.add(v12, v13, ec, protocol.OSPF);
        graph.add(v13, v4, ec, protocol.BGP);

        */
        // These are for other non-LP
        //graph.setCommunityReverse();
        //graph.setCorrelated();

        /*
        RYen y = new RYen(graph);
        ArrayList<Path> k = y.ksp(v1, v4, 2);
        System.out.println(k);
        //*/
        /*
        Unreachable unreach = new Unreachable(graph);
        System.out.println(unreach.isUnreachable(v1,v4));
        //*/
        
        //*
        RKConnected kconn = new RKConnected(graph);
        kconn.formulate(v4, v1);
        System.out.println(kconn.run());
        //*/
        /*
        RPathLength kconn = new RPathLength(graph);
        kconn.formulate(v4, v1, 1);
        kconn.run();
        */
        //BF bf = new BF(graph);
        //Path k = bf.shortestPath(v1, v4);
        

    }
}