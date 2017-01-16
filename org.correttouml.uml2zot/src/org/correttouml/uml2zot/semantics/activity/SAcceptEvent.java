package org.correttouml.uml2zot.semantics.activity;

import org.correttouml.uml.diagrams.activity.AcceptEventAction;
import org.correttouml.uml.diagrams.activity.Activity;
import org.correttouml.uml.diagrams.events.Event;
import org.correttouml.uml2zot.semantics.events.SEvent;
import org.correttouml.uml2zot.semantics.events.SEventFactory;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;

public class SAcceptEvent {

	private AcceptEventAction mades_node;
	private Activity mades_activity;
	public SAcceptEvent(AcceptEventAction n, Activity activity) {
		this.mades_node = n;
		this.mades_activity = activity;
	}
	
	public Predicate getPredicate(){
		Event event = mades_node.getEvent(this.mades_activity);
		SEvent s_event = SEventFactory.getInstance(event);
		Predicate event_predicate = s_event.getPredicate(this.mades_activity.getObject());
		return event_predicate;
	}

}
