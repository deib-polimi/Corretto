package org.correttouml.uml2zot.semantics.classdiagram;

import org.correttouml.uml.diagrams.activitydiagram.AD;
import org.correttouml.uml.diagrams.classdiagram.Attribute;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.classdiagram.Operation;
import org.correttouml.uml.diagrams.classdiagram.Slot;
import org.correttouml.uml.diagrams.expressions.ValueSpecification;
import org.correttouml.uml.diagrams.statediagram.StateDiagram;
import org.correttouml.uml2zot.semantics.SMadesModel;
import org.correttouml.uml2zot.semantics.activitydiagram.SAD;
import org.correttouml.uml2zot.semantics.statediagram.SStateDiagram;


public class SObject {

	private Object mades_obj;
	
	public SObject(Object mades_obj){
		this.mades_obj=mades_obj;
	}
	
	public String getSemantics(){
		String sem="";
		
		sem += SMadesModel.printSeparatorSmall("Object operation definitions", false);
		for(Operation op: this.mades_obj.getOwningClass().getOperations()){
			sem=sem+new SOperation(op).getSemantics(mades_obj);
		}
		
		sem += SMadesModel.printSeparatorSmall("Attribute semantics", false);
		for(Attribute attr: this.mades_obj.getOwningClass().getAttributes()){
			sem=sem+new SAttribute(attr).getSemantics(mades_obj);
		}
		
		//TODO Add the blocking semantics
		
		//If the object has a state diagram associated to it, return its semantics
		for(StateDiagram std: mades_obj.getOwningClass().getStateDiagrams()){
			sem=sem+SMadesModel.printSeparatorSmall(mades_obj.toString() + " STD " + std.getName() + std + " SEMANTICS");
			sem=sem+new SStateDiagram(std).getSemantics(this.mades_obj);
		}
		
		//If the object has an activity diagram associated to it, return its semantics
		for (AD ad : mades_obj.getADs()) {
			sem += SMadesModel.printSeparatorSmall(mades_obj.toString() + " AD " + ad.getName() + ad + " SEMANTICS");
			sem += new SAD(ad).getSemantics();
		}
		
		return sem;
	}

	public String getInitializationSemantics() {
		String sem="";
		
		for(Attribute att: this.mades_obj.getOwningClass().getAttributes()){
			
			ValueSpecification value=null;
			Slot s=null;
			if((s=mades_obj.getSlot(att))!=null){
				value=s.getValueSpecification();
			}else{
				//[TODO]: To initialize an attribute right now you MUST
				// create a slot at instance level. Going for a default value
				// here is tricky and must be thought carefully.
				//value=att.getDefaultValue();
			}
			if(value != null) sem=sem+new SAttribute(att).getInitializationSemantics(mades_obj, value);
		}
		
		return sem;
	}
	
}
