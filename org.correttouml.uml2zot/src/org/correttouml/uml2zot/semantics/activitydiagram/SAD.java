package org.correttouml.uml2zot.semantics.activitydiagram;


import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.correttouml.uml.diagrams.activity.*;
import org.correttouml.uml.diagrams.activitydiagram.AD;
import org.correttouml.uml.diagrams.expressions.Variable;
import org.correttouml.uml.diagrams.expressions.VariableFactory;
import org.correttouml.uml.diagrams.timeconstraints.TimeConstraint;
import org.correttouml.uml2zot.semantics.activity.*;
import org.correttouml.uml2zot.semantics.SMadesModel;
import org.correttouml.uml2zot.semantics.events.SEventFactory;
import org.correttouml.uml2zot.semantics.expressions.SVariableFactory;
import org.correttouml.uml2zot.semantics.sequencediagram.SSequenceDiagramParameter;
import org.correttouml.uml2zot.semantics.timeconstraints.STimeConstraint;
import org.correttouml.uml2zot.semantics.util.bool.And;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Iff;
import org.correttouml.uml2zot.semantics.util.bool.Implies;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.bool.Or;
import org.correttouml.uml2zot.semantics.util.trio.AlwF;
import org.correttouml.uml2zot.semantics.util.trio.AlwF_e;
import org.correttouml.uml2zot.semantics.util.trio.AlwP;
import org.correttouml.uml2zot.semantics.util.trio.EQ;
import org.correttouml.uml2zot.semantics.util.trio.Past;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.correttouml.uml2zot.semantics.util.trio.Since;
import org.correttouml.uml2zot.semantics.util.trio.Since_ei;
import org.correttouml.uml2zot.semantics.util.trio.SomP_e;
import org.correttouml.uml2zot.semantics.util.trio.Until_ei;

