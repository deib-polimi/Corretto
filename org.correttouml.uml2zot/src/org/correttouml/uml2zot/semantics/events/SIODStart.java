package org.correttouml.uml2zot.semantics.events;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.events.IODStart;
import org.correttouml.uml2zot.semantics.iod.SIOD;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


/**
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class SIODStart implements SEvent {

	private IODStart mades_event;

	public SIODStart(IODStart mades_event) {
		this.mades_event = mades_event;
	}

	@Override
	public Predicate getPredicate(Object... optObject) {
		return new SIOD(mades_event.getIOD()).getPredicate().getStartPredicate();
	}

}
