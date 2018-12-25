package org.batfish.mulgraph;

import java.util.Set;
import java.util.HashSet;

public class Node {

	String id;
	protocol type;
    Set<Integer> addedCommunity;
    Set<Integer> removedCommunity;
    Set<Integer> blockedCommunity;


    public Node(String x, protocol y){
        id = x; type = y;
        addedCommunity = new HashSet<>();
        removedCommunity = new HashSet<>();
        blockedCommunity = new HashSet<>();
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
        return "Node=" + id + " Add " + addedCommunity + " Remove " + removedCommunity + " Block " + blockedCommunity;
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

    public void setBlockCommunity(Set<Long> community) {
        for (Long comm : community) {
            int l = comm.intValue();
            blockedCommunity.add(l);
        }
    }

    public void setAddCommunity(Set<Long> community) {
        for (Long comm : community) {
            int l = comm.intValue();
            addedCommunity.add(l);
        }
    }

    public void setRemoveCommunity(Set<Long> community) {
        for (Long comm : community) {
            int l = comm.intValue();
            removedCommunity.add(l);
        }
    }

}