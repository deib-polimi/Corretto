package org.correttouml.uml.diagrams.events;

import org.correttouml.uml.diagrams.classdiagram.Clock;
import org.correttouml.uml.diagrams.classdiagram.Operation;
import org.correttouml.uml.diagrams.classdiagram.Signal;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.diagrams.sequencediagram.Message;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;
import org.correttouml.uml.diagrams.statediagram.State;
import org.correttouml.uml.diagrams.statediagram.StateDiagram;


public class EventFactory {
	
	public static Event getInstance(ExpressionContext context, String eventName, String eventExtension){
		try{
			if(eventExtension.equals("start")){
				return getSequenceDiagramStartEvent(context, eventName);
			}
			else if(eventExtension.equals("end")){
				return getSequenceDiagramEndEvent(context, eventName);
			}
			else if(eventExtension.equals("enter")){
				return getStateEnterEvent((StateDiagram) context,eventName);
			}
			else if(eventExtension.equals("exit")){
				return getStateExitEvent((StateDiagram) context,eventName);
			}
			else if(eventExtension.equals("tick")){
				return getClockTickEvent(context, eventName);
			}
			else if(eventExtension.equals("call")){
				return getCallEvent(eventName, (StateDiagram) context);
			}
			else if(eventExtension.equals("sig")){
				return getSignalEvent(context, eventName);
			}
			else if(eventExtension.equals("send")){
				return getMessageStartEvent((SequenceDiagram)context, eventName);
			}
			else if(eventExtension.equals("receive")){
				return getMessageEndEvent((SequenceDiagram)context, eventName);
			}
			throw new Exception("Event not found");
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	private static Event getMessageEndEvent(SequenceDiagram context,
			String eventName) {
		for(Message m: context.getMessages()){
			if(m.getName().equals(eventName)){
				return m.getMessageStartEvent();
			}
		}
		return null;
	}

	private static Event getMessageStartEvent(SequenceDiagram context,
			String eventName) {
		for(Message m: context.getMessages()){
			if(m.getName().equals(eventName)){
				return m.getMessageEndEvent();
			}
		}
		return null;
	}

	private static Event getSignalEvent(ExpressionContext context, String eventName) {
		for(Signal s: context.getMadesModel().getClassdiagram().getSignals()){
			if(s.getName().equals(eventName)) return new SignalEvent(s);
		}
		return null;
	}

	private static Event getCallEvent(String eventName, StateDiagram context) {
		for(Operation op: context.getOwningClass().getOperations()){
			if(op.getName().equals(eventName)) return new CallEvent(op);
		}
		return null;
	}

	private static ClockTickEvent getClockTickEvent(ExpressionContext context, String eventname){
		for(Clock c: context.getMadesModel().getClassdiagram().getClocks()){
			if(c.getName().equals(eventname)) return new ClockTickEvent(c.getUMLClock());
		}
		return null;
	}
	
	private static SequenceDiagramEnd getSequenceDiagramEndEvent(ExpressionContext context, String sdname) {
		for(SequenceDiagram sd: context.getMadesModel().getSequenceDiagrams()){
			if(sd.getName().equals(sdname)) return new SequenceDiagramEnd(sd);
		}
		return null;
	}

	private static SequenceDiagramStart getSequenceDiagramStartEvent(ExpressionContext context, String sdname) {
		for(SequenceDiagram sd: context.getMadesModel().getSequenceDiagrams()){
			if(sd.getName().equals(sdname)) return new SequenceDiagramStart(sd);
		}
		return null;
	}

	private static StateExit getStateExitEvent(StateDiagram context, String statename) {
		State mades_state=null;
		for(StateDiagram std: context.getOwningClass().getStateDiagrams()){
			for(State ms: std.getStates()){
				if(ms.getName().equals(statename)) mades_state=ms;
			}
		}
		if(mades_state==null){
			try {
				throw new Exception("State not found in event expression");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}		
		StateExit sExit=new StateExit(mades_state);
		return sExit;
	}

	private static StateEnter getStateEnterEvent(StateDiagram context, String statename) {
		State mades_state=null;
		for(StateDiagram std: context.getOwningClass().getStateDiagrams()){
			for(State ms: std.getStates()){
				if(ms.getName().equals(statename)) mades_state=ms;
			}
		}
		if(mades_state==null){
			try {
				throw new Exception("State not found in event expression");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		StateEnter sEnter=new StateEnter(mades_state);
		return sEnter;
	}

}
