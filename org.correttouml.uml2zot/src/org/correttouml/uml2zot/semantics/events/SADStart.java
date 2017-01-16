package org.correttouml.uml2zot.semantics.events;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.events.ADStart;
import org.correttouml.uml2zot.semantics.activitydiagram.SAD;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;

/**
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class SADStart implements SEvent {

	private ADStart mades_event;

	public SADStart(ADStart mades_event) {
		this.mades_event = mades_event;
	}

	@Override
	public Predicate getPredicate(Object... optObject) {
		return new SAD(mades_event.getAD()).getPredicate().getStartPredicate();
	}

}
