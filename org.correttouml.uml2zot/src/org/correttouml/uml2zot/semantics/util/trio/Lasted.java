/*
* Author: Alfredo Motta
* Mail: motta@elet.polimi.it
* Website: http://www.alfredo.motta.name
*/

package org.correttouml.uml2zot.semantics.util.trio;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

public class Lasted implements BooleanFormulae{

    BooleanFormulae f;
    int t;

    public Lasted(BooleanFormulae f, int t) {
        this.f = f;
        this.t = t;
    }

    @Override
    public String toString() {
        return "(lasted " + f + " " + t + ")";
    }

}
