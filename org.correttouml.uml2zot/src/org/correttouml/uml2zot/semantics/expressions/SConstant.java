package org.correttouml.uml2zot.semantics.expressions;

import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.trio.Constant;

public class SConstant implements BooleanFormulae{

	private Constant mades_constant;

	public SConstant(Constant constant){
		this.mades_constant = constant;
	}
	
	@Override
	public String toString(){
		return mades_constant.toString();
	}
	
}
