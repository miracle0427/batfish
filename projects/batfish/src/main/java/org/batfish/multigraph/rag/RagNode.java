package org.batfish.multigraph.rag;

import lombok.Data;
import org.batfish.multigraph.graph.protocol;

@Data
public class RagNode {

	private String id;
    private protocol type;
    private boolean taint = false;

    public RagNode(String x, protocol y){
        id = x;
        type = y;
    }
}