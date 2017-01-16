package org.correttouml.uml2zot.semantics.sequencediagram;

import java.util.ArrayList;

import org.correttouml.uml.diagrams.sequencediagram.*;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.eclipse.uml2.uml.Element;
import org.eclipse.uml2.uml.Interaction;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/
public class SCombinedFragment implements SInteractionFragment {
	protected CombinedFragment mades_combinedfragment;
	protected Config config;
	
	public SCombinedFragment(CombinedFragment cf) {
		this.mades_combinedfragment = cf;
		this.config = new SSequenceDiagram(cf.getSD()).getConfig();
	}
	
	@Override
	public Predicate getPredicate() {
		return new Predicate(this.mades_combinedfragment.getPredicateName());
	}
	
	public String getName() {
		return this.mades_combinedfragment.getName();
	}
	
	public Predicate getSDPredicate(){
		return new Predicate(mades_combinedfragment.getSDName());
	}
	
	public ArrayList<Lifeline> getLifelines(){
		return this.mades_combinedfragment.getLifelines();
	}
	
	public ArrayList<Predicate> getLifelinesPredicates(){
		ArrayList<Predicate> lifelinespredicates = new ArrayList<Predicate>();
		for (int i = 0; i < getLifelines().size(); i++) {
			lifelinespredicates.add(getLifelinePredicate(i));
		}
		return lifelinespredicates;
	}
	
	public ArrayList<Predicate> getLifelinesStartPredicates(){
		ArrayList<Predicate> lifelinesstartpredicates = new ArrayList<Predicate>();
		for (int i = 0; i < getLifelines().size(); i++) {
			lifelinesstartpredicates.add(getLifelinePredicate(i).getStartPredicate());
		}
		return lifelinesstartpredicates;
	}
	
	public ArrayList<Predicate> getLifelinesSkipPredicates(){
		ArrayList<Predicate> lifelinesstartpredicates = new ArrayList<Predicate>();
		for (int i = 0; i < getLifelines().size(); i++) {
			lifelinesstartpredicates.add(getLifelinePredicate(i).getSkipPredicate());
		}
		return lifelinesstartpredicates;
	}
	
	public ArrayList<Predicate> getLifelinesEndPredicates(){
		ArrayList<Predicate> lifelinesendpredicates = new ArrayList<Predicate>();
		for (int i = 0; i < getLifelines().size(); i++) {
			lifelinesendpredicates.add(getLifelinePredicate(i).getEndPredicate());
		}
		return lifelinesendpredicates;
	}
	
	public Predicate getLifelinePredicate(int index){
		return new Predicate(this.mades_combinedfragment.getPredicateName() + '_' + mades_combinedfragment.getLifelines().get(index).getName());
	}
	
	public Predicate getLifelinePredicate(String lifelinename){
		return new Predicate(this.mades_combinedfragment.getPredicateName() + '_' + lifelinename);
	}
	
