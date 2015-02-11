package org.correttouml.uml.diagrams.events;

import org.correttouml.uml.diagrams.statediagram.State;

public class StateExit implements Event{

	private State mades_state;
	
	public StateExit(State mades_state) {
		this.mades_state=mades_state;
	}
	
	public State getState(){
		return mades_state;
	}

}
