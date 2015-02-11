package org.correttouml.uml2zot.semantics.events;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.events.SequenceDiagramEnd;
import org.correttouml.uml2zot.semantics.sequencediagram.SSequenceDiagram;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SSequenceDiagramEnd implements SEvent {

	private SequenceDiagramEnd mades_event;

	public SSequenceDiagramEnd(SequenceDiagramEnd mades_event) {
		this.mades_event=mades_event;
	}

	@Override
	public Predicate getPredicate(Object... optObject) {
		Predicate sd_end=new SSequenceDiagram(mades_event.getSequenceDiagram()).getPredicate().getEndPredicate();
		return sd_end;
	}

}
