package org.correttouml.uml2zot.semantics.sequencediagram;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Set;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.iod.IOD;
import org.correttouml.uml.diagrams.activity.*;
import org.correttouml.uml.diagrams.activitydiagram.AD;
import org.correttouml.uml.diagrams.sequencediagram.CombinedFragment;
import org.correttouml.uml.diagrams.sequencediagram.ExecutionOccurrence;
import org.correttouml.uml.diagrams.sequencediagram.Lifeline;
import org.correttouml.uml.diagrams.sequencediagram.Message;
import org.correttouml.uml.diagrams.sequencediagram.RepetitiousMessage;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagramParameter;
import org.correttouml.uml.diagrams.statediagram.StateDiagram;
import org.correttouml.uml.diagrams.statediagram.Transition;
import org.correttouml.uml.diagrams.statediagram.actions.Action;
import org.correttouml.uml.diagrams.statediagram.actions.SequenceDiagramAction;
import org.correttouml.uml.diagrams.timeconstraints.TimeConstraint;
import org.correttouml.uml2zot.semantics.SMadesModel;
import org.correttouml.uml2zot.semantics.activity.SSequenceDiagramNode;
import org.correttouml.uml2zot.semantics.statediagram.STransition;
import org.correttouml.uml2zot.semantics.timeconstraints.STimeConstraint;
import org.correttouml.uml2zot.semantics.util.bool.And;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Iff;
import org.correttouml.uml2zot.semantics.util.bool.Implies;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.bool.Or;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.correttouml.uml2zot.semantics.util.trio.Since_ei;
import org.correttouml.uml2zot.semantics.util.trio.Yesterday;

public class SSequenceDiagram {

	private Config config;
	private SequenceDiagram mades_sd;
	// Set the default configuration that is Combine:SYNC Loop:SYNC Choice:ND
	// Details can be found in the paper entitled "Flexible Modular Formalization of UML Sequence Diagrams" http://dl.acm.org/citation.cfm?id=2593492
	
	public Config defaultConfig = new Config(ConfigCombine.SYNC, ConfigCombine.SYNC, ConfigWhat.NONDETERMINISTICALLY);
	public SSequenceDiagram(SequenceDiagram mades_sd) {
		this.mades_sd = mades_sd;
		setConfig();
	}

	public Predicate getPredicate(){
		return new Predicate("$SD_" + mades_sd.getName());
	}

	public Predicate getLifelinePredicate(int index) {
		return getLifelinesPredicates().get(index);
	}

	public Predicate getLifelinePredicate(String lifelineName) {
		return new Predicate(mades_sd.getName() + "_" + lifelineName);
	}

	public ArrayList<Predicate> getLifelinesPredicates() {
		ArrayList<Predicate> lifelinesPredicates = new ArrayList<Predicate>();
		for (String lname : getLifelinesNames())
			lifelinesPredicates.add(getLifelinePredicate(lname));
		return lifelinesPredicates;
	}

	public ArrayList<String> getLifelinesNames() {
		ArrayList<String> lifelinesnames = new ArrayList<String>();
		ArrayList<Integer> hashcodes = new ArrayList<Integer>();
		for (Lifeline l : mades_sd.getLifelines())
			lifelinesnames.add(l.getName().replace(":", ""));
		return lifelinesnames;
	}
	
	public ArrayList<Predicate> getLifelinesPredicateStarts() {
		ArrayList<Predicate> lifelinesPredicateStarts = new ArrayList<Predicate>();
		for (Predicate p : getLifelinesPredicates())
			lifelinesPredicateStarts.add(p.getStartPredicate());
		return lifelinesPredicateStarts;
	}

	public ArrayList<Predicate> getLifelinesPredicateEnds() {
		ArrayList<Predicate> lifelinesPredicateEnds = new ArrayList<Predicate>();
		for (Predicate p : getLifelinesPredicates())
			lifelinesPredicateEnds.add(p.getEndPredicate());
		return lifelinesPredicateEnds;
	}

