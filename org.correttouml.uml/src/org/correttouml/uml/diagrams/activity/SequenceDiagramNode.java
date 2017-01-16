package org.correttouml.uml.diagrams.activity;


import java.util.HashSet;
import java.util.Set;

import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagramParameter;
import org.correttouml.uml2zot.UML2Zot;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.uml2.uml.Behavior;
import org.eclipse.uml2.uml.CallBehaviorAction;
import org.eclipse.uml2.uml.InputPin;

public class SequenceDiagramNode extends Node {

	public SequenceDiagramNode(CallBehaviorAction uml_activitynode) {
		this.uml_activitynode=uml_activitynode;
	}

	public SequenceDiagram getSequenceDiagram() {
		Behavior sd=((CallBehaviorAction) uml_activitynode).getBehavior();
		return new SequenceDiagram((org.eclipse.uml2.uml.Interaction)sd);
	}

	public Set<SequenceDiagramParameter> getParameters(){
		return getSequenceDiagram().getSequenceDiagramParameters();
	}
	
	public Set<String> getInputVariablesNames(){
		Set<String> names = new HashSet<String>();
		for (InputPin ip: ((CallBehaviorAction) uml_activitynode).getArguments())
			names.add(((org.eclipse.uml2.uml.ActivityNode) ip.getIncomings().get(0).getSource().getOwner()).getName());
		return names;
	}
	
	public String getInputVariableName(String parameterName){
		for (InputPin ip: ((CallBehaviorAction) uml_activitynode).getArguments()){
			if (ip.getName().equals(parameterName) && ip.getIncomings().size() > 0)
				return ((org.eclipse.uml2.uml.ActivityNode) ip.getIncomings().get(0).getSource().getOwner()).getName();
		}
		return "";
	}

	public String getUMLId() {
		String id=((XMLResource) this.uml_activitynode.eResource()).getID(uml_activitynode);
		return UML2Zot.Utility.umlIDtoPrdID(id);
	}
	
}
