package org.correttouml.uml.diagrams.events;

import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;

public class SequenceDiagramEnd implements Event{

	private SequenceDiagram mades_sd;

	public SequenceDiagramEnd(SequenceDiagram sd) {
		this.mades_sd=sd;
	}

	public SequenceDiagram getSequenceDiagram() {
		return mades_sd;
	}

}
