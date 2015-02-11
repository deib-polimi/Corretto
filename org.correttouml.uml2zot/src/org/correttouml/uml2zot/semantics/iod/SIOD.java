package org.correttouml.uml2zot.semantics.iod;


import java.util.Collection;
import java.util.Iterator;

import org.correttouml.uml.MadesModel;
import org.correttouml.uml.diagrams.events.Event;
import org.correttouml.uml.diagrams.iod.AcceptEventAction;
import org.correttouml.uml.diagrams.iod.ControlFlow;
import org.correttouml.uml.diagrams.iod.DecisionNode;
import org.correttouml.uml.diagrams.iod.FinalNode;
import org.correttouml.uml.diagrams.iod.ForkNode;
import org.correttouml.uml.diagrams.iod.IOD;
import org.correttouml.uml.diagrams.iod.InitialNode;
import org.correttouml.uml.diagrams.iod.InterruptibleRegion;
import org.correttouml.uml.diagrams.iod.JoinNode;
import org.correttouml.uml.diagrams.iod.MergeNode;
import org.correttouml.uml.diagrams.iod.Node;
import org.correttouml.uml.diagrams.iod.SequenceDiagramNode;
import org.correttouml.uml2zot.UML2Zot;
import org.correttouml.uml2zot.semantics.SMadesModel;
import org.correttouml.uml2zot.semantics.events.SEvent;
import org.correttouml.uml2zot.semantics.events.SEventFactory;
import org.correttouml.uml2zot.semantics.util.bool.And;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Iff;
import org.correttouml.uml2zot.semantics.util.bool.Implies;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.bool.Or;
import org.correttouml.uml2zot.semantics.util.trio.Futr;
import org.correttouml.uml2zot.semantics.util.trio.Past;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.correttouml.uml2zot.semantics.util.trio.Since;
import org.correttouml.uml2zot.semantics.util.trio.Since_ei;
import org.correttouml.uml2zot.semantics.util.trio.SomF;

public class SIOD {

	private IOD mades_iod;

	public SIOD(IOD iod) {
		this.mades_iod=iod;
	}

	public Predicate getStartPredicate(){
		return new Predicate("IOD"+mades_iod.getUMLId()+"_START");
	}
	
	public Predicate getEndPredicate(){
	//	return new Predicate("IOD"+mades_iod.getUMLId().replace("-", "_")+"_END");
		return new Predicate("IOD"+ UML2Zot.Utility.umlIDtoPrdID(mades_iod.getUMLId()) + "_END");
	}
	
    private BooleanFormulae RC(Node curr, Node prec) {

		if (prec instanceof AcceptEventAction) {
			AcceptEventAction ae=(AcceptEventAction) prec;
			Event event=ae.getEvent();
			SEvent s_event=SEventFactory.getInstance(event);
			Predicate event_predicate=s_event.getPredicate();
			
			BooleanFormulae r=null;
			if(ae.isInterrupt()){
				Predicate int_region_predicate=new SInterruptibleRegion(ae.getInterruptRegion()).getPredicate();
				r=new And(int_region_predicate, event_predicate);
			}
			else{
				r=event_predicate;
			}
			return r;
		}
        if (prec instanceof InitialNode) {
            return new SInitialNode(((InitialNode) prec)).getPredicate();
        }
        if (prec instanceof SequenceDiagramNode) {
        	Predicate sd_end=new SSequenceDiagramNode(((SequenceDiagramNode) prec)).getEndPredicate();
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
            andCond = new And(RC(prec, prec.getIncomingNodes().iterator().next()));
            return andCond;
        }
        if (prec instanceof DecisionNode) {
        	Predicate cf_predicate=new SControlFlow(this.mades_iod.findControlFlow(prec, curr)).getPredicate();
        	And andCond;
            andCond = new And(RC(prec, prec.getIncomingNodes().iterator().next()), cf_predicate);
            return andCond;
        }
        if (prec instanceof JoinNode) {
            return new SJoinNode(((JoinNode) prec)).getPredicate();
        }

        return null;
    }

