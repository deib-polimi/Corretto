package org.correttouml.uml2zot.semantics.sequencediagram;

import org.correttouml.uml.diagrams.sequencediagram.CombinedFragment;
import org.correttouml.uml.diagrams.sequencediagram.ExecutionOccurrenceEnd;
import org.correttouml.uml.diagrams.sequencediagram.ExecutionOccurrenceStart;
import org.correttouml.uml.diagrams.sequencediagram.InteractionFragment;
import org.correttouml.uml.diagrams.sequencediagram.MessageEnd;
import org.correttouml.uml.diagrams.sequencediagram.MessageStart;

public class SInteractionFragmentFactory {

	public static SInteractionFragment getInstance(InteractionFragment mades_if){
		if(mades_if instanceof MessageStart){
			return new SMessageStart((MessageStart) mades_if);
		}
		if(mades_if instanceof MessageEnd){
			return new SMessageEnd((MessageEnd) mades_if);
		}
		if(mades_if instanceof ExecutionOccurrenceStart){
			return new SExecutionOccurrenceStart((ExecutionOccurrenceStart)mades_if);
		}
		if(mades_if instanceof ExecutionOccurrenceEnd){
			return new SExecutionOccurrenceEnd((ExecutionOccurrenceEnd)mades_if);
		}
		if(mades_if instanceof CombinedFragment)
			return new SCombinedFragment((CombinedFragment) mades_if);
		return null;
	}
	
}
