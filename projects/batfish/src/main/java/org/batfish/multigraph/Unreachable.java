package org.batfish.mulgraph;

import java.util.HashMap;
import java.util.ArrayList;

public class Unreachable {

	Digraph g;

	public Unreachable(Digraph graph)
	{	
		g = graph;
	}

    // check if src and dst are unreachable
    public Boolean isUnreachable(Node src, Node dst)  
    { 
        // Initially mark all vertices as not visited 
        //boolean visited[] = new boolean[nr_vertices];
        HashMap<Node, Boolean> visited = new HashMap<>(); 

        for (Node v : g.getVertices()) {
            visited.put(v, false);
        }
        ArrayList<protocol> protocolList = new ArrayList<>();  
          
        //Call recursive utility 
        return !(isReachableAnyPathUtil(src, dst, visited, protocolList)); 
    } 
  
    // A recursive function to detect if
    // 'u' is reachable to 'd'. 

    private Boolean isReachableAnyPathUtil(Node u, Node d, 
        HashMap<Node, Boolean> visited, 
        ArrayList<protocol> protocolList) { 
          
        // Mark the current node 
        visited.put(u, true);
          
        if (u.equals(d))  
        { 
            return true;
        } 
          
        // Recur for all the vertices 
        // adjacent to current vertex 
        for(Edge e: g.getNeighbors(u)) {

            int currentSize = protocolList.size();
            protocol current = e.getType(); 

            if (currentSize >= 2) {
                protocol parent = protocolList.get(currentSize - 1);
                protocol grandparent = protocolList.get(currentSize - 2);
                // iBGP->OSPF->OSPF not allowed
                if (grandparent == protocol.IBGP) {
                    if (parent == protocol.OSPF && current == protocol.OSPF) { // do the same for static routes
                        continue;
                    }
                }
                // iBGP->OSPF->DEF is the only way DEF edge is traversed
                if (current == protocol.DEF) {
                    if (!(parent == protocol.OSPF && grandparent == protocol.IBGP)) { // do the same for static routes
                        continue;
                    }
                }

            } else if (current == protocol.DEF) {
                continue;
            }

            Node i = e.getDst();
            if (visited.get(i) == false) 
            { 
                // store current node  
                // in path[] 
                protocolList.add(e.getType());
                if (isReachableAnyPathUtil(i, d, visited, protocolList)) {
                    return true;
                } 
                  
                // remove current node 
                // in path[] 
                protocolList.remove( protocolList.size() - 1);
            } 
        } 
          
        // Mark the current node 
        visited.put(u, false);
        return false;
    } 

}
