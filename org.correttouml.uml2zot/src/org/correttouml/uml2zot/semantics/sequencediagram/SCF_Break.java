package org.correttouml.uml2zot.semantics.sequencediagram;

import java.util.ArrayList;

import org.correttouml.uml.diagrams.sequencediagram.CF_Break;
import org.correttouml.uml.diagrams.sequencediagram.CombinedFragment;
import org.correttouml.uml.diagrams.sequencediagram.CombinedFragmentFactory;
import org.correttouml.uml.diagrams.sequencediagram.InteractionOperand;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;
import org.correttouml.uml2zot.semantics.util.bool.*;
import org.correttouml.uml2zot.semantics.util.trio.*;
import org.eclipse.uml2.uml.Element;
import org.eclipse.uml2.uml.Interaction;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/

public class SCF_Break extends SCombinedFragment implements SCombinedFragmentItf{
	//[documentation]: \Dropbox\SharePolimi\Documentation\Sequence Diagram\Combined_Fragment\Modular_Semantics\[CF_Break].docx
	private CF_Break mades_cf_break;
	public SCF_Break(CF_Break cfbreak) {
		super(cfbreak);
		this.mades_cf_break = cfbreak;
	}

	@Override
	public ArrayList<BooleanFormulae> getSemantics() {
		try {
//			ArrayList<Predicate> af= getEnclosingFragmentsPredicates();
			ArrayList<BooleanFormulae> f = new ArrayList<BooleanFormulae>();
			Predicate SD_Stop = getSDPredicate().getStopPredicate();
			int n = getLifelines().size();
			// // borders(CF_Break, SD_Stop)
			// // link_Pre_Post(CF_Break, config)////####before breakCF
			f.add(new SBorders(getPredicate(), SD_Stop).getFun());
			f.addAll(new SLink_Pre_Post(this, config.combine).getFormulae()); ////####before breakCF
			// // order(CF_Break_Start, CF_Break_End, True, SD_Stop, True)
			f.add(new SOrder(getPredicate().getStartPredicate(), getPredicate().getEndPredicate(), SD_Stop, true).getFun());
			
			/*
//			//<Link_Pre_Post> //special version of Link is used for CF_Break, instead of main Link.
//			if (config.combine == ws){
			if(config.combine == ConfigCombine.WS){
//			for (i = 0; i<n; i++){
				for (int i = 0; i < n; i++){
					Predicate pre = getLifelinesPrePredicates().get(i);
					Predicate start = getLifelinePredicate(i).getStartPredicate();
					Predicate end = getLifelinePredicate(i).getEndPredicate();
					MetaPredicate postMPrd = getLifelinesPostMetaPredicates().get(i);
					Predicate post = postMPrd.getPredicate();
					PredicateType posttype = postMPrd.getPredicatetype();
//					BooleanFormulae exception = new Or(SD_Stop, getEnclosingFLifelineEnd(i));
					BooleanFormulae exception = new Or(SD_Stop, new SLink_Pre_Post(this, config.combine).getEnclosingFLifelineSkip(i));
					BooleanFormulae NOexception = new Not(new Or(SD_Stop, new SLink_Pre_Post(this, config.combine).getEnclosingFLifelineSkip(i)));
					
////					borders(CF_Break_Li, SD_End || SD_Stop)// already implemented in [combine]
//					f.add(new SBorders(getLifelinePredicate(i), SD_Stop));
//					order(CF_Break_Li_Pre, CF_Break_Li_Start, True , (SD_End || SD_Stop || EnclosingCF_Li_End), True)
					f.add(new SOrder(pre, start, exception, true));
					
//					order(CF_Break_Li_End, CF_Break_Li_Post, !!CF_Break_Op_Li_End , (SD_End || SD_Stop || EnclosingCF_Li_End), True)					
					f.add(new SOrderMonoD(end, post, exception, true).getFun());

//			}
				}
//			}
			}
			
//			if (config.combine == �sync�){
			if(config.combine == ConfigCombine.SYNC){
//			for (i = 0; i<n; i++){
				for (int i = 0; i < n; i++){
					Predicate pre = getLifelinesPrePredicates().get(i);
					Predicate start = getPredicate().getStartPredicate();
					Predicate end = getPredicate().getEndPredicate();
					MetaPredicate postMPrd = getLifelinesPostMetaPredicates().get(i);
					Predicate post = postMPrd.getPredicate();
					PredicateType posttype = postMPrd.getPredicatetype();
//					BooleanFormulae exception = new Or(SD_Stop, getEnclosingFLifelineEnd(i));
					BooleanFormulae exception = new Or(SD_Stop, new SLink_Pre_Post(this, config.combine).getEnclosingFLifelineSkip(i));
					BooleanFormulae NOexception = new Not(new Or(SD_Stop, new SLink_Pre_Post(this, config.combine).getEnclosingFLifelineSkip(i)));
					
//					order(CF_Break_Li_Pre, CF_Break_Start, True , (SD_End || SD_Stop || EnclosingCF_Li_End), True)
					f.add(new SOrder(pre, start, exception, true).getFun());
					
//					order(CF_Break_End, CF_Break_Li_Post, !!CF_Break_Op_End, (SD_End || SD_Stop || EnclosingCF_Li_End), True)
					f.add(new SOrderMonoD(end, post, exception, true));
//			}
				}
//			}
			}
//			//</Link_Pre_Post>
			*/

			
			// // if (config.combine == �ws�){
			if(config.combine == ConfigCombine.WS){
				// // ||i=1 to n(CF_Break_Li_Start) => CF_Break
				f.add(new Implies(new Or(getLifelinesStartPredicates()), getPredicate()));
				// // CF_Break_Start => ||i=1 to n(CF_Break_Li_Start) 
				f.add(new Implies(getPredicate().getStartPredicate(), new Or(getLifelinesStartPredicates())));
				
//				&&j=1 to n order(CF_Break_Lj_Start, CF_Break_Op_Lj_Start, CF_Break_Op, SD_Stop, True)
				for (int i = 0; i < n; i++) 
					f.add(new SOrder(getLifelinesStartPredicates().get(i), getOpiLjPredicate(0, i).getStartPredicate(), getOperandsPredicates().get(0), SD_Stop, true).getFun());////#### before break
//					f.add(new SOrder(getLifelinesStartPredicates().get(i), getOpiLjPredicate(0, i).getStartPredicate(), getOperandsPredicates().get(0),new Or(getOpiLjPredicate(0, i).getEndPredicate(), SD_Stop), true).getFun());

//			    &&j=1 to n orderMonoD(CF_Break_Op_Lj_End, CF_Break_Lj_End, True, SD_Stop, True)
				for (int i = 0; i < n; i++) 
					f.add(new SOrderMonoD(getOpiLjPredicate(0, i).getEndPredicate(), getLifelinesEndPredicates().get(i), SD_Stop, true).getFun());
				ArrayList<BooleanFormulae> tempf1 = new ArrayList<BooleanFormulae>();
				
//				(CF_Break_Start && !!CF_Break_Guard)  => &&j=1 to nsomFIn_i(CF_Break_Lj_Start && CF_Break_Lj_End, CF_Break)
				if (getGuards().get(0) == null) {
					throw new Exception("CF_Break's guard cannot be null, it should be \"true\" or \"false\"");
				}else if (!getGuards().get(0).toString().equals(new Predicate("t").toString())){// if CF_Break_Guard is False or an explicit guard, this axiom will be added {(CF_Break_Start && !!CF_Break_Guard)  => &&j=1 to nsomFIn_i(CF_Break_Lj_Start && CF_Break_Lj_End, CF_Break)} //otherwise if CF_Break_Guard is implicit True this axiom is no longer viable and no axiom will be added. 
				tempf1.clear();
				for (int i = 0; i < n; i++)
					tempf1.add(new SSomFIn_i(new And(getLifelinesStartPredicates().get(i), getLifelinesEndPredicates().get(i)), getPredicate()).getFun());
				f.add(new Implies(
						new And(getPredicate().getStartPredicate(), new Not(getGuards().get(0))),
						new And(tempf1)));
				}
				
//				(CF_Break_Start && CF_Break_Guard) => CF_Break_Op_Start 
				f.add(new Implies(new And(getPredicate().getStartPredicate(), getGuards().get(0)), getOperandsPredicates().get(0).getStartPredicate()));
								
//				for (int i = 0; i < n; i++)
				for (int i = 0; i < n; i++) {
//					(CF_Break_Op_Li_End && CF_Break_Op_Li_Start) => next(CF_Break_Li_End)
					f.add(new Implies(new And(getOpiLjPredicate(0, i).getEndPredicate(), getOpiLjPredicate(0, i).getStartPredicate()), new Next(getLifelinePredicate(i).getEndPredicate())));
//					(CF_Break_Op_Li_End && !!CF_Break_Op_Li_Start) => CF_Break_Li_End
					f.add(new Implies(new And(getOpiLjPredicate(0, i).getEndPredicate(), new Not(getOpiLjPredicate(0, i).getStartPredicate())), getLifelinePredicate(i).getEndPredicate()));
				}
////				(CF_Break_Op_End && CF_Break_Op_Start) => next(CF_Break_End)
//				f.add(new Implies(new And(getOperandsPredicates().get(0).getEndPredicate(), getOperandsPredicates().get(0).getStartPredicate()), new Next(getPredicate().getEndPredicate())));
////				(CF_Break_Op_End && !!CF_Break_Op_Start) => CF_Break_End
//				f.add(new Implies(new And(getOperandsPredicates().get(0).getEndPredicate(), new Not(getOperandsPredicates().get(0).getStartPredicate())), getPredicate().getEndPredicate()));
				
////				 CF_Break_End => ((CF_Break_Start && !! CF_Break_Guard) || yesterday((CF_Break_Op_End && CF_Break_Op_Start) || (CF_Break_Op_End && !!CF_Break_Op_Start))
//				f.add(new Implies(
//						getPredicate().getEndPredicate(), 
//						new Or(new And(getPredicate().getStartPredicate(), new Not(getGuards().get(0))), 
//								new Yesterday(new And(getOperandsPredicates().get(0).getEndPredicate(), getOperandsPredicates().get(0).getStartPredicate()))
//								, new And(getOperandsPredicates().get(0).getEndPredicate(), new Not(getOperandsPredicates().get(0).getStartPredicate())))
//						));
//				
				
//				CF_Break_End => ((||j=1 to nCF_Break_Li_End) && (&&j=1 to nsomPIn_i(CF_Break_Lj_End, CF_Break)))
				tempf1.clear();
				for (int i = 0; i < n; i++)
					tempf1.add(new SSomPIn_i(getLifelinePredicate(i).getEndPredicate(), getPredicate()));
				f.add(new Implies(getPredicate().getEndPredicate(), new And(new Or(getLifelinesEndPredicates()), new And(tempf1))));

				
//				CF_Break_Op_Start => CF_Break_Guard && CF_Break_Start
				if (getGuards().get(0) == null) {
					throw new Exception("CF_Break's guard cannot be null, it should be \"true\" or \"false\"");}
				else {
					f.add(new Implies(getOperandsPredicates().get(0).getStartPredicate(), new And(getGuards().get(0), getPredicate().getStartPredicate())));
				}
// <Skip semantics>
//				for (int j = 0; j < n; j++)
				for (int j = 0; j < n; j++) {
//					(CF_Break_Lj_End && (CF_Break_Op_Lj_End || yesterday(CF_Break_Op_Lj_End)) => &&i=1 to JumpLengthCF_Break_EFListi_Lj_End ////#### if combine = "ws" and loop = "sync" we need to change this semantics
					tempf1.clear();
					for(int i = 0; i < getJumpLength(); i++) {
						tempf1.add(getBreakEnclosingFragmentiLj(i, j).getEndPredicate());
//					    CF_BreakEFListi_Lj.SkipTriggers.add(CF_Break_Lj_End && (CF_Break_Op_Lj_End || yesterday(CF_Break_Op_Lj_End))
						Predicate predicateSkip = getBreakEnclosingFragmentiLj(i, j).getSkipPredicate(); //E.g. predicateSkip = "(-P- SD1_L1_Skip)"
						if (PredicateSkip.instances.containsKey(predicateSkip))
							PredicateSkip.instances.get(predicateSkip).add(new And(getLifelinesEndPredicates().get(j), new Or(getOpiLjPredicate(0, j).getEndPredicate(), new Yesterday(getOpiLjPredicate(0, j).getEndPredicate())))); //<"(-P- SD1_L1_Skip)", arraylist{CF_Break_Op_Lj_End}> will be added to PredicateSkip.instances
						else {
							ArrayList<BooleanFormulae> triggers = new ArrayList<BooleanFormulae>();
							triggers.add(new And(getLifelinesEndPredicates().get(j), new Or(getOpiLjPredicate(0, j).getEndPredicate(), new Yesterday(getOpiLjPredicate(0, j).getEndPredicate()))));
							PredicateSkip.instances.put(predicateSkip, triggers);
						}
					}
					f.add(new Implies(new And(getLifelinesEndPredicates().get(j), new Or(getOpiLjPredicate(0, j).getEndPredicate(), new Yesterday(getOpiLjPredicate(0, j).getEndPredicate()))), new And(tempf1)));
					
				}
// </Skip semantics>
				
//			}//end of �ws�
			}
//
//			if (config.combine == �sync�){
			else if (config.combine == ConfigCombine.SYNC){
//				(CF_Break_Start && !! CF_Break_Guard) => CF_Break_End
				if (getGuards().get(0) == null) {
					throw new Exception("CF_Break's guard cannot be null, it should be \"true\" or \"false\"");}
				else {
					f.add(new Implies(new And(getPredicate().getStartPredicate(), new Not(getGuards().get(0))), getPredicate().getEndPredicate()));
				}
				
//			(CF_Break_Start && CF_Break_Guard) => CF_Break_Op_Start
			f.add(new Implies(new And(getPredicate().getStartPredicate(), getGuards().get(0)), getOperandsPredicates().get(0).getStartPredicate()));
			
//			CF_Break_End => ((CF_Break_Start && !! CF_Break_Guard) || yesterday((CF_Break_Op_End && CF_Break_Op_Start) || (CF_Break_Op_End && !!CF_Break_Op_Start))
			f.add(new Implies(
					getPredicate().getEndPredicate(), 
					new Or(new And(getPredicate().getStartPredicate(), new Not(getGuards().get(0))), 
							new Yesterday(new And(getOperandsPredicates().get(0).getEndPredicate(), getOperandsPredicates().get(0).getStartPredicate()))
							, new And(getOperandsPredicates().get(0).getEndPredicate(), new Not(getOperandsPredicates().get(0).getStartPredicate())))
					));
			
//			CF_Break_Op_Start => (CF_Break_Start && CF_Break_Guard)
			if (getGuards().get(0) != null)
				f.add(new Implies(getOperandsPredicates().get(0).getStartPredicate(), new And(getGuards().get(0), getPredicate().getStartPredicate())));
			else
				f.add(new Implies(getOperandsPredicates().get(0).getStartPredicate(), getPredicate().getStartPredicate()));
			
//			CF_Break_Op_End => CF_Break_End //deleted in new version
//			f.add(new Implies(getOperandsPredicates().get(0).getEndPredicate(), getPredicate().getEndPredicate()));
			
			// <Skip semantics> making things_End happen. And add this trigger to corresponding PredicateSkip. E.g. if this CF_Break make SD1_End, SD1_Opt1_End and SD1_Opt1_Loop1_End true, then we will add this trigger to list of triggers of "SD1_Opt1_Loop1_Skip", "SD1_Opt1_Skip", and "SD1_Skip".
			ArrayList<BooleanFormulae> tempf1 = new ArrayList<BooleanFormulae>();
//			for (int j = 0; j < n; j++)
			for (int j = 0; j < n; j++) {
//				(CF_Break_End && (CF_Break_Op_Lj_End || yesterday(CF_Break_Op_Lj_End)) => &&i=1 to JumpLengthCF_Break_EFListi_Lj_End ////#### if combine = "ws" and loop = "sync" we need to change this semantics
				for(int i = 0; i < getJumpLength(); i++) {
					tempf1.clear();
					if (getBreakEnclosingFragmentsPredicates().get(i).getPredicatetype() == PredicateType.CF) {//if getBreakEnclosingFragmentsPredicates().get(i) is CF_Loop we need to add only CF_Loop_Skip, because in "sync" we do not have CF_Loop_Li or any CF_X_Li at all.
//						if (j == 0) {
							tempf1.add(getBreakEnclosingFragmentsPredicates().get(i).getPredicate().getEndPredicate());
							Predicate predicateSkip = getBreakEnclosingFragmentsPredicates().get(i).getPredicate().getSkipPredicate(); //E.g. predicateSkip = "(-P- SD1_Loop_Skip)"
							if (PredicateSkip.instances.containsKey(predicateSkip))
								PredicateSkip.instances.get(predicateSkip).add(new And(getPredicate().getEndPredicate(), new Or(getOpiLjPredicate(0, j).getEndPredicate(), new Yesterday(getOpiLjPredicate(0, j).getEndPredicate())))); //<"(-P- SD1_L1_Skip)", arraylist{CF_Break_Op_Lj_End}> will be added to PredicateSkip.instances
							else {
								ArrayList<BooleanFormulae> triggers = new ArrayList<BooleanFormulae>();
								triggers.add(new And(getPredicate().getEndPredicate(), new Or(getOpiLjPredicate(0, j).getEndPredicate(), new Yesterday(getOpiLjPredicate(0, j).getEndPredicate()))));
								PredicateSkip.instances.put(predicateSkip, triggers);
							}
//						}
					}else {
						tempf1.add(getBreakEnclosingFragmentiLj(i, j).getEndPredicate());
						//				    CF_BreakEFListi_Lj.SkipTriggers.add((CF_Break_End && (CF_Break_Op_Lj_End || yesterday(CF_Break_Op_Lj_End)))
						Predicate predicateSkip = getBreakEnclosingFragmentiLj(i, j).getSkipPredicate(); //E.g. predicateSkip = "(-P- SD1_L1_Skip)"
						if (PredicateSkip.instances.containsKey(predicateSkip))
							PredicateSkip.instances.get(predicateSkip).add(new And(getPredicate().getEndPredicate(), new Or(getOpiLjPredicate(0, j).getEndPredicate(), new Yesterday(getOpiLjPredicate(0, j).getEndPredicate())))); //<"(-P- SD1_L1_Skip)", arraylist{CF_Break_Op_Lj_End}> will be added to PredicateSkip.instances
						else {
							ArrayList<BooleanFormulae> triggers = new ArrayList<BooleanFormulae>();
							triggers.add(new And(getPredicate().getEndPredicate(), new Or(getOpiLjPredicate(0, j).getEndPredicate(), new Yesterday(getOpiLjPredicate(0, j).getEndPredicate()))));
							PredicateSkip.instances.put(predicateSkip, triggers);
						}
					}
					if (tempf1.size() > 0)
						f.add(new Implies(new And(getPredicate().getEndPredicate(), new Or(getOpiLjPredicate(0, j).getEndPredicate(), new Yesterday(getOpiLjPredicate(0, j).getEndPredicate()))), new And(tempf1)));//(CF_Break_End && (CF_Break_Op_Lj_End || yesterday(CF_Break_Op_Lj_End)) => &&i=1 to JumpLengthCF_Break_EFListi_Lj_End
				}
			}
//</Skip semantics>
			
//			}// end of �sync�
			}
//			call by lifeline name
//			combine(CF_Break_Op, config)
			f.addAll(new SCombine(mades_combinedfragment.getOperands().get(0)).getFormulae());
		
				
			return f;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	private int getJumpLength() {
		return mades_cf_break.getMAXValue();
	}
	
	private Predicate getBreakEnclosingFragmentiLj(int i, int j) {
		String lifelineName = getLifelines().get(j).getName();
		return new Predicate(getBreakEnclosingFragmentsPredicates().get(i).getPredicate().getPredicateName()+"_"+lifelineName);
	}
	
	public ArrayList<MetaPredicate> getBreakEnclosingFragmentsPredicates(){
		ArrayList<MetaPredicate> metaPredicates = new ArrayList<MetaPredicate>();
		ArrayList<Element> enclosingFragments = mades_combinedfragment.getEnclosingFragments();
		for (int i = 0; i < enclosingFragments.size(); i++) {
			Element e = enclosingFragments.get(i);
			if (e instanceof org.eclipse.uml2.uml.Interaction)
				metaPredicates.add(new MetaPredicate(new SSequenceDiagram(new SequenceDiagram((Interaction)e)).getPredicate(), PredicateType.SD));
			else if (e instanceof org.eclipse.uml2.uml.CombinedFragment) {
				SCombinedFragment scf  = (SCombinedFragment)SCombinedFragmentFactory.getInstance((CombinedFragment)CombinedFragmentFactory.getInstance((org.eclipse.uml2.uml.CombinedFragment)e));
				if (scf instanceof SCF_Loop)
					metaPredicates.add(new MetaPredicate(scf.getPredicate(), PredicateType.CF));
			}
			else if (e instanceof org.eclipse.uml2.uml.InteractionOperand)
				metaPredicates.add(new MetaPredicate(new SInteractionOperand(new InteractionOperand((org.eclipse.uml2.uml.InteractionOperand)e)).getPredicate(), PredicateType.OP));
		}
		return metaPredicates;
	}
	
}

