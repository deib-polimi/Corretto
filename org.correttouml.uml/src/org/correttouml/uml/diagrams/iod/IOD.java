package org.correttouml.uml.diagrams.iod;


import java.util.HashSet;
import java.util.Set;

import org.correttouml.uml.diagrams.activity.InterruptibleRegion;
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
public class IOD extends org.correttouml.uml.diagrams.activity.Activity implements ExpressionContext{

	public IOD(Activity uml_activity) {
		super(uml_activity, null);
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
	
}
