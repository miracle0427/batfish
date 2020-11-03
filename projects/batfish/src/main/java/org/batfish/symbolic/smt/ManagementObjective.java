package org.batfish.symbolic.smt;

/**
 * A class representing the management objective
 *
 */

class ManagementObjective {
  String action;
  String type;
  String typeName;
  String routerName;
  String subtype;
  String groupByName;
  boolean hasGroup;
  boolean hasSubtype;
  boolean hasRouter;
  boolean hasType;

  public ManagementObjective() {
    action = "";
    type = ".*";
    typeName = ".*";
    routerName = ".*";
    subtype = "";
    groupByName = "";
    hasGroup = false;
    hasSubtype = false;
    hasRouter = false;
    hasType = false;
  }

  public void print() {
    System.out.println("action: " + action + 
      ", routerName: " + routerName +
      ", hasRouter: " + hasRouter + 
      ", type: " + type + 
      ", typeName: " + typeName + 
      ", hasType: " + hasType + 
      ", subtype: " + subtype + 
      ", hasSubtype: " + hasSubtype + 
      ", groupByName: " + groupByName + 
      ", hasGroup: " + hasGroup);
  }

  public String getAction() {
    return action;
  }

  public String getType() {
    return type;
  }

  public String getTypeName() {
    return typeName;
  }

  public String getSubtype() {
    return subtype;
  }

  public String getGroupBy() {
    return groupByName;
  }

  public boolean hasGroupBy() {
    return hasGroup;
  }

  public boolean hasSubType() {
    return hasSubtype;
  }

  public String getRouterName() {
    return routerName;
  }

  public boolean getHasRouter() {
    return hasRouter;
  }

  public boolean getHasType() {
    return hasType;
  }

  public void setAction(String action) {
    this.action = action;
  }

  public void setType(String type) {
    this.type = type;
  }

  public void setTypeName(String typeName) {
    this.typeName = typeName;
    hasType = true;
  }

  public void setSubtype(String subtype) {
    this.subtype = subtype;
    hasSubtype = true;
  }

  public void setGroupBy(String groupByName) {
    this.groupByName = groupByName;
    hasGroup = true;
  }

 public void setRouterName(String name) {
    this.routerName = name;
    hasRouter = true;
  }
}
