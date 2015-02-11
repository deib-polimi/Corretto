package org.correttouml.uml2zot.semantics.sequencediagram;


import java.util.Iterator;

import org.correttouml.uml.diagrams.sequencediagram.InteractionFragment;
import org.correttouml.uml.diagrams.sequencediagram.Lifeline;
import org.correttouml.uml.diagrams.sequencediagram.MessageEnd;
import org.correttouml.uml.diagrams.sequencediagram.MessageStart;
import org.correttouml.uml2zot.semantics.SMadesModel;
import org.correttouml.uml2zot.semantics.util.bool.Implies;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;

public class SLifeline {

	private Lifeline mades_lifeline;

	public SLifeline(Lifeline l) {
		this.mades_lifeline=l;
	}
	public String getSemantics(){
		return "";
	}
	
//	public String getSemantics() { //<###uncomment me>
//        String sem="";
//        sem=sem+SMadesModel.printSeparatorSmall("LIFELINE " + this.mades_lifeline.getName());
//        Predicate sd_stop=new SSequenceDiagram(this.mades_lifeline.getSequenceDiagram()).getPredicateStop();
//        Iterator<InteractionFragment> it=this.mades_lifeline.getEvents().iterator();
//        
//        
//        InteractionFragment prec_event=null;
//        Predicate prec_predicate=null;
//        if(it.hasNext()){
//        	prec_event=it.next();
//        	prec_predicate=SInteractionFragmentFactory.getInstance(prec_event).getPredicate();
//        }
//        while(it.hasNext()){
//        	InteractionFragment curr_event=it.next();
//        	Predicate curr_predicate=SInteractionFragmentFactory.getInstance(curr_event).getPredicate();
//        	
//        	                      
//            sem = sem + SSequenceDiagram.buildOrderingSemanticsLTEAxiom(prec_predicate, curr_predicate, sd_stop)+"\n";
//            sem = sem + SSequenceDiagram.buildOrderingSemanticsBackwardAxiom(prec_predicate, curr_predicate, sd_stop)+"\n";
//            
//            //Messages are always separated by one time instant, see below list of comments for details
//            if((prec_event instanceof MessageStart || prec_event instanceof MessageEnd) &&
//            		(curr_event instanceof MessageStart || curr_event instanceof MessageEnd)){
//            	sem = sem + new Implies(prec_predicate, new Not(curr_predicate)) + "\n";
//            }
//            
//            prec_predicate=curr_predicate;
//        }
//        return sem;
//	}
//	<###uncomment me>
	//msgstart, msgend, exoccstart, exoccend
	
	//msgstart
	//msgstart
	//LT
	
	//msgstart
	//msgend
	//LT
	
	//msgend
	//msgstart
	//LT
	
	//msgend
	//msgend
	//LT
	
	//msgstart
	//exoccstart
	//LTE
	
	//msgstart
	//exoccend
	//LTE
	
	//msgend
	//exoccstart
	//LTE
	
	//msgend
	//exoccend
	//LTE
	
	//exoccstart
	//msgstart
	//LTE
	
	//exoccstart
	//msgend
	//LTE
	
	//exoccstart
	//exoccstart
	//LTE
	
	//exoccstart
	//exoccend
	//LTE
	
	//exoccend
	//msgstart
	//LTE
	
	//exoccend
	//msgend
	//LTE
	
	//exoccend
	//exoccstart
	//LTE
	
	//exoccend
	//exoccend
	//LTE

}
