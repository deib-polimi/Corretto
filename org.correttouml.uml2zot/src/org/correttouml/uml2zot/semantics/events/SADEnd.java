package org.correttouml.uml2zot.semantics.events;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.events.ADEnd;
import org.correttouml.uml2zot.semantics.activitydiagram.SAD;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;

/**
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class SADEnd implements SEvent {

	private ADEnd mades_event;

	public SADEnd(ADEnd mades_event) {
		this.mades_event = mades_event;
	}

	@Override
	public Predicate getPredicate(Object... optObject) {
		return new SAD(mades_event.getAD()).getPredicate().getEndPredicate();
	}

}
