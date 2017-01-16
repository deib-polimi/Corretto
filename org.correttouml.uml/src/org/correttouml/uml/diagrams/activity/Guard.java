package org.correttouml.uml.diagrams.activity;

import org.correttouml.uml.helpers.BooleanExpressionsParser;
import org.correttouml.uml2zot.UML2Zot;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.uml2.uml.Element;

public class Guard {

	private String umlGuard;
	private Activity madesActivity;
	private Element ownerUMLElement;
	
	public Guard(String guard, Element ownerUMLElement, Activity activity) {
		this.umlGuard=guard;
		this.madesActivity = activity;
		this.ownerUMLElement = ownerUMLElement;
	}

	public org.correttouml.grammars.booleanExpressions.Model getBooleanExpression() {
		return BooleanExpressionsParser.parse(this.umlGuard);
	}
	
	public String getUMLGuard(){
		return umlGuard;
	}
	
	public Activity getActivity(){
		return madesActivity;
	}
	
	public Element getOwnerUMLElement(){
		return this.ownerUMLElement;
	}
	
	public String getOwnerUMLElementId(){
		String id=((XMLResource) this.ownerUMLElement.eResource()).getID(ownerUMLElement);
		return UML2Zot.Utility.umlIDtoPrdID(id);
	}
	
	@Override
	public boolean equals(java.lang.Object o){
		Guard other_guard=(Guard) o;
		return this.umlGuard.equals(other_guard.umlGuard);
	}
	
	@Override
	public int hashCode(){
		return this.umlGuard.hashCode();
	}

}
