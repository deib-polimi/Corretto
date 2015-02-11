package org.correttouml.uml2zot.semantics.events;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.events.StateExit;
import org.correttouml.uml2zot.semantics.statediagram.SState;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SStateExit implements SEvent{

	StateExit mades_stateexit;
	
	public SStateExit(StateExit mades_event) {
		this.mades_stateexit=mades_event;
	}

	@Override
	public Predicate getPredicate(Object... optObject) {
		return new SState(mades_stateexit.getState()).getStateEnterPredicate(optObject[0]);
	}
}
