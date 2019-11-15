package org.batfish.mulgraph;

import java.util.Set;
import java.util.HashSet;

public class TpgNode {

	String id;
    protocol type;

    public TpgNode(String x, protocol y){
        id = x;
        type = y;
    }

    public String getId() {
        return id;
    }

    public protocol getProtocol() {
        return type;
    }

    public TpgNode copy() {
        return new TpgNode(id, type);
    }

    @Override
    public String toString() {
        return "Node=" + id;// + " Protocol=" + type;
    }
}