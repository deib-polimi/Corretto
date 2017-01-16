package org.correttouml.uml2zot.semantics.util.trio;

import java.util.HashSet;
import org.correttouml.uml2zot.semantics.util.bool.Atom;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/

public class TrioConstant implements Atom{

	public static HashSet<TrioConstant> instances=new HashSet<TrioConstant>();
    String constantname;
    int value;

    public TrioConstant(String constantname, int value){
        this.constantname = constantname;
        this.value = value;
        instances.add(this);
    }

    public int getValue() {
		return value;
	}
    
	public String getConstantName() {
		return constantname;
	}

	@Override
    public String toString() {
        return constantname;
    }

	@Override
	public boolean equals(Object object){
		if(!(object instanceof TrioConstant))return false;
		TrioConstant other=(TrioConstant)object;
		return this.getConstantName().equals(other.getConstantName());	
	}

	@Override
	public int hashCode(){
		return this.getConstantName().hashCode();
	}
	
}
