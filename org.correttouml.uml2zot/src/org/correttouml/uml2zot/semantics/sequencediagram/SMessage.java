package org.correttouml.uml2zot.semantics.sequencediagram;

import org.correttouml.uml.diagrams.classdiagram.Clock;
import org.correttouml.uml.diagrams.sequencediagram.*;
import org.correttouml.uml2zot.semantics.events.SClockTickEvent;
import org.correttouml.uml2zot.semantics.util.bool.Iff;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.eclipse.uml2.uml.MessageOccurrenceSpecification;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/
public class SMessage {

	private Message mades_message;

	public SMessage(Message m) {
		this.mades_message=m;
	}
	
	public SMessage() {
	}
	
	public Predicate getPredicate(){
		//return new Predicate("MESSAGE"+this.mades_message.getUMLId().replace("-", "_"));
//		return new Predicate("MESSAGE"+UML2Zot.Utility.umlIDtoPrdID(this.mades_message.getUMLId()));
		return new Predicate("$MESSAGE" + mades_message.getName() + this.mades_message.getUMLId());
//		return new Predicate(mades_message.getName());
	}

	public Predicate getmosPredicate(MessageOccurrenceSpecification mos){
		if (mos.getMessage().getSendEvent().equals(mos))
			return new SMessageStart(new MessageStart(mos)).getPredicate();
		if (mos.getMessage().getReceiveEvent().equals(mos))
			return new SMessageEnd(new MessageEnd(mos)).getPredicate();
		return null;
	}
	
	public String getSemantics(){
        String sem = "";
        
        Predicate message=this.getPredicate();
        Predicate message_start=new SMessageStart(this.mades_message.getMessageStartEvent()).getPredicate();
        Predicate message_end=new SMessageEnd(this.mades_message.getMessageEndEvent()).getPredicate();
        
        //Message predicate definition
        Predicate SD_Stop = new SSequenceDiagram(mades_message.getSequenceDiagram()).getPredicate().getStopPredicate();
//        sem = sem + new Iff(message, new Or(message_start, new Since_ei(new Not(message_end), message_start))) + "\n"; //####check for CF_Break ... (SD_Stop, SD_End)
        sem += new SBorders(message, SD_Stop) + "\n";
        sem += new SOrder(message_start, message_end, getSSequenceDiagram().getPredicate().getStopPredicate(), true).getFun().toString() + "\n";
        //Message parameter semantics
        for (MessageParameter mp : this.mades_message.getParameters()) {
        	sem=sem+new SMessageParameter(mp).getSemantics(mades_message.getMessageEndEvent().getLifeline().getObject())+"\n";
        }

        //Message start and message end holds at the same time instant
//        if(this.mades_message.getMessageType()==MessageType.INSTANTANEOUS){
//            sem = sem + new Iff(message_start, message_end) + "\n";
//        }else if(this.mades_message.getMessageType()==MessageType.RECURSIVE){
//            //Nothing to do
//        }else if(this.mades_message.getMessageType()==MessageType.DELAYED){
//        	//TODO: Semantics for delayed messages
//        }
        
        //Timed event semantics
//        if(this.mades_message.hasTimedEventStereotype()){
//        	Clock c=mades_message.getAssociatedClock();
//        	sem = sem + new Iff(message_start, new SClockTickEvent(c.getClockTickEvent()).getPredicate()) + "\n";
//        }
        sem += getTimedMessageSemantics();
        sem += getAssignmentSemantics();

        return sem;
	}
	
	private String getAssignmentSemantics() {
		//If it is a reply message and there is an assignment.
		if ((mades_message.getMessageType() == MessageType.REPLY || mades_message.getMessageType() == MessageType.RECURSIVE) && mades_message.getName().contains("="))
			return new SMessageEnd(mades_message.getMessageEndEvent()).getSemantics() + "\n";
		return "";
	}

	public SSequenceDiagram getSSequenceDiagram(){
		return new SSequenceDiagram(mades_message.getSequenceDiagram());
	}
	
	public String getTimedMessageSemantics(){
        if(this.mades_message.hasTimedEventStereotype()){
        	Clock c=mades_message.getAssociatedClock();
        	return new Iff(new SMessageStart(this.mades_message.getMessageStartEvent()).getPredicate(), new SClockTickEvent(c.getClockTickEvent()).getPredicate()) + "\n";
        }
		return "";
	}
	


}
