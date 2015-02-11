package org.correttouml.uml.diagrams.events;

import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;

public class SequenceDiagramStart implements Event{

	private SequenceDiagram mades_sd;

	public SequenceDiagramStart(SequenceDiagram sd) {
		this.mades_sd=sd;
	}

	public SequenceDiagram getSequenceDiagram() {
		return mades_sd;
	}
	
	

}
