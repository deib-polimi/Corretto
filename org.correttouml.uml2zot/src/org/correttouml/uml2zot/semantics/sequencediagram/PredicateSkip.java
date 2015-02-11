package org.correttouml.uml2zot.semantics.sequencediagram;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;

public class PredicateSkip {
//	public static HashSet<String> instances=new HashSet<String>();
	public static Map<Predicate, ArrayList<BooleanFormulae>> instances= new HashMap<Predicate, ArrayList<BooleanFormulae>>();//key=predicate, arraylist is list of triggers that cause skip happen.

}
