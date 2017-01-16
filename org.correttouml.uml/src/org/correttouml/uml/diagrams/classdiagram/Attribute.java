package org.correttouml.uml.diagrams.classdiagram;


import org.apache.log4j.Logger;
import org.correttouml.uml.diagrams.expressions.PrimitiveType;
import org.correttouml.uml.diagrams.expressions.ValueSpecification;
import org.correttouml.uml.diagrams.expressions.Variable;
import org.correttouml.uml.helpers.UML2ModelHelper;
import org.eclipse.uml2.uml.Property;

public class Attribute extends Variable{

	@SuppressWarnings("unused")
	private static final Logger LOGGER = Logger.getLogger(Attribute.class); 
	
	private Property uml_attribute;
	private Object mades_object;
	
	public Attribute(Property at) {
		this.uml_attribute=at;
		this.mades_object = null;
	}
	
	public void setObject(Object obj){
		this.mades_object = obj;
	}
	
	public Object getObject(){
		return this.mades_object;
	}
	

	@Override
	public PrimitiveType getType() {
		//[corretto-man] Designer must add "Primitive Type" at the same level of system and property package, entitled "Integer", "Real", or "Boolean".
		if(this.uml_attribute.getType() instanceof org.eclipse.uml2.uml.PrimitiveType){
			org.eclipse.uml2.uml.PrimitiveType pt=(org.eclipse.uml2.uml.PrimitiveType) this.uml_attribute.getType();
			if(pt.getName().equals("Boolean")) return PrimitiveType.BOOLEAN;
			if(pt.getName().equals("Integer")) return PrimitiveType.INTEGER;
			if(pt.getName().equals("Real")) return PrimitiveType.REAL;
		}
		return null;
	}
	
	public boolean isStatic(){
		return this.uml_attribute.isStatic();
	}
	
	public boolean isFree(){ // Does it have <<Free>> stereotype, that means is it a time variant variable?
		return UML2ModelHelper.hasStereotype(this.uml_attribute, "Free");
		
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
		return this.uml_attribute.equals(other_attribute.uml_attribute);
	}
	
	@Override
	public int hashCode(){
		return uml_attribute.hashCode();
	}
	
}
