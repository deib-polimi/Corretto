package org.correttouml.uml2zot.semantics.activity;

import org.correttouml.uml.diagrams.activity.Guard;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SGuard {

	Guard mades_guard;
	Predicate predicate;
	
	public SGuard(Guard guard) {
		this.mades_guard=guard;
	}

    public Predicate getPredicate(){
        if(predicate==null){
            this.predicate=new Predicate();
        }
        predicate.setPredicateName("OBJ" + mades_guard.getActivity().getObject().getName() + mades_guard.getActivity().getName() + mades_guard.getOwnerUMLElementId() + "GUARD");
        return predicate;
    }

}
