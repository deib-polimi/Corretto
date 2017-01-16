package org.correttouml.uml.diagrams.statediagram.actions;

import java.util.ArrayList;
import java.util.List;

import org.correttouml.grammars.stateMachineActions.Model;
import org.correttouml.grammars.stateMachineActions.Parameters;
import org.correttouml.uml.diagrams.classdiagram.AssociationEnd;
import org.correttouml.uml.diagrams.classdiagram.AssociationInstance;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.classdiagram.Operation;
import org.correttouml.uml.diagrams.classdiagram.Signal;
import org.correttouml.uml.diagrams.expressions.Assignment;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;
import org.correttouml.uml.helpers.StDActionsParser;

public class ActionFactory {
	
//	public static List<Action> getInstance(String action, Transition transition, Object object){
	public static List<Action> getInstance(String action, ExpressionContext context, Object object){
		
		ArrayList<Action> actions=new ArrayList<Action>();
		
		Model m=StDActionsParser.parse(action);
		
		do{
			org.correttouml.grammars.stateMachineActions.Action curr=m.getAction();
			try {
//				actions.add(getAction(curr, transition, object));
				actions.add(getAction(curr, context, object));
			} catch (Exception e) {
				System.err.println("Error for action: " + action);
				e.printStackTrace();
			}
		}while((m=m.getActions())!=null);
		
		return actions;
	}
	
	private static Action getAction(org.correttouml.grammars.stateMachineActions.Action curr, ExpressionContext context, Object object) throws Exception {
		if (curr.getEventAction() != null) {
			if (curr.getEventAction().getEvent().getEventExtension()
					.equals("call")) {
				return getCallAction(curr, context, object);
			}
			if (curr.getEventAction().getEvent().getEventExtension()
					.equals("sig")) {
				return getSignalAction(curr, context);
			}
			if (curr.getEventAction().getEvent().getEventExtension()
					.equals("start")) {
				return getSequenceDiagramAction(curr, context);
			}
		}
		if (curr.getAssignment() != null) {
			return getAssignmentAction(curr.getAssignment(), context);
		}
		throw new Exception("Action type not supported");
	}

//	private static Action getAssignmentAction(org.correttouml.grammars.stateMachineActions.Assignment assignment, AssignmentContext context) {
	private static Action getAssignmentAction(org.correttouml.grammars.stateMachineActions.Assignment assignment, ExpressionContext context) {
		Assignment a= new Assignment(assignment, context);
		return new AssignmentAction(a);
	}
	
	private static CallAction getCallAction(org.correttouml.grammars.stateMachineActions.Action curr, ExpressionContext context, Object object) throws Exception{
		// [corretto-man] Syntaxes of operation invocation actions in StD: 1- #linkName.memberEndName@opName.call, 2- @memberEndName.opName.call
		Object objToInvoke = null;
		String opname, linkName, associationEnd;
		if (curr.getEventAction().getEvent().getEventName() != null) {  //1- #linkName.memberEndName@opName.call
			opname = curr.getEventAction().getEvent().getEventName();
	
			// the association end where we are sending the invocation
			linkName = curr.getEventAction().getLink().getLinkName();
			associationEnd = curr.getEventAction().getLink().getAssociationEnd();
	
			// let's find the guy we are looking for
			
			//<For Java Models>
			for (AssociationInstance ai : object.getAssociationInstances())
				if (ai.getAssociation().getName().equals(linkName) && ai.hasMemberEnd(associationEnd) && !ai.getMemberEnd(associationEnd).equals(object))
					objToInvoke = ai.getMemberEnd(associationEnd);
			//</For Java Models>
			//<For Papyrus Models>
			if (objToInvoke == null)
				for (AssociationInstance ai : object.getAssociationInstances())
					if (ai.getAssociation().getName().equals(linkName))
						for (AssociationEnd ae : ai.getAssociation().getAssociationEnds())
							if (ae.getName().equals(associationEnd))
								objToInvoke = ai.getMemberEndObject(ae.getOwnerClass());
			//</For Papyrus Models>
		}
		else{  //2- @memberEndName.opName.call
			// TODO[improvement] association ends must have unique names
			opname = curr.getEventAction().getEvent().getOpName();
			associationEnd = curr.getEventAction().getEvent().getAssociationEnd();
			//<For Java Models>
			for (AssociationInstance ai : object.getAssociationInstances()) 
				if (ai.hasMemberEnd(associationEnd) && !ai.getMemberEnd(associationEnd).equals(object)) 
					objToInvoke = ai.getMemberEnd(associationEnd);
			//</For Java Models>
			//<For Papyrus Models>
			if (objToInvoke == null)
				for (AssociationInstance ai : object.getAssociationInstances())
					for (AssociationEnd ae : ai.getAssociation().getAssociationEnds())
						if (ae.getName().equals(associationEnd))
							objToInvoke = ai.getMemberEndObject(ae.getOwnerClass());
			//</For Papyrus Models>
		}

		if (objToInvoke == null) {
			throw new Exception("Object to invoke not found");
		}


		// let's find the operation we are willing to invoke
		Operation invoked_op = objToInvoke.getOwningClass().getOperation(opname);

		// Check if everything is ok, please
		CallAction action = null;
		if (invoked_op != null) action = new CallAction(context, objToInvoke, invoked_op);
		// ops, something went wrong
		else throw new Exception("Operation not found");

		// Get the parameters of the invocation
		Parameters next = curr.getEventAction().getEvent().getParameters();
		do {
			if (next == null) break; // no parameters
			String param_name = next.getParam();
			action.addCallActionParameter(new CallActionParameter(param_name, action, context, next));
			next = next.getParameters();
		} while (next != null);

		return action;
	}
	
//	private static SignalAction getSignalAction(org.correttouml.grammars.stateMachineActions.Action action, Transition transition, Object object){
	private static SignalAction getSignalAction(org.correttouml.grammars.stateMachineActions.Action action, ExpressionContext context){
		try {
			String signame=action.getEventAction().getEvent().getEventName();
			for(Signal s: context.getMadesModel().getClassdiagram().getSignals()){
					if(s.getName().equals(signame)) return new SignalAction(s, context);
				}
			throw new Exception("Signal not found Exception");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

//	private static SequenceDiagramAction getSequenceDiagramAction(org.correttouml.grammars.stateMachineActions.Action action, Transition transition){
	private static SequenceDiagramAction getSequenceDiagramAction(org.correttouml.grammars.stateMachineActions.Action action, ExpressionContext context){
		try{
			String sdname=action.getEventAction().getEvent().getEventName();
			for(SequenceDiagram sd: context.getMadesModel().getSequenceDiagrams()){
				if(sd.getName().equals(sdname)) return new SequenceDiagramAction(sd);
			}
			throw new Exception("Sequence diagram not found Exception");
		} catch (Exception e){
			e.printStackTrace();
		}
		return null;
	}
}