package org.correttouml.uml2zot.semantics.sequencediagram;

import java.util.ArrayList;
import org.correttouml.uml.diagrams.sequencediagram.*;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/
public class SInteractionOperand implements SInteractionFragment {
	private InteractionOperand mades_interactionoperand;
	private Config config;
	public SInteractionOperand(InteractionOperand io, Config config) {
		this.mades_interactionoperand = io;
		this.config = config;
	}
	
	public SInteractionOperand(InteractionOperand io) {
		this.mades_interactionoperand = io;
	}
	
	@Override
	public Predicate getPredicate() {
		return new Predicate(this.mades_interactionoperand.getPredicateName());
	}
	
	public SCombinedFragment getEnclosingSCF() { ////#### it does not work for nested "ws" loops
		return new SCombinedFragment(new CombinedFragment((org.eclipse.uml2.uml.CombinedFragment)mades_interactionoperand.uml_interactionoperand.getOwner()));
	}
	
	public String getName() {
		return this.mades_interactionoperand.getName();
	}
	
	public ArrayList<Lifeline> getLifelines(){
		return this.mades_interactionoperand.getLifelines();
	}
	
	public Predicate getLifelinePredicate(int index){
		return new Predicate(this.mades_interactionoperand.getPredicateName() + '_' + mades_interactionoperand.getLifelines().get(index).getName());
	}
	
	public Predicate getSDPredicate(){
		return new Predicate(mades_interactionoperand.getSDName());
	}
	
	public ArrayList<Predicate> getLifelinesStartPredicates(){
		ArrayList<Predicate> lifelinesPredicateStarts = new ArrayList<Predicate>();
		for(Predicate p : getLifelinesPredicates())
			lifelinesPredicateStarts.add(p.getStartPredicate());
		return lifelinesPredicateStarts;
	}
	
	public ArrayList<Predicate> getLifelinesEndPredicates(){
		ArrayList<Predicate> lifelinesPredicateEnds = new ArrayList<Predicate>();
		for(Predicate p : getLifelinesPredicates())
			lifelinesPredicateEnds.add(p.getEndPredicate());
		return lifelinesPredicateEnds;
	}
	
	public ArrayList<Predicate> getLifelinesPredicates() {
		ArrayList<Predicate> lifelinesPredicates = new ArrayList<Predicate>();
		for (Lifeline l : mades_interactionoperand.getLifelines()) {
			lifelinesPredicates.add((getLifelinePredicate(l
					.getName())));
			l.getEvents();
		}
		return lifelinesPredicates;
	}
	
	public Predicate getLifelinePredicate(String lifelineName) {
		return new Predicate(this.mades_interactionoperand.getPredicateName() + '_' + lifelineName);
	}
	
	public BooleanFormulae getGuard(){////####incomplete
		if (mades_interactionoperand.getGuard() == null)
			return new Predicate("t");
		String guard = mades_interactionoperand.getGuard();
		if (guard.equals("") || guard.equals("t") || guard.equals("true"))
			return new Predicate("t");//means implicit True 
		if (guard.equals("f") || guard.equals("false"))
			return new Not(new Predicate("t")); //(!!(-P- t)) is False// predicate t is reserved and stands for True 
		return new Predicate(mades_interactionoperand.getGuard());
	}

	public ArrayList<Predicate> getFirstMessages(int lifelineIndex){//returns predicate of messages that can possibly be first message of CombinedFragment.
		ArrayList<Predicate> firstMessages = new ArrayList<Predicate>();
		int evSize =  mades_interactionoperand.getLifelineEvents(lifelineIndex).size();
		for (int j = 0; j < evSize; j++) {
			InteractionFragment sepliEvj = null;
			SCombinedFragment sepliCFj = null;
			Predicate sepliEvjPrd = null;
			sepliEvj = mades_interactionoperand.getLifelineEvents(lifelineIndex).get(j);
			if(sepliEvj instanceof MessageStart) 
				sepliEvjPrd = new SMessageStart((MessageStart)sepliEvj).getPredicate();
			if(sepliEvj instanceof MessageEnd)
				sepliEvjPrd = new SMessageEnd((MessageEnd)sepliEvj).getPredicate();
			if (SInteractionFragmentFactory.getInstance(sepliEvj) instanceof SCombinedFragment)
				sepliCFj = (SCombinedFragment)SInteractionFragmentFactory.getInstance(sepliEvj);

			if (sepliEvjPrd != null) { // if event is M 
				firstMessages.add(sepliEvjPrd);
				return firstMessages;
			}
			if (sepliCFj != null) { // if event is CF_Y, we add its first messages to "firstMessages" and move forward, because CF_Y may get ignored and there is a possible first message after that. 
				if (sepliCFj.getFirstMessages(mades_interactionoperand.getLifelinesNames().get(lifelineIndex)) != null)
					firstMessages.addAll(sepliCFj.getFirstMessages(mades_interactionoperand.getLifelinesNames().get(lifelineIndex)));
			}
		}
		return firstMessages;
	}
	
	public ArrayList<Predicate> getLastMessages(int lifelineIndex){//returns predicate of messages that can possibly be last message of CombinedFragment.
		ArrayList<Predicate> lastMessages = new ArrayList<Predicate>();
		int evSize =  mades_interactionoperand.getLifelineEvents(lifelineIndex).size();
		for (int j = evSize - 1; j >= 0 ; j--) {
			InteractionFragment sepliEvj = null;
			SCombinedFragment sepliCFj = null;
			Predicate sepliEvjPrd = null;
			sepliEvj = mades_interactionoperand.getLifelineEvents(lifelineIndex).get(j);
			if(sepliEvj instanceof MessageStart) 
				sepliEvjPrd = new SMessageStart((MessageStart)sepliEvj).getPredicate();
			if(sepliEvj instanceof MessageEnd)
				sepliEvjPrd = new SMessageEnd((MessageEnd)sepliEvj).getPredicate();
			if (SInteractionFragmentFactory.getInstance(sepliEvj) instanceof SCombinedFragment)
				sepliCFj = (SCombinedFragment)SInteractionFragmentFactory.getInstance(sepliEvj);

			if (sepliEvjPrd != null) { // if event is M 
				lastMessages.add(sepliEvjPrd);
				return lastMessages;
			}
			if (sepliCFj != null) { // if event is CF_Y, we add its last messages to "lastMessages" and move backward, because CF_Y may get ignored and there is a possible last message before that. 
				if (sepliCFj.getLastMessages(mades_interactionoperand.getLifelinesNames().get(lifelineIndex)) != null)
					lastMessages.addAll(sepliCFj.getLastMessages(mades_interactionoperand.getLifelinesNames().get(lifelineIndex)));
			}
		}
		return lastMessages;
	}
	
}
