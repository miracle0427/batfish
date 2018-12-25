package org.batfish.mulgraph;

import java.util.HashMap;
import java.util.Map;
import java.util.Collections;

public class Edge {
    Node src;
    Node vertex;
    EdgeCost cost;
    protocol type;
    boolean hasACL;

    static final Map<protocol, Integer> protocol_map = createMap();

    static Map<protocol, Integer> createMap() {
        Map<protocol, Integer> result = new HashMap<protocol, Integer>();
        // STAT, OSPF, BGP, REDISOB, REDISBO, IBGP, DEF, NONE;
        result.put(protocol.STAT, 1);
        result.put(protocol.OSPF, 100);
        result.put(protocol.BGP, 20);
        result.put(protocol.REDISOB, 20);
        result.put(protocol.REDISBO, 100);
        result.put(protocol.IBGP, 200);
        result.put(protocol.DEF, 1000);
        result.put(protocol.NONE, -1000);
        result.put(protocol.REDISSTAT, 10);

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

    public boolean isACL() {
        return hasACL;
    }

    public void setIsACL(boolean b) {
        hasACL = b;
    }

    @Override
    public String toString() {
        //return "Edge [src=" + src + ", dst=" + vertex + ", cost=" + cost + ", type=" + type + "]";
        //return "[src=" + src + ", dst=" + vertex + ", cost=" + cost + "]";
        //return "Edge [src=" + src + ", dst=" + vertex + ", isACL=" + hasACL + "]";
        return "Edge [src=" + src + ", dst=" + vertex + ", " + cost + "]";
    }

    public Edge copy() {
        return new Edge(src, vertex, cost.copy(), type);
    }

}

