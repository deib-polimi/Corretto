package org.correttouml.uml2zot.semantics.util.fun;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/

public class OrderGnoConMonoD implements BooleanFormulae{
	BooleanFormulae f1;
	BooleanFormulae f2;
	BooleanFormulae guard;
	BooleanFormulae exception;
	
	public OrderGnoConMonoD() {
	}
	
	public OrderGnoConMonoD(BooleanFormulae f1, BooleanFormulae f2, BooleanFormulae guard, BooleanFormulae exception) {
		this.f1 = f1;
		this.f2 = f2;
		this.guard = guard;
		this.exception = exception;
	}

	@Override
	public String toString() {
		return "(OrderGnoConMonoD " + f1 + " " + f2 + " " + guard + " " + exception + ")";
	}
	
	// // (defun ordergnocon (f1 f2 guard exception); !!isconcurrent
	// // (f1 && guard) => (until_ei((!!f1 && !!f2), exception) || until_ei((!!f1 && !!exception), f2))
    // // (f1 && guard) => !!f2
	// // )
	public String getDefun() {
		return "(defun OrderGnoConMonoD (f1 f2 guard exception)\n" +
				"(&&\n"+
//				"\t(-> (&& f1 guard) (|| (until_ei (&& (!! f1) (!! f2)) exception) (until_ei (&& (!! f1) (!! exception)) f2)))\n" +
				"\t(-> (&& f1 guard) (|| (until_ei (&& (!! f1) (!! f2)) exception) (until_ei (&& (!! f1) (!! exception)) f2)))\n" +
				"\t(-> (&& f1 guard) (!! f2))\n" +
				"))";
	}
}