package org.correttouml.uml.diagrams.classdiagram;


import org.apache.log4j.Logger;
import org.correttouml.uml.diagrams.expressions.PrimitiveType;
import org.correttouml.uml.diagrams.expressions.ValueSpecification;
import org.correttouml.uml.diagrams.expressions.Variable;
import org.eclipse.uml2.uml.Property;

public class Attribute extends Variable{

	@SuppressWarnings("unused")
	private static final Logger LOGGER = Logger.getLogger(Attribute.class); 
	
	private Property uml_attribute;
	
	public Attribute(Property at) {
		this.uml_attribute=at;
	}

	public PrimitiveType getType() {
		if(this.uml_attribute.getType() instanceof org.eclipse.uml2.uml.PrimitiveType){
			org.eclipse.uml2.uml.PrimitiveType pt=(org.eclipse.uml2.uml.PrimitiveType) this.uml_attribute.getType();
			if(pt.getName().equals("Boolean")) return PrimitiveType.BOOLEAN;
			if(pt.getName().equals("Integer")) return PrimitiveType.INTEGER;
			if(pt.getName().equals("Real")) return PrimitiveType.REAL;
		}
		return null;
	}
	
	public String getName(){
		return uml_attribute.getName();
	}
	
	
	public ValueSpecification getDefaultValue(){
		return new ValueSpecification(uml_attribute.getDefaultValue());
	}
	
	@Override
	public boolean equals(java.lang.Object o){
		Attribute other_attribute=(Attribute) o;
		return this.uml_attribute.equals((org.eclipse.uml2.uml.Property) other_attribute.uml_attribute);
	}
	
	@Override
	public int hashCode(){
		return uml_attribute.hashCode();
	}
	
}
