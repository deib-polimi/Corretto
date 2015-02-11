package org.correttouml.uml2zot.semantics.events;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.events.CallEvent;
import org.correttouml.uml2zot.semantics.classdiagram.SOperation;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SCallEvent implements SEvent{

	private CallEvent mades_callevent;

	public SCallEvent(CallEvent callEvent) {
		this.mades_callevent=callEvent;
	}

	@Override
	public Predicate getPredicate(Object... optObject) {
		return new SOperation(mades_callevent.getOperation()).getPredicate(optObject[0]);
	}

}
