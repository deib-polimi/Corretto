package org.correttouml.uml.diagrams.sequencediagram;


import org.correttouml.uml.diagrams.expressions.PrimitiveType;
import org.correttouml.uml.diagrams.expressions.Variable;
import org.eclipse.uml2.uml.Parameter;

public class SequenceDiagramParameter extends Variable{
	
	private Parameter uml_parameter;

	public SequenceDiagramParameter(Parameter p) {
		this.uml_parameter=p;
	}

	@Override
	public PrimitiveType getType() {
		if(this.uml_parameter.getType() instanceof org.eclipse.uml2.uml.PrimitiveType){
			org.eclipse.uml2.uml.PrimitiveType pt=(org.eclipse.uml2.uml.PrimitiveType) this.uml_parameter.getType();
			if(pt.getName().equals("Boolean")) return PrimitiveType.BOOLEAN;
			if(pt.getName().equals("Integer")) return PrimitiveType.INTEGER;
			if(pt.getName().equals("Real")) return PrimitiveType.REAL;
		}
		return null;
	}

	public String getName() {
		return this.uml_parameter.getName();
	}

	public SequenceDiagram getSequenceDiagram() {
		return new SequenceDiagram((org.eclipse.uml2.uml.Interaction) this.uml_parameter.getOwner());
	}

}
