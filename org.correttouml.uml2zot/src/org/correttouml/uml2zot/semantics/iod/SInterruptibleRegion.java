package org.correttouml.uml2zot.semantics.iod;

import org.correttouml.uml.diagrams.iod.InterruptibleRegion;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SInterruptibleRegion {

	private InterruptibleRegion mades_ir;

	public SInterruptibleRegion(InterruptibleRegion ir) {
		this.mades_ir=ir;
	}
	
	public Predicate getPredicate(){
		return new Predicate("IR_"+this.mades_ir.getUMLId());
	}

}
