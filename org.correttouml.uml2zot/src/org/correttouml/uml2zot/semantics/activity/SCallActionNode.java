package org.correttouml.uml2zot.semantics.activity;

import java.util.List;

import org.correttouml.uml.diagrams.activity.CallActionNode;
import org.correttouml.uml.diagrams.activitydiagram.AD;
import org.correttouml.uml.diagrams.classdiagram.OperationParameter;
import org.correttouml.uml.diagrams.expressions.Variable;
import org.correttouml.uml.diagrams.expressions.VariableFactory;
import org.correttouml.uml.diagrams.statediagram.actions.CallAction;
import org.correttouml.uml2zot.semantics.classdiagram.SOperationParameter;
import org.correttouml.uml2zot.semantics.expressions.SVariableFactory;
import org.correttouml.uml2zot.semantics.statediagram.actions.SAction;
import org.correttouml.uml2zot.semantics.statediagram.actions.SActionFactory;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Iff;
import org.correttouml.uml2zot.semantics.util.bool.Implies;
import org.correttouml.uml2zot.semantics.util.trio.EQ;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;

/**
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class SCallActionNode {

	private CallActionNode mades_node;
	private String ad_name;
	private AD ad;
	public SCallActionNode(CallActionNode n, AD ad) {
		mades_node = n;
		this.ad = ad;
		ad_name = ad.getName();
	}
	
	public Predicate getPredicate(){
		return new Predicate(ad_name + mades_node.getName() + mades_node.getUMLId() + "_CALL");
	}
	
	public String getSemantics(){
		String sem = "";
		CallAction callAction = (CallAction) mades_node.getAction(ad.getObject());
		SAction sAction = SActionFactory.getInstance(mades_node.getAction(ad.getObject()));
		sem += new Iff(getPredicate(), sAction.getPredicate(ad.getObject())).toString() + "\n";
		//<ObjectFlow>
		String pinnedVariableName = "";
		for (OperationParameter opp: getCallActionNodeParameters()){
			pinnedVariableName = getInputVariableName(opp.getName());
			if (! pinnedVariableName.equals("")){
				Variable pinnedVariable = VariableFactory.getInstance(pinnedVariableName, ad.getObject(), ad);
				BooleanFormulae pinnedVariableBF=SVariableFactory.getInstance(pinnedVariable).getPredicate(ad.getObject());
				sem += new Implies(getPredicate(), new EQ(new SOperationParameter(opp).getPredicate(callAction.getObject()), pinnedVariableBF)) + "\n";
			}
		}
		//</ObjectFlow>
		return sem;
	}
	
	public List<OperationParameter> getCallActionNodeParameters(){
		return mades_node.getCallActionNodeParameters();
	}

	public String getInputVariableName(String parameterName){
		return mades_node.getInputVariableName(parameterName);
	}
	
}
