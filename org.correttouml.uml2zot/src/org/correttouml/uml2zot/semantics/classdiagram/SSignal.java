package org.correttouml.uml2zot.semantics.classdiagram;

import org.correttouml.uml.diagrams.activity.SendSignalNode;
import org.correttouml.uml.diagrams.activitydiagram.AD;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.classdiagram.Signal;
import org.correttouml.uml.diagrams.statediagram.StateDiagram;
import org.correttouml.uml.diagrams.statediagram.Transition;
import org.correttouml.uml.diagrams.statediagram.actions.Action;
import org.correttouml.uml.diagrams.statediagram.actions.SignalAction;
import org.correttouml.uml2zot.semantics.activity.SSendSignalNode;
import org.correttouml.uml2zot.semantics.statediagram.actions.SSignalAction;
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
        addActionsInvokingThisSignal(orCond);
        
        //Connection semantics
        //TODO: Interruptible regions can generate signals
        
        if(orCond.size()>0) sem=sem+new Iff(this.getPredicate(), orCond)+"\n";
        
        return sem;
	}

	private void addActionsInvokingThisSignal(Or orCond) {
        for (Object obj: mades_signal.getMadesModel().getClassdiagram().getObjects()) {
            for(StateDiagram std: obj.getOwningClass().getStateDiagrams()){
            	for(Transition t: std.getTransitions()){
            		if(!t.isInitialTransition() && t.hasActions()){
            			for(Action act: t.getActions(obj)){
            				if(act instanceof SignalAction){
                    			SignalAction s= (SignalAction)act;
                    			if(s.getSignal().equals(this.mades_signal)){
                    				orCond.addFormulae(new SSignalAction(s).getPredicate((Object[])null));
                    			}
            				}
            			}
            		}
            	}
            }
            
            for (AD ad : obj.getADs())
            	for (SendSignalNode ssn: ad.getSendSignalNodes())
            		if (ssn.getName().equals("@"+this.mades_signal.getName()+".sig"))
            			orCond.addFormulae(new SSendSignalNode(ssn, ad).getPredicate());
        }
	}
	
}
