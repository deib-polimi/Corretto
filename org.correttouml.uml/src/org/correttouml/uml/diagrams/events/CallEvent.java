package org.correttouml.uml.diagrams.events;

import org.correttouml.uml.diagrams.classdiagram.Operation;

public class CallEvent implements Event {
	
	private Operation mades_operation;

	protected CallEvent(Operation mades_operation) {
		this.mades_operation=mades_operation;
	}

	public Operation getOperation(){
		return this.mades_operation;
	}
	
	@Override
	public boolean equals(java.lang.Object o){
		CallEvent other_callevent=(CallEvent) o;
		return this.mades_operation.equals(other_callevent.mades_operation);
	}
	
}
