package org.correttouml.uml2zot.semantics.statediagram.actions;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.diagrams.statediagram.actions.AssignmentAction;
import org.correttouml.uml2zot.semantics.expressions.SAssignment;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Implies;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SAssignmentAction implements SAction{

	private AssignmentAction mades_assignmentAction;

	public SAssignmentAction(AssignmentAction mades_assignmentAction){
		this.mades_assignmentAction=mades_assignmentAction;
	}
	
	public Predicate getPredicate(Object... optObject){
		return new SAssignment(mades_assignmentAction.getAssignment()).getPredicate(optObject[0]);
	}

	@Override
	public String getSemantics(ExpressionContext context, Object... optObject) {
		String sem="";
		
		BooleanFormulae assignment_semantics= new SAssignment(mades_assignmentAction.getAssignment()).getSemantics(context, optObject[0]);
		sem=sem+new Implies(this.getPredicate(optObject[0]),assignment_semantics);
		
		return sem;
	}
	
	
	
}
