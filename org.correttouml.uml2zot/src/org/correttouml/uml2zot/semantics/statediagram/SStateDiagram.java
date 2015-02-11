package org.correttouml.uml2zot.semantics.statediagram;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.statediagram.State;
import org.correttouml.uml.diagrams.statediagram.StateDiagram;
import org.correttouml.uml.diagrams.statediagram.Transition;
import org.correttouml.uml2zot.semantics.SMadesModel;


public class SStateDiagram {
	
	/** The state diagram we are giving semantics to */
	private StateDiagram statediagram;

	public SStateDiagram(StateDiagram std){
		this.statediagram=std;
	}

	public String getSemantics(Object object) {
        String sem = "";

        //State semantics
        for (State s : statediagram.getStates()) {
        	sem=sem+SMadesModel.printSeparatorSmall("STATE " + s);
        	sem = sem + new SState(s).getSemantics(object);
        }

        //Transitions semantics
        for (Transition t : statediagram.getTransitions()) {
        	if(!t.isInitialTransition()){
        		sem=sem+SMadesModel.printSeparatorSmall("TRANSITION " + t);
        		sem = sem + new STransition(t).getSemantics(object);
        	}
        }

        return sem;
	}

}
