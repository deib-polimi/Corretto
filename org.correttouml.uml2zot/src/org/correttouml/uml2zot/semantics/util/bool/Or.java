/*
 * Author: Alfredo Motta
 * Mail: motta@elet.polimi.it
 * Website: http://www.alfredo.motta.name
 */
package org.correttouml.uml2zot.semantics.util.bool;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;

import org.correttouml.uml2zot.semantics.util.trio.Predicate;

public class Or implements BooleanFormulae{
    ArrayList<BooleanFormulae> f = new ArrayList<BooleanFormulae>();

    public Or() {
    }
    
    public Or(ArrayList<BooleanFormulae> fList) {
        f.addAll(fList);
    }
    
    public Or(BooleanFormulae... fList) {
        f.addAll(Arrays.asList(fList));
    }
    
    public Or(Collection<Predicate> pList) {
        for(Predicate p : pList)
        	f.add(p);
    }
    
    public void addFormulae(BooleanFormulae fIn) {
        f.add(fIn);
    }

    public int size() {
        return f.size();
    }

    @Override
    public String toString() {
        if (f.isEmpty()) {
            return "";
        }
        if (f.size() == 1) {
            return f.get(0).toString();
        }
        String s = "(|| ";
        for (int i = 0; i < f.size(); i++) {
            s = s + " " + f.get(i).toString();
        }
        s = s + ")";
        return s;
    }
    
}
