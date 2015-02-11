package org.correttouml.uml2zot.semantics.util.trio;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

public class EQ implements BooleanFormulae{

    BooleanFormulae a;
    BooleanFormulae b;
    
    public EQ(BooleanFormulae a, BooleanFormulae b){
        this.a=a;
        this.b=b;
    }
    
    public BooleanFormulae getLeftSide(){
        return a;
    }
    
    public BooleanFormulae getRightSide(){
        return b;
    }
    
    @Override
    public String toString() {
        return "([=] " + a + " " + b + ")";
    }
}