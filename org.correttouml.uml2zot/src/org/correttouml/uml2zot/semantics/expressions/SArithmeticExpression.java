package org.correttouml.uml2zot.semantics.expressions;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.expressions.*;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.trio.Minus;
import org.correttouml.uml2zot.semantics.util.trio.Multiply;
import org.correttouml.uml2zot.semantics.util.trio.Plus;



public class SArithmeticExpression {

	private org.correttouml.grammars.assignments.EXPRESSION mades_expression;

	public SArithmeticExpression(org.correttouml.grammars.assignments.EXPRESSION mades_expression){
		this.mades_expression=mades_expression;
	}
	
	public BooleanFormulae getSemantics(ExpressionContext context, Object... optObj){
		BooleanFormulae r=null;
		
		if(mades_expression.getAlone()!=null){
			r=this.parseTerm(mades_expression.getAlone(), optObj[0], context);
		}
		else if(this.parseOperation(mades_expression.getOperator()).equals(ArithmeticOperator.PLUS)){
			r=new Plus(this.parseTerm(mades_expression.getFirstTerm(), optObj[0], context), this.parseTerm(mades_expression.getSecondTerm(),optObj[0], context));
		}
		else if(this.parseOperation(mades_expression.getOperator()).equals(ArithmeticOperator.MINUS)){
			r=new Minus(this.parseTerm(mades_expression.getFirstTerm(), optObj[0], context), this.parseTerm(mades_expression.getSecondTerm(),optObj[0], context));		
		}
		else if(this.parseOperation(mades_expression.getOperator()).equals(ArithmeticOperator.MULTIPLY)){
			r=new Multiply(this.parseTerm(mades_expression.getFirstTerm(), optObj[0], context), this.parseTerm(mades_expression.getSecondTerm(),optObj[0], context));
		}
		return r;		
	}
	
	private BooleanFormulae parseTerm(org.correttouml.grammars.assignments.TERM parsed, Object obj, ExpressionContext context){
		BooleanFormulae r=null;
		//What kind of term we are talking about?
		
		if(parsed.getVariable()!=null){
			//Go and find it in the model
			Variable variable=VariableFactory.getInstance(parsed.getVariable(), obj, context);
			//build the semantic stuff
			SVariable s_variable=SVariableFactory.getInstance(variable);
			//get the f*** predicate
			r=s_variable.getPredicate(obj);
		}
		else{
			r=new SConstant(parsed.getConstant());
		}
		return r;
	}
	
	private org.correttouml.uml.diagrams.expressions.ArithmeticOperator parseOperation(String operator) {
		if(operator.equals("+")) return org.correttouml.uml.diagrams.expressions.ArithmeticOperator.PLUS;
		else if(operator.equals("-")) return org.correttouml.uml.diagrams.expressions.ArithmeticOperator.MINUS;
		else if(operator.equals("*")) return org.correttouml.uml.diagrams.expressions.ArithmeticOperator.MULTIPLY;
		return null;
	}
}
