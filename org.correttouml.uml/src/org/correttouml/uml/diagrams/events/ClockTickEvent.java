package org.correttouml.uml.diagrams.events;


import org.correttouml.uml.diagrams.classdiagram.Clock;
import org.eclipse.uml2.uml.InstanceSpecification;

public class ClockTickEvent implements Event{

	private InstanceSpecification uml_clock;

	public ClockTickEvent(InstanceSpecification uml_clock) {
		this.uml_clock=uml_clock;
	}

	public Clock getClock() {
		return new Clock(uml_clock);
	}

}
