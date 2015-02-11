package org.correttouml.uml2zot.semantics.classdiagram;

import org.correttouml.uml.diagrams.classdiagram.ClassDiagram;
import org.correttouml.uml.diagrams.classdiagram.Clock;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.classdiagram.Signal;
import org.correttouml.uml2zot.semantics.SMadesModel;


public class SClassDiagram {

	/** The class diagram we are giving semantics to */
	private ClassDiagram classdiagram;
	
	public SClassDiagram(ClassDiagram cd){
		this.classdiagram=cd;
	}
	
	public String getSemantics(){
		
		String sem="";
		//Get the semantics associated to each clock
		for(Clock c: classdiagram.getClocks()){
			sem=sem+SMadesModel.printSeparatorSmall(c.toString() + "SEMANTICS");
			sem=sem+new SClock(c).getSemantics()+"\n";
		}
		
		//Get the semantics associated to each signal
		sem=sem+SMadesModel.printSeparatorSmall("SIGNALS SEMANTICS");
		for(Signal s: classdiagram.getSignals()){
			sem=sem+new SSignal(s).getSemantics()+"\n";
		}
		
		//Get the semantics associated to each object
		for(Object o: classdiagram.getObjects()){
			sem=sem+SMadesModel.printSeparatorSmall(o.toString() + "SEMANTICS");
			sem=sem+new SObject(o).getSemantics();
		}
		
		return sem;
	}
	
	public String getInitializationSemantics(){
		String sem="";
		
		//Get the initialization semantics associated to each object
		for(Object o: classdiagram.getObjects()){
			sem=sem+SMadesModel.printSeparatorSmall(o.toString() + " INITIALIZATION SEMANTICS");
			sem=sem+new SObject(o).getInitializationSemantics();
		}
		
		return sem;
	}
	
}
