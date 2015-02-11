package org.correttouml.uml2zot.semantics.statediagram.triggers;

import org.correttouml.uml.diagrams.events.Event;
import org.correttouml.uml.diagrams.statediagram.triggers.TimeCondition;
import org.correttouml.uml.diagrams.statediagram.triggers.TriggerEvent;
import org.correttouml.uml2zot.semantics.events.SEventFactory;


public class STriggerEventFactory {

	public static STriggerEvent getInstance(TriggerEvent te){
		if(te instanceof TimeCondition){
			return new STimeCondition((TimeCondition)te);
		}
		if(te instanceof Event){
			return SEventFactory.getInstance((Event) te);
		}
		return null;
	}
	
}
