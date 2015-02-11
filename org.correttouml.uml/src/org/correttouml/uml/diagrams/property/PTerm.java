package org.correttouml.uml.diagrams.property;


import org.correttouml.uml.helpers.UML2ModelHelper;
import org.eclipse.uml2.uml.NamedElement;
import org.eclipse.uml2.uml.Stereotype;


public class PTerm implements PBooleanFormulae {

	private NamedElement uml_element;

	public PTerm(NamedElement uml_element) {
		this.uml_element=uml_element;
	}

	@Override
	public String getName() {
		return uml_element.getName();
	}

	public PTermElement getElement() {
		Stereotype s=UML2ModelHelper.getStereotype(uml_element, "Term");
		org.eclipse.uml2.uml.NamedElement ne=(org.eclipse.uml2.uml.NamedElement)uml_element.getValue(s, "element");
		return PTermElementFactory.getInstance(ne);
	}

}
