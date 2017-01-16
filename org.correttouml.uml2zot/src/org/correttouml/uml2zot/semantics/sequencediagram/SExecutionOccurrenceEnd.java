package org.correttouml.uml2zot.semantics.sequencediagram;

import org.correttouml.uml.diagrams.sequencediagram.ExecutionOccurrenceEnd;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SExecutionOccurrenceEnd implements SInteractionFragment{
	
	private ExecutionOccurrenceEnd mades_exoccEnd;

	public SExecutionOccurrenceEnd(ExecutionOccurrenceEnd executionOccurrenceEnd){
		this.mades_exoccEnd=executionOccurrenceEnd;
	}
	
	@Override
	public Predicate getPredicate(){
		String umlid=mades_exoccEnd.getExecutionOccurrence().getUMLId().replace("-", "_");
		return new Predicate("EXOCC"+umlid+"_END");
	}

	
}
