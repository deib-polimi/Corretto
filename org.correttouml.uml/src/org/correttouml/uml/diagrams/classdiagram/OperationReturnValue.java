package org.correttouml.uml.diagrams.classdiagram;

import org.eclipse.uml2.uml.Parameter;

public class OperationReturnValue {

	private Parameter uml_parameter;

	public OperationReturnValue(Parameter returnResult) {
		this.uml_parameter=returnResult;
	}

	@Override
	public boolean equals(java.lang.Object o){
		OperationReturnValue other_orv=(OperationReturnValue) o;
		return this.uml_parameter.equals(other_orv.uml_parameter);
	}
	
	@Override
	public int hashCode(){
		return this.uml_parameter.hashCode();
	}
}
