package org.batfish.multigraph.tpg;

import lombok.Data;
import org.batfish.multigraph.graph.protocol;

@Data
public class TpgNode {
	String id;
    protocol type;
    String device;
}