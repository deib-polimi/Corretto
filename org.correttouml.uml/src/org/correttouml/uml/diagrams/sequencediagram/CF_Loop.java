package org.correttouml.uml.diagrams.sequencediagram;


import org.correttouml.uml.diagrams.events.Event;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/
public class CF_Loop extends org.correttouml.uml.diagrams.sequencediagram.CombinedFragment implements InteractionFragment, Event, CombinedFragmentItf {

	public org.eclipse.uml2.uml.CombinedFragment uml_cf_loop;
	
	public CF_Loop(org.eclipse.uml2.uml.CombinedFragment uml_cf_loop) {
		super(uml_cf_loop);
		this.uml_cf_loop = uml_cf_loop;
	}

	public int getMINValue() {
		return uml_cf_loop.getOperands().get(0).getGuard().getMinint().integerValue();
	}
	
	public int getMAXValue() {
		return uml_cf_loop.getOperands().get(0).getGuard().getMaxint().integerValue();
	}
	
	public String getMAXName() {
		return uml_cf_loop.getOperands().get(0).getGuard().getMaxint().getName();
	}
	
}