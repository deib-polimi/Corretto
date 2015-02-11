package org.correttouml.uml.diagrams.statediagram.actions;

import org.correttouml.uml.diagrams.expressions.Assignment;

public class AssignmentAction implements Action{

	private Assignment mades_assignment;
	
	public AssignmentAction(Assignment mades_assignment){
		this.mades_assignment=mades_assignment;
	}
	
	public Assignment getAssignment(){
		return mades_assignment;
	}
	
}
