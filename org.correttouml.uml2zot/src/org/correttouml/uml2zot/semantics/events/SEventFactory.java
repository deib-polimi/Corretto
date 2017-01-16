package org.correttouml.uml2zot.semantics.events;

import org.correttouml.uml.diagrams.events.ADEnd;
import org.correttouml.uml.diagrams.events.ADStart;
import org.correttouml.uml.diagrams.events.CallEvent;
import org.correttouml.uml.diagrams.events.ClockTickEvent;
import org.correttouml.uml.diagrams.events.Event;
import org.correttouml.uml.diagrams.events.IODEnd;
import org.correttouml.uml.diagrams.events.IODStart;
import org.correttouml.uml.diagrams.events.ReplyEvent;
import org.correttouml.uml.diagrams.events.SequenceDiagramEnd;
import org.correttouml.uml.diagrams.events.SequenceDiagramStart;
import org.correttouml.uml.diagrams.events.SignalEvent;
import org.correttouml.uml.diagrams.events.StateEnter;
import org.correttouml.uml.diagrams.events.StateExit;
import org.correttouml.uml.diagrams.sequencediagram.MessageEnd;
import org.correttouml.uml.diagrams.sequencediagram.MessageStart;
import org.correttouml.uml2zot.semantics.sequencediagram.SMessageEnd;
import org.correttouml.uml2zot.semantics.sequencediagram.SMessageStart;


public class SEventFactory {

	public static SEvent getInstance(Event mades_event){
		try {
			if(mades_event instanceof ClockTickEvent){
				return new SClockTickEvent((ClockTickEvent) mades_event);
			}
			if(mades_event instanceof SignalEvent){
				return new SSignalEvent((SignalEvent) mades_event);
			}
			if(mades_event instanceof CallEvent){
				return new SCallEvent((CallEvent)mades_event);
			}
			if(mades_event instanceof ReplyEvent)
				return new SReplyEvent((ReplyEvent)mades_event);
			if(mades_event instanceof StateEnter){
				return new SStateEnter((StateEnter)mades_event);
			}
			if(mades_event instanceof StateExit){
				return new SStateExit((StateExit)mades_event);
			}
			if(mades_event instanceof SequenceDiagramStart){
				return new SSequenceDiagramStart((SequenceDiagramStart) mades_event);
			}
			if(mades_event instanceof SequenceDiagramEnd){
				return new SSequenceDiagramEnd((SequenceDiagramEnd) mades_event);
			}
			if(mades_event instanceof ADStart){
				return new SADStart((ADStart) mades_event);
			}
			if(mades_event instanceof ADEnd){
				return new SADEnd((ADEnd) mades_event);
			}
			if(mades_event instanceof IODStart){
				return new SIODStart((IODStart) mades_event);
			}
			if(mades_event instanceof IODEnd){
				return new SIODEnd((IODEnd) mades_event);
			}
			if(mades_event instanceof MessageStart){
				return new SMessageStart((MessageStart) mades_event);
			}
			if(mades_event instanceof MessageEnd){
				return new SMessageEnd((MessageEnd) mades_event);
			}
			throw new Exception("Mades Event not found exception");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	
}
