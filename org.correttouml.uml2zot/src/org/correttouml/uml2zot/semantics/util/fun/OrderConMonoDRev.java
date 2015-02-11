package org.correttouml.uml2zot.semantics.util.fun;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/

public class OrderConMonoDRev implements BooleanFormulae{
	BooleanFormulae f1;
	BooleanFormulae f2;
	BooleanFormulae exception;

	public OrderConMonoDRev() {
	}
	
	public OrderConMonoDRev(BooleanFormulae f1, BooleanFormulae f2, BooleanFormulae exception) {
		this.f1 = f1;
		this.f2 = f2;
		this.exception = exception;
	}

	@Override
	public String toString() {
		return "(OrderConMonoDRev " + f1 + " " + f2 + " " + exception + ")";
	}
	
	// // (defun orderconmonodrev (f1 f2 exception); isconcurrent
	// // f2 => since_ei((!!f2 && !!exception), f1)
	// // )
	public String getDefun() {
		return "(defun OrderConMonoDRev (f1 f2 exception)\n" +
				"\t(-> f2 (since_ei (&& (!! f2) (!! exception)) f1))\n" +
				")";
	}
}
