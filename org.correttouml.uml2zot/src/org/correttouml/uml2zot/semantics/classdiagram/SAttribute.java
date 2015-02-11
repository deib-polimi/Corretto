package org.correttouml.uml2zot.semantics.classdiagram;

import org.correttouml.uml.diagrams.classdiagram.Attribute;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.expressions.PrimitiveType;
import org.correttouml.uml.diagrams.statediagram.StateDiagram;
import org.correttouml.uml.diagrams.statediagram.Transition;
import org.correttouml.uml.diagrams.statediagram.actions.Action;
import org.correttouml.uml.diagrams.statediagram.actions.AssignmentAction;
import org.correttouml.uml2zot.semantics.expressions.SVariable;
import org.correttouml.uml2zot.semantics.statediagram.actions.SAssignmentAction;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Implies;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.bool.Or;
import org.correttouml.uml2zot.semantics.util.trio.Constant;
import org.correttouml.uml2zot.semantics.util.trio.EQ;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.correttouml.uml2zot.semantics.util.trio.TrioVar;
import org.correttouml.uml2zot.semantics.util.trio.Yesterday;


public class SAttribute implements SVariable {

	private Attribute mades_attribute;

	public SAttribute(Attribute attribute) {
		this.mades_attribute = attribute;
	}

	public BooleanFormulae getPredicate(Object... obj) {
		if (mades_attribute.getType() == PrimitiveType.INTEGER
				|| mades_attribute.getType() == PrimitiveType.REAL)
			return new TrioVar("OBJ" + obj[0].getName() + "ATTR"
					+ mades_attribute.getName(), mades_attribute.getType());
		else if (mades_attribute.getType() == PrimitiveType.BOOLEAN) {
			return new Predicate("OBJ" + obj[0].getName() + "ATTR"
					+ mades_attribute.getName());
		}
		// WARNING: dovrei avere una eccezione
		return null;
	}

	public String getSemantics(Object mades_obj) {
		String sem = "";
		if(!(this.mades_attribute.getType()==PrimitiveType.INTEGER 
				|| this.mades_attribute.getType()==PrimitiveType.BOOLEAN 
				|| this.mades_attribute.getType()==PrimitiveType.REAL)
			) return sem;
		
		Or orCond = new Or();
		// ACTIONS INVOKING THIS OPERATION
		for (StateDiagram std : mades_obj.getOwningClass().getStateDiagrams()) {
			for (Transition t : std.getTransitions()) {
				if (t.hasAction()) {
					Action act = t.getAction();
					if (act instanceof AssignmentAction) {
						AssignmentAction ass_act = (AssignmentAction) act;
						if (ass_act.getAssignment().getAssignment()
								.getVariable()
								.equals(mades_attribute.getName())) {
							orCond.addFormulae(new SAssignmentAction(ass_act)
									.getPredicate(mades_obj));
						}
					}
				}
			}
		}

		if (orCond.size() != 0){
			sem = sem
					+ new Implies(new Not(orCond), new EQ(
							this.getPredicate(mades_obj), new Yesterday(
									this.getPredicate(mades_obj)))) + "\n";
		}else{
			sem = sem+ new EQ(this.getPredicate(mades_obj), new Yesterday(this.getPredicate(mades_obj)));
		}
		return sem;
	}

	public String getInitializationSemantics(Object mades_obj) {
		String sem="";
		
		//TODO: Initialization for other variable types
		if(this.mades_attribute.getType()==PrimitiveType.INTEGER){
			sem=sem+new EQ(new SAttribute(this.mades_attribute).getPredicate(mades_obj),new Constant(mades_attribute.getDefaultValue().getValue()));
		}
		
		return sem;
	}

}
