package org.correttouml.uml2zot.semantics.util.trio;

import org.correttouml.uml.diagrams.expressions.PrimitiveType;
import org.correttouml.uml2zot.semantics.util.bool.Atom;

public class Constant implements Atom{

	private int constantInt;
	private float constantFloat;
	private boolean constantBool;
	private PrimitiveType type;
	
	public Constant(int constantInt){
		this.constantInt = constantInt;
		this.type = PrimitiveType.INTEGER;
	}
	
	public Constant(float constantFLoat){
		this.constantFloat = constantFLoat;
		this.type = PrimitiveType.REAL;
	}
	
	public Constant(boolean constantBool){
		this.constantBool = constantBool;
		this.type = PrimitiveType.BOOLEAN;
	}

	@Override
	public String toString(){
		if (type == PrimitiveType.INTEGER)
			return String.valueOf(constantInt);
		if (type == PrimitiveType.REAL)
			return String.valueOf(constantFloat);
		if (type == PrimitiveType.BOOLEAN)
			return String.valueOf(constantBool);
		return "";
	}
	
	public PrimitiveType getType(){
		return type;
	}
}
