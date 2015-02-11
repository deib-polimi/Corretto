package org.correttouml.uml.diagrams.statediagram;


import org.correttouml.uml.diagrams.expressions.AssignmentContext;
import org.correttouml.uml.diagrams.statediagram.actions.Action;
import org.correttouml.uml.diagrams.statediagram.actions.ActionFactory;
import org.correttouml.uml.helpers.StDTransitionsParser;
import org.eclipse.emf.ecore.xmi.XMLResource;

public class Transition implements AssignmentContext{
	
	/** the decorated transition */
	org.eclipse.uml2.uml.Transition uml_transition;
	
	/** Constructor with the decorated transition */
	public Transition(org.eclipse.uml2.uml.Transition dec_transition){
		this.uml_transition=dec_transition;
	}
	
	public State getSource(){
		org.eclipse.uml2.uml.State s= (org.eclipse.uml2.uml.State) uml_transition.getSource();
		return new State(s);
	}
	
	public State getDestination(){
		org.eclipse.uml2.uml.State s= (org.eclipse.uml2.uml.State) uml_transition.getTarget();
		return new State(s);
	}

	public StateDiagram getStateDiagram() {
		//The state is always inside a one level-depth region
		return new StateDiagram((org.eclipse.uml2.uml.StateMachine) this.uml_transition.getOwner().getOwner());
	}

	public String getUMLId() {
		String id=((XMLResource) this.uml_transition.eResource()).getID(uml_transition);
		return id;
	}

	public boolean hasTrigger() {
		StDTransitionsParser p= new StDTransitionsParser();
		p.parse(uml_transition.getName());
		return p.hasTrigger();
		//return uml_transition.getTriggers().size()>0;
	}

	public Trigger getTrigger() {
		StDTransitionsParser p= new StDTransitionsParser();
		p.parse(uml_transition.getName());
		return new Trigger(p.getTrigger(), this.uml_transition);
		
		//org.eclipse.uml2.uml.Trigger t=uml_transition.getTriggers().get(0);
		//return new Trigger(t);
	}

	public Guard getGuard() {
		StDTransitionsParser p= new StDTransitionsParser();
		p.parse(uml_transition.getName());
		return new Guard(p.getGuard(), this.uml_transition);
		
		//org.eclipse.uml2.uml.Constraint g=uml_transition.getGuard();
		//return new Guard(g);
	}

	public boolean hasGuard() {
		StDTransitionsParser p= new StDTransitionsParser();
		p.parse(uml_transition.getName());
		return p.hasGuard();
		//return uml_transition.getTriggers().size()>0;
	}

	public boolean hasAction() {
		StDTransitionsParser p= new StDTransitionsParser();
		p.parse(uml_transition.getName());
		return p.hasAction();
		//return uml_transition.getTriggers().size()>0;
	}
	
	public Action getAction(){		
		StDTransitionsParser p= new StDTransitionsParser();
		p.parse(uml_transition.getName());
		return ActionFactory.getInstance(p.getAction(), this.uml_transition);		
		
		//return ActionFactory.getInstance(uml_transition.getEffect());
	}
	
	public boolean isInitialTransition(){
		return uml_transition.getSource() instanceof org.eclipse.uml2.uml.Pseudostate;
	}
	
	@Override
	public boolean equals(java.lang.Object o){
		Transition other_transition=(Transition) o;
		return this.uml_transition.equals((org.eclipse.uml2.uml.Transition) other_transition.uml_transition);
	}
	
	@Override
	public int hashCode(){
		return this.uml_transition.hashCode();
	}

}
