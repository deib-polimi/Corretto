package org.correttouml.uml2zot.semantics.util.trio;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

public class LTE implements BooleanFormulae {

    BooleanFormulae a;
    BooleanFormulae b;
    
    public LTE(BooleanFormulae a, BooleanFormulae b){
        this.a=a;
        this.b=b;
    }  
    
    @Override
    public String toString() {
        return "([<=] " + a + " " + b + ")";
    }
}
