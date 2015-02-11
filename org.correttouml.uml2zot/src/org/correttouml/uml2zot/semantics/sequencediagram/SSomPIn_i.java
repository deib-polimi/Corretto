package org.correttouml.uml2zot.semantics.sequencediagram;

import org.correttouml.uml2zot.semantics.util.bool.*;
import org.correttouml.uml2zot.semantics.util.trio.*;
import org.correttouml.uml2zot.semantics.util.fun.*;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/

public class SSomPIn_i implements BooleanFormulae {
	//[documentation]: \Dropbox\SharePolimi\Documentation\Sequence Diagram\Combined_Fragment\Modular_Semantics\[SomPIn_i].docx
	private BooleanFormulae ev1;
    private Predicate enclosingFragment;  

    public SSomPIn_i(BooleanFormulae ev1, Predicate enclosingFragment){
        this.ev1 = ev1;
        this.enclosingFragment= enclosingFragment;
    }
    
    @Override
	public String toString() {
    	return getFun().toString();
	}

    public BooleanFormulae getFun() {
    	return new SomPIn_i(ev1, enclosingFragment.getStartPredicate());
    }
	
    // // !!since_ii(!!ev1, enclosingCF_Start)    
//	public BooleanFormulae getFormula() {
//		return new Not(new Since_ii(new Not(ev1), enclosingFragment.getPredicateStart()));
//	}
}
