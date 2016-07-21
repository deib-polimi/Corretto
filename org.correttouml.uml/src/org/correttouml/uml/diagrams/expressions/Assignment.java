package org.correttouml.uml.diagrams.expressions;

import org.correttouml.uml.helpers.AssignmentParser;
import org.correttouml.uml2zot.UML2Zot;

public class Assignment {
	
	private String assignment;
	private AssignmentContext context;
	
	public Assignment(String assignment, AssignmentContext context){
		this.assignment=assignment;
		this.context=context;
	}
	
	public org.correttouml.grammars.assignments.ASSIGNMENT getAssignment(){
		return AssignmentParser.parse(this.assignment).getAssignment();
	}

	public String getUMLId() {
//		return this.context.getUMLId();
		return UML2Zot.Utility.umlIDtoPrdID(this.context.getUMLId());
	}

}