package org.correttouml.uml2zot.semantics.sequencediagram;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.sequencediagram.MessageStart;
import org.correttouml.uml2zot.semantics.events.SEvent;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SMessageStart implements SInteractionFragment, SEvent{

	private MessageStart mades_messageStartEvent;

	public SMessageStart(MessageStart mades_messageStartEvent){
		this.mades_messageStartEvent=mades_messageStartEvent;
	}
	
	@Override
	public Predicate getPredicate(){
		return new SMessage(mades_messageStartEvent.getMessage()).getPredicate().getStartPredicate();
	}

	@Override
	public Predicate getPredicate(Object... optObject) {
		return new SMessage(mades_messageStartEvent.getMessage()).getPredicate().getStartPredicate();
		}

}
