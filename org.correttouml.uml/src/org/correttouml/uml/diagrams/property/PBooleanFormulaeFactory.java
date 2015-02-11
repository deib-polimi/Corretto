package org.correttouml.uml.diagrams.property;

import org.correttouml.uml.helpers.UML2ModelHelper;

public class PBooleanFormulaeFactory {

	public static PBooleanFormulae getInstance(org.eclipse.uml2.uml.NamedElement uml_element){
		
		if(UML2ModelHelper.hasStereotype(uml_element, "Since" )) return new PSince(uml_element);
		if(UML2ModelHelper.hasStereotype(uml_element, "SomP" )) return new PSomP(uml_element);
		if(UML2ModelHelper.hasStereotype(uml_element, "SomF" )) return new PSomF(uml_element);
		if(UML2ModelHelper.hasStereotype(uml_element, "Next" )) return new PNext(uml_element);
		if(UML2ModelHelper.hasStereotype(uml_element, "Yesterday" )) return new PYesterday(uml_element);
		if(UML2ModelHelper.hasStereotype(uml_element, "Past")) return new PPast(uml_element);
		if(UML2ModelHelper.hasStereotype(uml_element, "Alw")) return new PAlw(uml_element);
		if(UML2ModelHelper.hasStereotype(uml_element, "Futr")) return new PFutr(uml_element);
		if(UML2ModelHelper.hasStereotype(uml_element, "WithinF")) return new PWithinF(uml_element);
		if(UML2ModelHelper.hasStereotype(uml_element, "Lasts")) return new PLasts(uml_element);
		if(UML2ModelHelper.hasStereotype(uml_element, "Until")) return new PUntil(uml_element);
		if(UML2ModelHelper.hasStereotype(uml_element, "Lasted")) return new PLasted(uml_element);
		if(UML2ModelHelper.hasStereotype(uml_element, "WithinP")) return new PWithinP(uml_element);
		if(UML2ModelHelper.hasStereotype(uml_element, "And")) return new PAnd(uml_element);
		if(UML2ModelHelper.hasStereotype(uml_element, "Or")) return new POr(uml_element);
		if(UML2ModelHelper.hasStereotype(uml_element, "Not")) return new PNot(uml_element);
		if(UML2ModelHelper.hasStereotype(uml_element, "Implies")) return new PImplies(uml_element);
		if(UML2ModelHelper.hasStereotype(uml_element, "Term")) return new PTerm(uml_element);
		if(UML2ModelHelper.hasStereotype(uml_element, "BooleanExpression")) return new PBooleanExpression(uml_element);
		if(UML2ModelHelper.hasStereotype(uml_element, "Event" )) return new PEvent(uml_element);
		
		try {
			throw new Exception("TRIO element not supported in PBooleanFormulaeFactory");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
