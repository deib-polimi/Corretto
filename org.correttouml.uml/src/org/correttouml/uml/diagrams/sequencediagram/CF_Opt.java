package org.correttouml.uml.diagrams.sequencediagram;


import org.correttouml.uml.diagrams.events.Event;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/
public class CF_Opt extends org.correttouml.uml.diagrams.sequencediagram.CombinedFragment implements InteractionFragment, Event, CombinedFragmentItf {

	public org.eclipse.uml2.uml.CombinedFragment uml_cf_opt;
	
	public CF_Opt(org.eclipse.uml2.uml.CombinedFragment uml_cf_opt) {
		super(uml_cf_opt);
		this.uml_cf_opt = uml_cf_opt;
	}

}