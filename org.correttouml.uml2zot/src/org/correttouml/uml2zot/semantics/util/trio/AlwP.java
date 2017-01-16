package org.correttouml.uml2zot.semantics.util.trio;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

/*
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class AlwP implements BooleanFormulae {

    BooleanFormulae f;

    public AlwP(BooleanFormulae f) {
        this.f = f;
    }

    @Override
    public String toString() {
        return "(alwP " + f + ")";
    }
}
