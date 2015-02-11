package org.correttouml.uml2zot.zotutil;


import java.util.List;

import org.apache.log4j.Logger;
import org.correttouml.uml2zot.semantics.util.bool.And;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.trio.Futr;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;

/**
 * This class is able to take a list of 
 * time instants and build a property out of it
 * @author motta
 *
 */
public class ReachabilityPropertyBuilder {

	@SuppressWarnings("unused")
	private static final Logger LOGGER = Logger.getLogger(ReachabilityPropertyBuilder.class); 
	
	public static BooleanFormulae buildProperty(List<TimeInstant> instants){
		And andf=new And();
		int i=0;
		for(TimeInstant t: instants){
			
			And andpredcurrt=new And();
			for(Predicate p: t.getPredicates()){
				andpredcurrt.addFormulae(p);
			}
			
			if(i!=0) andf.addFormulae(new Futr(andpredcurrt, i));
			else andf.addFormulae(andpredcurrt);
			i++;
		}
		return new Not(andf);
	}

	
}
