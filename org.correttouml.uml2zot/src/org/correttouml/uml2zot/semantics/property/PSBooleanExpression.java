package org.correttouml.uml2zot.semantics.property;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.property.PBooleanExpression;
import org.correttouml.uml.diagrams.statediagram.StateDiagram;
import org.correttouml.uml.helpers.BooleanExpressionsParser;
import org.correttouml.uml2zot.semantics.expressions.SBooleanExpression;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

import org.correttouml.grammars.booleanExpressions.Model;

public class PSBooleanExpression {

	private PBooleanExpression boolean_expression;

	public PSBooleanExpression(PBooleanExpression ff) {
		this.boolean_expression=ff;
	}

	public BooleanFormulae getSemantics() {
			
		Model m=BooleanExpressionsParser.parse(boolean_expression.getStringExpression());
		//TODO: here we do not have an object
		//The user should specify to what object he is referring to, otherwise
		//the semantics should be for every object in the system
		Object obj=null;
		if(boolean_expression.getExpressionContext() instanceof StateDiagram){
			obj=((StateDiagram)boolean_expression.getExpressionContext()).getOwningClass().getObjects().iterator().next();
		}
		
		BooleanFormulae r=new SBooleanExpression(m).getSemantics(obj, boolean_expression.getExpressionContext());
		return r;
	}

}
