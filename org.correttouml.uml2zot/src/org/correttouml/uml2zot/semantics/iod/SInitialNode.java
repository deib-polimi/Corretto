package org.correttouml.uml2zot.semantics.iod;

import org.correttouml.uml.diagrams.iod.InitialNode;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SInitialNode {

	private InitialNode mades_node;

	public SInitialNode(InitialNode initialNode) {
		this.mades_node=initialNode;
	}

	public Predicate getPredicate() {
		return new SIOD(mades_node.getIOD()).getStartPredicate();
	}

}
