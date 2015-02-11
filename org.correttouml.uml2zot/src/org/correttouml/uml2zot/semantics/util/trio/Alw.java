package org.correttouml.uml2zot.semantics.util.trio;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

public class Alw implements BooleanFormulae{

    BooleanFormulae f;

    public Alw(BooleanFormulae f) {
        this.f = f;
    }

    @Override
    public String toString() {
        return "(alw " + f + ")";
    }
	
}
