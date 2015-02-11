package org.correttouml.uml.diagrams.statediagram.actions;

import java.util.ArrayList;
import java.util.List;

import org.correttouml.uml.diagrams.classdiagram.Operation;


public class CallAction implements Action{
	
	private Operation mades_operation;
	private List<CallActionParameter> params=new ArrayList<CallActionParameter>();

	public CallAction(Operation operation) {
		this.mades_operation=operation;
	}
	
	public void addCallActionParameter(CallActionParameter param){
		this.params.add(param);
	}

	public Operation getOperation() {
		return mades_operation;
	}
	
	public List<CallActionParameter> getCallActionParameters(){
		return params;
	}

}
