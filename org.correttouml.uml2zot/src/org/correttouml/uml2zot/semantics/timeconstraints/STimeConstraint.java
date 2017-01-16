package org.correttouml.uml2zot.semantics.timeconstraints;

import org.correttouml.uml.Comment;
import org.correttouml.uml.diagrams.activitydiagram.AD;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.iod.IOD;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;
import org.correttouml.uml.diagrams.timeconstraints.TimeConstraint;
import org.correttouml.uml2zot.semantics.activitydiagram.SAD;
import org.correttouml.uml2zot.semantics.events.SEventFactory;
import org.correttouml.uml2zot.semantics.iod.SIOD;
import org.correttouml.uml2zot.semantics.sequencediagram.SSequenceDiagram;
import org.correttouml.uml2zot.semantics.util.bool.And;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Implies;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.trio.Lasted_ie;
import org.correttouml.uml2zot.semantics.util.trio.Lasted_ii;
import org.correttouml.uml2zot.semantics.util.trio.LastTime_ii;
import org.correttouml.uml2zot.semantics.util.trio.Next;
import org.correttouml.uml2zot.semantics.util.trio.Past;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.correttouml.uml2zot.semantics.util.trio.Since;
import org.correttouml.uml2zot.semantics.util.trio.Since_ii;
import org.correttouml.uml2zot.semantics.util.trio.SomP;
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

		if (!mades_ti.isEvent1Now())
			ev1=SEventFactory.getInstance(mades_ti.getEvent1()).getPredicate(object);
		if (!mades_ti.isEvent2Now())
			ev2=SEventFactory.getInstance(mades_ti.getEvent2()).getPredicate(object);
		int timeunits=mades_ti.getTimeUnits();
		// <if Time Constraint belongs to a Sequence Diagram or is a comment (that belongs to an AD or an IOD)>
		Predicate diagramPredicate = null;
		Predicate diagramStartPredicate = null;
		if (mades_ti.getContext() instanceof SequenceDiagram || mades_ti.getContext() instanceof Comment){
			if (mades_ti.getContext() instanceof SequenceDiagram){
				SSequenceDiagram sd = new SSequenceDiagram((SequenceDiagram) mades_ti.getContext());
				diagramPredicate = sd.getPredicate();
			}
			else if (((Comment)mades_ti.getContext()).getOwnerDiagram() instanceof AD) {
				diagramPredicate = new SAD(((AD) ((Comment)mades_ti.getContext()).getOwnerDiagram())).getPredicate(); 
			}
			else if (((Comment)mades_ti.getContext()).getOwnerDiagram() instanceof IOD) {
				diagramPredicate = new SIOD(((IOD) ((Comment)mades_ti.getContext()).getOwnerDiagram())).getPredicate(); 
			}
			diagramStartPredicate = diagramPredicate.getStartPredicate();
			
			if(!mades_ti.isEvent2Now()){
				switch(mades_ti.getTimeOperator()){
				case EQ:{
					sem.addFormulae(new And(diagramPredicate, new Implies(ev2, new And(new Next(new LastTime_ii(ev1, timeunits + 1)),new Not(new Since_ii(new Not(ev1), diagramStartPredicate))))));
					break;				
				}
				case LT:{
					sem.addFormulae(new And(diagramPredicate, new Implies(ev2, new And(new WithinP_ii(ev1, timeunits - 1), new Not(new Since_ii(new Not(ev1), diagramStartPredicate))))));
					break;
				}
				case LTE:{
					sem.addFormulae(new And(diagramPredicate, new Implies(ev2, new And(new WithinP_ii(ev1, timeunits), new Not(new Since_ii(new Not(ev1), diagramStartPredicate))))));
					break;
				}
				case GT:{
					sem.addFormulae(new And(diagramPredicate, new Implies(ev2, new And(new Lasted_ii(new Not(ev1), timeunits), new Not(new Since_ii(new Not(ev1), diagramStartPredicate))))));
					break;
				}                   
				case GTE:{
					sem.addFormulae(new And(diagramPredicate, new Implies(ev2, new And(new Lasted_ie(new Not(ev1), timeunits), new Not(new Since_ii(new Not(ev1), diagramStartPredicate))))));
					break;
				}
				default:
					break;
				}
			}
			// <if Time Constraint belongs to a Sequence Diagram or is a comment (that belongs to an AD or an IOD)>
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
					// TODO: verify it is correct
					 sem.addFormulae(new WithinP_ii(ev1, timeunits));//[mmpourhashem] This is correct.
					//sem.addFormulae(new WithinP_ie(ev1, timeunits));//[mmpurhashem] This is NOT.
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
