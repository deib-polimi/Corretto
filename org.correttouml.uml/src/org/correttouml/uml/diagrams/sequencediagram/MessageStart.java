package org.correttouml.uml.diagrams.sequencediagram;


import org.correttouml.uml.diagrams.events.Event;
import org.eclipse.uml2.uml.MessageOccurrenceSpecification;

public class MessageStart implements InteractionFragment, Event {

	private MessageOccurrenceSpecification uml_mof;
	
	public MessageStart(MessageOccurrenceSpecification mof) {
		this.uml_mof=mof;
	}

	public Message getMessage() {
		return new Message(uml_mof.getMessage());
	}

	public Lifeline getLifeline() {
		return new Lifeline(this.uml_mof.getCovereds().iterator().next());
	}

}
