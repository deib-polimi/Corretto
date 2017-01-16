package org.correttouml.uml2zot.semantics.sequencediagram;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.sequencediagram.MessageEnd;
import org.correttouml.uml2zot.semantics.events.SEvent;
import org.correttouml.uml2zot.semantics.statediagram.actions.SAction;
import org.correttouml.uml2zot.semantics.statediagram.actions.SActionFactory;
import org.correttouml.uml2zot.semantics.util.bool.Iff;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SMessageEnd implements SInteractionFragment, SEvent{

	private MessageEnd mades_messageEndEvent;

	public SMessageEnd(MessageEnd mades_messageEndEvent){
		this.mades_messageEndEvent=mades_messageEndEvent;
	}

	@Override
	public Predicate getPredicate(Object... optObject) {
//		return new Predicate("MESSAGE" + mades_messageEndEvent.getMessage().getName() + "$" + this.mades_messageEndEvent.getMessage().getUMLId() + "_End");
		return new SMessage(mades_messageEndEvent.getMessage()).getPredicate().getEndPredicate();
	}

	@Override
	public Predicate getPredicate() {
//		return new Predicate("MESSAGE" + mades_messageEndEvent.getMessage().getName() + "$" + this.mades_messageEndEvent.getMessage().getUMLId() + "_End");
		return new SMessage(mades_messageEndEvent.getMessage()).getPredicate().getEndPredicate();
	}

	public String getSemantics(){
		String sem = "";
//For assignment on asynchronous message replies and recurisve messages.
		SAction sAction = SActionFactory.getInstance(mades_messageEndEvent.getAssignmentAction());
		sem += new Iff(getPredicate(), sAction.getPredicate(mades_messageEndEvent.getLifeline().getObject())) + "\n";
        if(sAction.getSemantics(mades_messageEndEvent.getMessage().getSequenceDiagram(), mades_messageEndEvent.getLifeline().getObject())!=null)
        	sem += sAction.getSemantics(mades_messageEndEvent.getMessage().getSequenceDiagram(), mades_messageEndEvent.getLifeline().getObject())+"\n";
        return sem;
	}

}