package org.correttouml.uml2zot.semantics.util.fun;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/

public class SomFIn_i implements BooleanFormulae{
	BooleanFormulae f1;
	BooleanFormulae f2;

	public SomFIn_i() {
	}
	
	public SomFIn_i(BooleanFormulae f1, BooleanFormulae f2) {
		this.f1 = f1;
		this.f2 = f2;
	}

	@Override
	public String toString() {
		return "(SomFIn_i " + f1 + " " + f2 + ")";
	}
	
	// // (defun SomFIn_i (f1 f2 )
    // // !!until _ii(!!ev1, enclosingCF_End)
	// // )
	public String getDefun() {
		return "(defun SomFIn_i (f1 f2)\n" +
				"\t(!! (until_ii (!! f1) f2))\n" +
				")";
	}
}
