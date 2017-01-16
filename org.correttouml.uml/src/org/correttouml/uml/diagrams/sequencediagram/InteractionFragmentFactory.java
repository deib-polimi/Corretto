package org.correttouml.uml.diagrams.sequencediagram;

public class InteractionFragmentFactory {

	public static InteractionFragment getInstance(org.eclipse.uml2.uml.InteractionFragment uml_interactionfragment){
		String ss="";//
		
		try{
			if(uml_interactionfragment instanceof org.eclipse.uml2.uml.MessageOccurrenceSpecification){
				org.eclipse.uml2.uml.MessageOccurrenceSpecification mof=(org.eclipse.uml2.uml.MessageOccurrenceSpecification) uml_interactionfragment;
				if(mof.getMessage().getSendEvent().equals(mof)) return new MessageStart(mof);
				if(mof.getMessage().getReceiveEvent().equals(mof)) return new MessageEnd(mof);
			}
			if(uml_interactionfragment instanceof org.eclipse.uml2.uml.ExecutionOccurrenceSpecification){
				org.eclipse.uml2.uml.ExecutionOccurrenceSpecification ocs=(org.eclipse.uml2.uml.ExecutionOccurrenceSpecification) uml_interactionfragment;
				if(ocs.getExecution().getStart().equals(ocs)) return new ExecutionOccurrenceStart(ocs);
				if(ocs.getExecution().getFinish().equals(ocs)) return new ExecutionOccurrenceEnd(ocs);
			}
			if(uml_interactionfragment instanceof org.eclipse.uml2.uml.CombinedFragment)
//				return new CombinedFragment((org.eclipse.uml2.uml.CombinedFragment)uml_interactionfragment);
				return (CombinedFragmentFactory.getInstance((org.eclipse.uml2.uml.CombinedFragment)uml_interactionfragment));
			if(uml_interactionfragment instanceof org.eclipse.uml2.uml.ExecutionSpecification){
//				org.eclipse.uml2.uml.ExecutionSpecification es = (org.eclipse.uml2.uml.ExecutionSpecification) uml_interactionfragment;
				return new ExecutionOccurrence((org.eclipse.uml2.uml.ExecutionSpecification) uml_interactionfragment);
			}
			throw new Exception("Event not found");
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
}
