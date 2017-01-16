package org.correttouml.uml2zot.semantics.activity;

import java.util.Iterator;

import org.correttouml.uml.diagrams.activity.Activity;
import org.correttouml.uml.diagrams.activity.ControlFlow;
import org.correttouml.uml.diagrams.activity.DecisionNode;
import org.correttouml.uml.diagrams.activity.Node;
import org.correttouml.uml.diagrams.activitydiagram.AD;
import org.correttouml.uml2zot.semantics.expressions.SBooleanExpression;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Iff;
import org.correttouml.uml2zot.semantics.util.bool.Implies;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.bool.Or;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SDecisionNode {

	private DecisionNode mades_dn;
	private Activity mades_activity;
	public SDecisionNode(DecisionNode n, Activity activity) {
		this.mades_dn = n;
		this.mades_activity = activity;
	}
	
	public String getSemantics(){
		String sem = "";
		Iterator<Node> it = this.mades_dn.getOutgoingNodes().iterator();
		
		while (it.hasNext()) {
			Node succ = it.next();
			ControlFlow firstcf=this.mades_activity.findControlFlow(this.mades_dn, succ);
			Predicate firstcf_predicate=new SControlFlow(firstcf, mades_activity).getPredicate();
			Predicate guard=null;
	    	if (firstcf.hasGuard()){
	    		BooleanFormulae guardFormulae=null;
		        guard = new SGuard(firstcf.getGuard()).getPredicate();
				guardFormulae = new SBooleanExpression(firstcf.getGuard().getBooleanExpression()).getSemantics(((AD) mades_activity).getObject(), mades_activity);
	            sem += new Implies(firstcf_predicate, guard) + "\n";
	            sem += new Iff(guardFormulae, guard) + "\n";
	        }
	        
			//Control flows are mutually exclusive
			Iterator<Node> it2 = this.mades_dn.getOutgoingNodes().iterator();
			while (it2.hasNext()) {
				Node other = it2.next();
				ControlFlow secondcf=this.mades_activity.findControlFlow(this.mades_dn, other);
				if(!firstcf.equals(secondcf)){
					Predicate othercf_predicate=new SControlFlow(secondcf, mades_activity).getPredicate();
					sem += new Implies(firstcf_predicate, new Not(othercf_predicate)).toString() + "\n";                        	
				}
			}
		}
		return sem;
	}
	public Or getOrControlflows(){
		Iterator<Node> it = this.mades_dn.getOutgoingNodes().iterator();
		Or or = new Or(); 
		while (it.hasNext()) {
			Node succ = it.next();
			ControlFlow firstcf=this.mades_activity.findControlFlow(this.mades_dn, succ);
			Predicate firstcf_predicate=new SControlFlow(firstcf, mades_activity).getPredicate();
			or.addFormulae(firstcf_predicate);
		}
		return or;
	}
}
