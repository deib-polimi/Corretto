package org.correttouml.uml.diagrams.iod;


import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;
import org.eclipse.uml2.uml.Behavior;
import org.eclipse.uml2.uml.CallBehaviorAction;

public class SequenceDiagramNode extends Node {

	public SequenceDiagramNode(CallBehaviorAction uml_activitynode) {
		this.uml_activitynode=uml_activitynode;
	}

	public SequenceDiagram getSequenceDiagram() {
		Behavior sd=((CallBehaviorAction) uml_activitynode).getBehavior();
		return new SequenceDiagram((org.eclipse.uml2.uml.Interaction)sd);
	}

}
