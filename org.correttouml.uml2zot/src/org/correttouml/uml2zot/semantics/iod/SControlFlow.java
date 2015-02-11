package org.correttouml.uml2zot.semantics.iod;

import org.correttouml.uml.diagrams.iod.ControlFlow;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SControlFlow {

	private ControlFlow mades_controlflow;

	public SControlFlow(ControlFlow mades_controlflow){
		this.mades_controlflow=mades_controlflow;
	}
	
	public BooleanFormulae getGuard(){
		//TODO: Control flow may have boolean formulae associated
		return null;
	}

	public Predicate getPredicate() {
		return new Predicate("CONTROLFLOW"+this.mades_controlflow.getUMLId());
	}
	
}
