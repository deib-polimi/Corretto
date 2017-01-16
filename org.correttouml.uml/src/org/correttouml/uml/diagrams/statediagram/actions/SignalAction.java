package org.correttouml.uml.diagrams.statediagram.actions;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.classdiagram.Signal;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;

public class SignalAction implements Action{

	private Signal mades_signal;
//	private Transition mades_transition;
	private ExpressionContext context;
	private Object mades_object;
	
	public SignalAction(Signal s, ExpressionContext context) {
		this.mades_signal=s;
		this.context = context;
	}

	public Signal getSignal() {
		return mades_signal;
	}
	
	public ExpressionContext getContext(){
		return context;
	}

}
