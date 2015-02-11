package org.correttouml.uml2zot.semantics.statediagram.actions;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.classdiagram.Operation;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.diagrams.statediagram.actions.CallAction;
import org.correttouml.uml.diagrams.statediagram.actions.CallActionParameter;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SCallAction implements SAction{

	CallAction mades_callAction;
	
	public SCallAction(CallAction mades_callAction){
		this.mades_callAction=mades_callAction;
	}
	
	public Predicate getPredicate(Object... optObject){
		//FIXME: This can be improved, I am just
		//going to look for the first operation having the specified name
		
		//FIXME: Right now the current implementation do not support
		//operation calls on the same object making the invocation
		//e.g. a owns opA, and tries to make opA.call
		//right now I assume that opA belongs to a class connected to me
		
		Object obj_to_call=null;
		for(Object ass_obj: optObject[0].getAssociatedObjects()){
			for(Operation op: ass_obj.getOwningClass().getOperations()){
				if(op.getName().equals(mades_callAction.getOperation().getName())){
					obj_to_call=ass_obj;
				}
			}
		}
		
		return new Predicate("OBJ"+obj_to_call.getName()+"OP"+mades_callAction.getOperation().getName()+"_CALL");
	}

	@Override
	public String getSemantics(ExpressionContext context,
			Object... optObject) {
		String sem="";
		
        //Call Action parameter semantics
        for (CallActionParameter cap : this.mades_callAction.getCallActionParameters()) {
        	sem=sem+new SCallActionParameter(cap).getSemantics(optObject[0])+"\n";
        }
        
        return sem;
	}
	
}
