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
		//return new Predicate("MESSAGE"+this.mades_messageStartEvent.getMessage().getUMLId().replace("-", "_")+"_Start");
//		return new Predicate("MESSAGE"+UML2Zot.Utility.umlIDtoPrdID(this.mades_messageStartEvent.getMessage().getUMLId())).getPredicateStart();////####uncomment me
//		return new Predicate(mades_messageStartEvent.getMessage().getName()+"_Start");
		return new Predicate("MESSAGE" + mades_messageStartEvent.getMessage().getName() + "$" + this.mades_messageStartEvent.getMessage().getUMLId() + "_Start");
	}

	@Override
	public Predicate getPredicate(Object... optObject) {
		//return new Predicate("MESSAGE"+this.mades_messageStartEvent.getMessage().getUMLId().replace("-", "_")+"_Start");
//		return new Predicate("MESSAGE"+UML2Zot.Utility.umlIDtoPrdID(this.mades_messageStartEvent.getMessage().getUMLId())).getPredicateStart();////####uncomment me
//		return new Predicate(mades_messageStartEvent.getMessage().getName()+"_Start");
		return new Predicate("MESSAGE" + mades_messageStartEvent.getMessage().getName() + "$" + this.mades_messageStartEvent.getMessage().getUMLId() + "_Start");
	}

}
