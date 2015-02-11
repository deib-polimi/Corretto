package org.correttouml.uml.diagrams.statediagram.actions;

import org.correttouml.uml.diagrams.classdiagram.Signal;

public class SignalAction implements Action{

	private Signal mades_signal;
	
	public SignalAction(Signal s) {
		this.mades_signal=s;
	}

	public Signal getSignal() {
		return mades_signal;
	}
	
	public boolean equals(java.lang.Object o){
		SignalAction other_signalaction=(SignalAction) o;
		return this.mades_signal.equals(other_signalaction.mades_signal);
	}

}
