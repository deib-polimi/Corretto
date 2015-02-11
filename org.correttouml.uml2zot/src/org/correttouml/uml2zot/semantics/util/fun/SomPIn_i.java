package org.correttouml.uml2zot.semantics.util.fun;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/

public class SomPIn_i implements BooleanFormulae{
	BooleanFormulae f1;
	BooleanFormulae f2;

	public SomPIn_i() {
	}
	
	public SomPIn_i(BooleanFormulae f1, BooleanFormulae f2) {
		this.f1 = f1;
		this.f2 = f2;
	}

	@Override
	public String toString() {
		return "(SomPIn_i " + f1 + " " + f2 + ")";
	}
	
	// // (defun SomPIn_i (f1 f2 )
	// // !!since_ii(!!f1, f2)  
	// // )
	public String getDefun() {
		return "(defun SomPIn_i (f1 f2)\n" +
				"\t(!! (since_ii (!! f1) f2))\n" +
				")";
	}
}
