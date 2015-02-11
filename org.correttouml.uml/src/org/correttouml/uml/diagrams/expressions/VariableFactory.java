package org.correttouml.uml.diagrams.expressions;

import org.correttouml.uml.diagrams.classdiagram.Attribute;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.classdiagram.Operation;
import org.correttouml.uml.diagrams.classdiagram.OperationParameter;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagramParameter;
import org.correttouml.uml.diagrams.statediagram.StateDiagram;


public class VariableFactory {

	/** Given a variable name looks for the variable we are interested in */
	public static Variable getInstance(String varname, Object object,
			ExpressionContext context) {
		try {
			if (context instanceof SequenceDiagram) {
				return findVariableInSequenceDiagram(varname, object,
						(SequenceDiagram) context);
			}
			if (context instanceof StateDiagram) {
				return findVariableInStateDiagram(varname, object,
						(StateDiagram) context);
			}
			throw new Exception("Variable context not found");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	private static Variable findVariableInStateDiagram(String varname,
			Object object, StateDiagram context) {
		try {
			for (Attribute a : object.getOwningClass().getAttributes()) {
				if (a.getName().equals(varname))
					return a;
			}
			for (Operation op: object.getOwningClass().getOperations()){
				for(OperationParameter op_par: op.getParameters()){
					if(op_par.getName().equals(varname)) return op_par;
				}
			}
			throw new Exception("Attribute not found in state diagram");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	}

	private static Variable findVariableInSequenceDiagram(String varname,
			Object object, SequenceDiagram context) {
		try {
			for(SequenceDiagramParameter p: context.getSequenceDiagramParameters()){
				if(p.getName().equals(varname))
					return p;
			}
			for (Attribute a : object.getOwningClass().getAttributes()) {
				if (a.getName().equals(varname))
					return a;
			}
			throw new Exception("Variable not found in state diagram");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	}

}
