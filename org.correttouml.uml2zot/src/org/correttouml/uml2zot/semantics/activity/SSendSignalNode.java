package org.correttouml.uml2zot.semantics.activity;

import org.correttouml.uml.diagrams.activity.Activity;
import org.correttouml.uml.diagrams.activity.SendSignalNode;
import org.correttouml.uml2zot.semantics.statediagram.actions.SAction;
import org.correttouml.uml2zot.semantics.statediagram.actions.SActionFactory;
import org.correttouml.uml2zot.semantics.util.bool.Iff;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;

/**
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class SSendSignalNode {

	private SendSignalNode mades_node;
	private String mades_activity_name;
	private Activity mades_activity;
	public SSendSignalNode(SendSignalNode n, Activity mades_activity) {
		mades_node = n;
		this.mades_activity = mades_activity;
		mades_activity_name = mades_activity.getName();
	}
	
	public Predicate getPredicate(){
		return new Predicate(mades_activity_name + "_" + "SENDSIG" + mades_node.getUMLId());
	}
	
	public String getSemantics(){
		String sem = "";
		SAction sAction = SActionFactory.getInstance(mades_node.getAction());
		sem += new Iff(getPredicate(), sAction.getPredicate()) + "\n";
        if(sAction.getSemantics(mades_activity)!=null)
        	sem += sAction.getSemantics(mades_activity)+"\n";
		return sem;
	}
	
}
