package org.batfish.multigraph.tpg;

import lombok.Data;
import org.batfish.multigraph.graph.EdgeCost;
import org.batfish.multigraph.graph.protocol;

import java.util.*;

@Data
public class Tpg {

    private Map<TpgNode, List<TpgEdge>> neighbors = new HashMap<>();

    private int edgeNum = 0;

    private int vertexNum = 0;

    private TpgNode srcTCNode = null;

    private TpgNode dstTCNode = null;

    private Map<String, Set<TpgEdge>> logicalPhysicalMap = new HashMap<>();

    public void addVertex(TpgNode vertex) {
        if (neighbors.containsKey(vertex)) return;
        neighbors.put(vertex, new ArrayList<>());
        vertexNum++;
    }

    public int getNumberOfEdges() {
        int sum = 0;
        for (List<TpgEdge> outBounds : neighbors.values()) {
            sum += outBounds.size();
        }
        return sum;
    }

    public boolean contains(TpgNode vertex) {
        return neighbors.containsKey(vertex);
    }

    /**
     * Add an edge to the graph; if either vertex does not exist, it's added.
     * This implementation allows the creation of multi-edges and self-loops.
     */
    public TpgEdge addEdge(TpgNode from, TpgNode to, EdgeCost cost, protocol type) {
        //System.out.println(from + "\t" + to);
        addVertex(from);
        addVertex(to);
        TpgEdge thisEdge = new TpgEdge(from, to, cost, type);
        neighbors.get(from).add(thisEdge);
        edgeNum++;
        return thisEdge;
    }

    public Set<TpgNode> getAllVertices() {
        return neighbors.keySet();
    }

    public TpgNode getVertex(String label) {
        for (TpgNode v : neighbors.keySet()) {
            if (Objects.equals(v.getId(), label)) {
                return v;
            }
        }
        return null;
    }

    public List<TpgEdge> getNeighbors(TpgNode vertex) {
        return neighbors.get(vertex);
    }

    public TpgEdge getEdge(TpgNode from, TpgNode to) {
        for (TpgEdge e : neighbors.get(from)) {
            if (Objects.equals(e.getDst(), to))
                return e;
        }
        return null;
    }
}

