package org.correttouml.uml2zot.semantics.events;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.events.ReplyEvent;
import org.correttouml.uml2zot.semantics.classdiagram.SOperation;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SReplyEvent implements SEvent{

	private ReplyEvent mades_replyevent;

	public SReplyEvent(ReplyEvent replyEvent) {
		this.mades_replyevent = replyEvent;
	}

	@Override
	public Predicate getPredicate(Object... optObject) {
		return new SOperation(mades_replyevent.getOperation()).getReplyPredicate(optObject[0]);
	}

}
