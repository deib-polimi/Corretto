package org.correttouml.uml.diagrams.classdiagram;

import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EObject;

public class AssociationInstance {

	private org.eclipse.uml2.uml.InstanceSpecification uml_instancespecificationlink;
	
	public AssociationInstance(org.eclipse.uml2.uml.InstanceSpecification uml_instancespecificationlink){
		this.uml_instancespecificationlink = uml_instancespecificationlink;
	}
	
	/**
	 * Returns the association this association link is classified by
	 * @return
	 */
	public Association getAssociation(){
		return new Association((org.eclipse.uml2.uml.Association)this.uml_instancespecificationlink.getClassifiers().get(0));
	}
	
	/**
	 * Tell me if this object is one of the member ends of this association instance
	 * @param object
	 * @return
	 */
	public boolean isMemberEnd(Object object){
		for(EAnnotation e:uml_instancespecificationlink.getEAnnotations()){
			for (EObject meo: e.getReferences()) {
				Object tmp = new Object((org.eclipse.uml2.uml.InstanceSpecification) meo);
				if (tmp.equals(object)) {
					return true;
				}
			}
		}
		return false;
	}
	
	/**
	 * Give me the object corresponding to the provided member end
	 * @param memberEndName
	 * @return
	 */
	public Object getMemberEnd(String memberEndName){
		for(EAnnotation e:uml_instancespecificationlink.getEAnnotations()){
			if(e.getSource().equals("memberEnd_"+memberEndName)){
				return new Object((org.eclipse.uml2.uml.InstanceSpecification) e.getReferences().get(0));
			}
		}
		try{
			throw new Exception("Member end " +memberEndName+ " not found for association instance " + uml_instancespecificationlink.getName());
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return null;
	}
	/**
	 * Tell me if this association instance has this member end name
	 * @param memberEndName
	 * @return
	 */
	public boolean hasMemberEnd(String memberEndName){
		for(EAnnotation e:uml_instancespecificationlink.getEAnnotations()){
			if(e.getSource().equals("memberEnd_"+memberEndName)){
				return true;
			}
		}
		return false;
	}

	public Object getMemberEndObject(Class memberEndClass){
		for (EAnnotation e:uml_instancespecificationlink.getEAnnotations()){
			for (EObject eo : e.getReferences())
				if (((org.eclipse.uml2.uml.InstanceSpecification) eo).getClassifiers().get(0).getName().equals(memberEndClass.getName()))
					return new Object(((org.eclipse.uml2.uml.InstanceSpecification) eo));
			}
		return null;
	}
	
}
