package org.batfish.multigraph.rag;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.batfish.multigraph.graph.protocol;

@Data
@AllArgsConstructor
public class RagEdge {
    public RagNode src;
    public RagNode dst;
    public protocol type;
}

