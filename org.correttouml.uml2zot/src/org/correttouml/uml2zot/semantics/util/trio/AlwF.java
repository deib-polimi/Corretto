/*
 * Author: Alfredo Motta
 * Mail: motta@elet.polimi.it
 * Website: http://www.alfredo.motta.name
 */
package org.correttouml.uml2zot.semantics.util.trio;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

public class AlwF implements BooleanFormulae {

    BooleanFormulae f;

    public AlwF(BooleanFormulae f) {
        this.f = f;
    }

    @Override
    public String toString() {
        return "(alwf " + f + ")";
    }
}
