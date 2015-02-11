package org.correttouml.uml2zot.semantics.util.trio;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/
public class Lasted_ii implements BooleanFormulae{

    BooleanFormulae f;
    int t;

    public Lasted_ii(BooleanFormulae f, int t) {
        this.f = f;
        this.t = t;
    }

    @Override
    public String toString() {
        return "(lasted_ii " + f + " " + t + ")";
    }

}
