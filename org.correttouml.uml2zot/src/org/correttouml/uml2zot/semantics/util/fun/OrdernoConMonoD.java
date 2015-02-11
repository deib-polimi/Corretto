package org.correttouml.uml2zot.semantics.util.fun;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/

public class OrdernoConMonoD implements BooleanFormulae{
	BooleanFormulae f1;
	BooleanFormulae f2;
	BooleanFormulae exception;
	
	public OrdernoConMonoD() {
	}
	
	public OrdernoConMonoD(BooleanFormulae f1, BooleanFormulae f2, BooleanFormulae exception) {
		this.f1 = f1;
		this.f2 = f2;
		this.exception = exception;
	}

	@Override
	public String toString() {
		return "(OrdernoConMonoD " + f1 + " " + f2 + " " + exception + ")";
	}
	
	// // (defun ordernocon (f1 f2 exception); !!isconcurrent
	// // f1 => (until_ei((!!f1 && !!f2), exception) || until_ei((!!f1 && !!exception), f2))
	// // f1 => !!f2
	// // )

	public String getDefun() {
		return "(defun OrdernoConMonoD (f1 f2 exception)\n" +
				"(&&\n"+
//				"\t(-> f1 (|| (until_ei (&& (!! f1) (!! f2)) exception) (until_ei (&& (!! f1) (!! exception)) f2)))\n" +
"\t(-> f1 (|| (until_ei (&& (!! f1) (!! f2)) exception) (until_ei (&& (!! f1) (!! exception)) f2)))\n" +
				"\t(-> f1 (!! f2))\n" +
				"))";
	}
}
