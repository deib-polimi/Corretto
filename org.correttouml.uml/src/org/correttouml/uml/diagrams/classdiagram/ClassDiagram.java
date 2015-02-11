package org.correttouml.uml.diagrams.classdiagram;


import java.util.HashSet;
import java.util.Set;

import org.apache.log4j.Logger;
import org.correttouml.uml.helpers.UML2ModelHelper;
import org.eclipse.uml2.uml.Element;
import org.eclipse.uml2.uml.Package;

public class ClassDiagram {

	@SuppressWarnings("unused")
	private Logger LOGGER = Logger.getLogger(ClassDiagram.class);
	
	private Package uml_sys_package;
	
	public ClassDiagram(org.eclipse.uml2.uml.Package system){
		this.uml_sys_package=system;
	}
	
	public Set<Class> getClasses(){
		HashSet<Class> classes=new HashSet<Class>();
		for(Element c: this.uml_sys_package.getOwnedElements()){
			if(c instanceof org.eclipse.uml2.uml.Class){
				classes.add(new Class((org.eclipse.uml2.uml.Class)c));
			}
		}
		return classes;
	}
	
	public Set<Clock> getClocks() {
		HashSet<Clock> clocks=new HashSet<Clock>();
		for(Element c: this.uml_sys_package.getOwnedElements()){
			if(UML2ModelHelper.isClock(c)){
				clocks.add(new Clock((org.eclipse.uml2.uml.InstanceSpecification)c));
			}
		}
		return clocks;
	}
	
	public Set<ClockType> getClockTypes() {
		HashSet<ClockType> clocktypes=new HashSet<ClockType>();
		for(Element c: this.uml_sys_package.getOwnedElements()){
			if(c instanceof org.eclipse.uml2.uml.Class && UML2ModelHelper.hasStereotype(c, "ClockType")){
				clocktypes.add(new ClockType((org.eclipse.uml2.uml.Class)c));
			}
		}
		return clocktypes;
	}
	
	public Class findClass(String name){
		for(Element c: this.uml_sys_package.getOwnedElements()){
			if(c instanceof org.eclipse.uml2.uml.Class){
				org.eclipse.uml2.uml.Class myc=(org.eclipse.uml2.uml.Class)c;
				if(myc.getName().equals(name)) return new Class(myc);
			}
		}
		return null;
	}
	
	public Set<Object> getObjects(){
		HashSet<Object> objects=new HashSet<Object>();
		for(Element c: this.uml_sys_package.getOwnedElements()){
			if(c instanceof org.eclipse.uml2.uml.InstanceSpecification){
				org.eclipse.uml2.uml.InstanceSpecification is=(org.eclipse.uml2.uml.InstanceSpecification) c;
				//Association instances are threated like instance specifications. 
				//I don't want them in my objects set
				if(!(is.getClassifiers().iterator().next() instanceof org.eclipse.uml2.uml.Association)) objects.add(new Object((org.eclipse.uml2.uml.InstanceSpecification)c));
			}
		}
		return objects;
	}
	
	public Object findObject(String name){
		for(Element c: this.uml_sys_package.getOwnedElements()){
			if(c instanceof org.eclipse.uml2.uml.InstanceSpecification){
				org.eclipse.uml2.uml.InstanceSpecification myobj=(org.eclipse.uml2.uml.InstanceSpecification) c;
				if(myobj.getName().equals(name)) return new Object((org.eclipse.uml2.uml.InstanceSpecification)c);
			}
		}
		return null;
	}

	public Set<Signal> getSignals() {
		HashSet<Signal> signals=new HashSet<Signal>();
		for(Element e: this.uml_sys_package.getOwnedElements()){
			if(e instanceof org.eclipse.uml2.uml.Signal){
				signals.add(new Signal((org.eclipse.uml2.uml.Signal)e));
			}
		}
		return signals;
	}
	
	
}
