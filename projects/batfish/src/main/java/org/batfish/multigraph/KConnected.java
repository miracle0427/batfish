
package org.batfish.mulgraph;

//import gurobi.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;


public class KConnected {

  Digraph g;
  //GRBEnv env;
  //GRBModel model;

  public KConnected(Digraph graph)
  { 
    g = graph;/*
    try {
      env = new GRBEnv("kConnected.log");
      model = new GRBModel(env);
    } catch (GRBException e) {
      System.out.println("Error code at Constructor: " + e.getErrorCode() + ". " +
                         e.getMessage());
    }*/     
  }
  public void formulate(Node src, Node dst) {
  /*
    try {

      
      // Create variables
      GRBLinExpr expr, inflow, temp1, corr;
      Map<Node, Map<Node, GRBVar>> flow = new HashMap<>();
      Map<Node, Map<Node, GRBVar>> fail = new HashMap<>();
      List<GRBVar> allFail = new ArrayList<>();
      Map<Node, GRBVar> reachable = new HashMap<>();

      Map<Integer, GRBVar> physicalFailVar = new HashMap<>();


      int constraint = 0;
      for (Node from : g.getVertices()) {
        Map<Node, GRBVar> flowTemp = new HashMap<>();
        Map<Node, GRBVar> failTemp = new HashMap<>();
        for(Edge to : g.getNeighbors(from)) {
          GRBVar failVar;
          GRBVar flowVar = model.addVar(0.0, 1.0, 0.0, GRB.BINARY, ("flow"+from+"-"+to.getDst()) );
          flowTemp.put(to.getDst(), flowVar);

          // failVar set to same physical edge if it exists
          int phyMap = g.getPhysicalMap(from, to.getDst());
          if (phyMap != -1) {
            if (physicalFailVar.containsKey(phyMap)) {
              failVar = physicalFailVar.get(phyMap);
              failTemp.put(to.getDst(), failVar);
              System.out.println("Exists");
              continue;
            }
          }

          failVar = model.addVar(0.0, 1.0, 0.0, GRB.BINARY, ("fail"+from+"-"+to.getDst()) );

          if (phyMap != -1) {
            physicalFailVar.put(phyMap, failVar);
            System.out.println("Added");            
          }

          failTemp.put(to.getDst(), failVar);
          allFail.add(failVar);
        }
        flow.put(from, flowTemp);
        fail.put(from, failTemp);
      }

      for (Node v : g.getVertices()) {
        GRBVar reach = model.addVar(0.0, 1.0, 0.0, GRB.BINARY, ("reach"+v));
        reachable.put(v, reach);
      }

      model.addConstr(reachable.get(src), GRB.EQUAL, 1.0, "reachcons"+constraint);
      constraint = constraint + 1;
      model.addConstr(reachable.get(dst), GRB.EQUAL, 0.0, "reachcons"+constraint);
      constraint = constraint + 1;

      // assume the graph which has been given is already pruned and tells me what is the src and dst node

      for (Node v : g.getVertices()) {
        // change it to if-else stmt to avoid use of continue
        if (v == src) {
          continue;
        }

        inflow = new GRBLinExpr();

        // flow = reach - fail
        // reach = summation(flow)
        for (Node from : g.inboundNeighbors(v)) {
          GRBVar flowcons = flow.get(from).get(v);
          inflow.addTerm(1.0, flowcons);
          temp1 = new GRBLinExpr();
          temp1.addTerm(1.0, reachable.get(from));
          temp1.addTerm(-1.0, fail.get(from).get(v));
          //model.addConstr(flowcons, GRB.EQUAL, temp1, "flowcons"+constraint);
          // modified the previous statement to support hedge graph
          //model.addConstr(flowcons, GRB.GREATER_EQUAL, temp1, "flowcons"+constraint);
          // further modified the previous statement to support correlated-edges
          GRBVar tempVar = model.addVar(0.0, 1.0, 0.0, GRB.BINARY, ("tempVar"+constraint) );
          model.addConstr(tempVar, GRB.GREATER_EQUAL, temp1, "flowcons"+constraint);
          constraint = constraint + 1;
          model.addConstr(flowcons, GRB.GREATER_EQUAL, tempVar, "flowcons"+constraint);
          constraint = constraint + 1;

          if (g.isIBGPPair(from, v)) {
            List<Node> pair = g.getPair(from, v);
            Node v1 = pair.get(0);
            Node v2 = pair.get(1);
            System.out.println("iBGP-pair-" + v1 + " " + v2 + " " + from + " " + v );
            corr = new GRBLinExpr();
            corr.addConstant(2.0);
            corr.addTerm(-1.0, flow.get(v1).get(v2));
            corr.addTerm(-1.0, flow.get(v2).get(from));
            model.addConstr(flowcons, GRB.LESS_EQUAL, corr, "flowcons"+constraint);
            constraint = constraint + 1;

          }

          model.addConstr(reachable.get(v), GRB.GREATER_EQUAL, flowcons, "reach-or-cons"+constraint);
          constraint = constraint + 1;
        }

        model.addConstr(reachable.get(v), GRB.LESS_EQUAL, inflow, "flowcons"+constraint);
        constraint = constraint + 1;

      }
      

      // Set objective:
      expr = new GRBLinExpr();
      for (GRBVar v : allFail) {
        expr.addTerm(1.0, v);
      }
      model.setObjective(expr, GRB.MINIMIZE);

    } catch (GRBException e) {
      System.out.println("Error code at formulation: " + e.getErrorCode() + ". " +
                         e.getMessage());
    }*/
  }

  public double run(){
    double time = 0;/*
     try {
        model.set(GRB.IntParam.OutputFlag, 0);
        model.write("out.rlp");
         // Optimize model
        model.optimize();
        /*
        System.out.println(x.get(GRB.StringAttr.VarName)
                           + " " +x.get(GRB.DoubleAttr.X));
        System.out.println(y.get(GRB.StringAttr.VarName)
                           + " " +y.get(GRB.DoubleAttr.X));
        System.out.println(z.get(GRB.StringAttr.VarName)
                           + " " +z.get(GRB.DoubleAttr.X));
        
        //System.out.println("Obj: " + model.get(GRB.DoubleAttr.ObjVal));
        time = model.get(GRB.DoubleAttr.Runtime) * 1000;
        //System.out.println("ILP Time: " + time + " ms");

        // Dispose of model and environment
        model.write("out.sol");
        //
        model.dispose();
        env.dispose();
    } catch (GRBException e) {
      System.out.println("Error code at optimization: " + e.getErrorCode() + ". " +
                         e.getMessage());
    }*/
    return time;
  }
}