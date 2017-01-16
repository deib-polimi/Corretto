package org.correttouml.uml.diagrams.events;

import org.correttouml.uml.Comment;
import org.correttouml.uml.diagrams.activity.Activity;
import org.correttouml.uml.diagrams.activitydiagram.AD;
import org.correttouml.uml.diagrams.iod.IOD;
import org.correttouml.uml.diagrams.classdiagram.Clock;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.classdiagram.Operation;
import org.correttouml.uml.diagrams.classdiagram.Signal;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.diagrams.sequencediagram.Message;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;
import org.correttouml.uml.diagrams.statediagram.State;
import org.correttouml.uml.diagrams.statediagram.StateDiagram;


public class EventFactory {
	
	public static Event getInstance(ExpressionContext context, String objName, String eventName, String eventExtension){
		try{
			if(eventExtension.equals("start"))
				return getSequenceDiagramStartEvent(context, eventName);
			else if(eventExtension.equals("end"))
				return getSequenceDiagramEndEvent(context, eventName);
			else if(eventExtension.equals("enter"))
				return getStateEnterEvent((StateDiagram) context,eventName);
			else if(eventExtension.equals("exit"))
				return getStateExitEvent((StateDiagram) context,eventName);
			else if(eventExtension.equals("tick"))
				return getClockTickEvent(context, eventName);
			else if(eventExtension.equals("call"))
				return getCallEvent(context, eventName);
			else if(eventExtension.equals("reply"))
				return getReplyEvent(context, eventName);
			else if(eventExtension.equals("sig"))
				return getSignalEvent(context, eventName);
			else if(eventExtension.equals("send"))
				return getMessageStartEvent((SequenceDiagram)context, eventName);
			else if(eventExtension.equals("receive"))
				return getMessageEndEvent((SequenceDiagram)context, eventName);
			else if (eventExtension.equals("adstart") || eventExtension.equals("adend"))
				return getADStartOrEnd(context, objName, eventName, eventExtension);
			else if (eventExtension.equals("iodstart") || eventExtension.equals("iodend"))
				return getIODStartOrEnd(context, eventName, eventExtension);
			throw new Exception("Event not found");
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}

//	Referring to an AD inside it: this.adstart, adName.adstart
//	Referring to an AD elsewhere: adName.adstart, or objName.adName.adstart, when the class has more than one object.
	
	/**
	 * @param context
	 * @param eventName
	 *	Referring to an AD inside it: this.adstart, adName.adstart.
	 *	Referring to an AD elsewhere: adName.adstart. [corretto-extensionPoint][AD with multiple objects]: or objName.adName.adstart, when more than one AD is assigned to a class.
	 * @return
	 * @throws Exception 
	 */
	private static Event getADStartOrEnd(ExpressionContext context, String objName, String eventName, String extension) throws Exception {
		String exceptionMsg = ">>" + eventName + "." + extension + "<< : Wrong syntax for " + extension.toUpperCase() + ". Use \"@this." + extension + "\", \"@adName." + extension + "\", or " + "\"@objName.adName." + extension  + "\" where the class has more than one instances.";
		
		//For this.adstart and adName.adstart inside the same AD as a guard of a control flow:
		if (context instanceof AD){
			if (eventName.toLowerCase().equals("this") || eventName.toLowerCase().equals(((AD) context).getUMLName().toLowerCase()))
				if (extension.equals("adstart"))
					return new ADStart((AD)context);
				else
					return new ADEnd((AD)context);
		}
		//For this.adstart and adName.adstart inside the same AD as a TimeConstraint:
		else if (context instanceof Comment && ((Comment) context).getOwnerDiagram() instanceof AD){
			AD ownerAD = (AD) ((Comment) context).getOwnerDiagram();
			if (eventName.toLowerCase().equals("this") || eventName.toLowerCase().equals((ownerAD).getUMLName().toLowerCase()))
				if (extension.equals("adstart"))
					return new ADStart(ownerAD);
				else
					return new ADEnd(ownerAD);
		}
		//For adName.adstart or objName.adName.adstart elsewhere
		else {
			for(org.correttouml.uml.diagrams.classdiagram.Class c: context.getMadesModel().getClassdiagram().getClasses())
				for (org.eclipse.uml2.uml.Activity umlAD : c.getUMLADs()){
					//For adName.adstart elsewhere, provided that the referred AD instance does not have any sibling (When the class has only one instance):
					if (umlAD.getName().toLowerCase().equals(eventName.toLowerCase())){
						if (c.getObjects().size() == 1){
							if (extension.equals("adstart"))
								return new ADStart(new AD(umlAD, (Object) c.getObjects().toArray()[0]));
							else
								return new ADEnd(new AD(umlAD, (Object) c.getObjects().toArray()[0]));
						}
						else if (c.getObjects().size() > 1 && objName != null){
							for (Object obj : c.getObjects()){
								if (obj.getName().toLowerCase().equals(objName.toLowerCase())){
									if (extension.equals("adstart"))
										return new ADStart(new AD(umlAD, obj));
									else
										return new ADEnd(new AD(umlAD, obj));
								}

							}
						}
					}
				}
		}
		throw new Exception(exceptionMsg);
	}

	private static Event getIODStartOrEnd(ExpressionContext context, String iodName, String extension) {
		if (context instanceof IOD) {
			if (iodName.toLowerCase().equals("this") || iodName.toLowerCase().equals(((IOD) context).getName().toLowerCase()))
				if (extension.equals("iodstart"))
					return new IODStart((IOD)context);
				else
					return new IODEnd((IOD)context);
		}
		else {
			for(org.correttouml.uml.diagrams.iod.IOD iod: context.getMadesModel().getIODs())
				if (iod.getName().toLowerCase().equals(iodName.toLowerCase()))
					if (extension.equals("iodstart"))
						return new IODStart(iod);
					else
						return new IODEnd(iod);
		}
		return null;
	}
	
	private static Event getMessageEndEvent(SequenceDiagram context,
			String eventName) {
		for(Message m: context.getMessages()){
			if(m.getName().equals(eventName)){
				return m.getMessageEndEvent();
			}
		}
		return null;
	}

	private static Event getMessageStartEvent(SequenceDiagram context,
			String eventName) {
		for(Message m: context.getMessages()){
			if(m.getName().equals(eventName)){
				return m.getMessageStartEvent();
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

//	private static Event getCallEvent(String eventName, StateDiagram context) {
//		for(Operation op: context.getOwningClass().getOperations()){
//			if(op.getName().equals(eventName)) return new CallEvent(op);
//		}
//		return null;
//	}
	
	private static Event getCallEvent(ExpressionContext context, String eventName) {
		if (context instanceof StateDiagram)
			for(Operation op: ((StateDiagram) context).getOwningClass().getOperations()){
				if(op.getName().equals(eventName)) return new CallEvent(op);
			}
		if (context instanceof Activity)
			for(Operation op: ((Activity) context).getObject().getOwningClass().getOperations()){
				if(op.getName().equals(eventName)) return new CallEvent(op);
			}
		return null;
	}
	
	private static Event getReplyEvent(ExpressionContext context, String eventName) {
		if (context instanceof StateDiagram)
			for(Operation op: ((StateDiagram) context).getOwningClass().getOperations()){
				if(op.getName().equals(eventName)) return new ReplyEvent(op);
			}
		if (context instanceof Activity)
			for(Operation op: ((Activity) context).getObject().getOwningClass().getOperations()){
				if(op.getName().equals(eventName)) return new ReplyEvent(op);
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
