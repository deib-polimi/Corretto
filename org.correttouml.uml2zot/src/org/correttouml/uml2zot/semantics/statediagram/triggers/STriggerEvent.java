package org.correttouml.uml2zot.semantics.statediagram.triggers;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public interface STriggerEvent {

	Predicate getPredicate(Object... optObject);

}
