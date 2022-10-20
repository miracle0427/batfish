package org.batfish.multigraph.rag;

import lombok.Data;
import org.batfish.multigraph.graph.protocol;

import java.util.Objects;

@Data
public class RagNode {

	private final String id;
    private final protocol type;
    private boolean taint = false;

    public RagNode(String x, protocol y){
        id = x;
        type = y;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        RagNode ragNode = (RagNode) o;
        return Objects.equals(id, ragNode.id) && type == ragNode.type;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, type);
    }
}