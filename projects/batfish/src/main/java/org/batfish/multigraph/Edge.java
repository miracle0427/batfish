package org.batfish.mulgraph;

import java.util.HashMap;
import java.util.Map;
import java.util.Collections;

public class Edge {
    Node src;
    Node vertex;
    EdgeCost cost;
    protocol type;


    static final Map<protocol, Integer> protocol_map = createMap();

    static Map<protocol, Integer> createMap() {
        Map<protocol, Integer> result = new HashMap<protocol, Integer>();
        // STAT, OSPF, BGP, REDISOB, REDISBO, IBGP, DEF, NONE;
        result.put(protocol.STAT, 10);
        result.put(protocol.OSPF, 20);
        result.put(protocol.BGP, 30);
        result.put(protocol.REDISOB, 40);
        result.put(protocol.REDISBO, 40);
        result.put(protocol.IBGP, 30);
        result.put(protocol.DEF, -1);
        result.put(protocol.NONE, -1);

        return Collections.unmodifiableMap(result);
    }

    public Edge(Node s, Node v, EdgeCost c){
        src = s; vertex = v; cost = c; type = protocol.NONE;
        cost.AD = protocol_map.get(type);
    }

    public Edge(Node s, Node v, EdgeCost c, protocol p){
        src = s; vertex = v; cost = c; type = p;
        cost.AD = protocol_map.get(type);
    }

    public Node getDst() {
        return vertex;
    }

    public Node getSrc() {
        return src;
    }

    public EdgeCost getCost() {
        return cost;
    }

    public void setCost(EdgeCost ec) {
        cost = ec;
    }

    public protocol getType() {
        return type;
    }

    @Override
    public String toString() {
        //return "Edge [src=" + src + ", dst=" + vertex + ", cost=" + cost + ", type=" + type + "]";
        //return "[src=" + src + ", dst=" + vertex + ", cost=" + cost + "]";
        return "Edge [src=" + src + ", dst=" + vertex + "]";
    }

    public Edge copy() {
        return new Edge(src, vertex, cost.copy(), type);
    }

}

