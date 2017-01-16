package org.correttouml.uml2zot.semantics.activity;

import org.correttouml.uml.diagrams.activity.Activity;
import org.correttouml.uml.diagrams.activity.ControlFlow;
import org.correttouml.uml.diagrams.activitydiagram.AD;
import org.correttouml.uml.diagrams.iod.IOD;
import org.correttouml.uml2zot.semantics.activitydiagram.SAD;
import org.correttouml.uml2zot.semantics.iod.SIOD;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SControlFlow {

	private ControlFlow mades_controlflow;
	private Activity mades_activity;

	public SControlFlow(ControlFlow mades_controlflow, Activity mades_activity){
		this.mades_controlflow = mades_controlflow;
		this.mades_activity = mades_activity;
	}
	
	public BooleanFormulae getGuard(){
		//TODO: Control flow may have boolean formulae associated
		return null;
	}

	public Predicate getPredicate() {
		String diagramPrefix = "";
		if (mades_activity instanceof AD)
			diagramPrefix = new SAD((AD) mades_activity).getPredicate().getPredicateName();
		else if (mades_activity instanceof IOD)
			diagramPrefix = new SIOD((IOD) mades_activity).getPredicate().getPredicateName();
		
		return new Predicate("$" + diagramPrefix + "_CF" + this.mades_controlflow.getUMLId());
	}
	
}
