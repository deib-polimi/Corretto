package org.correttouml.uml.diagrams.sequencediagram;

import org.eclipse.uml2.uml.ExecutionOccurrenceSpecification;

public class ExecutionOccurrenceStart implements InteractionFragment{

	private ExecutionOccurrenceSpecification uml_exoccspec;

	public ExecutionOccurrenceStart(org.eclipse.uml2.uml.ExecutionOccurrenceSpecification uml_exoccspec){
		this.uml_exoccspec=uml_exoccspec;
	}

	public ExecutionOccurrence getExecutionOccurrence() {
		return new ExecutionOccurrence(uml_exoccspec.getExecution());
	}
	
}