	public ArrayList<MetaPredicate> getLifelinesPreMetaPredicates(){
		ArrayList<MetaPredicate> CFLifelinesPreMetaPredicates = new ArrayList<MetaPredicate>();
		ArrayList<InteractionFragment> CFPreIFs = new ArrayList<InteractionFragment>();
		CFPreIFs.addAll(mades_combinedfragment.getPreIFs());

		if (config.combine == ConfigCombine.WS) {
			for (int i = 0; i < CFPreIFs.size(); i++) {
				String currentLifelineName = mades_combinedfragment.getLifelines().get(i).getName();
				if (CFPreIFs.get(i) == null) {
					org.eclipse.uml2.uml.Interaction enclosinginteraction = mades_combinedfragment.getEnclosingFragment();
					if (enclosinginteraction != null) {
						CFLifelinesPreMetaPredicates.add(new MetaPredicate(new SSequenceDiagram(new org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram(
								enclosinginteraction)).getLifelinePredicate(currentLifelineName).getStartPredicate(), PredicateType.SDStart)); //SD_Li_Start
					}else {// else if enclosing element is InteractionOperand
						org.eclipse.uml2.uml.InteractionOperand enclosingoperand = mades_combinedfragment.getEnclosingOperand();
						CFLifelinesPreMetaPredicates.add(new MetaPredicate(new SInteractionOperand(new InteractionOperand(
								enclosingoperand), config).getLifelinePredicate(currentLifelineName).getStartPredicate(), PredicateType.CFStart)); //the actual predicate type is OP_Li_Start
					}
				} else {
					if (CFPreIFs.get(i) instanceof MessageStart)// message
						CFLifelinesPreMetaPredicates.add(new MetaPredicate(new SMessageStart((MessageStart)CFPreIFs.get(i)).getPredicate() , PredicateType.MStart));
					else if (CFPreIFs.get(i) instanceof MessageEnd)
						CFLifelinesPreMetaPredicates.add(new MetaPredicate(new SMessageEnd((MessageEnd)CFPreIFs.get(i)).getPredicate() , PredicateType.MEnd));
					else if (CFPreIFs.get(i) instanceof CombinedFragment) {// CF
						CFLifelinesPreMetaPredicates.add(new MetaPredicate(new SCombinedFragment((CombinedFragment)CFPreIFs.get(i)).getLifelinePredicate(currentLifelineName).getEndPredicate(), PredicateType.CFEnd)); //CF_Y_Li_End
					}
				}
			}
		}
		
		if (config.combine == ConfigCombine.SYNC) {
			for (int i = 0; i < CFPreIFs.size(); i++) {
				String currentLifelineName = mades_combinedfragment.getLifelines().get(i).getName();
				if (CFPreIFs.get(i) == null) {
					org.eclipse.uml2.uml.Interaction enclosinginteraction = mades_combinedfragment.getEnclosingFragment();
					if (enclosinginteraction != null) {
						CFLifelinesPreMetaPredicates.add(new MetaPredicate(new SSequenceDiagram(new org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram(
								enclosinginteraction)).getPredicate().getStartPredicate(), PredicateType.SDStart)); // SD_Start
					}else {// else if enclosing element is InteractionOperand
						org.eclipse.uml2.uml.InteractionOperand enclosingoperand = mades_combinedfragment.getEnclosingOperand();
						CFLifelinesPreMetaPredicates.add(new MetaPredicate(new SInteractionOperand(new InteractionOperand(
								enclosingoperand), config).getPredicate().getStartPredicate(), PredicateType.CFStart)); //the actual predicate type is CF_Y_OP_Start.
					}
				} else {
					if (CFPreIFs.get(i) instanceof MessageStart)// message
						CFLifelinesPreMetaPredicates.add(new MetaPredicate(new SMessageStart((MessageStart)CFPreIFs.get(i)).getPredicate() , PredicateType.MStart));
					else if (CFPreIFs.get(i) instanceof MessageEnd)
						CFLifelinesPreMetaPredicates.add(new MetaPredicate(new SMessageEnd((MessageEnd)CFPreIFs.get(i)).getPredicate() , PredicateType.MEnd));
					else if (CFPreIFs.get(i) instanceof CombinedFragment) {// CF
						CFLifelinesPreMetaPredicates.add(new MetaPredicate(new SCombinedFragment((CombinedFragment)CFPreIFs.get(i)).getPredicate().getEndPredicate(), PredicateType.CFEnd)); //CF_Y_End
					}
				}
			}
		}
		return CFLifelinesPreMetaPredicates;
	}

	public ArrayList<Predicate> getLifelinesPrePredicates(){
		ArrayList<Predicate> CFLifelinesPrePredicates = new ArrayList<Predicate>();
		for(MetaPredicate metap : getLifelinesPreMetaPredicates())
			CFLifelinesPrePredicates.add(metap.getPredicate());
		return CFLifelinesPrePredicates;
	}
	
