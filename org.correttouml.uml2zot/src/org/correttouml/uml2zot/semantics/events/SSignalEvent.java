package org.correttouml.uml2zot.semantics.events;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.events.SignalEvent;
import org.correttouml.uml2zot.semantics.classdiagram.SSignal;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SSignalEvent implements SEvent{

	private SignalEvent mades_event;

	public SSignalEvent(SignalEvent signalEvent) {
		this.mades_event=signalEvent;
	}

	@Override
	public Predicate getPredicate(Object... optObject) {
		return new SSignal(mades_event.getSignal()).getPredicate();
	}


}
