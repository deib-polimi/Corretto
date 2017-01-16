package org.correttouml.uml2zot.semantics.statediagram.actions;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.correttouml.uml.diagrams.classdiagram.Attribute;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.diagrams.expressions.Variable;
import org.correttouml.uml.diagrams.expressions.VariableFactory;
import org.correttouml.uml.diagrams.statediagram.StateDiagram;
import org.correttouml.uml.diagrams.statediagram.Transition;
import org.correttouml.uml.diagrams.statediagram.actions.Action;
import org.correttouml.uml.diagrams.statediagram.actions.AssignmentAction;
import org.correttouml.uml2zot.semantics.expressions.SAssignment;
import org.correttouml.uml2zot.semantics.util.bool.And;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Implies;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.bool.Or;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SAssignmentAction implements SAction{

	private AssignmentAction mades_assignmentAction;

	public SAssignmentAction(AssignmentAction mades_assignmentAction){
		this.mades_assignmentAction=mades_assignmentAction;
	}
	
	@Override
	public Predicate getPredicate(Object... optObject){
		return new SAssignment(mades_assignmentAction.getAssignment()).getPredicate(optObject[0]);
	}

	@Override
	public String getSemantics(ExpressionContext context, Object... optObject) {
		String sem="";
		Object curr_obj=optObject[0];
		String left_var_name=mades_assignmentAction.getAssignment().getAssignment().getLeftvar();
		Variable left_var=VariableFactory.getInstance(left_var_name, optObject[0], context);
				
		if(left_var instanceof Attribute && ((Attribute)left_var).isStatic()){
			Attribute left_var_attribute=(Attribute) left_var;
			//Static attribute semantics
			//a=expression
			//If "a" is a static variable then multiple assignments
			//may refer it leading to a contradiction
			//The semantics is that only one of them succeeds
			
			Predicate this_assignment=this.getPredicate(curr_obj);
			BooleanFormulae this_assignment_semantics= new SAssignment(mades_assignmentAction.getAssignment()).getSemantics(context, curr_obj);
			
			And andNotAssignments=new And();
			Or orAssignments=new Or();
			orAssignments.addFormulae(this_assignment);
			Or orAssignmentsSemantics=new Or();
			orAssignmentsSemantics.addFormulae(this_assignment_semantics);
			
			//let's see what assignments may conflict with the current one
			for(Object conflicting_obj: curr_obj.getOwningClass().getObjects()){
				Set<AssignmentAction> assignments=find_assignments_to_this_attribute(conflicting_obj, left_var_attribute);
				for(AssignmentAction ass:assignments){
					
					Predicate other_assignment=(new SAssignmentAction(new AssignmentAction(ass.getAssignment()))).getPredicate(conflicting_obj);
					BooleanFormulae other_assignment_semantics= new SAssignment(ass.getAssignment()).getSemantics(context, conflicting_obj);
					
					if(!this_assignment.equals(other_assignment)){
						
						//BooleanFormulae case_1=new And(this_assignment_semantics, new Not(other_assignment_semantics));
						//BooleanFormulae case_2=new And(new Not(this_assignment_semantics), other_assignment_semantics);
						//sem=sem+new Implies(new And(this_assignment, other_assignment), new Or(case_1, case_2))+"\n";
						
						sem=sem+new Implies(new And(this_assignment, other_assignment), new Or(this_assignment_semantics, other_assignment_semantics))+"\n";
						
						orAssignments.addFormulae(other_assignment);
						orAssignmentsSemantics.addFormulae(other_assignment_semantics);
						andNotAssignments.addFormulae(new Not(other_assignment));
						
					}
				}			
			}
			
			if(orAssignments.size()>1) sem=sem+new Implies(orAssignments, orAssignmentsSemantics)+"\n";
			if(orAssignments.size()>1) sem=sem+new Implies(new And(this_assignment, andNotAssignments), this_assignment_semantics)+"\n";
			
		}else{
			BooleanFormulae assignment_semantics= new SAssignment(mades_assignmentAction.getAssignment()).getSemantics(context, curr_obj);
			sem=sem+new Implies(this.getPredicate(optObject[0]),assignment_semantics);
		}

		return sem;
	}

	private Set<AssignmentAction> find_assignments_to_this_attribute(Object mades_obj, Attribute attr) {
		HashSet<AssignmentAction> assignments=new HashSet<AssignmentAction>();
		
		// ACTIONS CHANGING THIS ATTRIBUTE
		for (StateDiagram std : mades_obj.getOwningClass().getStateDiagrams()) {
			for (Transition t : std.getTransitions()) {
				if (t.hasActions()) {
					List<Action> actions = t.getActions(mades_obj);
					for(Action act: actions){
						if(isActionAssigningAttribute(act, attr)) assignments.add((AssignmentAction)act);
					}
				}
			}
		}
		
		return assignments;
	}
	
	private boolean isActionAssigningAttribute(Action act, Attribute attr) {
		if (act instanceof AssignmentAction) {
			AssignmentAction ass_act = (AssignmentAction) act;
			if (ass_act.getAssignment().getAssignment()
					.getLeftvar()
					.equals(attr.getName())) {
				return true;
			}
		}
		return false;
	}
	
	
	
}
