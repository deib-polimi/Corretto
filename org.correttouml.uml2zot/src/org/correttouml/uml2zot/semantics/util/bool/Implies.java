/*
* Author: Alfredo Motta
* Mail: motta@elet.polimi.it
* Website: http://www.alfredo.motta.name
*/

package org.correttouml.uml2zot.semantics.util.bool;


public class Implies implements BooleanFormulae{

    BooleanFormulae f1;
    BooleanFormulae f2;

    public Implies(BooleanFormulae f1, BooleanFormulae f2){
        this.f1=f1;
        this.f2=f2;
    }

    @Override
    public String toString(){
        return "(-> " + f1 + " " + f2 + ")";
    }

}
