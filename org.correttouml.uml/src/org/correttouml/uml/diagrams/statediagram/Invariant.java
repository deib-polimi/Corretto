package org.correttouml.uml.diagrams.statediagram;

import org.eclipse.uml2.uml.Constraint;

public class Invariant {
	
	private Constraint uml_constraint;

	public Invariant(Constraint c){
		this.uml_constraint=c;
	}
	
	@Override
	public boolean equals(java.lang.Object o){
		Invariant other_invariant=(Invariant) o;
		return this.uml_constraint.equals((org.eclipse.uml2.uml.Constraint) other_invariant.uml_constraint);
	}
	
	@Override
	public int hashCode(){
		return this.uml_constraint.hashCode();
	}

}
