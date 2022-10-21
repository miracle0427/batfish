package org.batfish.multigraph.tpg;

import lombok.Data;
import org.batfish.multigraph.graph.EdgeCost;
import org.batfish.multigraph.graph.protocol;

import java.util.HashMap;
import java.util.Map;

@Data
public class TpgEdge {
    private TpgNode src;
    private TpgNode dst;
    private EdgeCost cost;
    private protocol type;
    private boolean hasACL = false;
    private boolean canRemove = false;
    private boolean failed = false;

    public static final Map<protocol, Integer> protocolMap = new HashMap<protocol, Integer>(){
        {
            // STAT, OSPF, BGP, REDISOB, REDISBO, IBGP, DEF, NONE;
            put(protocol.STAT, 1);
            put(protocol.OSPF, 100);
            put(protocol.BGP, 20);
            put(protocol.REDISOB, 20);
            put(protocol.REDISBO, 100);
            put(protocol.IBGP, 200);
            put(protocol.DEF, 100);
            put(protocol.NONE, 100000);
            put(protocol.INTF, 10000);
            put(protocol.RIB, 1000);
            put(protocol.REDISSB, 20);
            put(protocol.REDISSO, 100);
            put(protocol.SWITCH, 10000);
            put(protocol.SRC, 0);
            put(protocol.DST, 0);
        }
    };

    public TpgEdge(TpgNode s, TpgNode v, EdgeCost c, protocol p){
        this(s, v, c, p, false, false);
    }

    public TpgEdge(TpgNode s, TpgNode v, EdgeCost c, protocol p, boolean acl, boolean removable){
        src = s; dst = v; cost = c; type = p; hasACL = acl; canRemove = removable;
        cost.AD = protocolMap.get(type);
    }
}

