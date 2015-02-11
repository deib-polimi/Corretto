package org.correttouml.uml2zot.zotutil;


import java.util.HashSet;
import java.util.Set;

import org.correttouml.uml2zot.semantics.util.trio.Predicate;

public class TimeInstant {

	private HashSet<Predicate> predicates=new HashSet<Predicate>();

	public TimeInstant(Predicate... arr_predicates){
		for(Predicate p: arr_predicates){
			predicates.add(p);
		}
	}
	
	public void addPredicate(Predicate predicate) {
		predicates.add(predicate);
	}
	
	public Set<Predicate> getPredicates(){
		return predicates;
	}
	
}
