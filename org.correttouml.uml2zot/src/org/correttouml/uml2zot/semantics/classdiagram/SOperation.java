package org.correttouml.uml2zot.semantics.classdiagram;

import java.util.HashSet;
import java.util.Set;

import org.correttouml.uml.diagrams.activity.CallActionNode;
import org.correttouml.uml.diagrams.activitydiagram.AD;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.classdiagram.Operation;
import org.correttouml.uml.diagrams.sequencediagram.Message;
import org.correttouml.uml.diagrams.sequencediagram.MessageType;
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
	
	public Predicate getReplyPredicate(Object object){
		return new Predicate("OBJ" + object.getName() + "OP" + mades_operation.getName() + "reply");
	}
	
	
	public String getSemantics(Object object){
        String sem="";
     
        /*
         * CONNECTION SEMANTICS
         * I messaggi nei sequence diagrams e le operation call negli stati diagrams
         * sono instanze delle operazioni.
         */
        Or callOrCond=new Or();
        Or replyOrCond = new Or();
		for(Message m: mades_operation.getMessages()){
			Predicate msg_end=new SMessageEnd(m.getMessageEndEvent()).getPredicate();
			if (m.getMessageType() != MessageType.REPLY) 
				callOrCond.addFormulae(msg_end);
			else
				replyOrCond.addFormulae(msg_end);
		}
		
		//ACTIONS INVOKING THIS OPERATION
		Set<CallAction> actions=getActionsInvokingThisOperation(object);
		for(CallAction act: actions)
			callOrCond.addFormulae(new SCallAction(act).getPredicate(object));
		
		
        if(callOrCond.size()!=0)
        	sem=sem+new Iff(this.getPredicate(object),callOrCond) + "\n";
        if(replyOrCond.size()!=0)
        	sem += new Iff(this.getReplyPredicate(object), replyOrCond) + "\n";
        
        return sem;
	}

	private Set<CallAction> getActionsInvokingThisOperation(Object object) {
		HashSet<CallAction> retactions=new HashSet<CallAction>();
		Set<Object> objects = object.getAssociatedObjects();
		objects.add(object);
		for(Object obj: objects){
	        for (StateDiagram std : obj.getOwningClass().getStateDiagrams()) {
				for(Transition t: std.getTransitions()){
		            if(t.hasActions()){
		                for(Action act: t.getActions(obj)){
			                if(act instanceof CallAction 
			                		&& ((CallAction) act).getOperation().equals(this.mades_operation)
			                		&& ((CallAction) act).getObject().equals(object)
			                		&& !retactions.contains(act)){
			                	retactions.add((CallAction)act);
			                }
		                }
		            }
		         }
			}
	        for (AD ad : obj.getADs())
		        for (CallActionNode can: ad.getCallActionNodes()){
		        	if (can.getOperation().equals(this.mades_operation))
		        		retactions.add((CallAction) can.getAction(obj));
		        }
		}
		return retactions;
	}

}
