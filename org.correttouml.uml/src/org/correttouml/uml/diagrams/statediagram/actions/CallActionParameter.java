package org.correttouml.uml.diagrams.statediagram.actions;


import java.util.List;

import org.correttouml.grammars.stateMachineActions.Parameters;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.classdiagram.OperationParameter;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.diagrams.expressions.Variable;
import org.correttouml.uml.diagrams.expressions.VariableFactory;

public class CallActionParameter {

	/** The name of the parameter given to the invoked action */
	private String param_name;
//	/** The state diagram in which the action is invoked */
//	private StateDiagram stateDiagram;
	private ExpressionContext context;
	/** my call action */
	private CallAction callAction;
	/** the element parsed **/
	private Parameters parsedElement;


//	public CallActionParameter(String param_name, CallAction action, StateDiagram stateDiagram, Parameters next) {
	public CallActionParameter(String param_name, CallAction action, ExpressionContext context, Parameters next) {
		this.param_name=param_name;
//		this.stateDiagram=stateDiagram;
		this.context = context;
		this.callAction=action;
		this.parsedElement=next;
	}
	
	/**
	 * Tells me if we must consider the value at the next time instant
	 */
	public boolean isFuture(){
		return this.parsedElement.getIsFuture()!=null;
	}
	
	/**
	 * Tells me if we must consider the value at the next time instant
	 */
	public boolean isPast(){
		return this.parsedElement.getIsPast()!=null;
	}

	/**
	 * Returns the actual parameter of the call action
	 */
	public Variable getVariable(Object object){
		return VariableFactory.getInstance(param_name, object, context);
	}
	
	/**
	 * Returns the operation parameter to which we are 
	 * assigning the variable
	 */
	public OperationParameter getOperationParameter(){
        List<CallActionParameter> parameters=callAction.getCallActionParameters();
        int paramIndex=-1;
        for(int i=0; i<parameters.size(); i++) if(parameters.get(i).equals(this)) paramIndex=i;
        
        return callAction.getOperation().getParameters().get(paramIndex);
	}
	
	/** Returns the call action this call action parameter is referring to */
	public CallAction getCallAction(){
		return this.callAction;
	}
	
	
	@Override
	public boolean equals(java.lang.Object o){
		if(!(o instanceof CallActionParameter)) return false;
		CallActionParameter other=(CallActionParameter) o;
		if(other.param_name.equals(this.param_name)) return true;
		return false;
	}
	
	
}
