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

	private booleanExpression exp;
	private Object mades_object;
	private ExpressionContext context;

	public SBooleanExpression(org.correttouml.grammars.booleanExpressions.booleanExpression exp){
		this.exp=exp;
	}
	
	public BooleanFormulae getSemantics( org.correttouml.uml.diagrams.classdiagram.Object mades_object, ExpressionContext context ){
		this.mades_object=mades_object;
		this.context=context;
		
		BooleanFormulae r=this.getBooleanFormulae(this.exp);
		return r;
	}
	
	private BooleanFormulae getBooleanFormulae(org.correttouml.grammars.booleanExpressions.booleanExpression exp){
		BooleanFormulae r=null;
		if (this.isAnd()) {
			r=new And(this.getTerm(this.exp.getAndLeft()), this.getTerm(this.exp.getAndRight()));
		}
		else if (this.isOr()) {
			r=new Or(this.getTerm(this.exp.getAndLeft()), this.getTerm(this.exp.getAndRight()));
		}
		else if (this.isNot()){
			r=new Not(this.getBooleanFormulae(this.exp.getNotExpression()));
		}
		else{
			r=this.getTerm(this.exp.getBooleanTerm());
		}
		return r;
	}

	private boolean isNot() {
		if(this.exp.getOrLeft()!=null) return false;
		if(this.exp.getAndLeft()!=null) return false;
		if(this.exp.getBooleanTerm()!=null) return false;
		return true;
	}

	private boolean isOr() {
		if(this.exp.getNotExpression()!=null) return false;
		if(this.exp.getAndLeft()!=null) return false;
		if(this.exp.getBooleanTerm()!=null) return false;
		return true;
	}

	private boolean isAnd(){
		if(this.exp.getNotExpression()!=null) return false;
		if(this.exp.getOrLeft()!=null) return false;
		if(this.exp.getBooleanTerm()!=null) return false;
		return true;
	}
	
	private BooleanFormulae getTerm(org.correttouml.grammars.booleanExpressions.booleanTerm term){
		if (term instanceof org.correttouml.grammars.booleanExpressions.TimeConstraint) {
			return new STimeConstraint(new TimeConstraint((org.correttouml.grammars.booleanExpressions.TimeConstraint)term, context)).getSemantics(this.mades_object);
		}
		if (term instanceof org.correttouml.grammars.booleanExpressions.VariableCondition) {
			return new SVariableCondition((org.correttouml.grammars.booleanExpressions.VariableCondition) term).getSemantics(this.mades_object, this.context);
		}
		if (term instanceof org.correttouml.grammars.booleanExpressions.BooleanVariable) {
			String varname = ((org.correttouml.grammars.booleanExpressions.BooleanVariable) term).getVariable();
			return SVariableFactory.getInstance(
					VariableFactory.getInstance(varname, this.mades_object,
							this.context)).getPredicate(this.mades_object);
		}
		return null;
	}
	
}