	public ArrayList<PredicateType> getLifelinesPrePredicateTypes(){
		ArrayList<PredicateType> CFLifelinesPrePredicateTypes = new ArrayList<PredicateType>();
		for(MetaPredicate metap : getLifelinesPreMetaPredicates())
			CFLifelinesPrePredicateTypes.add(metap.getPredicatetype());
		return CFLifelinesPrePredicateTypes;
	}
	
	public ArrayList<MetaPredicate> getLifelinesPostMetaPredicates(){
		ArrayList<MetaPredicate> CFLifelinesPostMetaPredicates = new ArrayList<MetaPredicate>();
		ArrayList<InteractionFragment> CFPostIFs = new ArrayList<InteractionFragment>();
		CFPostIFs.addAll(mades_combinedfragment.getPostIFs());
		if (config.combine == ConfigCombine.WS) {
			for (int i = 0; i < CFPostIFs.size(); i++) {
				String currentLifelineName = mades_combinedfragment.getLifelines().get(i).getName();
				if (CFPostIFs.get(i) == null) { // if there is no interaction fragment after a CF it means it is the last UML element of its enclosingfragment(SD) or its enclosingoperand, whose post predicate is SD_End or IO_End.  
					org.eclipse.uml2.uml.Interaction enclosinginteraction = mades_combinedfragment.getEnclosingFragment();
					if (enclosinginteraction != null) { 
						CFLifelinesPostMetaPredicates.add(new MetaPredicate(new SSequenceDiagram(new org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram(
								enclosinginteraction)).getLifelinePredicate(currentLifelineName).getEndPredicate(), PredicateType.SDEnd));//SD_Li_End
					}else {// else if enclosing element is InteractionOperand
						org.eclipse.uml2.uml.InteractionOperand enclosingoperand = mades_combinedfragment.getEnclosingOperand();
						CFLifelinesPostMetaPredicates.add(new MetaPredicate(new SInteractionOperand(new InteractionOperand(
								enclosingoperand), config).getLifelinePredicate(currentLifelineName).getEndPredicate(), PredicateType.CFEnd)); //the actual predicate type is OP_Li_End
					}
				} else {
					if (CFPostIFs.get(i) instanceof MessageStart) // message
						CFLifelinesPostMetaPredicates.add(new MetaPredicate(new SMessageStart((MessageStart)CFPostIFs.get(i)).getPredicate(), PredicateType.MStart));
					else if (CFPostIFs.get(i) instanceof MessageEnd)
						CFLifelinesPostMetaPredicates.add(new MetaPredicate(new SMessageEnd((MessageEnd)CFPostIFs.get(i)).getPredicate(), PredicateType.MEnd));
					else if (CFPostIFs.get(i) instanceof CombinedFragment) {// CF
						CFLifelinesPostMetaPredicates.add(new MetaPredicate(new SCombinedFragment((CombinedFragment)CFPostIFs.get(i)).getLifelinePredicate(currentLifelineName).getStartPredicate(), PredicateType.CFStart)); //CF_Z_Li_Start
					}
				}
			}
		}else if (config.combine == ConfigCombine.SYNC) {
			for (int i = 0; i < CFPostIFs.size(); i++) {
				if (CFPostIFs.get(i) == null) { // if there is no interaction fragment after a CF it means it is the last UML element of its enclosingfragment(SD) or its enclosingoperand, whose post predicate is SD_End or IO_End.  
					org.eclipse.uml2.uml.Interaction enclosinginteraction = mades_combinedfragment.getEnclosingFragment();
					if (enclosinginteraction != null) { 
						CFLifelinesPostMetaPredicates.add(new MetaPredicate(new SSequenceDiagram(new org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram(
								enclosinginteraction)).getPredicate().getEndPredicate(), PredicateType.SDEnd)); //SD_End
					}else {// else if enclosing element is InteractionOperand
						org.eclipse.uml2.uml.InteractionOperand enclosingoperand = mades_combinedfragment.getEnclosingOperand();
						CFLifelinesPostMetaPredicates.add(new MetaPredicate(new SInteractionOperand(new InteractionOperand(
								enclosingoperand), config).getPredicate().getEndPredicate(), PredicateType.CFEnd)); //the actual predicate type is CF_Z_OP_End.
					}
				} else {
					if (CFPostIFs.get(i) instanceof MessageStart) // message
						CFLifelinesPostMetaPredicates.add(new MetaPredicate(new SMessageStart((MessageStart)CFPostIFs.get(i)).getPredicate(), PredicateType.MStart));
					else if (CFPostIFs.get(i) instanceof MessageEnd)
						CFLifelinesPostMetaPredicates.add(new MetaPredicate(new SMessageEnd((MessageEnd)CFPostIFs.get(i)).getPredicate(), PredicateType.MEnd));
					else if (CFPostIFs.get(i) instanceof CombinedFragment) {// CF
						CFLifelinesPostMetaPredicates.add(new MetaPredicate(new SCombinedFragment((CombinedFragment)CFPostIFs.get(i)).getPredicate().getStartPredicate(), PredicateType.CFStart)); //CF_Z_Start
					}
				}
			}
		}
		return CFLifelinesPostMetaPredicates;
	}
		
