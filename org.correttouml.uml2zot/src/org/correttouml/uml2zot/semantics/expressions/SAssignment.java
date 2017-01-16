package org.correttouml.uml2zot.semantics.expressions;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.expressions.Assignment;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.diagrams.expressions.Variable;
import org.correttouml.uml.diagrams.expressions.VariableFactory;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.trio.EQ;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SAssignment {

	private Assignment mades_assignment;

	public SAssignment(Assignment mades_assignment){
		this.mades_assignment=mades_assignment;
	}
	
	public BooleanFormulae getSemantics(ExpressionContext context, Object... optObj){
		
		
		org.correttouml.grammars.stateMachineActions.EXPRESSION right=mades_assignment.getAssignment().getExpression();
		SArithmeticExpression s_right=new SArithmeticExpression(right);
		
		//First I need to identify the left variable in the model
		Variable leftVar=VariableFactory.getInstance(mades_assignment.getAssignment().getLeftvar(), optObj[0], context);
		//I build the decorated object for the semantics stuff
		SVariable s_leftVar=SVariableFactory.getInstance(leftVar);
		
		//TODO: Boolean assignment not supported right now
//		if(mades_assignment.getLeft().getType()!=VariableType.BOOLEAN ){
//			r=new EQ(new Next(variable.getPredicate(optObj[0])),right.getSemantics(optObj[0]));
//		}
		//else

		return new EQ(s_leftVar.getPredicate(optObj[0]), s_right.getSemantics(context, optObj[0]));
	}

	public Predicate getPredicate(Object object) {
		return new Predicate("OBJ"+object.getName()+"ASSIGNMENT"+mades_assignment.getUMLId());
	}
	
}
