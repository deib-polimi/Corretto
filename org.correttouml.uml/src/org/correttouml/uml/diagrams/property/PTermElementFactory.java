package org.correttouml.uml.diagrams.property;

import org.correttouml.uml.diagrams.classdiagram.Operation;
import org.correttouml.uml.diagrams.classdiagram.Signal;
import org.correttouml.uml.diagrams.sequencediagram.Message;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;
import org.correttouml.uml.diagrams.statediagram.State;


public class PTermElementFactory {

	public static PTermElement getInstance(org.eclipse.uml2.uml.NamedElement uml_element){
		if(uml_element instanceof org.eclipse.uml2.uml.State) return new State((org.eclipse.uml2.uml.State) uml_element);
		if(uml_element instanceof org.eclipse.uml2.uml.Message) return new Message((org.eclipse.uml2.uml.Message) uml_element);
		if(uml_element instanceof org.eclipse.uml2.uml.Signal) return new Signal((org.eclipse.uml2.uml.Signal) uml_element);
		if(uml_element instanceof org.eclipse.uml2.uml.Interaction) return new SequenceDiagram((org.eclipse.uml2.uml.Interaction) uml_element);
		if(uml_element instanceof org.eclipse.uml2.uml.Operation) return new Operation((org.eclipse.uml2.uml.Operation) uml_element);
		
		try {
			throw new Exception("Pterm element not found in property");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;		
	}
	
}
