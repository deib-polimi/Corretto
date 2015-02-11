package org.correttouml.uml.diagrams.statediagram.actions;

import org.correttouml.uml.diagrams.classdiagram.Class;
import org.correttouml.uml.diagrams.classdiagram.Operation;
import org.correttouml.uml.diagrams.classdiagram.Signal;
import org.correttouml.uml.diagrams.expressions.Assignment;
import org.correttouml.uml.diagrams.expressions.AssignmentContext;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;
import org.correttouml.uml.diagrams.statediagram.Transition;
import org.correttouml.uml.helpers.StDActionsParser;

import org.correttouml.grammars.stateMachineActions.*;

public class ActionFactory {
	
	public static Action getInstance(String action, org.eclipse.uml2.uml.Transition uml_transition){
		
		Model m=StDActionsParser.parse(action);
		
		try {
			if(m.getAction().getEventAction() != null){
				if(m.getAction().getEventAction().getEventExtension().equals("call")){
					return getCallAction(m, new Transition(uml_transition));
				}
				if(m.getAction().getEventAction().getEventExtension().equals("sig")){
					return getSignalAction(m, new Transition(uml_transition));	
				}
				if(m.getAction().getEventAction().getEventExtension().equals("start")){
					return getSequenceDiagramAction(m,new Transition(uml_transition));
				}
			}
			if(m.getAction().getAssignment() != null){
				return getAssignmentAction(action, new Transition(uml_transition));	
			}
			throw new Exception("Action not supported");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private static Action getAssignmentAction(String action, AssignmentContext context) {
		Assignment a= new Assignment(action, context);
		return new AssignmentAction(a);
	}
	
	private static CallAction getCallAction(Model m, Transition transition){
		try {
			String opname=m.getAction().getEventAction().getEventName();
			Operation invoked_op=null;
			//Find the operation we are invoking 
			for(Class c: transition.getStateDiagram().getOwningClass().getAssociatedClasses()){
				for(Operation op: c.getOperations()){
					if(op.getName().equals(opname)) invoked_op=op;
				}
			}
			
			//Check if everything is ok, please
			CallAction action=null;
			if(invoked_op!=null) action=new CallAction(invoked_op);
			//ops, something went wrong
			else throw new Exception("Operation not found Exception for call action in transition " + transition.getUMLId());
			
			//Get the parameters of the invocation
			Parameters next=m.getAction().getEventAction().getParameters();
			do{
				if(next==null) break; //no parameters
				String param_name=m.getAction().getEventAction().getParameters().getParam();
				action.addCallActionParameter(new CallActionParameter(param_name, action, transition.getStateDiagram()));
				next=next.getParameters();
			}while(next!=null);
			
			return action;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private static SignalAction getSignalAction(Model m, Transition transition){
		try {
			String signame=m.getAction().getEventAction().getEventName();
			for(Signal s: transition.getStateDiagram().getMadesModel().getClassdiagram().getSignals()){
				if(s.getName().equals(signame)) return new SignalAction(s);
			}
			throw new Exception("Signal not found Exception");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	private static SequenceDiagramAction getSequenceDiagramAction(Model m, Transition transition){
		try{
			String sdname=m.getAction().getEventAction().getEventName();
			for(SequenceDiagram sd: transition.getStateDiagram().getMadesModel().getSequenceDiagrams()){
				if(sd.getName().equals(sdname)) return new SequenceDiagramAction(sd);
			}
			throw new Exception("Sequence diagram not found Exception");
		} catch (Exception e){
			e.printStackTrace();
		}
		return null;
	}
}


