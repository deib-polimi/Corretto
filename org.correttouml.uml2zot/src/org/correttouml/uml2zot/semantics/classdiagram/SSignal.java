package org.correttouml.uml2zot.semantics.classdiagram;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.classdiagram.Signal;
import org.correttouml.uml.diagrams.statediagram.StateDiagram;
import org.correttouml.uml.diagrams.statediagram.Transition;
import org.correttouml.uml.diagrams.statediagram.actions.SignalAction;
import org.correttouml.uml2zot.semantics.statediagram.STransition;
import org.correttouml.uml2zot.semantics.util.bool.Iff;
import org.correttouml.uml2zot.semantics.util.bool.Or;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SSignal {
	
	private Signal mades_signal;

	public SSignal(Signal signal){
		this.mades_signal=signal;
	}
	
	public Predicate getPredicate() {
		return new Predicate(mades_signal.getName());
	}

	public String getSemantics() {
		String sem="";

        Or orCond = new Or();
        
        //Connection semantics
        //Actions can generate signal
        for (Object obj: mades_signal.getMadesModel().getClassdiagram().getObjects()) {
            for(StateDiagram std: obj.getOwningClass().getStateDiagrams()){
            	for(Transition t: std.getTransitions()){
            		if(!t.isInitialTransition() && t.hasAction() && t.getAction() instanceof SignalAction){
            			SignalAction s= (SignalAction)t.getAction();
            			if(s.equals(new SignalAction(this.mades_signal))) orCond.addFormulae(new STransition(t).getPredicate(obj));
            		}
            	}
            }
        }
        
        //Connection semantics
        //TODO: Interruptible regions can generate signals
        
        if(orCond.size()>0) sem=sem+new Iff(this.getPredicate(), orCond)+"\n";
        
        return sem;
	}
	
}
