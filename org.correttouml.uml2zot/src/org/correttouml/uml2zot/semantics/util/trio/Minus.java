package org.correttouml.uml2zot.semantics.util.trio;

import org.correttouml.uml2zot.semantics.util.bool.*;

public class Minus implements BooleanFormulae{

	BooleanFormulae a;
	BooleanFormulae b;

    public Minus(BooleanFormulae a, BooleanFormulae b) {
        this.a=a;
        this.b=b;
    }

    @Override
    public String toString() {
        return "([-] "+a+" "+b+")";
    }
}
