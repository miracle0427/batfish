package org.batfish.multigraph.tpg;

import lombok.Data;
import org.batfish.multigraph.graph.EdgeCost;
import org.batfish.multigraph.graph.protocol;

import java.util.HashMap;
import java.util.ArrayList;
import java.util.Map;
import java.util.List;
import java.util.Set;

@Data
public class Tpg {

    private Map<TpgNode, List<TpgEdge>> neighbors = new HashMap<>();

    private int edgeNum = 0;

    private int vertexNum = 0;

    private TpgNode srcTCNode = null;

    private TpgNode dstTCNode = null;

    public Map<String, Set<TpgEdge>> logicalPhysicalMap = new HashMap<>();

    public Map<TpgNode, List<TpgEdge>> returnCopyNeighborMap() {
      Map<TpgNode, List<TpgEdge>> copy = new HashMap<>();
      for (Map.Entry<TpgNode, List<TpgEdge>> entry: neighbors.entrySet()) {
        List<TpgEdge> copyList = new ArrayList<TpgEdge>();
        for (TpgEdge edge: entry.getValue()) {
          copyList.add(edge);
        }
        copy.put(entry.getKey(), copyList);
      }
      return copy;
    }

    public void addVertex(TpgNode vertex) {
        if (neighbors.containsKey(vertex))  return;
        neighbors.put(vertex, new ArrayList<>());
        vertexNum++;
    }

    public int getNumberOfEdges(){
        int sum = 0;
        for(List<TpgEdge> outBounds : neighbors.values()){
            sum += outBounds.size();
        }
        return sum;
    }

    /**
     * True iff graph contains vertex.
     */
    public boolean contains(TpgNode vertex) {
        return neighbors.containsKey(vertex);
    }

    /**
     * Add an edge to the graph; if either vertex does not exist, it's added.
     * This implementation allows the creation of multi-edges and self-loops.
     */
    public TpgEdge add(TpgNode from, TpgNode to, EdgeCost cost, protocol type) {
        //System.out.println(from + "\t" + to);
        this.add(from);
        this.add(to);
        TpgEdge thisEdge = new TpgEdge(from, to, cost, type);
        neighbors.get(from).add(thisEdge);
        nr_edges = nr_edges + 1;
        return thisEdge;
    }

    public Set<TpgNode> getAllVertices() {
        return neighbors.keySet();
    }

    public TpgNode getVertex(String label) {
      for (TpgNode v : getVertices()) {
        if (v.getId().equals(label)) {
          return v;
        }
      }
      return null;
    }

    public List<TpgEdge> getNeighbors(TpgNode vertex) {
        return neighbors.get(vertex);
    }
    public List<TpgEdge> inboundEdges(TpgNode inboundVertex) {
        List<TpgEdge> inList = new ArrayList<>();
        for (TpgNode from : getVertices()) {
            for (TpgEdge e : neighbors.get(from))
                if (e.vertex.equals(inboundVertex))
                    inList.add(e);
        }
        return inList;
    }

    public List<TpgNode> outboundNeighbors(TpgNode vertex) {
        List<TpgNode> list = new ArrayList<TpgNode>();
        for(TpgEdge e: neighbors.get(vertex))
            list.add(e.vertex);
        return list;
    }

    public TpgEdge getEdge(TpgNode from, TpgNode to) {
      for(TpgEdge e :  neighbors.get(from)){
          if(e.vertex.equals(to))
              return e;
      }
      return null;
    }
}

