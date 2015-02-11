package org.correttouml.uml2zot.semantics.util.fun;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/

public class Borders implements BooleanFormulae{
	BooleanFormulae f1;
	BooleanFormulae f1_Start;
	BooleanFormulae f1_End;
	BooleanFormulae exception;

	public Borders() {
	}
	
	public Borders(BooleanFormulae f1, BooleanFormulae f1_Start, BooleanFormulae f1_End, BooleanFormulae exception) {
		this.f1 = f1;
		this.f1_Start = f1_Start;
		this.f1_End = f1_End;
		this.exception = exception;
	}

	@Override
	public String toString() {
		return "(Borders " + f1 + " " + f1_Start + " "+f1_End+" " +exception+ ")";
	}
	
	// // (defun Borders (f1 f1_Start f1_End exception)
    // // f1 <=> (f1_Start || since_ei(!!(f1_End || exception), f1_Start))
	// // f1_Start => until_ei(!!f1_Start, (f1_End || exception))
	// // )
	public String getDefun() {
		return "(defun Borders (f1 f1_Start f1_End exception)\n" +
				"(&&\n"+
				"\t(<-> f1 (|| f1_Start (since_ei (!! (|| f1_End exception)) f1_Start)))\n" +
				"\t(-> f1_Start (until_ei (!! f1_Start) (|| f1_End exception)))\n" +
				"))";
	}
}
