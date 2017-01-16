package org.correttouml.uml2zot.semantics.util.trio;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

/*
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class Release implements BooleanFormulae {

    BooleanFormulae f1;
    BooleanFormulae f2;

    public Release(BooleanFormulae f1, BooleanFormulae f2) {
        this.f1 = f1;
        this.f2 = f2;
    }

    @Override
    public String toString() {
        return "(release " + f1 + " " + f2 + ")";
    }
}