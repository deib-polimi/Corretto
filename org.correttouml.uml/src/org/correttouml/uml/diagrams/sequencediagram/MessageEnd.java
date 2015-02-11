package org.correttouml.uml.diagrams.sequencediagram;


import org.correttouml.uml.diagrams.events.Event;
import org.eclipse.uml2.uml.MessageOccurrenceSpecification;

public class MessageEnd implements InteractionFragment, Event {

	private MessageOccurrenceSpecification uml_mof;
	
	public MessageEnd(MessageOccurrenceSpecification mof) {
		this.uml_mof=mof;
	}

	public Message getMessage() {
		return new Message(uml_mof.getMessage());
	}
	
	public Lifeline getLifeline(){
		org.eclipse.uml2.uml.Lifeline l=uml_mof.getCovereds().get(0);;
		return new Lifeline(l);
	}

}
