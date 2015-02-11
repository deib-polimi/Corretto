package org.correttouml.uml.diagrams.sequencediagram;


import org.correttouml.uml.diagrams.events.Event;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/
public class CF_Par extends org.correttouml.uml.diagrams.sequencediagram.CombinedFragment implements InteractionFragment, Event, CombinedFragmentItf {

	public org.eclipse.uml2.uml.CombinedFragment uml_cf_par;
	
	public CF_Par(org.eclipse.uml2.uml.CombinedFragment uml_cf_par) {
		super(uml_cf_par);
		this.uml_cf_par = uml_cf_par;
	}

}