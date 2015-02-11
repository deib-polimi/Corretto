package org.correttouml.uml.diagrams.property;


import org.correttouml.uml.helpers.UML2ModelHelper;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.uml2.uml.Class;
import org.eclipse.uml2.uml.NamedElement;
import org.eclipse.uml2.uml.Stereotype;
import org.eclipse.uml2.uml.util.UMLUtil;

public class PLasts implements PBooleanFormulae {

	private NamedElement uml_element;
	
	public PLasts(NamedElement uml_element) {
		this.uml_element=uml_element;
	}

	public PBooleanFormulae getFormulae() {
		Stereotype uml_stereotype=UML2ModelHelper.getStereotype(uml_element, "Lasts");
		EObject object=(EObject) uml_element.getValue(uml_stereotype, "formulae");
		PBooleanFormulae r=PBooleanFormulaeFactory.getInstance((NamedElement) UMLUtil.getBaseElement(object));
		return r;
	}

	public Integer getT() {
		Stereotype uml_stereotype=UML2ModelHelper.getStereotype(uml_element, "Lasts");
		EObject object=(EObject) uml_element.getValue(uml_stereotype, "t");
		org.eclipse.uml2.uml.Class constant=(Class) UMLUtil.getBaseElement(object);
		Stereotype constant_stereotype=UML2ModelHelper.getStereotype(constant, "constant");
		Integer r=(Integer) constant.getValue(constant_stereotype, "value");
		return r;
	}
	
	@Override
	public String getName() {
		return uml_element.getName();
	}

}
