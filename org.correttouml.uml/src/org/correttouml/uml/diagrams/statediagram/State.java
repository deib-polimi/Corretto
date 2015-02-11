package org.correttouml.uml.diagrams.statediagram;


import java.util.HashSet;
import java.util.Set;

import org.correttouml.uml.diagrams.property.PTermElement;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.uml2.uml.Constraint;


public class State implements PTermElement{
	
	private org.eclipse.uml2.uml.State uml_state;
	
	/** Constructor getting the decorated object */
	public State(org.eclipse.uml2.uml.State dec_state){
		this.uml_state=dec_state;
		this.uml_state.eResource().getURI();
	}
	
    /** Returns the outgoing transitions */
    public Set<Transition> getOutgoingTransitions(){
       HashSet<Transition> r=new HashSet<Transition>();
       for(org.eclipse.uml2.uml.Transition t : this.uml_state.getOutgoings()){
    	   r.add(new Transition(t));
       }
       return r;
    }

     /** Returns the incoming transitions */
    public Set<Transition> getIncomingTransitions(){
        HashSet<Transition> r=new HashSet<Transition>();
        for(org.eclipse.uml2.uml.Transition t : this.uml_state.getIncomings()){
     	    if(!(t.getSource() instanceof org.eclipse.uml2.uml.Pseudostate)) r.add(new Transition(t));
        }
        return r;
    }
    
    public boolean isInitialState(){
    	boolean r=false;
    	for(org.eclipse.uml2.uml.Transition t: this.uml_state.getIncomings()){
    		if(t.getSource() instanceof org.eclipse.uml2.uml.Pseudostate) r=true;
    	}
    	return r;
    }
    
    public boolean hasInvariant(){
    	Constraint c=this.uml_state.getStateInvariant();
    	return c!=null;
    }

	public Invariant getInvariant() {
		return new Invariant(this.uml_state.getStateInvariant());
	}

	public StateDiagram getStateDiagram() {
		//The state is always inside a one level-depth region
		return new StateDiagram((org.eclipse.uml2.uml.StateMachine) this.uml_state.getOwner().getOwner());
	}

	public String getName() {
		return this.uml_state.getName();
	}
	
	public String getUMLId() {
		String id=((XMLResource) this.uml_state.eResource()).getID(uml_state);
		return id;
	}
		
	@Override
	public boolean equals(java.lang.Object o){
		State other_state=(org.correttouml.uml.diagrams.statediagram.State) o;
		return this.uml_state.equals((org.eclipse.uml2.uml.State) other_state.uml_state);
	}
	
	@Override
	public int hashCode(){
		return this.uml_state.hashCode();
	}
	
}