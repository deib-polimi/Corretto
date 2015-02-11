package org.correttouml.uml.diagrams.events;

import org.correttouml.uml.diagrams.statediagram.State;

public class StateEnter implements Event{

	private State mades_state;
	
	public StateEnter(State mades_state) {
		this.mades_state=mades_state;
	}

	public State getState(){
		return mades_state;
	}
	
}
