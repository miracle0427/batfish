package org.batfish.mulgraph;

import java.io.IOException;
import java.util.HashMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.io.File;
import java.io.FileReader;
import java.io.BufferedReader;


public class Test2 {

    public static void main(String[] args) throws IOException {

        Digraph graph = new Digraph();
        //Disconnect kconn = new Disconnect(graph);
        String fileName = args[0];
        KConnected kconn = new KConnected(graph);
        File file = new File(fileName);
        BufferedReader br = new BufferedReader(new FileReader(file)); 
        String st, src, dst;
        //Set<String> vertexSet = new HashSet<String>();
        Map<String, Node> vertexMap = new HashMap<String, Node>();
        EdgeCost ec = new EdgeCost();

        while ((st = br.readLine()) != null) {
            //System.out.println(st);
            String tokens[] = st.split("\t");
            src = tokens[0];
            dst = tokens[1];
            if(!vertexMap.containsKey(src)) {
                Node v1 = new Node(src, protocol.BGP);
                graph.add(v1);
                vertexMap.put(src, v1);
            }
            if(!vertexMap.containsKey(dst)) {
                Node v1 = new Node(dst, protocol.BGP);
                graph.add(v1);
                vertexMap.put(dst, v1);
            }
            graph.diAdd(vertexMap.get(src), vertexMap.get(dst), ec, protocol.BGP);
        }

        List<String> keysAsArray = new ArrayList<String>(vertexMap.keySet());
        Random r = new Random();
        //System.out.println(graph);
        int numruns = 10;
        double total = 0;
        double max = Integer.MIN_VALUE;
        System.out.println(fileName);
        for (int i=0;i<numruns;i++) {
            src = keysAsArray.get(r.nextInt(keysAsArray.size()));
            dst = keysAsArray.get(r.nextInt(keysAsArray.size()));
            //src="68";
            //dst="71";
            Node v1 = vertexMap.get(src);
            Node v2 = vertexMap.get(dst);
            //System.out.println("SRC: " + v1 + " DST: " + v2 + graph.getNeighbors(v1));
            kconn = new KConnected(graph);
            kconn.formulate(vertexMap.get(src), vertexMap.get(dst));
            double time = kconn.run(); 
            //kconn.run();
            //BasicOperation basic = new BasicOperation(graph);
            //ArrayList<Path> allPath = basic.printAllPaths(v1, v2);
            //System.out.println(time);
            total = total + time;
            if (max < time)
                max = time;
        }
        System.out.println("Average: "+ total/(float)numruns);
        System.out.println("Max: "+ max);
        /*
        Node v1 = new Node("v1", protocol.BGP);
        graph.add(v1);


        
        

        kconn.formulate(v1,v18);
        //kconn.formulate(v1,v8);
        kconn.run();
        */
    }
}
