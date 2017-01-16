package org.correttouml.uml2zot.semantics.activity;

import org.correttouml.uml.diagrams.activity.OpaqueActionNode;
import org.correttouml.uml.diagrams.activitydiagram.AD;
import org.correttouml.uml2zot.semantics.statediagram.actions.SAction;
import org.correttouml.uml2zot.semantics.statediagram.actions.SActionFactory;
import org.correttouml.uml2zot.semantics.util.bool.Iff;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;

/**
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class SOpaqueActionNode {

	private OpaqueActionNode mades_node;
	private String ad_name;
	private AD ad;
	public SOpaqueActionNode(OpaqueActionNode n, AD ad) {
		mades_node = n;
		this.ad = ad;
		ad_name = ad.getName();
	}
	
	public Predicate getPredicate(){
		return new Predicate(ad_name + "_" + "OPAC" + mades_node.getUMLId());
	}
	
	public String getSemantics(){
		String sem = "";
		SAction sAction = SActionFactory.getInstance(mades_node.getAction(ad.getObject()));
		sem += new Iff(getPredicate(), sAction.getPredicate(ad.getObject())) + "\n";
        if(sAction.getSemantics(ad, ad.getObject())!=null)
        	sem += sAction.getSemantics(ad, ad.getObject())+"\n";
		return sem;
	}
	
}
