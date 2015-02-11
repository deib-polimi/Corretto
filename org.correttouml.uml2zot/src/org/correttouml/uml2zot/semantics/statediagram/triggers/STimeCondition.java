package org.correttouml.uml2zot.semantics.statediagram.triggers;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.statediagram.triggers.TimeCondition;
import org.correttouml.uml2zot.semantics.timeconstraints.STimeConstraint;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class STimeCondition implements STriggerEvent{

	private TimeCondition time_condition;

	public STimeCondition(TimeCondition mades_event) {
		this.time_condition=mades_event;
	}

	@Override
	public Predicate getPredicate(Object... optObject) {		
		Predicate predicate=new Predicate();
        // MR: modified to avoid "-"
        predicate.setPredicateName("OBJ"+optObject[0].getName()+"_STD"+this.time_condition.getTransition().getStateDiagram().getName()+"_TRANSITION"+this.time_condition.getTransition().getUMLId()+"_TIMECONDITION");
        return predicate;
	}
	
	public BooleanFormulae getSemantics(Object object){
		return new STimeConstraint(this.time_condition.getTimeConstraint()).getSemantics(object);
	}

}
