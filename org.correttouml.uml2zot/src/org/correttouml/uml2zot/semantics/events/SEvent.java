package org.correttouml.uml2zot.semantics.events;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml2zot.semantics.statediagram.triggers.STriggerEvent;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public interface SEvent extends STriggerEvent{
	
	public Predicate getPredicate(Object... optObject);

}
