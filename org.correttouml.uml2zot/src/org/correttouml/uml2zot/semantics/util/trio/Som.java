package org.correttouml.uml2zot.semantics.util.trio;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

/*
 * @author Mohammad Mehdi Pourhashem Kallehbasti 
 */
public class Som implements BooleanFormulae {

    BooleanFormulae f;

    public Som(BooleanFormulae f) {
        this.f = f;
    }

    @Override
    public String toString() {
        return "(som " + f + ")";
    }
}
