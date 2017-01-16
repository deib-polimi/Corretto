package org.correttouml.uml2zot.semantics.activity;

import org.correttouml.uml.diagrams.activity.JoinNode;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SJoinNode {

	private JoinNode mades_node;

	public SJoinNode(JoinNode joinNode) {
		this.mades_node=joinNode;
	}

	public Predicate getPredicate() {
		return new Predicate("JOIN"+this.mades_node.getUMLId()+"_END");
	}

}
