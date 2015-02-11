package org.correttouml.uml2zot.semantics.sequencediagram;

import org.correttouml.uml.diagrams.sequencediagram.ExecutionOccurrenceStart;
import org.correttouml.uml2zot.UML2Zot;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SExecutionOccurrenceStart implements SInteractionFragment{
	
	private ExecutionOccurrenceStart mades_exoccstart;

	public SExecutionOccurrenceStart(ExecutionOccurrenceStart exoccstart){
		this.mades_exoccstart=exoccstart;
	}
	
	@Override
	public Predicate getPredicate(){
		String umlid=UML2Zot.Utility.umlIDtoPrdID(mades_exoccstart.getExecutionOccurrence().getUMLId());
		return new Predicate("EXOCC"+umlid+"_START");
	}
	
}
