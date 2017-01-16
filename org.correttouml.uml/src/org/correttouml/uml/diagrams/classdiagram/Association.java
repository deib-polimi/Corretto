package org.correttouml.uml.diagrams.classdiagram;

import java.util.HashSet;
import java.util.Set;

public class Association {

	org.eclipse.uml2.uml.Association uml_association;
	
	public Association(org.eclipse.uml2.uml.Association uml_association){
		this.uml_association=uml_association;
	}
	
	public Set<AssociationEnd> getAssociationEnds(){
		HashSet<AssociationEnd> associationends=new HashSet<AssociationEnd>();
		for(org.eclipse.uml2.uml.Property p: uml_association.getMemberEnds()){
			associationends.add(new AssociationEnd(p));
		}
		return associationends;
	}
	
	public boolean hasAssociationEnd(String name){
		for(org.eclipse.uml2.uml.Property p: uml_association.getMemberEnds()){
			if(p.getName().equals(name)) return true;
		}
		return false;
	}

	public String getName() {
		return this.uml_association.getName();
	}
	
}