	public ArrayList<SCombinedFragment> getSCombinedFragments() {
		ArrayList<CombinedFragment> cfs = mades_sd.getCombinedFragments();
		ArrayList<SCombinedFragment> scfs = new ArrayList<SCombinedFragment>();
		for (CombinedFragment cf : cfs) {
			scfs.add(new SCombinedFragment(cf));
		}

		return scfs;
	}

	public String getSemantics() throws IOException {
		String sem = "";

		Predicate sd_start = new Predicate(this.mades_sd.getName()).getStartPredicate();
		Predicate sd_end = new Predicate(this.mades_sd.getName()).getEndPredicate();
		Predicate sd_stop = new Predicate(this.mades_sd.getName()).getStopPredicate();
		Predicate sd = new Predicate(this.mades_sd.getName());

//		We already have the following semantics as (Borders SD SD_Start SD_End SD_Stop)
//		sem = sem + new Iff(sd, new Or(sd_start, new Since_ei(new And(new Not(sd_stop), new Not(sd_end)), sd_start))) + "\n";
		 
		// Close world assumption semantics
		sem = sem + SMadesModel.printSeparatorSmall("SD CONNECTIONS SEMANTICS");
		sem = sem + this.getConnectionsSemantics(sd_start, sd_end);

//		We already have the following semantics as (Borders SD SD_Start SD_End SD_Stop)
//		// Multiple sequence diagram semantics
//		sem = sem + SMadesModel.printSeparatorSmall("MULTI SEQUENCE DIAGRAM INSTANCE SEMANTICS");
//		sem = sem + new Implies(sd_start, new Until_ei(new Not(sd_start), new Or(sd_stop, sd_end))) + "\n";

		// get sequence diagram fragments semantics
		sem = sem + SMadesModel.printSeparatorSmall("FRAGMENTS SEMANTICS");
		sem += new SCombine(this.mades_sd).toString();

//		// Get lifelines semantics
//		sem = sem + SMadesModel.printSeparatorSmall("LIFELINES SEMANTICS");
//		for (Lifeline l : this.mades_sd.getLifelines()) {
//			sem = sem + new SLifeline(l).getSemantics();
//		}

//		// get messages semantics
//		sem = sem + SMadesModel.printSeparatorSmall("MESSAGES SEMANTICS");
//		/*
//		 * for (Message m : this.mades_sd.getMessages()) { sem = sem + new
//		 * SMessage(m).getSemantics() + "\n"; }
//		 */
		 
		String tempfile = "";
		ArrayList<String> addedMessagesUmlID = new ArrayList<String>();
		for (String name : RepetitiousMessage.instances.keySet()) {
			org.eclipse.uml2.uml.Message tempm = RepetitiousMessage.instances.get(name);
			String preName = tempm.getName();
			tempm.setName(name);
			sem = sem + new SMessage(new Message(tempm)).getSemantics() + "\n";
			tempm.setName(preName);
			//
			tempfile += new Predicate(name).getPredicateName() + "\n";
			tempfile += new Predicate(name).getStartPredicate().getPredicateName() + "\n";
			tempfile += new Predicate(name).getEndPredicate().getPredicateName() + "\n";
			//
			addedMessagesUmlID.add((new Message(tempm)).getUMLId());
		}
		for (Message m : this.mades_sd.getMessages()) {
			if (addedMessagesUmlID == null || !addedMessagesUmlID.contains(m.getUMLId())) {
				sem = sem + new SMessage(m).getSemantics() + "\n";
				//
				tempfile += new SMessage(m).getPredicate().getPredicateName() + "\n";
				tempfile += new SMessage(m).getPredicate().getStartPredicate().getPredicateName() + "\n";
				tempfile += new SMessage(m).getPredicate().getEndPredicate().getPredicateName() + "\n";
				//
			}
		}
		// write to file
		// FileWriter msgsfile = new FileWriter(new File("D:/education/project
		// back
		// up/CorrettoUML/CorrettoUML/org.correttouml.uml2zot/tmp/MessagesNames.txt"));
		// BufferedWriter msgsfileout = new BufferedWriter(msgsfile);
		// msgsfileout.append(tempfile);
		// msgsfileout.close();
		//
		// Get execution occurrences semantics
		sem = sem + SMadesModel.printSeparatorSmall("EXOCCS SEMANTICS");
		for (ExecutionOccurrence exocc : this.mades_sd.getExecutionOccurrences()) {
			sem = sem + new SExecutionOccurrence(exocc).getSemantics();
		}

		// get time constraint semantics
		sem = sem + SMadesModel.printSeparatorSmall("TIME CONSTRAINTS SEMANTICS");
		sem += getAllTimeConstraintsSemantics();

		// get parameter semantics
		sem = sem + SMadesModel.printSeparatorSmall("SEQUENCE DIAGRAM PARAMETER SEMANTICS");
		for (SequenceDiagramParameter sdp : this.mades_sd.getSequenceDiagramParameters()) {
			sem = sem + new SSequenceDiagramParameter(sdp).getSemantics();
		}
		return sem;
	}

