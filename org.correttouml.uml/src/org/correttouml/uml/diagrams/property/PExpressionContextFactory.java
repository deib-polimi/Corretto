package org.correttouml.uml.diagrams.property;

import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;
import org.correttouml.uml.diagrams.statediagram.StateDiagram;


public class PExpressionContextFactory {

	public static ExpressionContext getInstance(org.eclipse.uml2.uml.NamedElement ne){
		if(ne instanceof org.eclipse.uml2.uml.Interaction) return new SequenceDiagram((org.eclipse.uml2.uml.Interaction)ne);
		if(ne instanceof org.eclipse.uml2.uml.StateMachine) return new StateDiagram((org.eclipse.uml2.uml.StateMachine)ne);
		
		try {
			throw new Exception("Boolean expression context not found in property");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;		
	}
	
}
