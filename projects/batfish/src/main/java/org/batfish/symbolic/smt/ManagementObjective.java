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

}
