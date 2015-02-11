package org.correttouml.uml2zot.semantics.sequencediagram;

import java.util.ArrayList;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;
import org.correttouml.uml2zot.semantics.util.bool.*;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.eclipse.uml2.uml.Interaction;
import org.eclipse.uml2.uml.InteractionOperand;

/**
 *@author Mohammad Mehdi Pourhashem Kallehbasti 
 */
public class SLink_Pre_Post implements BooleanFormulae{
	//[documentation]: \Dropbox\SharePolimi\Documentation\Sequence Diagram\Combined_Fragment\Modular_Semantics\[Link_Pre_Post].docx
	SCombinedFragment smodule;
	ConfigCombine configCombine;  

	public SLink_Pre_Post(SCombinedFragment smodule, ConfigCombine configcombine){
		this.smodule = smodule;
		this.configCombine = configcombine;
	}
	
	@Override
	public String toString() {
		return getFormula().toString();
	}

	public BooleanFormulae getFormula() {
		return new And(getFormulae());
	}
	
	public ArrayList<BooleanFormulae> getFormulae() {
		try {
			ArrayList<BooleanFormulae> f = new ArrayList<BooleanFormulae>();
			int n = smodule.getLifelines().size();
			Predicate SD_Stop = smodule.getSDPredicate().getStopPredicate();
			Predicate SD_Start = smodule.getSDPredicate().getStartPredicate();
// [Link_Pre_Post.docs]
//			if (config.combine == “ws”){
//				for (i = 0; i<n; i++){
//						borders(CF_X_Li, SD_End || SD_Stop)
//				if (pretype == PredicateType.SDStart || pretype == PredicateType.CFStart)
//						order(CF_X_Li_Pre, CF_X_Li_Start, True , SD_Stop, True)
//				else
//						order(CF_X_Li_Pre, CF_X_Li_Start, !!EnclosingF_Li_Skip, SD_Stop, True)
//
//				if (posttype == PredicateType.SDEnd || posttype == PredicateType.CFEnd)
//						orderMonoD(CF_X_Li_End, CF_X_Li_Post, True , SD_Stop, True)
//				else
//						order(CF_X_Li_End, CF_X_Li_Post, !!EnclosingF_Li_Skip , SD_Stop, True)
//				}//end for
//				}//end ws
//				if (config.combine == “sync”){
//				for (i = 0; i<n; i++){
//				if (pretype == PredicateType.SDStart || pretype == PredicateType.CFStart)
//						order(CF_X_Li_Pre, CF_X_Start, True , SD_Stop, True)
//				else
//						order(CF_X_Li_Pre, CF_X_Li_Start, !!EnclosingF_Li_Skip, SD_Stop, True)
//
//				if (posttype == PredicateType.SDEnd || posttype == PredicateType.CFEnd)
//						orderMonoD(CF_X_End, CF_X_Li_Post, True , SD_Stop, True)
//				else
//						order(CF_X_End, CF_X_Li_Post, !!EnclosingF_Li_Skip, SD_Stop, True)
//
//				}//end for
//				}//end sync

			
			// 
			// if (configCombine == “ws”){
				if(configCombine == ConfigCombine.WS){
					for (int i = 0; i < n; i++){
						// // borders(CF_X_Li, SD_End || SD_Stop)
						f.add(new SBorders(smodule.getLifelinePredicate(i), SD_Stop));
						
						MetaPredicate preMPrd = smodule.getLifelinesPreMetaPredicates().get(i);
						Predicate pre = preMPrd.getPredicate();
						PredicateType pretype = preMPrd.getPredicatetype();
//						Predicate pre = smodule.getLifelinesPrePredicates().get(i);
						Predicate start = smodule.getLifelinePredicate(i).getStartPredicate();
						Predicate end = smodule.getLifelinePredicate(i).getEndPredicate();
						MetaPredicate postMPrd = smodule.getLifelinesPostMetaPredicates().get(i);
						Predicate post = postMPrd.getPredicate();
						PredicateType posttype = postMPrd.getPredicatetype();
//						Predicate post = smodule.getLifelinesPostPredicates().get(i);
						BooleanFormulae exception = SD_Stop;
						BooleanFormulae guard = new Not(getEnclosingFLifelineSkip(i));
//						BooleanFormulae exception = new Or(SD_Stop, getEnclosingFLifelineSkip(i));
//						BooleanFormulae NOexception = new Not(new Or(SD_Stop, getEnclosingFLifelineSkip(i)));


						if (pretype == PredicateType.SDStart || pretype == PredicateType.CFStart)
							f.add(new SOrder(pre, start, exception, true));
						else 
							f.add(new SOrder(pre, start, guard, exception, true));

						if (posttype == PredicateType.SDEnd || posttype == PredicateType.CFEnd)
							f.add(new SOrderMonoD(end, post, exception, true));
						else if (posttype == PredicateType.MStart || posttype == PredicateType.MEnd || posttype == PredicateType.CFStart)
							f.add(new SOrder(end, post, guard, exception, true));
					}
				}else if(configCombine == ConfigCombine.SYNC){
					for (int i = 0; i < n; i++){
						MetaPredicate preMPrd = smodule.getLifelinesPreMetaPredicates().get(i);
						Predicate pre = preMPrd.getPredicate();
						PredicateType pretype = preMPrd.getPredicatetype();
//						Predicate pre = smodule.getLifelinesPrePredicates().get(i);
						Predicate start = smodule.getPredicate().getStartPredicate();
						Predicate end = smodule.getPredicate().getEndPredicate();
						MetaPredicate postMPrd = smodule.getLifelinesPostMetaPredicates().get(i);
						Predicate post = postMPrd.getPredicate();
						PredicateType posttype = postMPrd.getPredicatetype();
//						Predicate post = smodule.getLifelinesPostPredicates().get(i);
						BooleanFormulae exception = SD_Stop;
						BooleanFormulae guard = new Not(getEnclosingFLifelineSkip(i));
//						BooleanFormulae exception = new Or(SD_Stop, getEnclosingFLifelineSkip(i));
//						BooleanFormulae Noexception = new Not( new Or(SD_Stop, getEnclosingFLifelineSkip(i)));

						// // order(CF_X_Li_Pre, CF_X_Start, True , (SD_End || SD_Stop || CF_X_End), True)
						if (pretype == PredicateType.SDStart || pretype == PredicateType.CFStart)
							f.add(new SOrder(pre, start, exception, true));
						else 
							f.add(new SOrder(pre, start, guard, exception, true));
						// // order(CF_X_End, CF_X_Li_Post, True , (SD_End || SD_Stop || CF_X_End), True)
						if (posttype == PredicateType.SDEnd || posttype == PredicateType.CFEnd)
							f.add(new SOrderMonoD(end, post, exception, true));
						else if (posttype == PredicateType.MStart || posttype == PredicateType.MEnd || posttype == PredicateType.CFStart)
							f.add(new SOrder(end, post, guard, exception, true));
					}
				}
				return f;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public Predicate getEnclosingFLifelineSkip(int index) {
		String lifelineName = smodule.getLifelines().get(index).getName();
		 Interaction enclosingInteraction = smodule.mades_combinedfragment.getEnclosingFragment();
		 if (enclosingInteraction != null)
			 if (enclosingInteraction.getOwner() instanceof org.eclipse.uml2.uml.Package)
				 return new SSequenceDiagram(new SequenceDiagram(enclosingInteraction)).getLifelinePredicate(lifelineName).getSkipPredicate();
		 InteractionOperand enclosingOperand = smodule.mades_combinedfragment.getEnclosingOperand();
		 return new SInteractionOperand(new org.correttouml.uml.diagrams.sequencediagram.InteractionOperand(enclosingOperand)).getLifelinePredicate(lifelineName).getSkipPredicate();
	}
	
}