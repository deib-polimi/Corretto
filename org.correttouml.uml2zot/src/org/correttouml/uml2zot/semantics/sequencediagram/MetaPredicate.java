package org.correttouml.uml2zot.semantics.sequencediagram;

import org.correttouml.uml2zot.semantics.util.trio.Predicate;

public class MetaPredicate{
	private Predicate predicate;
	private PredicateType predicatetype;
	
	public MetaPredicate(Predicate predicate, PredicateType predicatetype){
		this.predicate = predicate;
		this.predicatetype = predicatetype;
	}
	
	public Predicate getPredicate() {
		return predicate;
	}
	
	public PredicateType getPredicatetype() {
		return predicatetype;
	}
	
}