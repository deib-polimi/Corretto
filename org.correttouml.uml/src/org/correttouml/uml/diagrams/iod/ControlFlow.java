package org.correttouml.uml.diagrams.iod;

import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.uml2.uml.ActivityEdge;

public class ControlFlow {

	private ActivityEdge uml_controlflow;

	public ControlFlow(ActivityEdge uml_cf) {
		this.uml_controlflow=uml_cf;
	}
	
	public String getGuard(){
		//this.uml_controlflow.getGuard();
		//TODO: da implementare il parsing delle guardie nei control flows
		return null;
	}

	public Node getSource() {
		return NodeFactory.getInstance(uml_controlflow.getSource());
	}
	
	public Node getDestination() {
		return NodeFactory.getInstance(uml_controlflow.getTarget());
	}
	
	public String getUMLId() {
		String id=((XMLResource) this.uml_controlflow.eResource()).getID(uml_controlflow);
		return id;
	}
	
	@Override
	public boolean equals(java.lang.Object o){
		if(!(o instanceof ControlFlow)) return false;
		ControlFlow other_cf=(ControlFlow) o;
		return this.uml_controlflow.equals(other_cf.uml_controlflow);
	}
	
	@Override
	public int hashCode(){
		return this.uml_controlflow.hashCode();
	}

}
