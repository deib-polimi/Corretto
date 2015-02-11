package org.correttouml.uml2zot.semantics.util.fun;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/

public class OrderCon implements BooleanFormulae{
	BooleanFormulae f1;
	BooleanFormulae f2;
	BooleanFormulae exception;

	public OrderCon() {
	}
	
	public OrderCon(BooleanFormulae f1, BooleanFormulae f2, BooleanFormulae exception) {
		this.f1 = f1;
		this.f2 = f2;
		this.exception = exception;
	}

	@Override
	public String toString() {
		return "(OrderCon " + f1 + " " + f2 + " " + exception + ")";
	}
	
	// // (defun ordercon (f1 f2 exception); isconcurrent
	// // f1 => (until_ei((!!f1 && !!f2), exception) || until_ei((!!f1 && !!exception), f2))
	// // f2 => since_ei((!!f2 && !!exception), f1)
	// // )
	public String getDefun() {
		return "(defun OrderCon (f1 f2 exception)\n" +
				"(&&\n"+
//				"\t(-> f1 (|| (until_ei (&& (!! f1) (!! f2)) exception) (until_ei (&& (!! f1) (!! exception)) f2)))\n" + version of order before break
"\t(-> f1 (|| (until_ei (&& (!! f1) (!! f2)) exception) (until_ei (&& (!! f1) (!! exception)) f2)))\n" +
				"\t(-> f2 (since_ei (&& (!! f2) (!! exception)) f1))\n" +
				"))";
	}
}
