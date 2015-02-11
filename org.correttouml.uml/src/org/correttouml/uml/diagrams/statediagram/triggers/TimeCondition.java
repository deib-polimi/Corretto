package org.correttouml.uml.diagrams.statediagram.triggers;

import org.correttouml.uml.diagrams.statediagram.Transition;
import org.correttouml.uml.diagrams.timeconstraints.TimeConstraint;


public class TimeCondition implements TriggerEvent {

	private TimeConstraint time_constraint;
	private org.eclipse.uml2.uml.Transition uml_transition;

	public TimeCondition(TimeConstraint tc, org.eclipse.uml2.uml.Transition uml_transition) {
		this.time_constraint=tc;
		this.uml_transition=uml_transition;
	}
	
	public TimeConstraint getTimeConstraint(){
		return time_constraint;
	}
	
	public Transition getTransition(){
		return new Transition(uml_transition);
	}

}
