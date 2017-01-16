package org.correttouml.uml.diagrams.activity;

import org.correttouml.uml.diagrams.activity.Activity.Utility;
import org.correttouml.uml.helpers.StDTransitionsParser;
import org.correttouml.uml2zot.UML2Zot;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.uml2.uml.ActivityEdge;

public class ControlFlow {

	private ActivityEdge uml_controlflow;
	private Activity mades_activity ;

	public ControlFlow(ActivityEdge uml_cf, Activity activity) {
		this.uml_controlflow=uml_cf;
		this.mades_activity = activity;
	}
	
	public Guard getGuard(){
		StDTransitionsParser p= new StDTransitionsParser();
		p.parse(uml_controlflow.getName());
		return new Guard(p.getGuard(), uml_controlflow, mades_activity);
	}

	public Node getSource() {
		if (Utility.isConcreteNode(uml_controlflow.getSource()))
			return NodeFactory.getInstance(uml_controlflow.getSource());
		return null;
	}
	
	public Node getDestination() {
		if (Utility.isConcreteNode(uml_controlflow.getTarget()))
			return NodeFactory.getInstance(uml_controlflow.getTarget());
		return null;
	}
	
	public String getUMLId() {
		String id=((XMLResource) this.uml_controlflow.eResource()).getID(uml_controlflow);
		return UML2Zot.Utility.umlIDtoPrdID(id);
	}
	
	public boolean hasGuard() {
		StDTransitionsParser p= new StDTransitionsParser();
		p.parse(uml_controlflow.getName());
		return p.hasGuard();
	}
	
	public String getName(){
		return uml_controlflow.getName();
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
