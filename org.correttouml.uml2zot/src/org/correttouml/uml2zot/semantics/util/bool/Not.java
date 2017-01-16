/*
 * Author: Alfredo Motta
 * Mail: motta@elet.polimi.it
 * Website: http://www.alfredo.motta.name
 */
package org.correttouml.uml2zot.semantics.util.bool;

public class Not implements BooleanFormulae {

    BooleanFormulae f;

    public Not(BooleanFormulae f) {
        this.f = f;
    }

    @Override
    public String toString() {
       return "(!! " + f + ")";
    }
}
