package org.correttouml.uml2zot.semantics.classdiagram;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.classdiagram.Operation;
import org.correttouml.uml.diagrams.sequencediagram.Message;
import org.correttouml.uml.diagrams.statediagram.StateDiagram;
import org.correttouml.uml.diagrams.statediagram.Transition;
import org.correttouml.uml.diagrams.statediagram.actions.Action;
import org.correttouml.uml.diagrams.statediagram.actions.CallAction;
import org.correttouml.uml2zot.semantics.sequencediagram.SMessageEnd;
import org.correttouml.uml2zot.semantics.statediagram.actions.SCallAction;
import org.correttouml.uml2zot.semantics.util.bool.Iff;
import org.correttouml.uml2zot.semantics.util.bool.Or;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SOperation {
	
	private Operation mades_operation;

	public SOperation(Operation op){
		this.mades_operation=op;
	}
	
	public Predicate getPredicate(Object object){
		return new Predicate("OBJ"+object.getName()+"OP"+mades_operation.getName());
	}
	
	public String getSemantics(Object object){
        String sem="";
     
        /*
         * CONNECTION SEMANTICS
         * I messaggi nei sequence diagrams e le operation call negli stati diagrams
         * sono instanze delle operazioni.
         */
        Or orCond=new Or();
		for(Message m: mades_operation.getMessages()){
			Predicate msg_end=new SMessageEnd(m.getMessageEndEvent()).getPredicate();
			orCond.addFormulae(msg_end);
		}
		
		//ACTIONS INVOKING THIS OPERATION
		for(Object linked_to_me_obj: object.getAssociatedObjects()){
	        for (StateDiagram std : linked_to_me_obj.getOwningClass().getStateDiagrams()) {
				for(Transition t: std.getTransitions()){
		            if(t.hasAction()){
		                Action act=t.getAction();
		                if(act instanceof CallAction && ((CallAction) act).getOperation().equals(this.mades_operation)){
		                	orCond.addFormulae(new SCallAction((CallAction)act).getPredicate(linked_to_me_obj));
		                }
		            }
		         }  
			}			
		}
		
        if(orCond.size()!=0) sem=sem+new Iff(this.getPredicate(object),orCond) + "\n";
        return sem;
	}

}
