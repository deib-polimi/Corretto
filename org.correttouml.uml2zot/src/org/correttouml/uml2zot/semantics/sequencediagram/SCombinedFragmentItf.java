package org.correttouml.uml2zot.semantics.sequencediagram;

import java.util.ArrayList;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

public interface SCombinedFragmentItf extends SInteractionFragment{
	public ArrayList<BooleanFormulae> getSemantics();
}
