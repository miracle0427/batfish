package org.batfish.multigraph.rag;

import lombok.Data;
import org.batfish.multigraph.graph.protocol;

import java.util.*;

@Data
public class Rag {
    private Map<RagNode, List<RagEdge>> neighbors = new HashMap<>();

    private int edgeNum = 0;

    private int vertexNum = 0;

    private RagNode srcTCNode = null;

    private RagNode dstTCNode = null;

    public Map<RagNode, Set<RagNode>> ibgpPeers = new HashMap<>();

    public String toString() {
        StringBuffer s = new StringBuffer();
        for (RagNode v : getAllVertices())
            s.append("\n    " + v + " -> " + neighbors.get(v));
        return s.toString();
    }

    public void addVertex(RagNode vertex) {
        if (neighbors.containsKey(vertex)) return;
        neighbors.put(vertex, new ArrayList<>());
        vertexNum++;
    }

    public int getNumberOfEdges(){
        int sum = 0;
        for(List<RagEdge> outBounds : neighbors.values()){
            sum += outBounds.size();
        }
        return sum;
    }

    public boolean contains(RagNode vertex) {
        return neighbors.containsKey(vertex);
    }

    /**
     * Add an edge to the graph; if either vertex does not exist, it's added.
     * This implementation allows the creation of multi-edges and self-loops.
     */
    public void addEdge(RagNode from, RagNode to, protocol type) {
        this.addVertex(from);
        this.addVertex(to);
        neighbors.get(from).add(new RagEdge(from, to, type));
        edgeNum++;
    }

    public Set<RagNode> getAllVertices() {
        return neighbors.keySet();
    }

    public RagNode getVertex(String label) {
        for (RagNode v : neighbors.keySet()) {
            if (Objects.equals(v.getId(), label)) {
                return v;
            }
        }
        return null;
    }

    public List<RagEdge> getNeighbors(RagNode vertex) {
        return neighbors.get(vertex);
    }

    public RagEdge getEdge(RagNode from, RagNode to) {
        for(RagEdge e :  neighbors.get(from)){
            if(Objects.equals(e.getDst(), to))
                return e;
        }
        return null;
    }

    public void taint() {
        taintPropagate(dstTCNode, false);
    }

    private void taintPropagate(RagNode r, boolean ibgp) {
        r.setTaint(true);
        for(RagEdge e :  neighbors.get(r)){
            if (e.getType() == protocol.IBGP) {
                if (!ibgp && !e.getDst().isTaint()){
                    taintPropagate(e.getDst(), true);
                }
            } else {
                if (!e.getDst().isTaint()) {
                    taintPropagate(e.getDst(), false);
                }
            }
        }
    }
}

