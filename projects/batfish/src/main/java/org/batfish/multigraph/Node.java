package org.batfish.mulgraph;

import java.util.ArrayList;

public class Node {

	String id;
	protocol type;
    ArrayList<Integer> addedCommunity;
    ArrayList<Integer> removedCommunity;
    ArrayList<Integer> blockedCommunity;


    public Node(String x, protocol y){
        id = x; type = y;
        addedCommunity = new ArrayList<>();
        removedCommunity = new ArrayList<>();
        blockedCommunity = new ArrayList<>();
    }

    public String getId() {
    	return id;
    }

    public protocol getType() {
    	return type;
    }

    public Node copy() {
        return new Node(id, type);
    }

    @Override
    public String toString() {
        return "Node=" + id;
    }

    public void addCommunity(int community) {
        addedCommunity.add(community);
    }

    public void removeCommunity(int community) {
        removedCommunity.add(community);
    }

    public void blockCommunity(int community) {
        blockedCommunity.add(community);
    }

}