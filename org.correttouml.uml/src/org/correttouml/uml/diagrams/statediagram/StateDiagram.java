package org.correttouml.uml.diagrams.statediagram;


import java.util.HashSet;
import java.util.Set;

import org.apache.log4j.Logger;
import org.correttouml.uml.MadesModel;
import org.correttouml.uml.diagrams.classdiagram.Class;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml2zot.UML2Zot;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.uml2.uml.Element;

public class StateDiagram implements ExpressionContext {
	
	@SuppressWarnings("unused")
	private static final Logger LOGGER = Logger.getLogger(StateDiagram.class); 
	
	/** the decorated state diagram */
	org.eclipse.uml2.uml.StateMachine uml_std=null;
	
	/** takes the state machine to decorate */
	public StateDiagram(org.eclipse.uml2.uml.StateMachine dec_std){
		this.uml_std=dec_std;
	}
	
    /** Returns the set of MADES states */
    public Set<State> getStates() {
        HashSet<State> r=new HashSet<State>();
        for(Element region: uml_std.getOwnedElements()){
        	if(region instanceof org.eclipse.uml2.uml.Region){
        		for(Element state: region.getOwnedElements()){
        			if(state instanceof org.eclipse.uml2.uml.State && !(state instanceof org.eclipse.uml2.uml.Pseudostate)){
        				r.add(new State((org.eclipse.uml2.uml.State)state));
        			}
        		}
        	}
        }
        return r;
    }

    /** Returns the set of MADES transitions */
    public Set<Transition> getTransitions() {
        Set<Transition> r=new HashSet<Transition>();
        for(Element region: uml_std.getOwnedElements()){
        	if(region instanceof org.eclipse.uml2.uml.Region){
        		for(Element transition: region.getOwnedElements()){
        			if(transition instanceof org.eclipse.uml2.uml.Transition){
        				r.add(new Transition((org.eclipse.uml2.uml.Transition)transition));
        			}
        		}
        	}
        }
        return r;
    }
    
    public Transition findTransition(String name){
    	for(Element region: uml_std.getOwnedElements()){
        	if(region instanceof org.eclipse.uml2.uml.Region){
        		for(Element transition: region.getOwnedElements()){
        			if(transition instanceof org.eclipse.uml2.uml.Transition){
        				org.eclipse.uml2.uml.Transition myt=(org.eclipse.uml2.uml.Transition) transition;
        				if(myt.getName().equals(name))return new Transition((org.eclipse.uml2.uml.Transition)transition);
        			}
        		}
        	}
        }
    	return null;
    }
    
    public Transition findTransition(String s1, String s2){
    	for(Element region: uml_std.getOwnedElements()){
        	if(region instanceof org.eclipse.uml2.uml.Region){
        		for(Element t: region.getOwnedElements()){
        			if(t instanceof org.eclipse.uml2.uml.State && new State((org.eclipse.uml2.uml.State)t).getName().equals(s1)){
        				org.eclipse.uml2.uml.State tf=(org.eclipse.uml2.uml.State) t;
        				for(org.eclipse.uml2.uml.Transition out: tf.getOutgoings()){
        					if(out.getTarget() instanceof org.eclipse.uml2.uml.State && new State((org.eclipse.uml2.uml.State)out.getTarget()).getName().equals(s2))
        						return new Transition(out);
        				}
        			}
        		}
        	}
        }
    	return null;
    }
    
	public State findState(String name) {
		for(Element region: uml_std.getOwnedElements()){
        	if(region instanceof org.eclipse.uml2.uml.Region){
        		for(Element t: region.getOwnedElements()){
        			if(t instanceof org.eclipse.uml2.uml.State && ((org.eclipse.uml2.uml.State)t).getName().equals(name)){
        				return new State((org.eclipse.uml2.uml.State) t);
        			}
        		}
        	}
		}
		return null;
	}

    /** Returns the MADES class owning this StateMachine     */
    public Class getOwningClass() {
    	org.eclipse.uml2.uml.Class c=(org.eclipse.uml2.uml.Class) this.uml_std.getOwner();
    	return new Class(c);
    }

	public String getName() {
		return this.uml_std.getName();
	}
	
	@Override
	public MadesModel getMadesModel() {
		return new MadesModel(this.uml_std.getModel());
	}
	
	@Override
	public boolean equals(java.lang.Object o){
		StateDiagram other_std=(StateDiagram) o;
		return this.uml_std.equals(other_std.uml_std);
	}
	
	@Override
	public int hashCode(){
		return this.uml_std.hashCode();
	}

	@Override
	public String getUMLId() {
		String id=((XMLResource) this.uml_std.eResource()).getID(uml_std);
		return UML2Zot.Utility.umlIDtoPrdID(id);
	}

}
