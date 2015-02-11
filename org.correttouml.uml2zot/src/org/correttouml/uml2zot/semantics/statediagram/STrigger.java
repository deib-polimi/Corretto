package org.correttouml.uml2zot.semantics.statediagram;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.statediagram.Trigger;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class STrigger {

	Trigger mades_trigger;
	Predicate predicate;
	
	public STrigger(Trigger trigger) {
		this.mades_trigger=trigger;
	}

	public Predicate getPredicate(Object object) {
        if(this.predicate==null){
            this.predicate=new Predicate();
        }
        // MR: modified to avoid "-"
        predicate.setPredicateName("OBJ"+object.getName()+"_STD"+this.mades_trigger.getTransition().getStateDiagram().getName()+"_TRANSITION"+this.mades_trigger.getTransition().getUMLId().replace("-", "_")+"_TRIGGER");
        return predicate;
	}

}
