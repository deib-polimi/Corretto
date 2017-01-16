package org.correttouml.uml2zot.semantics.util.trio;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/
public class LastTime_ii implements BooleanFormulae {

    BooleanFormulae f;
    int t;

    public LastTime_ii(BooleanFormulae f, int t) {
        this.f = f;
        this.t = t;
    }

    @Override
    public String toString() {
        return "(Lasttime_ii " + f + " " + t + ")";
    }
}