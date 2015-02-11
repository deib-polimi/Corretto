package org.correttouml.uml2zot.semantics.events;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.events.ClockTickEvent;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SClockTickEvent implements SEvent {

	private ClockTickEvent mades_event;

	public SClockTickEvent(ClockTickEvent mades_event) {
		this.mades_event=mades_event;
	}

	@Override
	public Predicate getPredicate(Object... optObject) {
		return new Predicate(mades_event.getClock().getName()+"TICK");
	}

}
