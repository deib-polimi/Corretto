package org.correttouml.uml2zot.semantics.expressions;

import org.correttouml.grammars.booleanExpressions.EXPRESSION;
import org.correttouml.grammars.booleanExpressions.TERM;
import org.correttouml.grammars.booleanExpressions.VariableCondition;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.expressions.ArithmeticOperator;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.diagrams.expressions.InequalityOperator;
import org.correttouml.uml.diagrams.expressions.Variable;
import org.correttouml.uml.diagrams.expressions.VariableFactory;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.trio.Constant;
import org.correttouml.uml2zot.semantics.util.trio.EQ;
import org.correttouml.uml2zot.semantics.util.trio.GT;
import org.correttouml.uml2zot.semantics.util.trio.GTE;
import org.correttouml.uml2zot.semantics.util.trio.LT;
import org.correttouml.uml2zot.semantics.util.trio.LTE;
import org.correttouml.uml2zot.semantics.util.trio.Minus;
import org.correttouml.uml2zot.semantics.util.trio.Multiply;
import org.correttouml.uml2zot.semantics.util.trio.Plus;

public class SVariableCondition {

	private VariableCondition mades_condition;
	private Object mades_object;
	private ExpressionContext context;
	
	public SVariableCondition(VariableCondition term) {
		this.mades_condition=term;
	}

	public BooleanFormulae getSemantics(Object mades_object, ExpressionContext context) {
		BooleanFormulae r=null;
		
		this.mades_object=mades_object;
		this.context=context;
		
		//EXPRESSION REL EXPRESSION
		//REL \in {==, !=, <=, <, >, >=}
		//EXPRESSION: firstTerm=TERM operator=OPERATOR secondTerm=TERM | alone=TERM

		BooleanFormulae expression_left=this.parseExpression(mades_condition.getExpression_left());
		BooleanFormulae expression_right=this.parseExpression(mades_condition.getExpression_right());
		
		if(InequalityOperator.getOpFromString(mades_condition.getRelation()).equals(InequalityOperator.EQ)){
			r=new EQ(expression_left, expression_right);		
		}
		else if(InequalityOperator.getOpFromString(mades_condition.getRelation()).equals(InequalityOperator.NEQ)){
			r=new Not(new EQ(expression_left, expression_right));		
		}
		else if(InequalityOperator.getOpFromString(mades_condition.getRelation()).equals(InequalityOperator.GT)){
			r=new GT(expression_left, expression_right);	
		}
		else if(InequalityOperator.getOpFromString(mades_condition.getRelation()).equals(InequalityOperator.GTE)){
			r=new GTE(expression_left, expression_right);	
		}
		else if(InequalityOperator.getOpFromString(mades_condition.getRelation()).equals(InequalityOperator.LT)){
			r=new LT(expression_left, expression_right);	
		}
		else if(InequalityOperator.getOpFromString(mades_condition.getRelation()).equals(InequalityOperator.LTE)){
			r=new LTE(expression_left, expression_right);	
		}			
		
		return r;	
	}

	private BooleanFormulae parseExpression(EXPRESSION expression) {
		BooleanFormulae r=null;
		
		if(expression.getAlone()!=null){
			r=this.parseTerm(expression.getAlone(), mades_object, context);
		}
		else if(this.parseOperation(expression.getOperator()).equals(ArithmeticOperator.PLUS)){
			r=new Plus(this.parseTerm(expression.getFirstTerm(), mades_object, context), this.parseTerm(expression.getSecondTerm(),mades_object, context));
		}
		else if(this.parseOperation(expression.getOperator()).equals(ArithmeticOperator.MINUS)){
			r=new Minus(this.parseTerm(expression.getFirstTerm(), mades_object, context), this.parseTerm(expression.getSecondTerm(),mades_object, context));		
		}
		else if(this.parseOperation(expression.getOperator()).equals(ArithmeticOperator.MULTIPLY)){
			r=new Multiply(this.parseTerm(expression.getFirstTerm(), mades_object, context), this.parseTerm(expression.getSecondTerm(),mades_object, context));
		}
		return r;		
	}
	
	private BooleanFormulae parseTerm(TERM parsed, Object obj, ExpressionContext context){
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
			r=new SConstant(new Constant(parsed.getConstant()));
		}
		return r;
	}	
	
	private org.correttouml.uml.diagrams.expressions.ArithmeticOperator parseOperation(String operator) {
		if(operator.equals("+")) return org.correttouml.uml.diagrams.expressions.ArithmeticOperator.PLUS;
		//TODO[mottalrd]: the minus does not work, check the grammar definition
		else if(operator.equals("--")) return org.correttouml.uml.diagrams.expressions.ArithmeticOperator.MINUS;
		else if(operator.equals("*")) return org.correttouml.uml.diagrams.expressions.ArithmeticOperator.MULTIPLY;
		return null;
	}

}
