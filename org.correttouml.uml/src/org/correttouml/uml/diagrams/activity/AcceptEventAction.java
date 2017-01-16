package org.correttouml.uml.diagrams.activity;

import org.correttouml.uml.diagrams.events.Event;
import org.correttouml.uml.diagrams.events.EventFactory;
import org.correttouml.uml.helpers.EventParser;


public class AcceptEventAction extends Node{

	public AcceptEventAction(
			org.eclipse.uml2.uml.AcceptEventAction uml_activitynode) {
		this.uml_activitynode=uml_activitynode;
	}

	//true if this accept event actions is reached by a control flow
	//going out of an interruptible region
	public boolean isInterrupt(){
		for(InterruptibleRegion ir: new Activity(this.uml_activitynode.getActivity(), null).getInterruptibleRegions()){
			if(ir.getInterrupt().equals(this)) return true;
		}
		return false;
	}
	
	public InterruptibleRegion getInterruptRegion(){
		for(InterruptibleRegion ir: new Activity(this.uml_activitynode.getActivity(), null).getInterruptibleRegions()){
			if(ir.getInterrupt().equals(this)) return ir;
		}
		
		try {
			throw new Exception("Interruptible Region not found for accept event action");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Event getEvent(Activity activity) {
		EventParser ep=new EventParser(this.uml_activitynode.getName());
		return EventFactory.getInstance(activity, ep.getObjectName(), ep.getEventName(), ep.getEventExtension());
	}
	
	@Override
	public boolean equals(java.lang.Object o){
		if(!(o instanceof AcceptEventAction)) return false;
		AcceptEventAction other_aea=(AcceptEventAction) o;
		return this.uml_activitynode.equals(other_aea.uml_activitynode);
	}
	
	@Override
	public int hashCode(){
		return this.uml_activitynode.hashCode();
	}

}
