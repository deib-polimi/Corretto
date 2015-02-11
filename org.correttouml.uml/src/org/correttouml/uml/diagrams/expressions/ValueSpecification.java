package org.correttouml.uml.diagrams.expressions;

import org.eclipse.uml2.uml.LiteralInteger;

public class ValueSpecification {

	private org.eclipse.uml2.uml.ValueSpecification uml_value_specificaton;
	
	public ValueSpecification(
			org.eclipse.uml2.uml.ValueSpecification uml_value_specification) {
		this.uml_value_specificaton=uml_value_specification;
	}

	/**
	 * Returns the value stored here if the type is int
	 * The user must check first the type of the value specification
	 * by using the getType method
	 */
	public int getValue(){
		try{
			if(this.uml_value_specificaton instanceof LiteralInteger){
				return ((LiteralInteger) this.uml_value_specificaton).getValue();
			}
			throw new Exception("Value specification not supported");
		}catch(Exception e){
			e.printStackTrace();
		}
		return 0;
	}
	
	/**
	 * Returns the type of the value stored here
	 */
	public PrimitiveType getType(){		
		try{
			if(this.uml_value_specificaton instanceof LiteralInteger){
				return PrimitiveType.INTEGER;
			}
			throw new Exception("Value specification not supported");
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	
}
