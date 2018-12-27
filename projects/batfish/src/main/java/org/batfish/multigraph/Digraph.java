package org.batfish.mulgraph;

import java.util.HashMap;
import java.util.ArrayList;
import java.util.Map;
import java.util.List;
import java.util.Set;
import java.util.HashSet;
import java.util.Collections;
//import java.lang.*;

public class Digraph {

    /**
     * A Map is used to map each vertex to its list of adjacent vertices.
     */

    private Map<Node, List<Edge>> neighbors = new HashMap<>();

    private Map<Edge, Integer> logicalPhysicalMap = new HashMap<>();

    private Map<String, List<List<Node>>> iBGPCorr = new HashMap<>();

    private Map<String, List<List<Node>>> defCorr = new HashMap<>();

    private Map<String, Set<Node>> communityAdded = new HashMap<>();

    private Set<String> communityBlocked = new HashSet<>();

    private Map<String, Set<Node>> communitySeen = new HashMap<>();

    private int nr_edges = 0;

    //private int nr_phy_edges = 0;

    private int nr_vertices = 0;

    /**
     * String representation of graph.
     */
    public String toString() {
        StringBuffer s = new StringBuffer();
        for (Node v : getVertices())
            s.append("\n    " + v + " -> " + neighbors.get(v));
        return s.toString();
    }

    public Map<String, Set<Node>> getCommunitySeen() {
      return communitySeen;
    }

    /**
     * Add a vertex to the graph. Nothing happens if vertex is already in graph.
     */
    public void add(Node vertex) {
        if (neighbors.containsKey(vertex))
            return;
        neighbors.put(vertex, new ArrayList<Edge>());
        nr_vertices = nr_vertices + 1;
        for (String community : vertex.addedCommunity) {
          if (!communityAdded.containsKey(community)) {
            Set<Node> list = new HashSet<>();
            communityAdded.put(community, list);  
          }
          communityAdded.get(community).add(vertex);          
        }

        for (String community : vertex.blockedCommunity) {
          communityBlocked.add(community);
        }
    }

    /**
     * Set vertices who can see a community
     */
    public void setAll(Node v, Set<Node> seenCommunity, HashMap<Node, Boolean> visited) {
      // Mark the current node 
      visited.put(v, true);
      seenCommunity.add(v);
      for(Edge e: getNeighbors(v)) {
        Node i = e.getDst();
        if (visited.get(i) == false) {
          setAll(i, seenCommunity, visited);
        } 
      }
    }


    /**
     * Set vertices who can see a community
     */
    public void setCommunity() {

      for (String community : communityBlocked) {
        //Set commSet = communityAdded.get(community);
        Set<Node> seenCommunity = new HashSet<>();
        communitySeen.put( community, seenCommunity);

        HashMap<Node, Boolean> visited = new HashMap<>(); 
        for (Node v : getVertices()) {
            visited.put(v, false);
        }

        for (Node added : communityAdded.get(community)) {
          setAll(added, seenCommunity, visited);
        }
      }

      //System.out.println("X " + communitySeen);

    }

    public int getNumberOfEdges(){
        int sum = 0;
        for(List<Edge> outBounds : neighbors.values()){
            sum += outBounds.size();
        }
        return sum;
    }

    /**
     * True iff graph contains vertex.
     */
    public boolean contains(Node vertex) {
        return neighbors.containsKey(vertex);
    }

    /**
     * Add an edge to the graph; if either vertex does not exist, it's added.
     * This implementation allows the creation of multi-edges and self-loops.
     */
    public void add(Node from, Node to, EdgeCost cost, protocol type) {
        this.add(from);
        this.add(to);
        neighbors.get(from).add(new Edge(from, to, cost, type));
        nr_edges = nr_edges + 1;
    }

    /**
     * Add both side edges to the graph
     */
    public void diAdd(Node from, Node to, EdgeCost cost, protocol type) {
        this.add(from);
        this.add(to);
        neighbors.get(from).add(new Edge(from, to, cost, type));
        neighbors.get(to).add(new Edge(to, from, cost, type));
        nr_edges = nr_edges + 2;
    }

    public int outDegree(int vertex) {
        return neighbors.get(vertex).size();
    }

    public int inDegree(Node vertex) {
       return inboundNeighbors(vertex).size();
    }

    public Set<Node> getVertices() {
        return neighbors.keySet();
    }

    public Node getNode(String label) {
      for (Node v : getVertices()) {
        if (v.getId().equals(label)) {
          return v;
        }
      }
      return null;
    }

    public List<Edge> getNeighbors(Node vertex) {
        return neighbors.get(vertex);
    }

    public List<Node> outboundNeighbors(Node vertex) {
        List<Node> list = new ArrayList<Node>();
        for(Edge e: neighbors.get(vertex))
            list.add(e.vertex);
        return list;
    }

    public List<Node> inboundNeighbors(Node inboundNode) {
        List<Node> inList = new ArrayList<Node>();
        for (Node from : getVertices()) {
            for (Edge e : neighbors.get(from))
                if (e.vertex.equals(inboundNode))
                    inList.add(from);
        }
        return inList;
    }

