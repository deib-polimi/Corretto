package org.correttouml.uml.diagrams.classdiagram;


import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.correttouml.uml.MadesModel;
import org.correttouml.uml.diagrams.property.PTermElement;
import org.correttouml.uml.diagrams.sequencediagram.Message;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;

public class Operation implements PTermElement {

	private org.eclipse.uml2.uml.Operation uml_operation;

	public Operation(org.eclipse.uml2.uml.Operation p) {
		this.uml_operation=p;
	}
	
	public Class getOwningClass(){
		return new Class(uml_operation.getClass_());
	}
	
	public List<OperationParameter> getParameters(){
		ArrayList<OperationParameter> parameters=new ArrayList<OperationParameter>();
		for(org.eclipse.uml2.uml.Parameter p: this.uml_operation.getOwnedParameters()){
			parameters.add(new OperationParameter(p));
		}
		return parameters;
	}

	public OperationReturnValue getReturnValue(){
		return new OperationReturnValue(this.uml_operation.getReturnResult());
	}

	public String getName() {
		return this.uml_operation.getName();
	}
	
	public Set<Message> getMessages(){
		Set<Message> messages=new HashSet<Message>();
		////#### repetitious messages should be considered <Mehdi>
		MadesModel mm=new MadesModel(uml_operation.getModel());
		for(SequenceDiagram sd: mm.getSequenceDiagrams()){
			for(Message m:sd.getMessages()){
				if(m.getOperation().getName().equals(this.getName())){
					messages.add(m);
				}
			}
		}
		return messages;
	}
	
	@Override
	public boolean equals(java.lang.Object o){
		Operation other_operation=(Operation) o;
		return this.uml_operation.equals((org.eclipse.uml2.uml.Operation) other_operation.uml_operation);
	}
	
	@Override
	public int hashCode(){
		return this.uml_operation.hashCode();
	}
	
}