/**
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class SAD extends SActivity{

	private AD mades_ad;
	
	public SAD(AD ad) {
		super(ad);
		this.mades_ad = ad;
	}

	public String getObjectName(){
		return this.mades_ad.getObject().getName(); 
	}
	
//	@Override
//	protected BooleanFormulae RC(Node curr, Node prec) {
//		if (super.RC(curr, prec) != null)
//			return super.RC(curr, prec);
//		else{//elements in AD that are not in IOD:
//			
//		}
//
//		return null;
//	}

	public String getSemantics() {

		String sem = "";
		boolean foundFinalNode = false;
		Or endCondition=new Or();
		FinalNode fn=null;

		Collection<Node> nodes = this.mades_ad.getNodes();
		for (Node n : nodes) {
			if (n instanceof InitialNode)
				sem += new SInitialNode((InitialNode) n, mades_ad).getSemantics();
			if (n instanceof SendSignalNode){
				sem += new SSendSignalNode((SendSignalNode) n, mades_ad).getSemantics();
				SendSignalNode curr = (SendSignalNode) n;
				Node prev = n.getIncomingNodes().iterator().next();
				sem += new Iff(new SSendSignalNode((SendSignalNode) n, mades_ad).getPredicate(), new Past(RC(curr, prev),1)) + "\n";
			}
			if (n instanceof OpaqueActionNode) {
				OpaqueActionNode curr = (OpaqueActionNode) n;
                Node prev = n.getIncomingNodes().iterator().next();
				sem += new Iff(new SOpaqueActionNode((OpaqueActionNode) n, mades_ad).getPredicate(), new Past(RC(curr, prev),1)) + "\n";
				sem += new SOpaqueActionNode((OpaqueActionNode) n, mades_ad).getSemantics();
			}
			if (n instanceof CallActionNode){
				CallActionNode curr = (CallActionNode) n;
				Node prev = n.getIncomingNodes().iterator().next();
				sem += new Iff(new SCallActionNode((CallActionNode) n, mades_ad).getPredicate(), new Past(RC(curr, prev),1))+ "\n";
				SCallActionNode scan = new SCallActionNode((CallActionNode) n, mades_ad); 
				sem += scan.getSemantics();
			}
			if (n instanceof SequenceDiagramNode) {
				SequenceDiagramNode curr = (SequenceDiagramNode) n;
				//ASSUMPION: The sequence diagram is preceded by only one node
				Node prev = n.getIncomingNodes().iterator().next();
				SSequenceDiagramNode ssdNode = new SSequenceDiagramNode(curr, this.mades_ad); 
				Predicate sd_start = ssdNode.getPredicate().getStartPredicate();
				sem = sem + new Iff(sd_start, new Past(RC(curr, prev),1)) + "\n";
				
				//<Object flow> for Sequence Diagram Node input pin. 
				String pinnedVariableName = "";
				for (SSequenceDiagramParameter ssdp: ssdNode.getSSDParameters()){
					pinnedVariableName = ssdNode.getInputVariableName(ssdp.getName());
					if (! pinnedVariableName.equals("")){
						Variable pinnedVariable = VariableFactory.getInstance(pinnedVariableName, mades_ad.getObject(), this.mades_ad);
						BooleanFormulae pinnedVariableBF=SVariableFactory.getInstance(pinnedVariable).getPredicate(mades_ad.getObject());
						sem += new Implies(sd_start, new EQ(ssdp.getPredicate(mades_ad.getObject()), pinnedVariableBF)) + "\n";
					}
				}
				//</Object flow>
			}
			if (n instanceof FinalNode) {
				foundFinalNode = true;
				FinalNode curr = (FinalNode) n;
                Node prev = n.getIncomingNodes().iterator().next();

                fn=(FinalNode)n;
                endCondition.addFormulae(RC(curr, prev));
			}
			if (n instanceof DecisionNode) {
				DecisionNode curr = (DecisionNode) n;
				SDecisionNode dNode = new SDecisionNode(curr, this.mades_ad);
				sem += dNode.getSemantics();
				//ASSUMPION: Decision nodes are preceded by only one node
				Node prev = n.getIncomingNodes().iterator().next();
				//The following says when it is the time to decide, at least one of the outgoing control flows will be selected.
				sem = sem + new Iff(RC(curr, prev), dNode.getOrControlflows()) + "\n";
			}
			if (n instanceof JoinNode) {
				JoinNode join = (JoinNode) n;

				Collection<Node> precs = n.getIncomingNodes();
				Or orCond = new Or();

				for (Node prec : precs) {
					And endCond = new And();
					endCond.addFormulae(RC(n, prec));
					for (Node prec2 : precs) {
						if (!prec.equals(prec2)) {
							endCond.addFormulae(new Since_ei(new Not(new SJoinNode(join).getPredicate()), RC(n, prec2)));
						}
					}
					orCond.addFormulae(endCond);
				}
				sem = sem + new Iff(new SJoinNode(join).getPredicate(), orCond) + "\n";
			}
		}

		if (! foundFinalNode) {
			sem = sem + new Not(getPredicate().getEndPredicate()) + "\n";
		}
		else{
			sem = sem + new Iff(new SFinalNode(fn, mades_ad).getPredicate(), endCondition)+"\n";
		}

		SMadesModel.printSeparatorSmall("Interruptible regions");
		for(InterruptibleRegion ir: this.mades_ad.getInterruptibleRegions()){
			Or insideCond=new Or();
			Predicate inside_int_region=new SInterruptibleRegion(ir).getPredicate();
			for(SequenceDiagramNode sdn: ir.getSequenceDiagramNodes()){
				Predicate sdn_stop=new SSequenceDiagramNode(sdn, this.mades_ad).getPredicate().getStopPredicate();
				Predicate sdn_end=new SSequenceDiagramNode(sdn, this.mades_ad).getPredicate().getEndPredicate();
				Predicate sdn_start=new SSequenceDiagramNode(sdn, this.mades_ad).getPredicate().getStartPredicate();
				Predicate interrupt=SEventFactory.getInstance(ir.getInterrupt().getEvent(this.mades_ad)).getPredicate();
				sem = sem + new Iff(new And(interrupt, inside_int_region), sdn_stop)+"\n";
				insideCond.addFormulae(new Or(sdn_start, new Since_ei(new And(new Not(sdn_end), new Not(sdn_stop)),sdn_start)));
			}
			sem=sem+new Iff(inside_int_region, insideCond)+"\n";
		}
		
		sem += getAllTimeConstraintsSemantics();
		if (!mades_ad.hasInialNode())
			sem += getDiagramStartSemantics();
		sem += getBordersSemantics();
		return sem;
	}
	
	private String getAllTimeConstraintsSemantics() {
		String sem = "";
		int counter = 0;
		
		for (TimeConstraint t : mades_ad.getTimeConstraints()) {
			counter++;
			String tcName = mades_ad.getName() + "_TIMECONSTRAINT_" + counter;
			Predicate tcPredicate = new Predicate(tcName);
			sem += new Iff(tcPredicate,
					new STimeConstraint(t).getSemantics()) + "\n";
			sem += new Iff(getPredicate(), tcPredicate);
		}
		
		return sem + "\n";
	}

	/**
	 * @return
	 * Borders for ADs (and IODs):
[No Start], [No End]:
	ADStart <=> BigBang
	AD
[Start], [No End]:
	ADStart <=> (AlwF(AD) && !!SomP_e(AD))
[No Start], [End]:
	ADStart <=> BigBang
	ADEnd <=> (AlwP(AD) && AlwF_e(!!AD))
[Start], [End]:
	AD <=> (ADStart || since_ei (!!ADEnd, ADStart))
	ADStart => until_ei (!!ADStart, ADEnd)
	 */
	private String getBordersSemantics() {
		String sem = "";
		if (!mades_ad.hasStart() && !mades_ad.hasEnd())
			sem += new Iff(getPredicate().getStartPredicate(), SMadesModel.SYSTEMSTART) + "\n" + getPredicate();
		else if (mades_ad.hasStart() && !mades_ad.hasEnd())
			sem += new Iff(getPredicate().getStartPredicate(), new And(new AlwF(getPredicate()), new Not(new SomP_e(getPredicate()))));
		else if (!mades_ad.hasStart() && mades_ad.hasEnd())
			sem += new Iff(getPredicate().getStartPredicate(), SMadesModel.SYSTEMSTART) + "\n"
					+ new Iff(getPredicate().getEndPredicate(), new And(new AlwP(getPredicate()), new AlwF_e(new Not(getPredicate()))));
		else
			sem += new Iff(getPredicate(), new Or(getPredicate().getStartPredicate(), new Since_ei(new Not(getPredicate().getEndPredicate()), getPredicate().getStartPredicate())))
			+ "\n" + new Implies(getPredicate().getStartPredicate(), new Until_ei(new Not(getPredicate().getStartPredicate()), getPredicate().getEndPredicate()));
		return sem + "\n";
	}

	private String getDiagramStartSemantics(){
		String sem = "";
		Or anyAE = new Or();
		
		for (AcceptEventAction ae : mades_ad.getAcceptEvents())
			anyAE.addFormulae(new SAcceptEvent(ae, mades_ad).getPredicate());
//		ADStart => (AE1 || ... || AEn)
//		(AE1 || ... || AEn) => AD
		if (anyAE.size() == 1)
			sem += new Iff(getPredicate().getStartPredicate(), new SAcceptEvent((AcceptEventAction) mades_ad.getAcceptEvents().toArray()[0], mades_ad).getPredicate()) + "\n";
		else{
			sem += new Implies(getPredicate().getStartPredicate(), anyAE) + "\n";
			sem += new Implies(anyAE, getPredicate()) + "\n";
		}
		
		return sem;
	}

	public Predicate getPredicate() {
		return new Predicate(mades_ad.getName());
	}

}
