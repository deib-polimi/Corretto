package org.correttouml.uml.diagrams.sequencediagram;


import java.util.List;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.classdiagram.Operation;
import org.correttouml.uml.diagrams.classdiagram.OperationParameter;
import org.correttouml.uml.diagrams.expressions.Variable;
import org.correttouml.uml.diagrams.expressions.VariableFactory;
import org.eclipse.uml2.uml.InstanceValue;
import org.eclipse.uml2.uml.LiteralInteger;
import org.eclipse.uml2.uml.MessageOccurrenceSpecification;
import org.eclipse.uml2.uml.ValueSpecification;

public class MessageParameter {

	private ValueSpecification uml_valuespecification;
	private org.eclipse.uml2.uml.Message uml_message;
	
	public MessageParameter(org.eclipse.uml2.uml.Message message, ValueSpecification vs) {
		this.uml_valuespecification=vs;
		this.uml_message=message;
	}

	public Message getMessage() {
		return new Message(uml_message);
	}
	
	public Variable getVariable(){
		LiteralInteger ls=(LiteralInteger) uml_valuespecification;
		org.eclipse.uml2.uml.Lifeline l=((MessageOccurrenceSpecification) this.uml_message.getSendEvent()).getCovereds().get(0);
		Object sourceObject=new Object(((InstanceValue)l.getSelector()).getInstance());
		return VariableFactory.getInstance(ls.getName(), sourceObject, new Message(uml_message).getSequenceDiagram());
	}
	
	public OperationParameter getOperationParameter(){
        List<MessageParameter> parameters=new Message(uml_message).getParameters();
        int paramIndex=-1;
        for(int i=0; i<parameters.size(); i++) if(parameters.get(i).equals(this)) paramIndex=i;
        
        org.eclipse.uml2.uml.Operation op=(org.eclipse.uml2.uml.Operation) this.uml_message.getSignature();
        return new OperationParameter(new Operation(op), op.getOwnedParameters().get(paramIndex));
	}
	
	@Override
	public boolean equals(java.lang.Object object){
		MessageParameter mp=(MessageParameter) object;
		if(mp.uml_valuespecification.equals(this.uml_valuespecification)) return true;
		return false;
	}

}
