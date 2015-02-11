package org.correttouml.uml2zot.semantics.statediagram;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.statediagram.Invariant;


public class SInvariant {
	
	@SuppressWarnings("unused")
	private Invariant invariant;

	public SInvariant(Invariant invariant){
		this.invariant=invariant;
	}
	
	public String getSemantics(Object object){
		//TODO Add invariant semantics
		return "";
	}

}
