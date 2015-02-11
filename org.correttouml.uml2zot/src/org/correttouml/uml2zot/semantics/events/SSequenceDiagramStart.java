package org.correttouml.uml2zot.semantics.events;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.events.SequenceDiagramStart;
import org.correttouml.uml2zot.semantics.sequencediagram.SSequenceDiagram;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SSequenceDiagramStart implements SEvent {

	private SequenceDiagramStart mades_event;

	public SSequenceDiagramStart(SequenceDiagramStart mades_event) {
		this.mades_event=mades_event;
	}

	@Override
	public Predicate getPredicate(Object... optObject) {
		Predicate sd_start=new SSequenceDiagram(mades_event.getSequenceDiagram()).getPredicate().getStartPredicate();
		return sd_start;
	}

}
