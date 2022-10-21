package org.batfish.multigraph.tpg;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.batfish.multigraph.graph.protocol;

@Data
@AllArgsConstructor
public class TpgNode {
	private String id;
    private protocol type;
    private String device;
}