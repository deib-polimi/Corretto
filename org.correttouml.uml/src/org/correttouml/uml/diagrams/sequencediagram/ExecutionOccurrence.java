package org.correttouml.uml.diagrams.sequencediagram;


import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.uml2.uml.ExecutionSpecification;

public class ExecutionOccurrence {

	private ExecutionSpecification uml_exocc;

	public ExecutionOccurrence(org.eclipse.uml2.uml.ExecutionSpecification uml_exocc){
		this.uml_exocc=uml_exocc;
	}

	public SequenceDiagram getSequenceDiagram() {
		return new SequenceDiagram(uml_exocc.getEnclosingInteraction());
	}

	public ExecutionOccurrenceStart getExecutionOccurrenceStart() {
		return new ExecutionOccurrenceStart((org.eclipse.uml2.uml.ExecutionOccurrenceSpecification) this.uml_exocc.getStart());
	}
	
	public ExecutionOccurrenceEnd getExecutionOccurrenceEnd() {
		return new ExecutionOccurrenceEnd((org.eclipse.uml2.uml.ExecutionOccurrenceSpecification) this.uml_exocc.getFinish());
	}

	public String getUMLId() {
		String id=((XMLResource) this.uml_exocc.eResource()).getID(uml_exocc);
		return id;
	}
	
}
