/*
* Author: Alfredo Motta
* Mail: motta@elet.polimi.it
* Website: http://www.alfredo.motta.name
*/

package org.correttouml.uml2zot.semantics.util.trio;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

public class WithinP_ie implements BooleanFormulae{

    BooleanFormulae f;
    int t;

    public WithinP_ie(BooleanFormulae f, int t) {
        this.f = f;
        this.t = t;
    }

    @Override
    public String toString() {
       return "(withinp_ie " + f + " " + t + ")";
    }
}

