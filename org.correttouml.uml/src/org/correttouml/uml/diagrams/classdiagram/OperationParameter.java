package org.correttouml.uml.diagrams.classdiagram;


import org.correttouml.uml.diagrams.expressions.PrimitiveType;
import org.correttouml.uml.diagrams.expressions.Variable;
import org.eclipse.uml2.uml.Parameter;

public class OperationParameter extends Variable {

	private Parameter uml_parameter;
	private Operation mades_operation;

	public OperationParameter(Operation op, Parameter p) {
		this.uml_parameter=p;
		this.mades_operation = op;
	}

	@Override
	public PrimitiveType getType() {
		//[corretto-man] Designers must add primitive type at the same level of system and property package, entitled "Integer", "Real", or "Boolean".
		if(this.uml_parameter.getType() instanceof org.eclipse.uml2.uml.PrimitiveType){
			org.eclipse.uml2.uml.PrimitiveType pt=  (org.eclipse.uml2.uml.PrimitiveType) this.uml_parameter.getType();
			if(pt.getName().equals("Boolean")) return PrimitiveType.BOOLEAN;
			if(pt.getName().equals("Integer")) return PrimitiveType.INTEGER;
			if(pt.getName().equals("Real")) return PrimitiveType.REAL;
		}
		return null;
	}

	public String getName() {
		return uml_parameter.getName();
	}
	
	public String getOperationName(){
		return mades_operation.getName();
	}
	
	@Override
	public boolean equals(java.lang.Object o){
		OperationParameter other_opp=(OperationParameter) o;
		return this.uml_parameter.equals(other_opp.uml_parameter);
	}
	
	@Override
	public int hashCode(){
		return this.uml_parameter.hashCode();
	}

}
