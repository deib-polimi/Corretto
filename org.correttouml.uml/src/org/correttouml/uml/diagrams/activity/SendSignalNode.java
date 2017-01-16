package org.correttouml.uml.diagrams.activity;

import org.correttouml.uml.MadesModel;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.diagrams.statediagram.actions.Action;
import org.correttouml.uml.diagrams.statediagram.actions.ActionFactory;
import org.correttouml.uml.helpers.StDTransitionsParser;
import org.correttouml.uml2zot.UML2Zot;
import org.eclipse.emf.ecore.xmi.XMLResource;

/**
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class SendSignalNode extends Node implements ExpressionContext {

	public SendSignalNode(org.eclipse.uml2.uml.SendSignalAction uml_activitynode) {
		this.uml_activitynode = uml_activitynode;
	}

	public Action getAction(){
		StDTransitionsParser p= new StDTransitionsParser();
		p.parse("/" + uml_activitynode.getName());
		return ActionFactory.getInstance(p.getAction(), this, null).get(0);
	}
	
	public String getName(){
		return uml_activitynode.getName();
	}
	
	@Override
	public String getUMLId() {
		String id=((XMLResource) this.uml_activitynode.eResource()).getID(this.uml_activitynode);
		return UML2Zot.Utility.umlIDtoPrdID(id);
	}

	@Override
	public MadesModel getMadesModel() {
		return this.getUMLActivity().getMadesModel();
	}

}
