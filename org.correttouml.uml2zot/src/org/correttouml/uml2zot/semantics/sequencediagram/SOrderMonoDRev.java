
package org.correttouml.uml2zot.semantics.sequencediagram;

import java.util.ArrayList;
import org.correttouml.uml2zot.semantics.util.bool.*;
import org.correttouml.uml2zot.semantics.util.fun.*;
import org.correttouml.uml2zot.semantics.util.trio.*;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/

public class SOrderMonoDRev implements BooleanFormulae{
	//[documentation]: \Dropbox\SharePolimi\Documentation\Sequence Diagram\Combined_Fragment\Modular_Semantics\[order].docx
	BooleanFormulae f1; //ev1 (which can be more complex than atomic event(m1_Start), like (m1_Start && SDX_CF_X_Op1_Start))
    BooleanFormulae f2; //ev2 (similar to ev1)
    BooleanFormulae guard; //guard is checked at the time instant that ev1 happens.
    BooleanFormulae exception; //if ev1 happens it has to be followed by ev2 and if ev2 happens it has to be preceded by ev1 except we have exception between them.  
    Boolean isConcurrent; //It can be true or not, if so we may have ev2 at the same moment as ev1 happens, if not they must be separated at least by one time instant.

    public SOrderMonoDRev(BooleanFormulae f1, BooleanFormulae f2, BooleanFormulae guard, BooleanFormulae exception, Boolean isConcurrent){
        this.f1=f1;
        this.f2=f2;
        this.guard = guard;
        this.exception = exception;
        this.isConcurrent = isConcurrent;
    }

    public SOrderMonoDRev(BooleanFormulae f1, BooleanFormulae f2, BooleanFormulae exception, Boolean isConcurrent){
        this.f1=f1;
        this.f2=f2;
        this.exception = exception;
        this.isConcurrent = isConcurrent;
    }
    
    /*
    		f2 => since_ei((!!f2 && !!exception), (f1 && Guard))
    		if (!! isConcurrent)
    		    (f1 && Guard) => !!f2
    */

    @Override
	public String toString() {
//    	String s = "";
//    	for (BooleanFormulae f: getFormulae()) {
//    		s += f.toString() + "\n";
//    	}
//    	return s;
    	return getFun().toString();
	}
	
    public BooleanFormulae getFormula() {
    	// return conjunction of set of formulae
		return new And(getFun());
	}
    
    public BooleanFormulae getFun() {
    	if (guard == null) {
    		if (isConcurrent)
    			return new OrderConMonoDRev(f1, f2, exception);
    		else
    			return new OrdernoConMonoDRev(f1, f2, exception);
    	}else {
    		if (isConcurrent)
    			return new OrderGConMonoDRev(f1, f2, guard, exception);
    		else
    			return new OrderGnoConMonoDRev(f1, f2, guard, exception);
    	}
    }
    
    /**
	 * @deprecated use {@link #getFun()} instead.  
	 */
    @Deprecated
    public ArrayList<BooleanFormulae> getFormulae() {
    	// return set of formulae
		ArrayList<BooleanFormulae> f = new ArrayList<BooleanFormulae>();
		if (guard != null) {
			f.add((new Implies(new And(f1, guard), new Or(new Until_ei(new And(new Not(f1), new Not(f2)), exception), new Until_ei(new And(new Not(f1), new Not(exception)), f2)))));
			f.add(new Implies(f2, new Since_ei(new And(new Not(f2), new Not(exception)), new And(f1, guard))));
			if (!isConcurrent)
				f.add(new Implies(new And(f1, guard), new Not(f2)));
		} else {
			f.add(new Implies(f1, new Or(new Until_ei(new And(new Not(f1), new Not(f2)), exception), new Until_ei(new And(new Not(f1), new Not(exception)), f2))));
			f.add(new Implies(f2, new Since_ei(new And(new Not(f2), new Not(exception)), f1)));
			if (!isConcurrent)
				f.add(new Implies(f1, new Not(f2)));
		}
		return f;
	}
}
