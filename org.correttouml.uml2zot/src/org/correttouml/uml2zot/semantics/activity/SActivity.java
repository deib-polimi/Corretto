package org.correttouml.uml2zot.semantics.activity;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import org.correttouml.uml.diagrams.activity.*;
import org.correttouml.uml.diagrams.activitydiagram.*;
import org.correttouml.uml.diagrams.events.Event;
import org.correttouml.uml2zot.semantics.SMadesModel;
import org.correttouml.uml2zot.semantics.events.SEvent;
import org.correttouml.uml2zot.semantics.events.SEventFactory;
import org.correttouml.uml2zot.semantics.util.bool.And;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Iff;
import org.correttouml.uml2zot.semantics.util.bool.Implies;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.bool.Or;
import org.correttouml.uml2zot.semantics.util.trio.AlwF;
import org.correttouml.uml2zot.semantics.util.trio.AlwF_e;
import org.correttouml.uml2zot.semantics.util.trio.AlwP;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.correttouml.uml2zot.semantics.util.trio.Since_ei;
import org.correttouml.uml2zot.semantics.util.trio.SomP_e;
import org.correttouml.uml2zot.semantics.util.trio.Until_ei;

/**
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class SActivity {
	//node1 --controlflow1--> node2
	//(&& (&& node1 controlflow1) (next node2))
	private Activity mades_activity;

	public SActivity(Activity activity) {
		this.mades_activity = activity;
	}

	protected BooleanFormulae RC(Node curr, Node prec) {
		if (prec instanceof AcceptEventAction) {
			AcceptEventAction ae = (AcceptEventAction) prec;
			Event event = ae.getEvent(this.mades_activity);
			SEvent s_event = SEventFactory.getInstance(event);
			Predicate event_predicate = s_event.getPredicate(this.mades_activity.getObject());

			BooleanFormulae r = null;
			if (ae.isInterrupt()) {
				Predicate int_region_predicate = new SInterruptibleRegion(ae.getInterruptRegion()).getPredicate();
				r = new And(int_region_predicate, event_predicate);
			} else {
				r = event_predicate;
			}
			return r;
		}
		if (prec instanceof InitialNode) {
			return new SInitialNode(((InitialNode) prec), mades_activity).getPredicate();
		}
		if (prec instanceof SequenceDiagramNode) {
			Predicate sd_end = new SSequenceDiagramNode((SequenceDiagramNode) prec, this.mades_activity).getPredicate().getEndPredicate();
			return sd_end;
		}
		if (prec instanceof MergeNode) {
			Or orCond = new Or();
			Collection<Node> p = prec.getIncomingNodes();
			Iterator<Node> it = p.iterator();
			while (it.hasNext()) {
				orCond.addFormulae(RC(prec, it.next()));
			}
			return orCond;
		}
		if (prec instanceof ForkNode) {
			And andCond;
			andCond = new And(RC(prec, prec.getIncomingNodes().iterator()
					.next()));
			return andCond;
		}
		if (prec instanceof DecisionNode) {
			Predicate cf_predicate = new SControlFlow(this.mades_activity.findControlFlow(prec, curr), mades_activity).getPredicate();
			And andCond;
			andCond = new And(RC(prec, prec.getIncomingNodes().iterator()
					.next()), cf_predicate);
			return andCond;
		}
		if (prec instanceof JoinNode) {
			return new SJoinNode(((JoinNode) prec)).getPredicate();
		}

		if (prec instanceof OpaqueActionNode)
			return new SOpaqueActionNode((OpaqueActionNode) prec, (AD) mades_activity).getPredicate();
		
		if (prec instanceof CallActionNode)
			return new SCallActionNode((CallActionNode) prec, (AD) mades_activity).getPredicate();

		if (prec instanceof SendSignalNode)
			return new SSendSignalNode((SendSignalNode) prec, mades_activity).getPredicate();
		
		return null;
	}

}
