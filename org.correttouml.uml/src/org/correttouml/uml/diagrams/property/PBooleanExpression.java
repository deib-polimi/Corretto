package org.correttouml.uml.diagrams.property;


import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.helpers.UML2ModelHelper;
import org.eclipse.uml2.uml.NamedElement;
import org.eclipse.uml2.uml.Stereotype;

public class PBooleanExpression implements PBooleanFormulae {

	private org.eclipse.uml2.uml.NamedElement uml_namedelement;

	public PBooleanExpression(NamedElement uml_namedelement) {
		this.uml_namedelement=uml_namedelement;
	}

	public String getStringExpression() {
		Stereotype s=UML2ModelHelper.getStereotype(uml_namedelement, "BooleanExpression");
		String ls=(String)uml_namedelement.getValue(s, "exp");
		return ls;
	}
	
	public ExpressionContext getExpressionContext(){
		Stereotype s=UML2ModelHelper.getStereotype(uml_namedelement, "BooleanExpression");
		org.eclipse.uml2.uml.NamedElement ne=(org.eclipse.uml2.uml.NamedElement)uml_namedelement.getValue(s, "context");
		return PExpressionContextFactory.getInstance(ne);
	}
	
	@Override
	public String getName() {
		return uml_namedelement.getName();
	}

}
