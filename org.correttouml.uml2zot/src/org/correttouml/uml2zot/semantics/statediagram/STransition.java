package org.correttouml.uml2zot.semantics.statediagram;


import org.apache.log4j.Logger;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.statediagram.Transition;
import org.correttouml.uml2zot.semantics.SMadesModel;
import org.correttouml.uml2zot.semantics.expressions.SBooleanExpression;
import org.correttouml.uml2zot.semantics.statediagram.actions.SAction;
import org.correttouml.uml2zot.semantics.statediagram.actions.SActionFactory;
import org.correttouml.uml2zot.semantics.statediagram.actions.SAssignmentAction;
import org.correttouml.uml2zot.semantics.statediagram.triggers.STimeCondition;
import org.correttouml.uml2zot.semantics.statediagram.triggers.STriggerEvent;
import org.correttouml.uml2zot.semantics.statediagram.triggers.STriggerEventFactory;
import org.correttouml.uml2zot.semantics.util.bool.And;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Iff;
import org.correttouml.uml2zot.semantics.util.bool.Implies;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.bool.Or;
import org.correttouml.uml2zot.semantics.util.trio.Next;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;

public class STransition {

	private static final Logger LOGGER = Logger.getLogger(STransition.class); 
	private Transition mades_transition;

	public STransition(Transition t) {
		this.mades_transition=t;
	}

	public Predicate getPredicate(Object object) {
        Predicate predicate=new Predicate();
        // MR: modified to avoid "-"
        predicate.setPredicateName("OBJ"+object.getName()+"_STD"+this.mades_transition.getStateDiagram().getName()+"_TRANSITION"+this.mades_transition.getUMLId());
        return predicate;
	}
	
	public String getSemantics(Object object){
        String sem = "";
        LOGGER.info(this.mades_transition.getSource().getName() + "->" + this.mades_transition.getDestination().getName());
        
        Predicate sourcestate = new SState(this.mades_transition.getSource()).getPredicate(object);
        Predicate sourcestateexit = new SState(this.mades_transition.getSource()).getStateExitPredicate(object);
        Predicate deststateenter = new SState(this.mades_transition.getDestination()).getStateEnterPredicate(object);
        
        Predicate trigger=null;
        if(this.mades_transition.hasTrigger()) trigger= new STrigger(this.mades_transition.getTrigger()).getPredicate(object);
        Predicate guard=null;
        if(this.mades_transition.hasGuard()) guard=new SGuard(this.mades_transition.getGuard()).getPredicate(object);
        
        SAction action=null;
        if(this.mades_transition.hasAction()) action=SActionFactory.getInstance(this.mades_transition.getAction());
        Predicate transition = this.getPredicate(object);
        
        //Collect all the transitions going out from the same source state of this one
        Or orTransitions=new Or();
        for(Transition t: this.mades_transition.getSource().getOutgoingTransitions()){
            orTransitions.addFormulae(new STransition(t).getPredicate(object));
        }
        
        //We do not give semantics to the initial transition starting from the pseudostate
        //and landing into the first state. The initial state is directly the one pointed
        //by the pseudo state
        if(this.mades_transition.isInitialTransition()) return sem=sem+SMadesModel.printSeparatorSmall("The initial transition has no semantics", false);

        //if it is not a self-transition we should exit the state and enter the destination state
        if (!this.mades_transition.getSource().equals(this.mades_transition.getDestination())) {
            sem = sem + new Implies(transition, new And(sourcestateexit, new Next(deststateenter))) + "\n";
        }      
        
        //definition of transition
        if (this.mades_transition.hasTrigger() && !this.mades_transition.hasGuard()) {
            sem = sem + new Implies(trigger, orTransitions) + "\n";
            sem = sem + new Implies(transition, new And(sourcestate, trigger)) + "\n";
        } else if (this.mades_transition.hasTrigger() && this.mades_transition.hasGuard()) {
            sem = sem + new Implies(new And(trigger,guard), orTransitions) + "\n";
            sem = sem + new Implies(transition, new And(sourcestate, trigger, guard)) + "\n";
        } else if (!this.mades_transition.hasTrigger() && this.mades_transition.hasGuard()) {
        	//sem = sem + new Implies(guard, orTransitions) + "\n";
            sem = sem + new Implies(transition, new And(sourcestate, guard)) + "\n";
        } else if (!this.mades_transition.hasTrigger() && !this.mades_transition.hasGuard()){
        	sem = sem + new Implies(transition, sourcestate) + "\n";
        }

        //definition of trigger, guard and action
        BooleanFormulae guardFormulae=null;
        Predicate triggerEvent=null;
        if (this.mades_transition.hasGuard()) {
        	guardFormulae=new SBooleanExpression(this.mades_transition.getGuard().getBooleanExpression()).getSemantics(object, this.mades_transition.getStateDiagram());
            sem = sem + new Iff(new And(sourcestate, guardFormulae), guard) + "\n";
        }
        if (this.mades_transition.hasTrigger()){
        	STriggerEvent s_triggerEvent=STriggerEventFactory.getInstance(this.mades_transition.getTrigger().getTriggerEvent());
        	triggerEvent=s_triggerEvent.getPredicate(object);
            sem = sem + new Iff(new And(sourcestate, triggerEvent), trigger)+"\n";
            
            if(s_triggerEvent instanceof STimeCondition) sem=sem+new Iff(triggerEvent,((STimeCondition)s_triggerEvent).getSemantics(object))+"\n";
        }
        if (this.mades_transition.hasAction()){
            sem = sem + new Iff(new And(sourcestate, transition), action.getPredicate(object)) + "\n"; 
            if(action.getSemantics(this.mades_transition.getStateDiagram(), object)!=null) sem=sem+action.getSemantics(this.mades_transition.getStateDiagram(), object)+"\n";
        }
        
        //Transitions are mutually exclusive
        And andNotTransitions=new And();
        for(Transition t: this.mades_transition.getSource().getOutgoingTransitions()){
            if(!t.equals(this.mades_transition)) andNotTransitions.addFormulae(new Not(new STransition(t).getPredicate(object)));
        }
        if(andNotTransitions.size()>0)sem=sem+new Implies(transition, andNotTransitions)+"\n";
        
        return sem;
	}
	

}
