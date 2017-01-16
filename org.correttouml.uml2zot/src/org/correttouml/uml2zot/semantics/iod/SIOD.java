package org.correttouml.uml2zot.semantics.iod;


import java.util.Collection;
import org.correttouml.uml.diagrams.activity.*;
import org.correttouml.uml.diagrams.iod.IOD;
import org.correttouml.uml.diagrams.timeconstraints.TimeConstraint;
import org.correttouml.uml2zot.semantics.activity.*;
import org.correttouml.uml2zot.semantics.SMadesModel;
import org.correttouml.uml2zot.semantics.events.SEventFactory;
import org.correttouml.uml2zot.semantics.timeconstraints.STimeConstraint;
import org.correttouml.uml2zot.semantics.util.bool.And;
import org.correttouml.uml2zot.semantics.util.bool.Iff;
import org.correttouml.uml2zot.semantics.util.bool.Implies;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.bool.Or;
import org.correttouml.uml2zot.semantics.util.trio.AlwF;
import org.correttouml.uml2zot.semantics.util.trio.AlwF_e;
import org.correttouml.uml2zot.semantics.util.trio.AlwP;
import org.correttouml.uml2zot.semantics.util.trio.Past;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.correttouml.uml2zot.semantics.util.trio.Since;
import org.correttouml.uml2zot.semantics.util.trio.Since_ei;
import org.correttouml.uml2zot.semantics.util.trio.SomP_e;
import org.correttouml.uml2zot.semantics.util.trio.Until_ei;
import org.correttouml.uml2zot.semantics.util.trio.Until_ii;

/**
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class SIOD extends SActivity {

	private IOD mades_iod;

	public SIOD(IOD iod) {
		super(iod);
		this.mades_iod=iod;
	}

    public String getSemantics() {

        String sem = "";
        int foundFinalNode = 0;
        Or endCondition=new Or();
        FinalNode fn=null;
        
        Collection<Node> nodi = this.mades_iod.getNodes();
        for (Node n : nodi) {
        	if (n instanceof InitialNode)
				sem += new SInitialNode((InitialNode) n, mades_iod).getSemantics();
        	if (n instanceof SendSignalNode){
				sem += new SSendSignalNode((SendSignalNode) n, mades_iod).getSemantics();
				SendSignalNode curr = (SendSignalNode) n;
				Node prev = n.getIncomingNodes().iterator().next();
				sem += new Iff(new SSendSignalNode((SendSignalNode) n, mades_iod).getPredicate(), new Past(RC(curr, prev),1)) + "\n";
			}
            if (n instanceof SequenceDiagramNode) {
                SequenceDiagramNode curr = (SequenceDiagramNode) n;
				//ASSUMPION: The sequence diagram is preceded by only one node
				Node prev = n.getIncomingNodes().iterator().next();
				SSequenceDiagramNode ssdNode = new SSequenceDiagramNode(curr, this.mades_iod); 
				Predicate sd_start = ssdNode.getPredicate().getStartPredicate();
				sem = sem + new Iff(sd_start, new Past(RC(curr, prev),1)) + "\n";
            }
            if (n instanceof FinalNode) {
                foundFinalNode = 1;
                FinalNode curr = (FinalNode) n;
                Node prev = n.getIncomingNodes().iterator().next();

                fn=(FinalNode)n;
                endCondition.addFormulae(RC(curr, prev));
            }
            if (n instanceof DecisionNode) {
				sem += new SDecisionNode((DecisionNode) n, (Activity) this.mades_iod).getSemantics();
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

        if (foundFinalNode == 0) {
            sem = sem + new Not(getPredicate().getEndPredicate()) + "\n";
        }
        else{
        	sem = sem + new Iff(new SFinalNode(fn, mades_iod).getPredicate(), endCondition)+"\n";
        }
        
        SMadesModel.printSeparatorSmall("Interruptible regions");
        for(InterruptibleRegion ir: this.mades_iod.getInterruptibleRegions()){
        	Or insideCond=new Or();
        	Predicate inside_int_region=new SInterruptibleRegion(ir).getPredicate();
        	for(SequenceDiagramNode sdn: ir.getSequenceDiagramNodes()){
        		Predicate sdn_stop=new SSequenceDiagramNode(sdn, this.mades_iod).getPredicate().getStopPredicate();
        		Predicate sdn_end=new SSequenceDiagramNode(sdn, this.mades_iod).getPredicate().getEndPredicate();
        		Predicate sdn_start=new SSequenceDiagramNode(sdn, this.mades_iod).getPredicate().getStartPredicate();
        		Predicate interrupt=SEventFactory.getInstance(ir.getInterrupt().getEvent(this.mades_iod)).getPredicate();
        		sem = sem + new Iff(new And(interrupt, inside_int_region), sdn_stop)+"\n";
        		insideCond.addFormulae(new Or(sdn_start, new Since_ei(new And(new Not(sdn_end), new Not(sdn_stop)),sdn_start)));
        	}
        	sem=sem+new Iff(inside_int_region, insideCond)+"\n";
        }
        
        sem += getAllTimeConstraintsSemantics();
		if (!mades_iod.hasInialNode())
			sem += getDiagramStartSemantics();
		sem += getBordersSemantics();
		
        return sem;
    }

    private String getAllTimeConstraintsSemantics() {
		String sem = "";
		int counter = 0;
		
		for (TimeConstraint t : mades_iod.getTimeConstraints()) {
			counter++;
			String tcName = mades_iod.getName() + "_TIMECONSTRAINT_" + counter;
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
	IODStart <=> BigBang
	IOD
[Start], [No End]:
	IODStart <=> (AlwF(IOD) && !!SomP_e(IOD))
[No Start], [End]:
	IODStart <=> BigBang
	IODEnd <=> (AlwP(IOD) && AlwF_e(!!IOD))
[Start], [End]:
	IOD <=> (IODStart || since_ei (!!IODEnd, IODStart))
	IODStart => until_ei (!!IODStart, IODEnd)
	 */
	private String getBordersSemantics() {
		String sem = "";
		if (!mades_iod.hasStart() && !mades_iod.hasEnd())
			sem += new Iff(getPredicate().getStartPredicate(), SMadesModel.SYSTEMSTART) + "\n" + getPredicate();
		else if (mades_iod.hasStart() && !mades_iod.hasEnd())
			sem += new Iff(getPredicate().getStartPredicate(), new And(new AlwF(getPredicate()), new Not(new SomP_e(getPredicate()))));
		else if (!mades_iod.hasStart() && mades_iod.hasEnd())
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
		
		for (AcceptEventAction ae : mades_iod.getAcceptEvents())
			anyAE.addFormulae(new SAcceptEvent(ae, mades_iod).getPredicate());
//		ADStart => (AE1 || ... || AEn)
//		(AE1 || ... || AEn) => AD
		if (anyAE.size() == 1)
			sem += new Iff(getPredicate().getStartPredicate(), new SAcceptEvent((AcceptEventAction) mades_iod.getAcceptEvents().toArray()[0], mades_iod).getPredicate()) + "\n";
		else{
			sem += new Implies(getPredicate().getStartPredicate(), anyAE) + "\n";
			sem += new Implies(anyAE, getPredicate()) + "\n";
		}
		
		return sem;
	}

	public Predicate getPredicate() {
		return new Predicate(mades_iod.getName());
	}
    
}
