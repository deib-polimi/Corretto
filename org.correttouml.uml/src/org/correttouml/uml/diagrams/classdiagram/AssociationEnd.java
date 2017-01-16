package org.correttouml.uml.diagrams.classdiagram;

import org.eclipse.uml2.uml.Property;

public class AssociationEnd {

	private Property uml_property;
	private org.correttouml.uml.diagrams.classdiagram.Class ownerClass;

	public AssociationEnd(Property uml_property) {
		this.uml_property=uml_property;
		//[corretto-man] Association must be navigable in the direction the operation is going to be invoked.
		//[corretto-man] Association end must be owned by classifier (not association). It is modifiable in Papyrus.
		if (uml_property.getOpposite().getOwner() instanceof org.eclipse.uml2.uml.Class)
			ownerClass = new Class((org.eclipse.uml2.uml.Class) uml_property.getOpposite().getOwner());
		else
			try {
				throw new Exception("Association end must be owned by classifier (not association).");
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
	
	public String getName(){
		return uml_property.getName();
	}

	public Class getOwnerClass(){
		return ownerClass;
	}
	
}
