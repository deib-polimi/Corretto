package org.correttouml.uml.diagrams.events;

import org.correttouml.uml.diagrams.classdiagram.Signal;

public class SignalEvent implements Event{

	private Signal mades_signal;

	public SignalEvent(Signal signal) {
		this.mades_signal=signal;
	}

	public Signal getSignal() {
		return mades_signal;
	}

	public boolean equals(java.lang.Object o){
		SignalEvent other_signalevent=(SignalEvent) o;
		return this.mades_signal.equals(other_signalevent.mades_signal);
	}
	
}
