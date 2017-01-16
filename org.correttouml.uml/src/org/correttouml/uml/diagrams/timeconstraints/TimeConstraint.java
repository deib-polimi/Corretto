package org.correttouml.uml.diagrams.timeconstraints;

import org.correttouml.uml.diagrams.events.Event;
import org.correttouml.uml.diagrams.events.EventFactory;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;


public class TimeConstraint{

	 org.correttouml.grammars.booleanExpressions.TimeConstraint time_constraint;
	 ExpressionContext context;

	public TimeConstraint(org.correttouml.grammars.booleanExpressions.TimeConstraint time_constraint, ExpressionContext context) {
		this.time_constraint=time_constraint;
		this.context=context;
	}
	
	public ExpressionContext getContext(){
		return this.context;
	}

	public Event getEvent2() {
		String eventName=this.time_constraint.getEvent2().getEventName();
		String eventExtension=this.time_constraint.getEvent2().getEventExtension();
		String objcetName = time_constraint.getEvent2().getObjName();
        return EventFactory.getInstance(this.context, objcetName, eventName, eventExtension);
    }

    public Event getEvent1() {
		String eventName=this.time_constraint.getEvent1().getEventName();
		String eventExtension=this.time_constraint.getEvent1().getEventExtension();
		String objcetName = time_constraint.getEvent1().getObjName();
        return EventFactory.getInstance(this.context, objcetName, eventName, eventExtension);
    }
    
    public int getTimeUnits() {
    	return time_constraint.getValue();
    }

    public TimeOperator getTimeOperator() {
		String rel=this.time_constraint.getOp();
		TimeOperator op=null;
    	if(rel.equals("==")) op=TimeOperator.EQ;
		if(rel.equals("<")) op=TimeOperator.LT;
		if(rel.equals("<=")) op=TimeOperator.LTE;
		if(rel.equals(">")) op=TimeOperator.GT;
		if(rel.equals(">=")) op=TimeOperator.GTE;
		return op;
    }

	public boolean isEvent2Now() {
		return this.time_constraint.getEvent2().isNowEvent();
	}  
	
	public boolean isEvent1Now() {
		return this.time_constraint.getEvent1().isNowEvent();
	}

}
