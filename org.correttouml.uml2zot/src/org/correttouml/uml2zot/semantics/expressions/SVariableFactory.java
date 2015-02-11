package org.correttouml.uml2zot.semantics.expressions;

import org.correttouml.uml.diagrams.classdiagram.Attribute;
import org.correttouml.uml.diagrams.classdiagram.OperationParameter;
import org.correttouml.uml.diagrams.expressions.Variable;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagramParameter;
import org.correttouml.uml2zot.semantics.classdiagram.SAttribute;
import org.correttouml.uml2zot.semantics.classdiagram.SOperationParameter;
import org.correttouml.uml2zot.semantics.sequencediagram.SSequenceDiagramParameter;


public class SVariableFactory {

	public static SVariable getInstance(Variable mades_variable){
		if(mades_variable instanceof Attribute){
			return new SAttribute((Attribute)mades_variable);
		}
		if(mades_variable instanceof OperationParameter){
			return new SOperationParameter((OperationParameter)mades_variable);
		}
		if(mades_variable instanceof SequenceDiagramParameter){
			return new SSequenceDiagramParameter((SequenceDiagramParameter) mades_variable);
		}
		try {
			throw new Exception("Variable not recognized exception");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
