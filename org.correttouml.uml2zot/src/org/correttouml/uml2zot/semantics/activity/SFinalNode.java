package org.correttouml.uml2zot.semantics.activity;

import org.correttouml.uml.diagrams.activity.Activity;
import org.correttouml.uml.diagrams.activity.FinalNode;
import org.correttouml.uml.diagrams.activitydiagram.AD;
import org.correttouml.uml.diagrams.iod.IOD;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.correttouml.uml2zot.semantics.activitydiagram.SAD;
import org.correttouml.uml2zot.semantics.iod.SIOD;


public class SFinalNode {

	private FinalNode mades_node;
	private Activity mades_activity;
	public SFinalNode(FinalNode n, Activity activity) {
		this.mades_node=n;
		this.mades_activity = activity;
	}
	
	public Predicate getPredicate(){
		if (mades_activity instanceof AD)
			return new SAD((AD) mades_activity).getPredicate().getEndPredicate();
		else if (mades_activity instanceof IOD)
			return new SIOD((IOD) mades_activity).getPredicate().getEndPredicate();
		return null;
	}

}
