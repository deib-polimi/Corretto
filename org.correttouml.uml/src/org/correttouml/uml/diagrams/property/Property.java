package org.correttouml.uml.diagrams.property;


import org.correttouml.uml.helpers.UML2ModelHelper;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.uml2.uml.Class;
import org.eclipse.uml2.uml.Stereotype;
import org.eclipse.uml2.uml.util.UMLUtil;

public class Property {

	private org.eclipse.uml2.uml.Class uml_property;

	public Property(Class c) {
		this.uml_property=c;
	}

	public PBooleanFormulae getRoot(){
		
		Stereotype property_stereotype=UML2ModelHelper.getStereotype(this.uml_property, "Property");
		
		EObject obj=(EObject) this.uml_property.getValue(property_stereotype, "formulae");
		org.eclipse.uml2.uml.Class c=(Class) UMLUtil.getBaseElement(obj);
		
		return PBooleanFormulaeFactory.getInstance(c);
	}
	
}
