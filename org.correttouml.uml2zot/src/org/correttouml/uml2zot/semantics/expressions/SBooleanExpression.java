package org.correttouml.uml2zot.semantics.expressions;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.diagrams.expressions.VariableFactory;
import org.correttouml.uml.diagrams.timeconstraints.TimeConstraint;
import org.correttouml.uml2zot.semantics.timeconstraints.STimeConstraint;
import org.correttouml.uml2zot.semantics.util.bool.And;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.bool.Or;

import org.correttouml.grammars.booleanExpressions.*;

public class SBooleanExpression {

	private Model exp;
	private Object mades_object;
	private ExpressionContext context;

	public SBooleanExpression(org.correttouml.grammars.booleanExpressions.Model exp){
		this.exp=exp;
	}
	
	public BooleanFormulae getSemantics(org.correttouml.uml.diagrams.classdiagram.Object mades_object, ExpressionContext context ){
		this.mades_object=mades_object;
		this.context=context;
		
		BooleanFormulae r=this.getBooleanFormulae(this.exp);
		return r;
	}
	
	private BooleanFormulae getBooleanFormulae(org.correttouml.grammars.booleanExpressions.Model exp){
		BooleanFormulae r=getBooleanFormulaeOr(exp.getExpression());
		return r;
	}
	
	private BooleanFormulae getBooleanFormulaeOr(org.correttouml.grammars.booleanExpressions.OrExpression exp){
		BooleanFormulae r=null;
		
		//there is an OR
		if(exp.getOr()!=null){
			r=new Or(this.getBooleanFormulaeAnd(exp.getLeftExpression()), this.getBooleanFormulaeOr(exp.getRightExpression()));
		}else{
			r=this.getBooleanFormulaeAnd(exp.getLeftExpression());
		}
		
		return r;
		
	}
	
	private BooleanFormulae getBooleanFormulaeAnd(org.correttouml.grammars.booleanExpressions.AndExpression exp){
		BooleanFormulae r=null;
		
		//there is an AND
		if(exp.getAnd()!=null){
			r=new And(this.getBooleanFormulaeBaseExpression(exp.getLeftExpression()), this.getBooleanFormulaeAnd(exp.getRightExpression()));
		}else{
			r=this.getBooleanFormulaeBaseExpression(exp.getLeftExpression());
		}
		
		return r;
	}
	
	private BooleanFormulae getBooleanFormulaeBaseExpression(org.correttouml.grammars.booleanExpressions.BaseExpression exp){
		BooleanFormulae r=null;
		
		//there is a NOT
		if(exp.getNot()!=null){
			if(exp.getRootExpression()!=null){
				//we found parenthesis
				r=new Not(this.getBooleanFormulaeOr(exp.getRootExpression()));
			}else{
				//it is a term
				r=new Not(this.getTerm(exp.getBooleanTerm()));
			}
		}else{
			if(exp.getRootExpression()!=null){
				//we found parenthesis
				r=this.getBooleanFormulaeOr(exp.getRootExpression());
			}else{
				//it is a term
				r=this.getTerm(exp.getBooleanTerm());
			}
		}
		
		return r;
	}
	
	private BooleanFormulae getTerm(org.correttouml.grammars.booleanExpressions.booleanTerm term){
		if (term.getTimeConstraint()!=null) {
			return new STimeConstraint(new TimeConstraint(term.getTimeConstraint(), context)).getSemantics(this.mades_object);
		}
		if (term.getVariableCondition()!=null) {
			return new SVariableCondition(term.getVariableCondition()).getSemantics(this.mades_object, this.context);
		}
		if (term.getBooleanVariable()!=null) {
			String varname = (term.getBooleanVariable()).getVariable();
			return SVariableFactory.getInstance(
					VariableFactory.getInstance(varname, this.mades_object,
							this.context)).getPredicate(this.mades_object);
		}
		return null;
	}
	
}
