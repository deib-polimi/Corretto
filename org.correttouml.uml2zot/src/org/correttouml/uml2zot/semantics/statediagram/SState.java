package org.correttouml.uml2zot.semantics.statediagram;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.statediagram.Invariant;
import org.correttouml.uml.diagrams.statediagram.State;
import org.correttouml.uml.diagrams.statediagram.Transition;
import org.correttouml.uml2zot.semantics.SMadesModel;
import org.correttouml.uml2zot.semantics.util.bool.And;
import org.correttouml.uml2zot.semantics.util.bool.Implies;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.bool.Or;
import org.correttouml.uml2zot.semantics.util.trio.Next;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.correttouml.uml2zot.semantics.util.trio.Yesterday;


public class SState {
	
	private State state;
	private Predicate predicate;

	public SState(State s){
		this.state=s;
	}
	
    public Predicate getPredicate(Object object){
        if(this.predicate==null){
            predicate=new Predicate();
        }
        predicate.setPredicateName("$OBJ"+object.getName()+"_STD"+this.state.getStateDiagram().getName()+"_STATE"+this.state.getName());
        return predicate;
    }
    
    public Predicate getStateEnterPredicate(Object object){
        Predicate p=new Predicate();
        p.setPredicateName("OBJ"+object.getName()+"_STD"+this.state.getStateDiagram().getName()+"_STATE"+this.state.getName()+"_ENTER");
        return p;
    }
    
    public Predicate getStateExitPredicate(Object object){
        Predicate p=new Predicate();
        p.setPredicateName("OBJ"+object.getName()+"_STD"+this.state.getStateDiagram().getName()+"_STATE"+state.getName()+"_EXIT");
        return p;
    }

	public String getSemantics(Object object){
        String sem = "";

        Predicate statepredicate = this.getPredicate(object);
        Predicate stateEnter = this.getStateEnterPredicate(object);
        Predicate stateExit = this.getStateExitPredicate(object);
        
        //MR: no state holds the first instant of the execution (when SYSTEMSTART is true)
        sem=sem+new Implies(SMadesModel.SYSTEMSTART, new Not(statepredicate))+"\n";

        //If this is an initial state then the system start implies the state enter
        if(state.isInitialState()) sem=sem+new Implies(SMadesModel.SYSTEMSTART, new Next(stateEnter))+"\n";
        
        Or orInc=new Or();
        //if this is an initial state the state enter implies the system start 
        if(state.isInitialState()) orInc.addFormulae(SMadesModel.SYSTEMSTART);
        for(Transition t: state.getIncomingTransitions()){
            //self-transitions do not cause state enters
            if(!t.getSource().equals(t.getDestination())) orInc.addFormulae(new STransition(t).getPredicate(object));            
        }
        
        Or orOut=new Or();
        for(Transition t: state.getOutgoingTransitions()){
            //self-transitions do not cause state exits
            if(!t.getSource().equals(t.getDestination())) orOut.addFormulae(new STransition(t).getPredicate(object));
        }

        //StateEnter and StateExit definitions
        if(orInc.size() > 0) sem = sem + new Implies(stateEnter, new Yesterday(orInc)) + "\n";
        else sem=sem + new Not(stateEnter)+"\n";
        if(orOut.size() > 0) sem = sem + new Implies(stateExit, orOut) + "\n";
        else sem=sem + new Not(stateExit)+"\n";
        
        //State definition
        sem = sem + new Implies(new And(statepredicate, new Not(stateExit)), new Next(statepredicate))+"\n";
        sem = sem + new Implies(new And(statepredicate, stateExit), new Next(new Not(statepredicate)))+"\n";
        sem = sem + new Implies(new And(new Not(statepredicate), new Next(stateEnter)), new Next(statepredicate))+"\n";
        sem = sem + new Implies(new And(new Not(statepredicate), new Next(new Not(stateEnter))), new Next(new Not(statepredicate)))+"\n";      
        
        //Invariant
        if(state.hasInvariant()){
        	Invariant inv=state.getInvariant();
            sem=sem+new SInvariant(inv).getSemantics(object)+"\n";
        }
        
        return sem;
	}
	
}
