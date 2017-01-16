package org.correttouml.uml.diagrams.statediagram.triggers;

import org.correttouml.uml.diagrams.events.EventFactory;
import org.correttouml.uml.diagrams.statediagram.Transition;
import org.correttouml.uml.diagrams.timeconstraints.TimeConstraint;
import org.correttouml.uml.helpers.StDTriggersParser;
import org.correttouml.grammars.stateMachineTriggers.*;

public class TriggerEventFactory {

	public static TriggerEvent getInstance(String trigger, org.eclipse.uml2.uml.Transition uml_transition){
		try {
			//Just because I do not want to implement another grammar which is the same
			Model m=StDTriggersParser.parse(trigger);
			
			//evento semplice
			if(m.getTrigger().getRight()==null){
				String name=m.getTrigger().getLeft().getEvent().getEventName();
				String extension=m.getTrigger().getLeft().getEvent().getEventExtension();
				String objName = m.getTrigger().getLeft().getEvent().getObjName();
				return EventFactory.getInstance(new Transition(uml_transition).getStateDiagram(), objName, name, extension);
			}
			//time condition
			else{
				org.correttouml.grammars.booleanExpressions.TimeConstraint tc=new org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsFactoryImpl().createTimeConstraint();
				org.correttouml.grammars.booleanExpressions.Event ev2=new org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsFactoryImpl().createEvent();
				org.correttouml.grammars.booleanExpressions.Event ev1=new org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsFactoryImpl().createEvent();
				tc.setEvent1(ev1);
				tc.setEvent2(ev2);
				tc.setOp(m.getTrigger().getRight().getOp());
				tc.setValue(m.getTrigger().getRight().getValue());
				
				if(!m.getTrigger().getLeft().getEvent().isNowEvent()){
					ev2.setEventName(m.getTrigger().getLeft().getEvent().getEventName());
					ev2.setEventExtension(m.getTrigger().getLeft().getEvent().getEventExtension());
				}else{
					ev2.setNowEvent(true);
				}
				
				if(!m.getTrigger().getRight().getEvent().isNowEvent()){
					ev1.setEventName(m.getTrigger().getRight().getEvent().getEventName());
					ev1.setEventExtension((m.getTrigger().getRight().getEvent().getEventExtension()));
				}else{
					ev1.setNowEvent(true);
				}
				
				return new TimeCondition(new TimeConstraint(tc, new Transition(uml_transition).getStateDiagram()), uml_transition);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
}
