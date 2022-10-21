package org.batfish.multigraph.tpg;

import lombok.Data;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

@Data
public class TpgPath {

	private ArrayList<TpgNode> path = new ArrayList<>();
    private Set<String> nodes = new HashSet<>();

    public TpgPath(TpgPath prev) {
        if(prev != null){
            for (TpgNode vertex : prev.getPath()) {
                //TpgNode n = vertex.copy();
                path.add(vertex);
                nodes.add(vertex.getId());
            }
        }
    }

    public boolean contains(TpgNode node) {
        return nodes.contains(node.getId());
    }

    public void addHead(TpgNode n) {
        path.add(0, n);
        nodes.add(n.getId());
    }

    public void addEnd(TpgNode n) {    
        path.add(n);
        nodes.add(n.getId());
    }

	public TpgNode getVertex(int i) {
		if (i > path.size())
			return null;
		return path.get(i);
	}

    public boolean equals(TpgPath path2) {
        if(path2 != null){
            return Arrays.equals(path.toArray(), path2.getPath().toArray());
        }
        return false;
    }
}