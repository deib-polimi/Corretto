package org.correttouml.uml.diagrams.activity;

import java.util.List;

import org.correttouml.uml.MadesModel;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.classdiagram.Operation;
import org.correttouml.uml.diagrams.classdiagram.OperationParameter;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.diagrams.statediagram.actions.Action;
import org.correttouml.uml.diagrams.statediagram.actions.ActionFactory;
import org.correttouml.uml.helpers.StDTransitionsParser;
import org.correttouml.uml2zot.UML2Zot;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.uml2.uml.CallOperationAction;
import org.eclipse.uml2.uml.InputPin;

/**
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class CallActionNode extends Node implements ExpressionContext {
	private ExpressionContext context;
	
	public CallActionNode(org.eclipse.uml2.uml.CallOperationAction uml_activitynode) {
		this.uml_activitynode = uml_activitynode;
	}

//	public Action getAction(Object object){
//		return new CallAction(context, new Object ((InstanceSpecification) ((CallOperationAction) uml_activitynode).getOperation().getOwner()), new Operation(((CallOperationAction) uml_activitynode).getOperation()));
//	}
	
	public Operation getOperation() {
		return new Operation(((CallOperationAction) uml_activitynode).getOperation());
	}
	
	public List<OperationParameter> getCallActionNodeParameters(){
		return getOperation().getParameters();
	}

	public Action getAction(Object object){		
		StDTransitionsParser p= new StDTransitionsParser();
		p.parse("/" + uml_activitynode.getName());
		return ActionFactory.getInstance(p.getAction(), this, object).get(0);		
	}
	
//	public String getTargetObjectName(){
//		((CallAction) getAction(null)).getObject()
//		return "";
//	}
	
	public String getName(){
		return uml_activitynode.getName();
	}
	
	public String getInputVariableName(String parameterName){
		for (InputPin ip: ((CallOperationAction) uml_activitynode).getArguments()){
			if (ip.getName().equals(parameterName) && ip.getIncomings().size() > 0)
				return ((org.eclipse.uml2.uml.ActivityNode) ip.getIncomings().get(0).getSource().getOwner()).getName();
		}
		return "";
	}
	
	@Override
	public String getUMLId() {
		String id=((XMLResource) this.uml_activitynode.eResource()).getID(this.uml_activitynode);
		return UML2Zot.Utility.umlIDtoPrdID(id);
	}

	@Override
	public MadesModel getMadesModel() {
		return null;
	}

}
