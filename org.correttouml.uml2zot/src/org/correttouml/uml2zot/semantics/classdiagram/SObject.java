package org.correttouml.uml2zot.semantics.classdiagram;

import org.correttouml.uml.diagrams.classdiagram.Attribute;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.classdiagram.Operation;
import org.correttouml.uml.diagrams.statediagram.StateDiagram;
import org.correttouml.uml2zot.semantics.SMadesModel;
import org.correttouml.uml2zot.semantics.statediagram.SStateDiagram;
import org.correttouml.uml2zot.semantics.util.trio.Constant;
import org.correttouml.uml2zot.semantics.util.trio.EQ;


public class SObject {

	private Object mades_obj;
	
	public SObject(Object mades_obj){
		this.mades_obj=mades_obj;
	}
	
	public String getSemantics(){
		String sem="";
		////#### uncomment me <Mehdi>
//		SMadesModel.printSeparatorSmall("Object operation definitions", false);
//		for(Operation op: this.mades_obj.getOwningClass().getOperations()){
//			sem=sem+new SOperation(op).getSemantics(mades_obj);
//		}
		
		SMadesModel.printSeparatorSmall("Attribute semantics", false);
		for(Attribute attr: this.mades_obj.getOwningClass().getAttributes()){
			sem=sem+new SAttribute(attr).getSemantics(mades_obj);
		}
		
		//TODO Add the blocking semantics
		
		//If the object has a state diagram associated to it, return its semantics
		for(StateDiagram std: mades_obj.getOwningClass().getStateDiagrams()){
			sem=sem+SMadesModel.printSeparatorSmall(mades_obj.toString() + " STD " + std + " SEMANTICS");
			sem=sem+new SStateDiagram(std).getSemantics(this.mades_obj);
		}
		
		return sem;
	}

	public String getInitializationSemantics() {
		String sem="";
		
		for(Attribute att: this.mades_obj.getOwningClass().getAttributes()){
			sem=sem+new SAttribute(att).getInitializationSemantics(mades_obj);
		}
		
		return sem;
	}
	
}
