package org.correttouml.uml.diagrams.statediagram.actions;

import java.util.ArrayList;
import java.util.List;

import org.correttouml.uml.diagrams.classdiagram.Operation;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;

public class CallAction implements Action{
	
	private Operation mades_operation;
	private Object mades_object;
	private ExpressionContext context;
	private List<CallActionParameter> params=new ArrayList<CallActionParameter>();

	public CallAction(ExpressionContext context, Object object, Operation operation) {
		this.mades_operation=operation;
		this.mades_object=object;
		this.context=context;
	}
	
	public void addCallActionParameter(CallActionParameter param){
		this.params.add(param);
	}

	public Operation getOperation() {
		return mades_operation;
	}
	
	public Object getObject(){
		return mades_object;
	}
	
//	public Transition getTransition(){
//		return mades_transition;
//	}
	
	public List<CallActionParameter> getCallActionParameters(){
		return params;
	}
	
	public ExpressionContext getContext(){
		return context;
	}
	
//	@Override
//	public boolean equals(java.lang.Object o){
//		CallAction other_object=(CallAction) o;
//		return this.mades_object.equals(other_object.getObject()) && this.mades_operation.equals(other_object.mades_operation) && this.mades_transition.equals(other_object.getTransition());
//	}
//	
//	@Override
//	public int hashCode(){
//		return this.mades_object.hashCode()+this.mades_operation.hashCode()+this.mades_transition.hashCode();
//	}

}
