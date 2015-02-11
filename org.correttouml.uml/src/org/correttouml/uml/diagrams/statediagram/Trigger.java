package org.correttouml.uml.diagrams.statediagram;

import org.correttouml.uml.diagrams.statediagram.triggers.TriggerEvent;
import org.correttouml.uml.diagrams.statediagram.triggers.TriggerEventFactory;

public class Trigger {

	//org.eclipse.uml2.uml.Trigger uml_trigger;
	private String uml_trigger;
	private org.eclipse.uml2.uml.Transition uml_transition;
	
	public Trigger(String t, org.eclipse.uml2.uml.Transition uml_transition) {
		this.uml_trigger=t;
		this.uml_transition=uml_transition;
	}

	public TriggerEvent getTriggerEvent() {
		return TriggerEventFactory.getInstance(uml_trigger, uml_transition);
	}

	public Transition getTransition() {
		return new Transition(this.uml_transition);
	}
	
	@Override
	public boolean equals(java.lang.Object o){
		Trigger other_trigger=(Trigger) o;
		return this.uml_trigger.equals(other_trigger.uml_trigger);
	}
	
	@Override
	public int hashCode(){
		return this.uml_trigger.hashCode();
	}

}
