package org.batfish.mulgraph;

import java.util.Map;
import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;

public class Verification {

	Digraph g;

	public Verification(Digraph graph) {	
		g = graph;
	}

	public void removeNode(Node v) {
		g.getNeighborMap().put(v, new ArrayList<Edge>());
	}

	public boolean alwaysWaypoint(Node src, Node dst, Node waypoint) {
		removeNode(waypoint);
		return alwaysBlocked(src, dst);		
	}

	/*
	public boolean alwaysChainWaypoint(Node src, Node dst, List<Node> chain) {
		removeNode(waypoint);
		return alwaysBlocked(src, dst);		
	}
	*/

	public boolean equalLength(Node src, Node dst) {
		/*
		PathLength pl = new PathLength(g);
		pl.formulate(src, dst, 0);
		double time1 = pl.run();
		double min = pl.returnObj();
		pl = new PathLength(g);
		pl.formulate(src, dst, 1);
		double time2 = pl.run();
		double max = pl.returnObj();
		System.out.println( (time1 + time2)+ " ms" );
		return (max == min);*/
		return false;
	}

	public boolean alwaysBlocked(Node src, Node dst) {
		Unreachable unreach = new Unreachable(g);
		if ((g.communityBlocked.size()==0)|| g.communityAdded.isEmpty()){
			return unreach.isUnreachable(src, dst);
		}

		if (unreach.isUnreachable(src, dst)) {
			return true;
		}
		// This means nodes are reachable. Now we should check with communities

		//System.out.println("Checking community");
		Map<Node, List<Edge>> copyMap = g.returnCopyNeighborMap();
		Map<String, Boolean> isUnreach = new HashMap<>();
		boolean mayReach = false;

		for (String comm : g.communityBlocked) {

			//System.out.println("Checking with blocking node removed" + g.communityBlockNodes.get(comm));
			for (Node blockNode : g.communityBlockNodes.get(comm)) {
				removeNode(blockNode);
			}

			if (!unreach.isUnreachable(src, dst)) {
				g.setNeighborMap(copyMap);
				continue;
			}
			// this means all routes from src to dst goes through blocking-node on community
			g.setNeighborMap(copyMap);


			if (g.communityAdded.containsKey(comm)) {
				//System.out.println("Checking with added node removed" + g.communityAdded.get(comm));
				for (Node addedNode : g.communityAdded.get(comm)) {
					removeNode(addedNode);
				}
			} else {
				// no one is adding this community, so ignore
				//isUnreach.put(comm, null);
				g.setNeighborMap(copyMap);
				continue;
			}

			if (!unreach.isUnreachable(src, dst)) {
				g.setNeighborMap(copyMap);
				continue;
			}
			// this means all routes from src to dst goes through both nodes adding and blocking on community

			//g.setNeighborMap(copyMap);

			mayReach = false;
			for (Node blockNode : g.communityBlockNodes.get(comm)) {
				if (!unreach.isUnreachable(blockNode, dst)) {
					mayReach = true;;
				}	
			}

			g.setNeighborMap(copyMap);
			if (mayReach == true) {
				continue;
			}

			// after removing community-added nodes, block nodes can't reach destination

			// this means all routes from community-blocking-node to dst will go through community-adding-node
			/*
			if (g.communityRemoveNodes.containsKey(comm)) {	
				System.out.println("Checking with removing node removed");
				for (Node removeNode : g.communityRemoveNodes.get(comm)) {
					removeNode(removeNode);
				}
			}

			//boolean reach = true;
			for (Node addedNode : g.communityAdded.get(comm)) {
				for (Node blockNode : g.communityBlockNodes.get(comm)) {
					if (!unreach.isUnreachable(addedNode, blockNode)) { //nodes can reach
						return false;
					}						
				}
			}*/

			mayReach = false;
			for (Node blockNode : g.communityBlockNodes.get(comm)) {
				if (g.communityRemoveNodes.containsKey(comm)) {	
					for (Node removeNode : g.communityRemoveNodes.get(comm)) {
						if (!unreach.isUnreachable(blockNode, removeNode)) {
							for (Node addedNode : g.communityAdded.get(comm)) {
								if (!unreach.isUnreachable(removeNode, addedNode)) {
									mayReach = true;
									break;
								}
							}
						}
					}
				}
			}
			g.setNeighborMap(copyMap);
			if (mayReach == true) {
				continue;
			}
			return true;
		}
		return false;
	}
                                                                                                 
}