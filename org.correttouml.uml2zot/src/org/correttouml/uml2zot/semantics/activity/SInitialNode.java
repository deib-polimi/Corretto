package org.correttouml.uml2zot.semantics.activity;

import org.correttouml.uml.diagrams.activity.Activity;
import org.correttouml.uml.diagrams.activity.InitialNode;
import org.correttouml.uml.diagrams.activitydiagram.AD;
import org.correttouml.uml.diagrams.iod.IOD;
import org.correttouml.uml2zot.semantics.SMadesModel;
import org.correttouml.uml2zot.semantics.activitydiagram.SAD;
import org.correttouml.uml2zot.semantics.iod.SIOD;
import org.correttouml.uml2zot.semantics.util.bool.Iff;
import org.correttouml.uml2zot.semantics.util.bool.Implies;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.trio.Futr;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.correttouml.uml2zot.semantics.util.trio.SomF;


public class SInitialNode {

	private InitialNode mades_node;
	private Activity mades_activity;

	public SInitialNode(InitialNode initialNode, Activity activity) {
		this.mades_node=initialNode;
		this.mades_activity = activity;
	}

	public Predicate getPredicate() {
		if (mades_activity instanceof AD)
			return new SAD((AD) mades_activity).getPredicate().getStartPredicate();
		else if (mades_activity instanceof IOD)
			return new SIOD((IOD) mades_activity).getPredicate().getStartPredicate();
		return null;
	}
	
	public String getSemantics(){
		String sem = "";
		sem = sem + new Implies(this.getPredicate(), new Futr(new Not(new SomF(this.getPredicate())), 1)) + "\n";
		sem = sem + new Iff(SMadesModel.SYSTEMSTART, this.getPredicate()) + "\n";
		return sem;
	}

}