	// TODO: sdstop must be included in the connections semantics
	private String getConnectionsSemantics(Predicate sd_start, Predicate sd_end) {
		String sem = "";

		/*
		 * Specify how the sd start/end predicates are connected with all the
		 * other diagrams that use them At the current time the sequence diagram
		 * start/end are connected to the IOD (through SD nodes) and to the StD
		 * (through actions in triggers)
		 */

		// Get all the actions
		Or condStart = new Or();
		Or condEnd = new Or();
		addStateMachineInvocations(condStart);
        
        //Get all the IOD nodes
		addIODInvocations(condStart, condEnd);
		
        //Get all the AD nodes
		addADInvocations(condStart, condEnd);
        
        Or condStop=new Or();
        //The stop is connected to the interruptible regions
        //TODO: connect to the transitions that use @sd.stop, i.e. addSDStopInvocations
        addIODStopInvocations(condStop);
		
		if (condStart.size() > 0) {
			sem = sem + new Iff(sd_start, condStart) + "\n";
		}
		if (condEnd.size() > 0) {
			sem = sem + new Iff(sd_end, condEnd) + "\n";
		}
		if (condStop.size() == 0) {
			sem = sem + SMadesModel.printSeparatorSmall("STOP SEMANTICS");
			sem = sem + new Not(getPredicate().getStopPredicate()) + "\n";
		}
		if (condStop.size() > 0) {
			sem = sem + SMadesModel.printSeparatorSmall("STOP SEMANTICS");
			sem = sem + new Iff(getPredicate().getStopPredicate(), condStop) + "\n";
		}

		return sem;
	}

	private void addIODStopInvocations(Or condStop) {
        for(IOD iod:this.mades_sd.getMadesModel().getIODs()){
        	for(InterruptibleRegion ir: iod.getInterruptibleRegions()){
        		for(SequenceDiagramNode sd_node: ir.getSequenceDiagramNodes()){
        			if(sd_node.getSequenceDiagram().equals(this.mades_sd)){
        				condStop.addFormulae(new SSequenceDiagramNode(sd_node, iod).getPredicate().getStopPredicate());
        			}
        		}
        	}
        }
	}

	private void addIODInvocations(Or condStart, Or condEnd) {
        for(IOD iod: this.mades_sd.getMadesModel().getIODs()){
        	for(Node n: iod.getNodes()){
        		if(n instanceof SequenceDiagramNode){
        			SequenceDiagramNode sdnode=((SequenceDiagramNode) n);
        			if(sdnode.getSequenceDiagram().equals(this.mades_sd)){
            			condStart.addFormulae(new SSequenceDiagramNode((SequenceDiagramNode) n, iod).getPredicate().getStartPredicate());
            			condEnd.addFormulae(new SSequenceDiagramNode((SequenceDiagramNode) n, iod).getPredicate().getEndPredicate());
        			}
        		}
        	}
        }
	}
	
	private void addADInvocations(Or condStart, Or condEnd) {
        for(AD ad: this.mades_sd.getMadesModel().getADs()){
        	for(Node n: ad.getNodes()){
        		if(n instanceof SequenceDiagramNode){
        			SequenceDiagramNode sdnode=((SequenceDiagramNode) n);
        			if(sdnode.getSequenceDiagram().equals(this.mades_sd)){
            			condStart.addFormulae(new SSequenceDiagramNode((SequenceDiagramNode) n, ad).getPredicate().getStartPredicate());
            			condEnd.addFormulae(new SSequenceDiagramNode((SequenceDiagramNode) n, ad).getPredicate().getEndPredicate());
        			}
        		}
        	}
        }
	}

