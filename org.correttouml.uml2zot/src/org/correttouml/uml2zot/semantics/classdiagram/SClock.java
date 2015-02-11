package org.correttouml.uml2zot.semantics.classdiagram;


import org.correttouml.uml.diagrams.classdiagram.Clock;
import org.correttouml.uml2zot.semantics.SMadesModel;
import org.correttouml.uml2zot.semantics.events.SClockTickEvent;
import org.correttouml.uml2zot.semantics.util.bool.Iff;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.bool.Or;
import org.correttouml.uml2zot.semantics.util.trio.Lasted;
import org.correttouml.uml2zot.semantics.util.trio.Past;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SClock {

	private Clock mades_clock;

	public SClock(Clock c) {
		this.mades_clock=c;
	}

	public String getSemantics() {
        String s = "";
        Predicate cktick_predicate=new SClockTickEvent(mades_clock.getClockTickEvent()).getPredicate();
        
        s = s + new Iff( new Or(new Past(SMadesModel.SYSTEMSTART,1), new Lasted(new Not(cktick_predicate), mades_clock.getPeriod() - 1)) , cktick_predicate);
        
        //TODO: Semantics of clocks connected to classes
        
        return s;
	}

}
