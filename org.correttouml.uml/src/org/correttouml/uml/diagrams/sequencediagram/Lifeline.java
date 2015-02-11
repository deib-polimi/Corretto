package org.correttouml.uml.diagrams.sequencediagram;


import java.util.ArrayList;
import java.util.List;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.eclipse.uml2.uml.GeneralOrdering;

public class Lifeline {

	private org.eclipse.uml2.uml.Lifeline uml_lifeline;
	
	public Lifeline(org.eclipse.uml2.uml.Lifeline l) {
		this.uml_lifeline=l;
	}
	
	public List<InteractionFragment> getEvents(){
		List<InteractionFragment> events=new ArrayList<InteractionFragment>();
		
		//la lista ordinata del sequence diagram
		List<org.eclipse.uml2.uml.InteractionFragment> sd_fragment=uml_lifeline.getInteraction().getFragments();
		//TODO: in Papyrus the list covoredbys seems not ordered
		for(org.eclipse.uml2.uml.InteractionFragment ifr: sd_fragment){
			if(uml_lifeline.getCoveredBys().contains(ifr)){
				//FIXME: Please do not ignore ActionExecutionSpecification and BehaviorExecutionSpecification
				//
				////<##del me>
//				if (ifr instanceof org.eclipse.uml2.uml.CombinedFragment){
//					CombinedFragment cf = new CombinedFragment((org.eclipse.uml2.uml.CombinedFragment)ifr);
//					org.eclipse.uml2.uml.Interaction fffff= cf.getEnclosingFragment();
//					fffff.getFragments();
//					String adsfs = "sfd";
//				}
				////</###del me>
				events.add(InteractionFragmentFactory.getInstance(ifr)); //keep only this for new version
				//
				//if(!(ifr instanceof org.eclipse.uml2.uml.ActionExecutionSpecification) && !(ifr instanceof org.eclipse.uml2.uml.BehaviorExecutionSpecification)){ 
//				<old version>
//					if (!(ifr instanceof org.eclipse.uml2.uml.CombinedFragment)
//						&& !(ifr instanceof org.eclipse.uml2.uml.ActionExecutionSpecification)
//						&& !(ifr instanceof org.eclipse.uml2.uml.BehaviorExecutionSpecification)) {
//					events.add(InteractionFragmentFactory.getInstance(ifr));
//				}
//					</old version>
			}
		}
		return events;
	}
	

	public SequenceDiagram getSequenceDiagram() {
		return new SequenceDiagram(uml_lifeline.getInteraction());
	}

	public Object getObject() {
		return new Object(((org.eclipse.uml2.uml.InstanceValue) uml_lifeline.getSelector()).getInstance());
	}
	
	@Override
	public boolean equals(java.lang.Object object){
		if(object instanceof Lifeline){
			Lifeline other=(Lifeline) object;
			return other.uml_lifeline.equals(this.uml_lifeline);
		}
		return false;
	}
	
	@Override
	public int hashCode(){
		return uml_lifeline.hashCode();
	}

	public String getName() {
		return this.uml_lifeline.getName();
	}

}
