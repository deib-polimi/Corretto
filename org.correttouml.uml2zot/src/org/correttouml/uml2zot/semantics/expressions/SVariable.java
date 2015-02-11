package org.correttouml.uml2zot.semantics.expressions;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;


public interface SVariable {
	
	public BooleanFormulae getPredicate(Object... obj);
	
}
