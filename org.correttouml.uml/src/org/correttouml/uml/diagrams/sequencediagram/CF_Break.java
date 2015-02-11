package org.correttouml.uml.diagrams.sequencediagram;


import org.correttouml.uml.diagrams.events.Event;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/
public class CF_Break extends org.correttouml.uml.diagrams.sequencediagram.CombinedFragment implements InteractionFragment, Event, CombinedFragmentItf {

	public org.eclipse.uml2.uml.CombinedFragment uml_cf_break;
	
	public CF_Break(org.eclipse.uml2.uml.CombinedFragment uml_cf_break) {
		super(uml_cf_break);
		this.uml_cf_break = uml_cf_break;
	}

	public int getMAXValue() {
		if (uml_cf_break.getOperands().get(0).getGuard() != null && uml_cf_break.getOperands().get(0).getGuard().getMaxint() != null)
			return uml_cf_break.getOperands().get(0).getGuard().getMaxint().integerValue();
		return 1;// Default value for JumpLength is 1. As it always is 1 in OMG specification.
	}
	
}