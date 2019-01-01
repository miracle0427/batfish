
package org.batfish.mulgraph;

import gurobi.*;
import java.util.HashMap;
import java.util.ArrayList;
import java.util.Map;


public class Disconnect {

  Digraph g;
  GRBEnv env;
  GRBModel model;

  public Disconnect(Digraph graph)
  { 
    g = graph;
    try {
      env = new GRBEnv("Disconnect.log");
      model = new GRBModel(env);
    } catch (GRBException e) {
      System.out.println("Error code at Constructor: " + e.getErrorCode() + ". " +
                         e.getMessage());
    }
  }
  public long formulate(Node src, Node dst) {
    long duration = 0;
    try {

      // Create variables
      BasicOperation basic = new BasicOperation(g);
      long startTime = System.nanoTime();
      ArrayList<Path> allPath = basic.printAllPaths(src, dst);
      long endTime = System.nanoTime();
      duration = (endTime - startTime)/(1000000);
      System.out.println("All Path generation time " + duration + " ms");
      System.out.println("# Paths " + allPath.size());
      //System.out.println(allPath);
      GRBLinExpr expr, pathFlows;
      Map<Edge, GRBVar> flow = new HashMap<>();
      
      Map<Integer, GRBVar> physicalFlowVar = new HashMap<>();
      ArrayList<GRBVar> flows = new ArrayList<>();

      int constraint = 0;
      for (Node from : g.getVertices()) {
        for(Edge to : g.getNeighbors(from)) {

          // flow set to same physical edge if it exists
          int phyMap = g.getPhysicalMap(from, to.getDst());
          if (phyMap != -1) {
            if (physicalFlowVar.containsKey(phyMap)) {
              GRBVar flowVar = physicalFlowVar.get(phyMap);
              flow.put(to, flowVar);
              System.out.println("Exists");
              continue;
            }
          }

          //GRBVar flowVar = model.addVar(0.0, 1.0, 0.0, GRB.BINARY, ("flow"+from+"-"+to.getDst()) );
          GRBVar flowVar = model.addVar(0.0, 1.0, 0.0, GRB.CONTINUOUS, ("flow"+from+"-"+to.getDst()) );
          flow.put(to, flowVar);
          flows.add(flowVar);
          if (phyMap != -1) {
            physicalFlowVar.put(phyMap, flowVar);
            System.out.println("Added");            
          }

        }
      }


      // assume the graph which has been given is already pruned and tells me what is the src and dst node

      for (Path p : allPath) {

        pathFlows = new GRBLinExpr();
        
        for (Edge e : p.getEdges()) {          
          pathFlows.addTerm(1.0, flow.get(e));
        }

        model.addConstr(pathFlows, GRB.GREATER_EQUAL, 1.0, "path"+constraint);
        constraint = constraint + 1;
      }
      
      // Set objective:
      expr = new GRBLinExpr();
      for (GRBVar v : flows) {
        expr.addTerm(1.0, v);
      }
      model.setObjective(expr, GRB.MINIMIZE);

    } catch (GRBException e) {
      System.out.println("Error code at formulation: " + e.getErrorCode() + ". " +
                         e.getMessage());
    }
    duration = duration + (long) run();
    //System.out.println("Total time " + duration + " ms");*/
    return duration;
  }

  public double run(){
    double time = 0;
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
        */
        System.out.println("Obj: " + model.get(GRB.DoubleAttr.ObjVal));
        time = model.get(GRB.DoubleAttr.Runtime) * 1000;
        System.out.println("ILP Time: " + time + " ms");

        // Dispose of model and environment
        model.write("out.sol");
        //
        model.dispose();
        env.dispose();
    } catch (GRBException e) {
      System.out.println("Error code at optimization: " + e.getErrorCode() + ". " +
                         e.getMessage());
    }
    return time;
  }
}