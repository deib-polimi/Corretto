package org.correttouml.uml.diagrams.statediagram;

import org.correttouml.uml.helpers.BooleanExpressionsParser;

public class Guard {

	private String uml_guard;
	private org.eclipse.uml2.uml.Transition uml_transition;
	
	public Guard(String guard, org.eclipse.uml2.uml.Transition t) {
		this.uml_guard=guard;
		this.uml_transition=t;
	}

	public org.correttouml.grammars.booleanExpressions.Model getBooleanExpression() {
		return BooleanExpressionsParser.parse(this.uml_guard);
	}
	
	public String getUMLGuard(){
		return uml_guard;
	}

	public Transition getTransition() {
		return new Transition(this.uml_transition);
	}
	
	@Override
	public boolean equals(java.lang.Object o){
		Guard other_guard=(Guard) o;
		return this.uml_guard.equals(other_guard.uml_guard);
	}
	
	@Override
	public int hashCode(){
		return this.uml_guard.hashCode();
	}

}
