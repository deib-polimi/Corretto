package org.correttouml.uml2zot.semantics.timeconstraints;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;
import org.correttouml.uml.diagrams.timeconstraints.TimeConstraint;
import org.correttouml.uml2zot.semantics.events.SEventFactory;
import org.correttouml.uml2zot.semantics.sequencediagram.SSequenceDiagram;
import org.correttouml.uml2zot.semantics.util.bool.And;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Iff;
import org.correttouml.uml2zot.semantics.util.bool.Implies;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.trio.Lasted;
import org.correttouml.uml2zot.semantics.util.trio.Lasted_ie;
import org.correttouml.uml2zot.semantics.util.trio.Lasted_ii;
import org.correttouml.uml2zot.semantics.util.trio.LastTime_ii;
import org.correttouml.uml2zot.semantics.util.trio.Next;
import org.correttouml.uml2zot.semantics.util.trio.Past;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.correttouml.uml2zot.semantics.util.trio.Since;
import org.correttouml.uml2zot.semantics.util.trio.Since_ei;
import org.correttouml.uml2zot.semantics.util.trio.Since_ie;
import org.correttouml.uml2zot.semantics.util.trio.Since_ii;
import org.correttouml.uml2zot.semantics.util.trio.SomP;
import org.correttouml.uml2zot.semantics.util.trio.WithinP;
import org.correttouml.uml2zot.semantics.util.trio.WithinP_ii;


public class STimeConstraint{

	private TimeConstraint mades_ti;

	public STimeConstraint(TimeConstraint te){
		this.mades_ti=te;
	}

	public BooleanFormulae getSemantics(Object... object) {
		And sem=new And();
		Predicate ev1=null;
		Predicate ev2=null;

		if(!mades_ti.isEvent1Now()) ev1=SEventFactory.getInstance(mades_ti.getEvent1()).getPredicate(object);
		if(!mades_ti.isEvent2Now()) ev2=SEventFactory.getInstance(mades_ti.getEvent2()).getPredicate(object);
		int timeunits=mades_ti.getTimeUnits();
		// <if Time Constraint belongs to a Sequence Diagram>
		if(mades_ti.getContext() instanceof SequenceDiagram){
			SSequenceDiagram sd = new SSequenceDiagram((SequenceDiagram) mades_ti.getContext());
			Predicate sd_Predicate = sd.getPredicate();
			Predicate sd_Start_Predicate = sd.getPredicate().getStartPredicate();
			if(!mades_ti.isEvent2Now()){
				switch(mades_ti.getTimeOperator()){
				case EQ:{
					sem.addFormulae(new And(sd_Predicate, new Implies(ev2, new And(new Next(new LastTime_ii(ev1, timeunits + 1)),new Not(new Since_ii(new Not(ev1), sd_Start_Predicate))))));
					break;				
				}
				case LT:{
					sem.addFormulae(new And(sd_Predicate, new Implies(ev2, new And(new WithinP_ii(ev1, timeunits - 1), new Not(new Since_ii(new Not(ev1), sd_Start_Predicate))))));
					break;
				}
				case LTE:{
					sem.addFormulae(new And(sd_Predicate, new Implies(ev2, new And(new WithinP_ii(ev1, timeunits), new Not(new Since_ii(new Not(ev1), sd_Start_Predicate))))));
					break;
				}
				case GT:{
					sem.addFormulae(new And(sd_Predicate, new Implies(ev2, new And(new Lasted_ii(new Not(ev1), timeunits), new Not(new Since_ii(new Not(ev1), sd_Start_Predicate))))));
					break;
				}                   
				case GTE:{
					sem.addFormulae(new And(sd_Predicate, new Implies(ev2, new And(new Lasted_ie(new Not(ev1), timeunits), new Not(new Since_ii(new Not(ev1), sd_Start_Predicate))))));
					break;
				}
				default:
					break;
				}
			}
			// </if Time Constraint belongs to a Sequence Diagram>
			// <if Time Constraint belongs to a State Diagram>
		}else{

			switch(mades_ti.getTimeOperator()){
			case NEQ:{
				if(mades_ti.isEvent2Now()){
					sem.addFormulae(new Not(new Past(ev1,timeunits)));
				}else{
					sem.addFormulae(new Implies(ev2,new Not(new Past(ev1,timeunits))));
				}
				break;
			}
			case EQ:{
				if(mades_ti.isEvent2Now()){
					//                	sem.addFormulae(new Past(ev1,timeunits));
					sem.addFormulae(new And(new Past(ev1, timeunits), new Lasted_ie(new Not(ev1), timeunits)));
				}else{
					//                	sem.addFormulae(new Implies(ev2,new Past(ev1,timeunits)));
					sem.addFormulae(new Since(new And(new Not(ev1), new Not(ev2)), new And(ev2, new Past(ev1, timeunits), new Lasted_ie(new Not(ev1), timeunits))));
				}
				break;
			}
			case LT:{
				if(mades_ti.isEvent2Now()){
					//                	sem.addFormulae(new And(new WithinP(ev1, timeunits-1), new Since(new Not(ev1), ev1)));
					sem.addFormulae(new WithinP_ii(ev1, timeunits - 1));
				}else{
					//                	sem.addFormulae(new Iff(ev2, new And(new WithinP(ev1, timeunits-1), new Since(new And(new Not(ev2),new Not(ev1)), ev1))));
					sem.addFormulae(new Since(new And(new Not(ev1),new Not(ev2)), new And(ev2, new WithinP_ii(ev1, timeunits - 1))));
				}
				break;
			}
			case LTE:{
				if(mades_ti.isEvent2Now()){
					//                	sem.addFormulae(new And(new WithinP(ev1, timeunits), new Since(new Not(ev1), ev1)));
					sem.addFormulae(new WithinP_ii(ev1, timeunits));
				}else{
					//                	sem.addFormulae(new Iff(ev2, new And(new WithinP(ev1, timeunits), new Since(new And(new Not(ev2),new Not(ev1)), ev1))));
					sem.addFormulae(new Since(new And(new Not(ev1), new Not(ev2)), new And(ev2, new WithinP_ii(ev1, timeunits))));
				}
				break;
			}
			case GT:{
				if(mades_ti.isEvent2Now()){
					//                	sem.addFormulae(new Lasted(new Not(ev1), timeunits));
					sem.addFormulae(new And(new Lasted_ii(new Not(ev1), timeunits), new SomP(ev1)));
				}else{
					//                	sem.addFormulae(new Iff(ev2, new And(new Lasted(new Not(ev1),timeunits),new Since(new Not(ev2),ev1))));
					sem.addFormulae(new Since(new Not(ev1), new And(ev2,new Lasted_ii(new Not(ev1), timeunits), new SomP(ev1))));
				}
				break;
			}                   
			case GTE:{
				if(mades_ti.isEvent2Now()){
					//                	sem.addFormulae(new Lasted(new Not(ev1), timeunits-1));
					sem.addFormulae(new And(new Lasted_ie(new Not(ev1), timeunits), new SomP(ev1)));
				}else{
					//                	sem.addFormulae(new Iff(ev2, new And(new Lasted(new Not(ev1),timeunits-1),new Since(new Not(ev2),ev1))));
					sem.addFormulae(new Since(new Not(ev1), new And(ev2,new Lasted_ie(new Not(ev1), timeunits), new SomP(ev1))));
				}
				break;
			}
			}
		}
		// </if Time Constraint belongs to a State Diagram>
		return sem;
	}

}
