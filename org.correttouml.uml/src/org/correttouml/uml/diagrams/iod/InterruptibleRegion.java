package org.correttouml.uml.diagrams.iod;

import java.util.HashSet;
import java.util.Set;

import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.uml2.uml.ActivityNode;
import org.eclipse.uml2.uml.InterruptibleActivityRegion;

public class InterruptibleRegion {

	private InterruptibleActivityRegion uml_region;

	public InterruptibleRegion(InterruptibleActivityRegion ag) {
		this.uml_region=ag;
	}

	public AcceptEventAction getInterrupt(){
		//the target node of the edges selected as interrupting edges should be an accept event action
		//the event defining the accept event action is the interrupt of the region
		org.eclipse.uml2.uml.AcceptEventAction interrupt_node=(org.eclipse.uml2.uml.AcceptEventAction) this.uml_region.getInterruptingEdges().iterator().next().getTarget();
		return new AcceptEventAction(interrupt_node);
	}
	
	public Set<SequenceDiagramNode> getSequenceDiagramNodes(){
		Set<SequenceDiagramNode> sds=new HashSet<SequenceDiagramNode>();
		for(ActivityNode an: this.uml_region.getContainedNodes()){
			if (an instanceof org.eclipse.uml2.uml.CallBehaviorAction) {
				sds.add(new SequenceDiagramNode(
						(org.eclipse.uml2.uml.CallBehaviorAction) an));
			}
		}
		return sds;
	}

	public String getUMLId() {
		String id=((XMLResource) this.uml_region.eResource()).getID(this.uml_region);
		return id;
	}
	
	//TODO: metodo equals e hashkey
}
