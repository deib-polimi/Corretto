package org.correttouml.uml2zot.semantics.events;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.events.StateEnter;
import org.correttouml.uml2zot.semantics.statediagram.SState;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SStateEnter implements SEvent{

	StateEnter mades_stateenter;
	
	public SStateEnter(StateEnter mades_event) {
		this.mades_stateenter=mades_event;
	}

	@Override
	public Predicate getPredicate(Object... optObject) {
		return new SState(mades_stateenter.getState()).getStateEnterPredicate(optObject[0]);
	}

}
