package org.correttouml.uml2zot.semantics.events;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.events.IODEnd;
import org.correttouml.uml2zot.semantics.iod.SIOD;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


/**
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class SIODEnd implements SEvent {

	private IODEnd mades_event;

	public SIODEnd(IODEnd mades_event) {
		this.mades_event = mades_event;
	}

	@Override
	public Predicate getPredicate(Object... optObject) {
		return new SIOD(mades_event.getIOD()).getPredicate().getEndPredicate();
	}

}
