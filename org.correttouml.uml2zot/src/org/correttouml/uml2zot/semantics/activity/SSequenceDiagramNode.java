package org.correttouml.uml2zot.semantics.activity;

import java.util.HashSet;
import java.util.Set;

import org.correttouml.uml.diagrams.activity.Activity;
import org.correttouml.uml.diagrams.activity.SequenceDiagramNode;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagramParameter;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.correttouml.uml2zot.semantics.sequencediagram.*;


public class SSequenceDiagramNode {

	private SequenceDiagramNode mades_sequencediagramnode;
	private String activity_name;
	private String sd_name;
	
	public SSequenceDiagramNode(SequenceDiagramNode curr, Activity activity) {
		this.mades_sequencediagramnode=curr;
		activity_name = activity.getName();
		sd_name = this.mades_sequencediagramnode.getSequenceDiagram().getName();
	}

	public Predicate getPredicate(){
		return new Predicate("$" + activity_name + "_" + sd_name);
	}
	
	public Set<SSequenceDiagramParameter> getSSDParameters(){
		Set<SSequenceDiagramParameter> ssdp = new HashSet<SSequenceDiagramParameter>();
		for (SequenceDiagramParameter sdp: mades_sequencediagramnode.getParameters())
			ssdp.add(new SSequenceDiagramParameter(sdp));
		return ssdp;
	}
	
	public Set<String> getInputVariablesNames(){
		return mades_sequencediagramnode.getInputVariablesNames();
	}
	
	public String getInputVariableName(String parameterName){
		return mades_sequencediagramnode.getInputVariableName(parameterName);
	}
	
}
