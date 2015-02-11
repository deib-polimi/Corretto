package org.correttouml.uml.diagrams.statediagram.actions;

import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;


public class SequenceDiagramAction implements Action{

	private SequenceDiagram mades_sd;

	public SequenceDiagramAction(SequenceDiagram mades_sd){
		this.mades_sd=mades_sd;
	}

	public SequenceDiagram getSequenceDiagram() {
		return mades_sd;
	}
	
	
}

