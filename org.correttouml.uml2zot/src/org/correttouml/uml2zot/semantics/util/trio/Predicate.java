package org.correttouml.uml2zot.semantics.util.trio;


import java.util.HashSet;

import org.correttouml.uml2zot.semantics.util.bool.Atom;

/**
 * TRIO temporal logic predicate
 * @author motta
 */
public class Predicate implements Atom{

    public static HashSet<Predicate> instances=new HashSet<Predicate>();
    
    String predicatename;

    /**
     * Creates the predicate without setting the actual name
     * This has been done for state diagrams in particular
     * where the predicates of the states should have the prefix
     * of the object involved
     */
    public Predicate(){
      // since the predicate name is necessary to compute the hash value of the
      // object, this statement cannot be executed in this constructor, but only
      // when the predicate name is set (hence in method setPredicateName)
        // this.instances.add(this);
    }

    /**
     * Creates the predicate and sets the name
     * @param name
     * the name of the predicate
     */
    public Predicate(String predicatename){
        this.predicatename=predicatename;
        instances.add(this);
    }

    /**
     * Sets the name of the predicate
     * @param name
     * The name of the predicate
     */
    public void setPredicateName(String predicatename){
        this.predicatename=predicatename;
        instances.add(this);
    }

    /**
     * Returns the name of the predicate
     * @return
     * the name of the predicate
     */
    public String getPredicateName(){
        return predicatename;
    }

    public Predicate getStartPredicate(){
    	return new Predicate(getPredicateName()+"_Start");
    }
    
    public Predicate getEndPredicate(){
    	return new Predicate(getPredicateName()+"_End");
    }

    public Predicate getSkipPredicate(){
    	return new Predicate(getPredicateName()+"_Skip");
    }
    
    public Predicate getStopPredicate(){
    	return new Predicate(getPredicateName()+"_Stop");
    }
    
    @Override
    public String toString() {
    	String s;
//        if (predicatename.contains("_Start_Start"))////####del me
//        	s= "ss";
    	return "(-P- " +predicatename+ ")";
    }
    
    public boolean equals(Object o){
        if(o instanceof Predicate){
            return ((Predicate)o).predicatename.toUpperCase().equals(predicatename.toUpperCase());
        }
        return false;
    }    

    public int hashCode(){
      try {
		return this.predicatename.toUpperCase().hashCode();
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
      return 0;
    }
}