	public ArrayList<Predicate> getLifelinesPostPredicates(){
		ArrayList<Predicate> CFLifelinesPostPredicates = new ArrayList<Predicate>();
		for(MetaPredicate metap : getLifelinesPostMetaPredicates())
			CFLifelinesPostPredicates.add(metap.getPredicate());
		return CFLifelinesPostPredicates;
	}
	
	public ArrayList<PredicateType> getLifelinesPostPredicateTypes(){
		ArrayList<PredicateType> CFLifelinesPostPredicateTypes = new ArrayList<PredicateType>();
		for(MetaPredicate metap : getLifelinesPostMetaPredicates())
			CFLifelinesPostPredicateTypes.add(metap.getPredicatetype());
		return CFLifelinesPostPredicateTypes;
	}
	
	public ArrayList<Predicate> getOperandsPredicates(){
		ArrayList<Predicate> operandspredicates = new ArrayList<Predicate>();
		for (String on: mades_combinedfragment.getOperandsNames())
			operandspredicates.add(new Predicate(mades_combinedfragment.getPredicateName() + '_' + on));
		return operandspredicates;
	}
	
	public Predicate getOpiLjPredicate(int opIndex, int lIndex){ // returns predicate of Lifeline_j of Operand_i
		return new Predicate(getOperandsPredicates().get(opIndex).getPredicateName() + '_' + mades_combinedfragment.getLifelines().get(lIndex).getName());
	}
	
	public ArrayList<BooleanFormulae> getGuards(){
		ArrayList<BooleanFormulae> guards = new ArrayList<BooleanFormulae>(); 
		for (String guardName: mades_combinedfragment.getGuards()){                           
			if (guardName.equals("") || guardName.equals("t") || guardName.equals("true"))
				guards.add(new Predicate("t"));//means implicit True 
			if (guardName.equals("f") || guardName.equals("false"))
				guards.add(new Not(new Predicate("t"))); //(!!(-P- t)) is False// predicate t is reserved and stands for True 
		}
		return guards;
	}
	
	public String getOperator() {
		return this.mades_combinedfragment.getOperatorName();
	}

