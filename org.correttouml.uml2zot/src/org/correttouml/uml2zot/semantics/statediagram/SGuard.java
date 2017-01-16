package org.correttouml.uml2zot.semantics.statediagram;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.statediagram.Guard;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SGuard {

	Guard mades_guard;
	Predicate predicate;
	
	public SGuard(Guard guard) {
		this.mades_guard=guard;
	}

    public Predicate getPredicate(Object object){
        if(predicate==null){
            this.predicate=new Predicate();
        }
        predicate.setPredicateName("OBJ"+object.getName()+"_STD"+this.mades_guard.getTransition().getStateDiagram().getName()+"_TRANSITION"+this.mades_guard.getTransition().getUMLId()+"_GUARD");
        return predicate;
    }

}
