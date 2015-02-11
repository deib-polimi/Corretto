package org.correttouml.uml2zot.semantics.property;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.property.PEvent;
import org.correttouml.uml2zot.semantics.events.SEvent;
import org.correttouml.uml2zot.semantics.events.SEventFactory;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;


public class SPEvent {

	private PEvent mades_pevent;

	public SPEvent(PEvent mades_pevent) {
		this.mades_pevent=mades_pevent;
	}
	
	public BooleanFormulae getSemantics(){
		SEvent e=SEventFactory.getInstance(mades_pevent.getEvent());
		Object obj=mades_pevent.getObject();
		
		return e.getPredicate(obj);
	}

}