	private void addStateMachineInvocations(Or condStart) {
        for (Object mades_object : this.mades_sd.getMadesModel().getClassdiagram().getObjects()) {
            for (StateDiagram std : mades_object.getOwningClass().getStateDiagrams()) {
                for(Transition t: std.getTransitions()){
                	if(t.hasActions()){
                		for(Action act: t.getActions(null)){
                        	if(act instanceof SequenceDiagramAction && ((SequenceDiagramAction) act).getSequenceDiagram().equals(this.mades_sd)){
        	                	condStart.addFormulae(new Yesterday(new STransition(t).getPredicate(mades_object)));
        	                }
                		}
                	}
                }  
            }
        }
	}

	protected static BooleanFormulae buildOrderingSemanticsSDEndAxiom(Predicate e_z, Set<Predicate> lastevents) {
		And sem = new And();

		/*
		 * @AXIOM The end of the sequence diagram occurs iff the last event of
		 * the lifelines occurs now \begin{align} \label{ax:SDEndAxiom} prova
		 * \end{align}
		 */

		// Deve contenere:
		// for all e_h...e_k che precedono e_z
		// e_h AND for all j!=h Since(NOT E_z, E_j)
		// OR
		// ...
		// e_k AND for all j!=h Since(NOT E_z, E_j)
		Or temp2 = new Or();
		for (Predicate e_h : lastevents) {
			// Deve contenere:
			// e_h AND for all j!=h Since(NOT E_z, E_j)
			And temp = new And();
			// e_h
			temp.addFormulae(e_h);
			// for all j!=h
			for (Predicate e_j : lastevents) {
				if (!e_j.equals(e_h)) {
					// Since(NOT E_z, E_j)
					temp.addFormulae(new Since_ei(new Not(e_z), e_j));
				}

			}
			// e_h AND Since(NOT E_z, E_j1) AND ....
			temp2.addFormulae(temp);
		}
		sem.addFormulae(new Iff(e_z, temp2));
		return sem;
	}

	protected String getAllTimeConstraintsSemantics() {
		String sem = "";
		int counter = 0;
		for (TimeConstraint t : mades_sd.getTimeConstraints()) {
			counter++;
			SSequenceDiagram sd = new SSequenceDiagram(mades_sd);
			sem += new Iff(new Predicate(mades_sd.getName() + "_TIMECONSTRAINT_" + counter),
					new STimeConstraint(t).getSemantics()) + "\n";
			sem += new Implies(sd.getPredicate(), new Predicate(mades_sd.getName() + "_TIMECONSTRAINT_" + counter))
					+ "\n";
		}
		return sem;
	}

	protected void setConfig() {
		try {
			String[] s = null;
			if (mades_sd.getConfig() != null)
				s = mades_sd.getConfig();
			else{
				config = defaultConfig;
				return;
			}

			if (s[0].equals("SYNC"))
				config.combine = ConfigCombine.SYNC;
			else if (s[0].equals("WS"))
				config.combine = ConfigCombine.WS;
			else
				throw new Exception(
						"Error in configuration input for Combine parameter. It must be either Combine:WS or Combine:SYNC.");
			if (s[1].equals("SYNC"))
				config.loop = ConfigCombine.SYNC;
			else if (s[1].equals("WS"))
				config.loop = ConfigCombine.WS;
			else
				throw new Exception(
						"Error in configuration input for Loop parameter. It must me either \"Loop:WS\" or \"Loop:SYNC\".");
			if (s[2].equals("FFT"))
				config.what = ConfigWhat.FIRSTOP;
			else if (s[2].equals("ND"))
				config.what = ConfigWhat.NONDETERMINISTICALLY;
			else
				throw new Exception(
						"Error in configuration input for Loop parameter. It must me either \"Choice:ND\" or \"Choice:FFT\".");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Config getConfig(){
		return this.config;
	}
	
}
