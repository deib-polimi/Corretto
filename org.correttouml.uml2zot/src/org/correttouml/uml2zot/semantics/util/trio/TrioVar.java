package org.correttouml.uml2zot.semantics.util.trio;

import java.util.HashSet;

import org.correttouml.uml.diagrams.expressions.PrimitiveType;
import org.correttouml.uml2zot.semantics.util.bool.Atom;


public class TrioVar implements Atom{

	public static HashSet<TrioVar> instances=new HashSet<TrioVar>();
    String varname;
    PrimitiveType type;

    public TrioVar(String varname, PrimitiveType type){
        this.varname=varname;
        this.type=type;
        instances.add(this);
    }

    public PrimitiveType getType() {
		return type;
	}
    
	public String getVariableName() {
		return varname;
	}

	@Override
    public String toString() {
        return "(-V- " +varname+ ")";
    }

	public boolean equals(Object object){
		if(!(object instanceof TrioVar))return false;
		TrioVar other=(TrioVar)object;
		return this.getVariableName().equals(other.getVariableName());	
	}

	public int hashCode(){
		return this.getVariableName().hashCode();
	}
	
}
