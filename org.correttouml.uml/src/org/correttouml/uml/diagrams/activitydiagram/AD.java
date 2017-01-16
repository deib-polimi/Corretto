package org.correttouml.uml.diagrams.activitydiagram;


import java.util.HashSet;
import java.util.Set;

import org.correttouml.uml.diagrams.activity.CallActionNode;
import org.correttouml.uml.diagrams.activity.InterruptibleRegion;
import org.correttouml.uml.diagrams.activity.Node;
import org.correttouml.uml.diagrams.activity.OpaqueActionNode;
import org.correttouml.uml.diagrams.activity.SendSignalNode;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.diagrams.timeconstraints.TimeConstraint;
import org.correttouml.uml.helpers.BooleanExpressionsParser;
import org.correttouml.uml.helpers.UML2ModelHelper;
import org.eclipse.uml2.uml.Activity;
import org.eclipse.uml2.uml.ActivityGroup;
import org.eclipse.uml2.uml.Comment;
import org.eclipse.uml2.uml.InterruptibleActivityRegion;

/**
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class AD extends org.correttouml.uml.diagrams.activity.Activity implements ExpressionContext{
	
	public AD(Activity uml_activity, Object object) {
		super(uml_activity, object);
	}

	@Override
	public String getName() {
		return "OBJ" + this.object.getName() + super.getName();
	}
	
	public String getUMLName(){
		return super.getName();
	}
	
	@Override
	public Object getObject(){
		return this.object;
	}
	
	public void setObject(Object object){
		this.object = object;
	}
	
	public Set<OpaqueActionNode> getOpaqueActions(){
		Set<OpaqueActionNode> opAcs = new HashSet<OpaqueActionNode>();
		for (Node n: getNodes()){
			if (n instanceof OpaqueActionNode)
				opAcs.add((OpaqueActionNode) n);
		}
		return opAcs;
	}
	
	public Set<CallActionNode> getCallActionNodes(){
		Set<CallActionNode> cans = new HashSet<CallActionNode>();
		for (Node n: getNodes()){
			if (n instanceof CallActionNode)
				cans.add((CallActionNode) n);
		}
		return cans;
	}

	public Set<SendSignalNode> getSendSignalNodes(){
		Set<SendSignalNode> ssn = new HashSet<SendSignalNode>();
		for (Node n: getNodes()){
			if (n instanceof SendSignalNode)
				ssn.add((SendSignalNode) n);
		}
		return ssn;
	}

	public Set<TimeConstraint> getTimeConstraints() {
		Set<TimeConstraint> tcs=new HashSet<TimeConstraint>();
		
		for(Comment c: uml_activity.getOwnedComments()){
			if(UML2ModelHelper.hasStereotype(c, "TimeConstraint")){
				org.correttouml.grammars.booleanExpressions.Model m = BooleanExpressionsParser.parse(c.getBody());
				org.correttouml.grammars.booleanExpressions.TimeConstraint tc = m.getExpression().getLeftExpression().getLeftExpression().getBooleanTerm().getTimeConstraint();
				tcs.add(new TimeConstraint(tc, new org.correttouml.uml.Comment(c, this)));
			}
		}
		return tcs;
	}

	public Set<InterruptibleRegion> getInterruptibleRegions(){
		Set<InterruptibleRegion> regions=new HashSet<InterruptibleRegion>();
		for(ActivityGroup ag:this.uml_activity.getGroups()){
			if(ag instanceof InterruptibleActivityRegion) regions.add(new InterruptibleRegion((InterruptibleActivityRegion)ag, this));
		}
		return regions;
	}

	public int getNodeN(){
		return uml_activity.getNodes().size();
	}
}
