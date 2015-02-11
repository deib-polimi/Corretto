package org.correttouml.uml2zot.semantics.sequencediagram;

import org.correttouml.uml2zot.semantics.util.bool.*;
import org.correttouml.uml2zot.semantics.util.fun.*;
import org.correttouml.uml2zot.semantics.util.trio.*;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/

public class SSomFIn_i implements BooleanFormulae{
	//[documentation]: \Dropbox\SharePolimi\Documentation\Sequence Diagram\Combined_Fragment\Modular_Semantics\[SomFIn_i].docx
	private BooleanFormulae ev1;
    private Predicate enclosingFragment;
    

    public SSomFIn_i(BooleanFormulae ev1, Predicate enclosingFragment){
        this.ev1 = ev1;
        this.enclosingFragment= enclosingFragment;
    }
    
    @Override
	public String toString() {
    	return getFun().toString();
	}
    
	public BooleanFormulae getFun() {
    	return new SomFIn_i(ev1, enclosingFragment.getEndPredicate());
    }
	
    // // !!until _ii(!!ev1, enclosingCF_End)
//	public BooleanFormulae getFormula() {
//		return new Not(new Until_ii(new Not(ev1), enclosingFragment.getPredicateEnd()));
//	}
}
