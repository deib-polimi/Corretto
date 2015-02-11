package org.correttouml.uml2zot.semantics.util.trio;

/*
* Author: Alfredo Motta
* Mail: motta@elet.polimi.it
* Website: http://www.alfredo.motta.name
*/

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

public class Lasted_ie implements BooleanFormulae{

    BooleanFormulae f;
    int t;

    public Lasted_ie(BooleanFormulae f, int t) {
        this.f = f;
        this.t = t;
    }

    @Override
    public String toString() {
        return "(lasted_ie " + f + " " + t + ")";
    }

}
