package org.correttouml.uml2zot.semantics.statediagram;

import org.correttouml.grammars.booleanExpressions.Model;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.statediagram.Invariant;
import org.correttouml.uml.diagrams.statediagram.State;
import org.correttouml.uml.diagrams.timeconstraints.TimeConstraint;
import org.correttouml.uml.helpers.BooleanExpressionsParser;
import org.correttouml.uml2zot.semantics.timeconstraints.STimeConstraint;
import org.correttouml.uml2zot.semantics.util.bool.Implies;


public class SInvariant {
	
	@SuppressWarnings("unused")
	private Invariant invariant;

	public SInvariant(Invariant invariant){
		this.invariant=invariant;
	}
	
	public String getSemantics(State state, Object object){
		String sem="";
		
		Model m=BooleanExpressionsParser.parse(this.invariant.getInvariant());
		//TODO: Invariants are only time constraints
		
		org.correttouml.grammars.booleanExpressions.TimeConstraint t=m.getExpression().getLeftExpression().getLeftExpression().getBooleanTerm().getTimeConstraint();
		TimeConstraint mades_tc=new TimeConstraint(t,state.getStateDiagram());
		STimeConstraint st=new STimeConstraint(mades_tc);
		
		//semantic option 1 (creates problems with time constraints and @now)
		//Predicate state_exit=new SState(state).getStateExitPredicate(object);
		//sem=sem+new Implies(new And(new SState(state).getPredicate(object), new Next(new Not(st.getSemantics(object)))), state_exit);
		
		//semantic option 2
		sem=sem+new Implies(new SState(state).getPredicate(object), st.getSemantics(object));
		
		return sem;
	}

}
