package org.correttouml.uml2zot.semantics.statediagram.actions;


import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public interface SAction {

	public Predicate getPredicate(Object... optObject);

	public String getSemantics(ExpressionContext context, Object... optObject);
	
}
