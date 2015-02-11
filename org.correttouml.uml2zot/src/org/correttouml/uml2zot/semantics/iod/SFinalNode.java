package org.correttouml.uml2zot.semantics.iod;

import org.correttouml.uml.diagrams.iod.FinalNode;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SFinalNode {

	private FinalNode mades_node;

	public SFinalNode(FinalNode n) {
		this.mades_node=n;
	}
	
	public Predicate getPredicate(){
		return new SIOD(this.mades_node.getIOD()).getEndPredicate();
	}

}
