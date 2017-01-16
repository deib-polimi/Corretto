package org.correttouml.uml.diagrams.events;

import org.correttouml.uml.diagrams.classdiagram.Operation;

public class ReplyEvent implements Event {
	
	private Operation mades_operation;

	protected ReplyEvent(Operation mades_operation) {
		this.mades_operation=mades_operation;
	}

	public Operation getOperation(){
		return this.mades_operation;
	}
	
	@Override
	public boolean equals(java.lang.Object o){
		ReplyEvent other_callevent=(ReplyEvent) o;
		return this.mades_operation.equals(other_callevent.mades_operation);
	}
	
}
