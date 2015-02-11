package org.correttouml.uml.diagrams.iod;

import org.eclipse.emf.ecore.xmi.XMLResource;

public class JoinNode extends Node {

	public JoinNode(org.eclipse.uml2.uml.JoinNode uml_activitynode) {
		this.uml_activitynode=uml_activitynode;
	}

	public String getUMLId() {
		String id=((XMLResource) this.uml_activitynode.eResource()).getID(this.uml_activitynode);
		return id;
	}

}
