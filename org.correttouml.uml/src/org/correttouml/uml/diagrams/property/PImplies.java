package org.correttouml.uml.diagrams.property;


import org.correttouml.uml.helpers.UML2ModelHelper;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.uml2.uml.NamedElement;
import org.eclipse.uml2.uml.Stereotype;
import org.eclipse.uml2.uml.util.UMLUtil;

public class PImplies implements PBooleanFormulae {

	private NamedElement uml_element;

	public PImplies(NamedElement uml_element) {
		this.uml_element=uml_element;
	}

	public PBooleanFormulae getLeft() {
		Stereotype uml_stereotype=UML2ModelHelper.getStereotype(uml_element, "Implies");
		EObject object=(EObject) uml_element.getValue(uml_stereotype, "left");
		PBooleanFormulae r=PBooleanFormulaeFactory.getInstance((NamedElement) UMLUtil.getBaseElement(object));
		return r;
	}

	public PBooleanFormulae getRight() {
		Stereotype uml_stereotype=UML2ModelHelper.getStereotype(uml_element, "Implies");
		EObject object=(EObject) uml_element.getValue(uml_stereotype, "right");
		PBooleanFormulae r=PBooleanFormulaeFactory.getInstance((NamedElement) UMLUtil.getBaseElement(object));
		return r;
	}

	@Override
	public String getName() {
		return uml_element.getName();
	}
}
