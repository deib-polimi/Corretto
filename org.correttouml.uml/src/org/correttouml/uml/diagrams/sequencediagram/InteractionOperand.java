package org.correttouml.uml.diagrams.sequencediagram;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.correttouml.uml.diagrams.property.PTermElement;

/**
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class InteractionOperand implements InteractionFragment, PTermElement , Serializable{
	public org.eclipse.uml2.uml.InteractionOperand uml_interactionoperand;

	public InteractionOperand(
			org.eclipse.uml2.uml.InteractionOperand interactionoperand) {
		this.uml_interactionoperand = interactionoperand;
	}

	public String getName() {
		return uml_interactionoperand.getName();
	}

	public void setName(String name) {
		uml_interactionoperand.setName(name);
	}
	
	public String getPredicateName() {
		return new CombinedFragment((org.eclipse.uml2.uml.CombinedFragment)uml_interactionoperand.getOwner()).getPredicateName() + "_" + uml_interactionoperand.getName();
	}
	
	public String getSDName(){
			return new CombinedFragment((org.eclipse.uml2.uml.CombinedFragment)uml_interactionoperand.getOwner()).getSDName();
	}

	public SequenceDiagram getSD(){
		return new CombinedFragment((org.eclipse.uml2.uml.CombinedFragment)uml_interactionoperand.getOwner()).getSD();
	}
	
	public ArrayList<Lifeline> getLifelines() {
		ArrayList<Lifeline> lifelines = new ArrayList<Lifeline>();
		for (int i = 0; i < uml_interactionoperand.getCovereds().size(); i++) {
			lifelines.add(new Lifeline(uml_interactionoperand.getCovereds().get(i)));
		}
		return lifelines;
	}
	
	public ArrayList<String> getLifelinesNames() {
		ArrayList<String> lifelinesnames = new ArrayList<String>();
		for (int i = 0; i < uml_interactionoperand.getCovereds().size(); i++) 
			lifelinesnames.add(uml_interactionoperand.getCovereds().get(i).getName());
		return lifelinesnames;
	}
	
	public org.eclipse.uml2.uml.Interaction getEnclosingFragment(){
		return uml_interactionoperand.getEnclosingInteraction();
	}

	public ArrayList<InteractionFragment> getEvents() {
		ArrayList<InteractionFragment> events = new ArrayList<InteractionFragment>();
		List<org.eclipse.uml2.uml.InteractionFragment> sd_fragment = uml_interactionoperand.getFragments();
		for (org.eclipse.uml2.uml.InteractionFragment ifr : sd_fragment)
			events.add(InteractionFragmentFactory.getInstance(ifr));
		return events;
	}

	public ArrayList<InteractionFragment> getLifelineEvents(int lifelineIndex) {
		ArrayList<InteractionFragment> events = new ArrayList<InteractionFragment>();
		List<org.eclipse.uml2.uml.InteractionFragment> f = uml_interactionoperand.getFragments();
		for (org.eclipse.uml2.uml.InteractionFragment ifr : f) 
			for (org.eclipse.uml2.uml.Lifeline l : ifr.getCovereds())
				if (getLifelinesNames().get(lifelineIndex) == l.getName())
					events.add(InteractionFragmentFactory.getInstance(ifr));
		return events;
	}

	public String getGuard(){
		if (uml_interactionoperand.getGuard() == null)
			return "";
		if (uml_interactionoperand.getGuard().getName() == null)
			return "";
		return uml_interactionoperand.getGuard().getName();
	}
	
}
