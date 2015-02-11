package org.correttouml.uml.diagrams.classdiagram;


import java.util.HashSet;
import java.util.Set;

import org.correttouml.uml.MadesModel;
import org.correttouml.uml.diagrams.statediagram.StateDiagram;
import org.correttouml.uml.helpers.UML2ModelHelper;
import org.eclipse.uml2.uml.Association;
import org.eclipse.uml2.uml.Element;
import org.eclipse.uml2.uml.Property;
import org.eclipse.uml2.uml.StateMachine;

public class Class {

	/** The decorated class */
	org.eclipse.uml2.uml.Class uml_class;

	public Class(org.eclipse.uml2.uml.Class c) {
		this.uml_class = c;
	}

	/** Returns the state diagram associated to this object */
	public Set<StateDiagram> getStateDiagrams() {
		HashSet<StateDiagram> statemachines = new HashSet<StateDiagram>();
		for (Element e : uml_class.getOwnedElements()) {
			if (e instanceof StateMachine && !UML2ModelHelper.hasStereotype(e, "Ignore")) {
				statemachines.add(new StateDiagram((StateMachine) e));
			}
		}
		return statemachines;
	}
	
	public StateDiagram findStateDiagram(String name) {
		for (Element e : uml_class.getOwnedElements()) {
			if (e instanceof StateMachine && !UML2ModelHelper.hasStereotype(e, "Ignore")) {
				StateMachine mysm=(StateMachine) e;
				if(mysm.getName().equals(name)) return new StateDiagram((StateMachine) e);
			}
		}
		return null;
	}
	
	/** Returns the attributes of this class */
	public Set<Attribute> getAttributes(){
		HashSet<Attribute> attributes=new HashSet<Attribute>();
		for(org.eclipse.uml2.uml.Property at: this.uml_class.getAllAttributes()){
			attributes.add(new Attribute(at));
		}
		return attributes;
	}
	
	/** Returns the set of operations of this class */
	public Set<Operation> getOperations(){
		HashSet<Operation> operations=new HashSet<Operation>();
		for(org.eclipse.uml2.uml.Operation p: this.uml_class.getAllOperations()){
			operations.add(new Operation(p));
		}
		return operations;
	}
	
	public Set<Class> getAssociatedClasses() {
		Set<Class> ass_classes=new HashSet<Class>();
		
		for(Association a: this.uml_class.getAssociations()){
			for(Property p: a.getMemberEnds()){
				if(p.getType() instanceof org.eclipse.uml2.uml.Class){
					ass_classes.add(new Class((org.eclipse.uml2.uml.Class)p.getType()));
				}
			}
		}
		return ass_classes;
	}
	
	public MadesModel getMadesModel(){
		return new MadesModel(this.uml_class.getModel());
	}
	
	public Set<Object> getObjects() {
		Set<Object> objects=new HashSet<Object>();
		for(Object obj:this.getMadesModel().getClassdiagram().getObjects()){
			if(obj.getOwningClass().equals(this)) objects.add(obj);
		}
		return objects;
	}
	
	@Override
	public boolean equals(java.lang.Object o){
		Class other_class=(Class) o;
		return this.uml_class.equals((org.eclipse.uml2.uml.Class) other_class.uml_class);
	}
	
	@Override
	public int hashCode(){
		return this.uml_class.hashCode();
	}





}
