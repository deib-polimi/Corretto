package org.correttouml.uml2zot.semantics.util.trio;

import org.correttouml.uml2zot.semantics.util.bool.Atom;

public class Constant implements Atom{

	int value;
	
	//TODO: This must include the type
	public Constant(int value){
		this.value=value;
	}

	public String toString(){
		return value+"";
	}
}
