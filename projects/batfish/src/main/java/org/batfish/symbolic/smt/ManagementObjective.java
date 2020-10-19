package org.batfish.symbolic.smt;

/**
 * A class representing the management objective
 *
 */

class ManagementObjective {
  String action;
  String type;
  String typeName;
  String subtype;
  String groupByName;
  boolean hasGroup;
  boolean hasSubtype;

  public ManagementObjective(String action, String type, String typeName, String subtype, 
    String groupByName, boolean hasGroup, boolean hasSubtype ) {
  	this.action = action;
  	this.type = type;
  	this.typeName = typeName;
  	if (hasSubtype) {
  		this.subtype = subtype;
  	}
  	if (hasGroup) {
  		this.groupByName = groupByName;	
  	}
  }

  public void print() {
    System.out.println(action + "\t" + type + "\t" + typeName + 
        "\t" + subtype + "\t" + groupByName);
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
}