	//2014-01-21
//	public ArrayList<Predicate> getFirstMessages(String lifelineName){//returns predicate of messages that can possibly be first message of CombinedFragment.
//		ArrayList<Predicate> firstMessages = new ArrayList<Predicate>();
//		for (int i = 0; i < getLifelines().size(); i++) {
//			if (getLifelines().get(i).getName() == lifelineName)
//				for (InteractionOperand operand: mades_combinedfragment.getUMLOperands()) {
//					//if CF is loop then ... add LOOPOP1 as a prefix to message name
//					if (new SInteractionOperand(operand).getFirstMessages(i) != null)
//						firstMessages.addAll(new SInteractionOperand(operand).getFirstMessages(i));
//				}
//		}
//		if (firstMessages.size() == 0)
//			return null;
//		return firstMessages;
//	}
	public ArrayList<Predicate> getFirstMessages(String lifelineName){//returns predicate of messages that can possibly be first message of CombinedFragment.
		ArrayList<Predicate> firstMessages = new ArrayList<Predicate>();
		for (int i = 0; i < getLifelines().size(); i++) {
			if (getLifelines().get(i).getName() == lifelineName)
				for (InteractionOperand operand: mades_combinedfragment.getUMLOperands()) {
					//if CF is loop then ... add LOOPOP1 as a prefix to message name
					if (new SInteractionOperand(operand).getFirstMessages(i) != null)
						firstMessages.addAll(new SInteractionOperand(operand).getFirstMessages(i));
				}
		}
		if ((config.loop == ConfigCombine.WS) && (mades_combinedfragment.getOperatorName() == "loop") && (firstMessages.size() > 0)){
			String prefix = mades_combinedfragment.getName() + mades_combinedfragment.getOperands().get(0).getName()+"1";
			ArrayList<Predicate> firstMessagesTemp = new ArrayList<Predicate>();
			for (Predicate p:firstMessages) {
				p.setPredicateName(prefix + p.getPredicateName());
				firstMessagesTemp.add(p);
			}
			return firstMessagesTemp;
		}
		if (firstMessages.size() == 0)
			return null;
		return firstMessages;
	}
	
	public ArrayList<Predicate> getLastMessages(String lifelineName){//returns predicate of messages that can possibly be last message of CombinedFragment.

		ArrayList<Predicate> lastMessages = new ArrayList<Predicate>();
		for (int i = 0; i < getLifelines().size(); i++) {
			if (getLifelines().get(i).getName() == lifelineName)
				for (InteractionOperand operand:mades_combinedfragment.getUMLOperands()) {
					if (new SInteractionOperand(operand).getLastMessages(i) != null)
						lastMessages.addAll(new SInteractionOperand(operand).getLastMessages(i));
				}
		}
		if (lastMessages.size() == 0)
			return null;
		return lastMessages;
	}

	public ArrayList<Predicate> getEnclosingFragmentsPredicates() {
		ArrayList<Predicate> predicates = new ArrayList<Predicate>();
		ArrayList<Element> enclosingFragments = mades_combinedfragment.getEnclosingFragments();
		for (int i = 0; i < enclosingFragments.size(); i++) {
			Element e = enclosingFragments.get(i);
			if (e instanceof org.eclipse.uml2.uml.Interaction)
				predicates.add(new SSequenceDiagram(new SequenceDiagram((Interaction)e)).getPredicate());
			else if (e instanceof org.eclipse.uml2.uml.CombinedFragment)
				predicates.add(new SCombinedFragment(new CombinedFragment((org.eclipse.uml2.uml.CombinedFragment)e)).getPredicate());
			else if (e instanceof org.eclipse.uml2.uml.InteractionOperand)
				predicates.add(new SInteractionOperand(new InteractionOperand((org.eclipse.uml2.uml.InteractionOperand)e)).getPredicate());
		}
		return predicates;
	}

	public Predicate getEnclosingFLifelineEnd(int index) {
		String lifelineName = getLifelines().get(index).getName();
		 Interaction enclosingInteraction = mades_combinedfragment.getEnclosingFragment();
		 if (enclosingInteraction != null)
			 if (enclosingInteraction.getOwner() instanceof org.eclipse.uml2.uml.Package)
				 return new SSequenceDiagram(new SequenceDiagram(enclosingInteraction)).getLifelinePredicate(lifelineName).getEndPredicate();
		 org.eclipse.uml2.uml.InteractionOperand enclosingOperand = mades_combinedfragment.getEnclosingOperand();
		 return new SInteractionOperand(new org.correttouml.uml.diagrams.sequencediagram.InteractionOperand(enclosingOperand)).getLifelinePredicate(lifelineName).getEndPredicate();
	}
	
}
