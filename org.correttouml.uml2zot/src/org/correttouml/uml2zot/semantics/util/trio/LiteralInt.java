package org.correttouml.uml2zot.semantics.util.trio;


import java.util.HashSet;
import org.correttouml.uml2zot.semantics.util.bool.Atom;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/
public class LiteralInt implements Atom{
    int value;

    public LiteralInt(int value){
        this.value = value;
    }

    @Override
    public String toString() {
        return Integer.toString(value);
    }
    
}