    public String getSemantics() {

        String sem = "";
        int foundActivityFinalNode = 0;
        Or endCondition=new Or();
        FinalNode fn=null;
        
        Collection<Node> nodi = this.mades_iod.getNodes();
        for (Node n : nodi) {
            if (n instanceof InitialNode) {
                SInitialNode curr = new SInitialNode((InitialNode) n);
                sem = sem + new Implies(curr.getPredicate(), new Futr(new Not(new SomF(curr.getPredicate())), 1)) + "\n";
                sem = sem + new Iff(SMadesModel.SYSTEMSTART, curr.getPredicate()) + "\n";
            }
            if (n instanceof SequenceDiagramNode) {
                SequenceDiagramNode curr = (SequenceDiagramNode) n;
                //ASSUMPION: The sequence diagram is preceded by only one node
                Node prev = (Node) n.getIncomingNodes().iterator().next();

                Predicate sd_start=new SSequenceDiagramNode(curr).getStartPredicate();
                sem = sem + new Iff(sd_start, new Past(RC(curr, prev),1)) + "\n";
                //sem = sem + new Iff(sd_start, RC(curr, prev) ) + "\n";
            }
            if (n instanceof FinalNode) {
                foundActivityFinalNode = 1;
                FinalNode curr = (FinalNode) n;
                Node prev = n.getIncomingNodes().iterator().next();

                fn=(FinalNode)n;
                endCondition.addFormulae(RC(curr, prev));
            }
            if (n instanceof DecisionNode) {
                Iterator<Node> it = n.getOutgoingNodes().iterator();

                //TODO: Conditions on decision nodes must be implemented
                while (it.hasNext()) {
                    Node succ = it.next();
                    ControlFlow firstcf=this.mades_iod.findControlFlow(n, succ);
                    Predicate firstcf_predicate=new SControlFlow(firstcf).getPredicate();

                    //Control flows are mutually exclusive
                    Iterator<Node> it2 = n.getOutgoingNodes().iterator();
                    while (it2.hasNext()) {
                        Node other = it2.next();
                        ControlFlow secondcf=this.mades_iod.findControlFlow(n, other);
                        if(!firstcf.equals(secondcf)){
                            Predicate othercf_predicate=new SControlFlow(secondcf).getPredicate();
                            sem = sem + new Implies(firstcf_predicate, new Not(othercf_predicate)) + "\n";                        	
                        }
                    }
                }
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

        if (foundActivityFinalNode == 0) {
            sem = sem + new Not(this.getEndPredicate()) + "\n";
        }
        else{
        	sem = sem + new Iff(new SFinalNode(fn).getPredicate(), endCondition)+"\n";
        }
        
        SMadesModel.printSeparatorSmall("Interruptible regions");
        for(InterruptibleRegion ir: this.mades_iod.getInterruptibleRegions()){
        	Or insideCond=new Or();
        	Predicate inside_int_region=new SInterruptibleRegion(ir).getPredicate();
        	for(SequenceDiagramNode sdn: ir.getSequenceDiagramNodes()){
        		Predicate sdn_stop=new SSequenceDiagramNode(sdn).getStopPredicate();
        		Predicate sdn_end=new SSequenceDiagramNode(sdn).getEndPredicate();
        		Predicate sdn_start=new SSequenceDiagramNode(sdn).getStartPredicate();
        		Predicate interrupt=SEventFactory.getInstance(ir.getInterrupt().getEvent()).getPredicate();
        		sem = sem + new Iff(new And(interrupt, inside_int_region), sdn_stop)+"\n";
        		insideCond.addFormulae(new Or(sdn_start, new Since(new And(new Not(sdn_end), new Not(sdn_stop)),sdn_start)));
        	}
        	sem=sem+new Iff(inside_int_region, insideCond)+"\n";
        }
        return sem;
    }

}
