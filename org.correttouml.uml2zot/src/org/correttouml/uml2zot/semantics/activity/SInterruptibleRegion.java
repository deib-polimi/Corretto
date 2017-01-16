package org.correttouml.uml2zot.semantics.activity;

import org.correttouml.uml.diagrams.activity.InterruptibleRegion;
import org.correttouml.uml.diagrams.activitydiagram.AD;
import org.correttouml.uml.diagrams.iod.IOD;
import org.correttouml.uml2zot.semantics.activitydiagram.SAD;
import org.correttouml.uml2zot.semantics.iod.SIOD;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SInterruptibleRegion {

	private InterruptibleRegion mades_ir;

	public SInterruptibleRegion(InterruptibleRegion ir) {
		this.mades_ir=ir;
	}
	
	public Predicate getPredicate(){
		String activityName = "";
		if (mades_ir.getEnclosingActivity() instanceof AD)
			activityName = new SAD((AD)mades_ir.getEnclosingActivity()).getPredicate().getPredicateName();
		else if (mades_ir.getEnclosingActivity() instanceof IOD)
			activityName = new SIOD((IOD)mades_ir.getEnclosingActivity()).getPredicate().getPredicateName();
		return new Predicate("$" + activityName + "_IR_"+ this.mades_ir.getUMLId());
	}

}