    public boolean isEdge(Node from, Node to) {
      if (from == null || to ==null)
        return false;
      for(Edge e :  neighbors.get(from)){
          if(e.vertex.equals(to))
              return true;
      }
      return false;
    }

    public ArrayList<Edge> removeNode(String label) {
      ArrayList<Edge> edges = new ArrayList<Edge>();

      Node v = getNode(label);
      if (v == null) {
        return edges;
      }

      // outbound neighbors
      for(Edge e: neighbors.get(v)) {
        Edge removing = e.copy();
        edges.add(removing);
        removeEdge(e);
      }

      // inbound neighbors
      for (Node from : getVertices()) {
        for (Edge e : neighbors.get(from)) {
          if (e.vertex.getId().equals(v.getId())) {
            Edge removing = e.copy();
            edges.add(removing);
            removeEdge(e);
          }
        }
      }

      return edges;
    }

    public void removeEdgeGraph(Edge e) {

      //String from = e.src.getId();
      //String to = e.vertex.getId();
      neighbors.get(e.src).remove(e);

    }

    public void removeEdge(Edge e) {
      EdgeCost ec = new EdgeCost();
      Edge change = getEdgeById(e.src.getId(), e.vertex.getId());
      if (change!=null)
      {
        change.setCost(ec);
      } else {
        System.out.println("Edge does not exists");
      }
    }

    public void addEdges(ArrayList<Edge> edges) {
      Collections.reverse(edges);
      for (Edge e : edges) {
        getEdgeById(e.src.getId(), e.vertex.getId()).setCost(e.cost);
      }
    }

    public Edge getEdgeById(String from, String to) {
      for(Edge e :  neighbors.get(getNode(from))){
          if(e.vertex.getId().equals(to))
              return e;
      }
      return null;
    }

    public void addPhysicalMap(Node from, Node to, int p) {
      for(Edge e :  neighbors.get(from)){
          if(e.vertex.equals(to)) {
            logicalPhysicalMap.put(e, p);
            return;
          }
      }
    }

    public int getPhysicalMap(Node from, Node to) {
      Edge e = getEdge(from, to);
      if ( e!=null && logicalPhysicalMap.containsKey(e) ) {
        return logicalPhysicalMap.get(e);
      }
      return -1;
    }

    public Edge getEdge(Node from, Node to) {
      for(Edge e :  neighbors.get(from)){
          if(e.vertex.equals(to))
              return e;
      }
      return null;
    }

    public EdgeCost getCost(Node from, Node to) {
        for(Edge e :  neighbors.get(from)){
            if(e.vertex.equals(to))
                return e.cost;
        }
        return null;
    }

    public Boolean isIBGPPair(Node v3, Node v4) {
        String key = v3 + "-" + v4;
        return iBGPCorr.containsKey(key);
    }

    public Boolean isDefPair(Node v3, Node v4) {
        String key = v3 + "-" + v4;
        return defCorr.containsKey(key);
    }

    public List<List<Node>> getDefPair(Node v3, Node v4) {
        String key = v3 + "-" + v4;
        //System.out.println(defCorr.get(key));
        return defCorr.get(key);
    }

    public List<List<Node>> getPair(Node v3, Node v4) {
        String key = v3 + "-" + v4;
        //System.out.println(iBGPCorr.get(key));
        return iBGPCorr.get(key);
    }

    public void setCorrelated() {
      for(Node v1 : getVertices()) {
        for(Edge e1 :  neighbors.get(v1)){
          if(e1.getType() == protocol.IBGP) {
            Node v2 = e1.getDst();

            for(Edge e2 :  neighbors.get(v2)) {
              if(e2.getType() == protocol.OSPF) {
                Node v3 = e2.getDst();

                for(Edge e3 :  neighbors.get(v3)) {

                  if(e3.getType() == protocol.OSPF) {
                    Node v4 = e3.getDst();
                    List<Node> starttwo = new ArrayList<Node>();
                    starttwo.add(v1);
                    starttwo.add(v2);
                    String key = v3 + "-" + v4;
                    if (iBGPCorr.containsKey(key)) {
                      iBGPCorr.get(key).add(starttwo);  
                    } else {
                      List<List<Node>> all = new ArrayList<>();
                      all.add(starttwo);
                      iBGPCorr.put(key, all);  
                    }
                    
                    //System.out.println("iBGP set");
                  }

                  if(e3.getType() == protocol.DEF) {
                    Node v4 = e3.getDst();
                    List<Node> starttwo = new ArrayList<Node>();
                    starttwo.add(v1);
                    starttwo.add(v2);
                    String key = v3 + "-" + v4;
                    if (defCorr.containsKey(key)) {
                      defCorr.get(key).add(starttwo);  
                    } else {
                      List<List<Node>> all = new ArrayList<>();
                      all.add(starttwo);
                      defCorr.put(key, all);  
                    }
                    //System.out.println("DEF set");
                  }

                }
              }
            }

          }
        }            
      }
    }

}

