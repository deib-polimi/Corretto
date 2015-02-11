package org.correttouml.uml.diagrams.classdiagram;


import org.correttouml.uml.diagrams.events.ClockTickEvent;
import org.correttouml.uml.helpers.UML2ModelHelper;
import org.eclipse.uml2.uml.Classifier;
import org.eclipse.uml2.uml.InstanceSpecification;

public class Clock {

	private InstanceSpecification uml_clock;

	public Clock(org.eclipse.uml2.uml.InstanceSpecification c) {
		this.uml_clock=c;
	}

	public String getName() {
		return uml_clock.getName();
	}
	
	public ClockTickEvent getClockTickEvent(){
		return new ClockTickEvent(uml_clock); 
	}
	
	/** Do not use if you do not know what are you doing **/
	public InstanceSpecification getUMLClock(){
		return uml_clock;
	}

	public int getPeriod() {
		Classifier uml_clocktype=uml_clock.getClassifiers().get(0);
		int period= (Integer)uml_clock.getClassifiers().get(0).getValue(UML2ModelHelper.getStereotype(uml_clocktype, "ClockType"), "period");
		return period;
	}

}
