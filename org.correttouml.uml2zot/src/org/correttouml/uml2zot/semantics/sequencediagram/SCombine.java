package org.correttouml.uml2zot.semantics.sequencediagram;

import java.util.ArrayList;
import java.util.List;

import org.correttouml.uml.diagrams.sequencediagram.*;
import org.correttouml.uml2zot.semantics.sequencediagram.SInteractionOperand;
import org.correttouml.uml2zot.semantics.util.bool.*;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.correttouml.uml2zot.semantics.util.trio.Until_ei;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/

public class SCombine implements BooleanFormulae{
	//[documentation]: \Dropbox\SharePolimi\Documentation\Sequence Diagram\Combined_Fragment\Modular_Semantics\[combine].docx
	private SSequenceDiagram ssd;
	private SequenceDiagram sd;
	private InteractionOperand module;
	private SInteractionOperand smodule;
	private Config config;
	public ArrayList<String> comments = null;
	
	public SCombine(SequenceDiagram sd){
        this.sd = sd;
        this.ssd = new SSequenceDiagram(sd);
        this.config = ssd.getConfig();
    }

	public SCombine(InteractionOperand module){
        this.module = module;
        this.smodule = new SInteractionOperand(module);
        this.config = new SSequenceDiagram(module.getSD()).getConfig();
    }
	
    @Override
	public String toString() {
    	String s = "";
    	ArrayList<BooleanFormulae> tempf1 = new ArrayList<BooleanFormulae>();
    	tempf1.addAll(getFormulae());
    	for (BooleanFormulae bf:tempf1)
    		s += bf.toString() + "\n";
    	return s;
	}
	
	public ArrayList<BooleanFormulae> getFormulae() {
		try {
			ArrayList<BooleanFormulae> f = new ArrayList<BooleanFormulae>();
			comments = new ArrayList<String>();
			// first we consider algorithm for module SD and repeat same algorithm
			// for module CF_X_Op
			// //if (module == SD){
			if (ssd != null) {// If it is an SD and not a CF.
				Predicate SD = ssd.getPredicate();
				Predicate SD_Start = ssd.getPredicate().getStartPredicate();
				Predicate SD_End = ssd.getPredicate().getEndPredicate();
				Predicate SD_Stop = ssd.getPredicate().getStopPredicate();
				int n = ssd.getLifelinesPredicates().size(); //n: number of lifelines in the module(or SD)
				// //borders(module, SD_Stop)
//				f.addAll(new SBorders(SD, SD_Stop).getFormulae());
				comments.add("Borders of SD");
				f.add(new SBorders(SD, SD_Stop).getFun());
				// //&&i=1 to n (SD_Start <=> SD_Li_Start)
				for (Predicate p : ssd.getLifelinesPredicateStarts()) {
					comments.add(null);
					f.add(new Iff(SD_Start, p));
				}
				// // order(module_Start, module_End, true, SD_Stop, True)
				comments.add(null);
				f.add(new SOrder(SD_Start, SD_End, SD_Stop, true).getFun());
				// // &&i=1 to n (order(module_Li_Start, module_Li_End, True, SD_Stop, True))
				for (int i = 0; i < n; i++) {
					comments.add(null);
					f.add(new SOrder(ssd.getLifelinePredicate(i).getStartPredicate(), ssd.getLifelinePredicate(i).getEndPredicate(), SD_Stop, true).getFun());
				}

				for (int i = 0; i < n; i++) {
					String currentLifelineName = sd.getLifeline(i).getName();
					InteractionFragment liFirstEv = null;
					InteractionFragment liSecondEv = null;
					InteractionFragment liLastEv = null;
					InteractionFragment liEvj = null;
					InteractionFragment liEvjp1 = null;
					Predicate liFirstEvPrd = null;
					Predicate liSecondEvPrd = null;
					Predicate liLastEvPrd = null;
					Predicate liEvjPrd = null;
					Predicate liEvjp1Prd = null;
					BooleanFormulae exception = SD_Stop;
//					BooleanFormulae exception = new Or(SD_Stop, ssd.getLifelinePredicate(i).getSkipPredicate());
//					BooleanFormulae NOexception = new Not(new Or(SD_Stop, ssd.getLifelinePredicate(i).getSkipPredicate()));
					BooleanFormulae guard = new Not(ssd.getLifelinePredicate(i).getSkipPredicate());
					List<InteractionFragment> liEvents = sd.getLifelines().get(i).getEvents();
					f.addAll(getEOSemanticsBF(liEvents));
					ArrayList<InteractionFragment> liNonEOEvents = getNonEOEvents(liEvents);
					int evSize = liNonEOEvents.size();
					// // borders(SD_Li, SD_End || SD_Stop)
					comments.add(null);
					f.add(new SBorders(ssd.getLifelinePredicate(i), SD_Stop).getFun());
					// //if (Ev[i].size == 0)
					if (evSize == 0) {
						// // module_Li_Start <=> module_Li_End
						comments.add(null);
						f.add(new Iff(ssd.getLifelinePredicate(i)
								.getStartPredicate(), ssd.getLifelinePredicate(i)
								.getEndPredicate()));}
					else {
						// // if (Ev[i][0] is message)
						// // order(module_Li_Start, Ev[i][0], True, SD_Stop, True)
						liFirstEv = liNonEOEvents.get(0);
						liFirstEvPrd = null;
						if (liFirstEv instanceof MessageStart)
							liFirstEvPrd = new SMessageStart((MessageStart) liFirstEv).getPredicate(); 
						if (liFirstEv instanceof MessageEnd)
							liFirstEvPrd = new SMessageEnd((MessageEnd) liFirstEv).getPredicate();
						if (liFirstEvPrd != null) {
							comments.add(null);
							f.add(new SOrder(ssd.getLifelinePredicate(i).getStartPredicate(), liFirstEvPrd, exception, true));}////#### before break
						// // EV[i][EV[i].size-1] => module_Li_End  // in WS and (last event = CF_X) module_Li_End <=> CF_X_Li_End, in SYNC and (last event = CF_X) module_Li_End <=> CF_X_End
						liLastEv = liNonEOEvents.get(evSize - 1);
						if (liLastEv instanceof MessageStart)
							liLastEvPrd = new SMessageStart((MessageStart)liLastEv).getPredicate();
						if (liLastEv instanceof MessageEnd)
							liLastEvPrd = new SMessageEnd((MessageEnd)liLastEv).getPredicate();
						if (liLastEv instanceof CombinedFragment)
							if (config.combine == ConfigCombine.WS) 
								liLastEvPrd = new SCombinedFragment((CombinedFragment)liLastEv).getLifelinePredicate(ssd.getLifelinesNames().get(i)).getEndPredicate();// we need to get lifeline's predicate by using its name, because indexes may be different in different CFs.
							else if (config.combine == ConfigCombine.SYNC)
								liLastEvPrd = new SCombinedFragment((CombinedFragment)liLastEv).getPredicate().getEndPredicate();
						comments.add(null);
//						f.add(new Iff(ssd.getLifelinePredicate(i).getEndPredicate(), liLastEvPrd));////#### before break
						f.add(new Implies(liLastEvPrd, ssd.getLifelinePredicate(i).getEndPredicate()));
						
//						module_Li_End => (EV[i][EV[i].size-1] || module_Li_Skip)
						f.add(new Implies(ssd.getLifelinePredicate(i).getEndPredicate(), new Or(liLastEvPrd, ssd.getLifelinePredicate(i).getSkipPredicate())));
						
//				        orderMonoD(EV[i][EV[i].size-1], module_Li_End, True, SD_Stop, True)
						f.add(new SOrderMonoD(liLastEvPrd, ssd.getLifelinePredicate(i).getEndPredicate(), guard, exception, true));

						
						// // if ((EV[i].size > 1) && (EV[i][1] is message) && (EV[i][0] is message))
						// // order(EV[i][0], EV[i][1], True, SD_Stop, False)
						if (evSize > 1){
							liSecondEv = liNonEOEvents.get(1);
							liSecondEvPrd = null;
							if (liSecondEv instanceof MessageStart)
								liSecondEvPrd = new SMessageStart((MessageStart) liSecondEv).getPredicate();
							if (liSecondEv instanceof MessageEnd)
								liSecondEvPrd = new SMessageEnd((MessageEnd) liSecondEv).getPredicate();
							if (liFirstEvPrd != null && liSecondEvPrd != null) {
								comments.add(null);
//								f.add(new SOrder(liFirstEvPrd, liSecondEvPrd,SD_Stop, false).getFun());////#### before break
								f.add(new SOrder(liFirstEvPrd, liSecondEvPrd, guard, exception, true).getFun());
							}

							//<Separation> //Please find documentation of used methods in [separate].docx
							// // we have same separation for Operand as well.
							// // lastM = null;
							Predicate lastM = null;
							// // for (j = 0; j < EV[i].size - 1; j++){
							for (int j = 0; j < evSize - 1; j++) {
								//<auxiliary variables>
								InteractionFragment sepliEvj = null;
								InteractionFragment sepliEvjp1 = null;
								SCombinedFragment sepliCFj = null;
								SCombinedFragment sepliCFjp1 = null;
								Predicate sepliEvjPrd = null;
								Predicate sepliEvjp1Prd = null;
								BooleanFormulae nullcheck;
								
								sepliEvj = liNonEOEvents.get(j);
								sepliEvjp1 = liNonEOEvents.get(j + 1);
								String currentMessageUMLID = "";
								String nextMessageUMLID = "";
								boolean isRecursiveMessage = false;
								if (sepliEvj instanceof MessageStart) {
									sepliEvjPrd = new SMessageStart((MessageStart)sepliEvj).getPredicate();
									currentMessageUMLID = ((MessageStart)sepliEvj).getMessage().getUMLId();
									if (((MessageStart)sepliEvj).getMessage().getMessageType() == MessageType.RECURSIVE)
										isRecursiveMessage = true;
								}
								if (sepliEvj instanceof MessageEnd)
									sepliEvjPrd = new SMessageEnd((MessageEnd)sepliEvj).getPredicate();

								if (sepliEvjp1 instanceof MessageStart)
									sepliEvjp1Prd = new SMessageStart((MessageStart)sepliEvjp1).getPredicate();
								if (sepliEvjp1 instanceof MessageEnd) {
									sepliEvjp1Prd = new SMessageEnd((MessageEnd)sepliEvjp1).getPredicate();
									nextMessageUMLID = ((MessageEnd)sepliEvjp1).getMessage().getUMLId();
								}
								
//								if (currentMessageUMLID != "" && currentMessageUMLID == nextMessageUMLID)
//									isRecursiveMessage = true;
								if (SInteractionFragmentFactory.getInstance(sepliEvj) instanceof SCombinedFragment)
//									sepliCFj = (SCombinedFragment)SInteractionFragmentFactory.getInstance(sepliEvj, config);
									sepliCFj = (SCombinedFragment)SCombinedFragmentFactory.getInstance((CombinedFragment)sepliEvj);
								if (SInteractionFragmentFactory.getInstance(sepliEvjp1) instanceof SCombinedFragment)
//									sepliCFjp1 = (SCombinedFragment)SInteractionFragmentFactory.getInstance(sepliEvjp1, config);
									sepliCFjp1 = (SCombinedFragment)SCombinedFragmentFactory.getInstance((CombinedFragment)sepliEvjp1);
								//</auxiliary variables>

								// // if  EV[i][j] is M1 and EV[i][j+1] is M2 and (M1 and M2 are not Send and Rec event of same message)
								if (sepliEvjPrd != null && sepliEvjp1Prd != null && !isRecursiveMessage) 
									// //     separate({M1}, {M2})
									f.add(separate(sepliEvjPrd, sepliEvjp1Prd));

								// // if Ev[i][j] is M1 and Ev[i][j+1] is CF_Y{
								if (sepliEvjPrd != null && sepliCFjp1 != null) {
									// //     separate({M1}, getFirstMs(CF_Y));
									nullcheck = separate(sepliEvjPrd, sepliCFjp1.getFirstMessages(currentLifelineName)); 
									if (nullcheck != null)
										f.add(nullcheck);
									// //     lastM = M1;}
									lastM = sepliEvjPrd;
								}

								// // if Ev[i][j] is CF_X and Ev[i][j+1] is M2{
								if (sepliCFj != null && sepliEvjp1Prd != null) {
									// //     separate(getLastMs(CF_X), {M2});
									nullcheck = separate(sepliEvjp1Prd, sepliCFj.getLastMessages(currentLifelineName));
									if (nullcheck != null) 
										f.add(nullcheck);
									// //     separate({lastM}, {M2});}
									nullcheck = null;
									if (lastM != null)
										nullcheck = separate(lastM, sepliEvjp1Prd);
									if (nullcheck != null)
										f.add(nullcheck);
								}

								// // if Ev[i][j] is CF_X and Ev[i][j+1] is CF_Y{
								if (sepliCFj != null && sepliCFjp1 != null) {
									// //     separate(getLastMs(CF_X), getFirstMs(CF_Y))
									if (separate(sepliCFj.getLastMessages(currentLifelineName), sepliCFjp1.getFirstMessages(currentLifelineName)) != null)
										f.addAll(separate(sepliCFj.getLastMessages(currentLifelineName), sepliCFjp1.getFirstMessages(currentLifelineName)));
						            // //     separate({lastM}, getFirstMs(CF_Y))} // because CF_Y may get ignored
									nullcheck = null;
									if (lastM != null)
										nullcheck = separate(lastM, sepliCFjp1.getFirstMessages(currentLifelineName));
									if (nullcheck != null)
										f.add(nullcheck);
								}
/*								 Since iterations of loop are separated this semantics is not required. 
								// // if Ev[i][j] is CF_Loop //When current element is CF_Loop, we need this additional separation.
								if (sepliCFj != null) {
									// //     separate(getLastMs(CF_Loop), getFirstMs(CF_Loop))
									if (sepliCFj.getOperator().equals("loop"))
										f.addAll(separate(sepliCFj.getLastMessages(currentLifelineName), sepliCFj.getFirstMessages(currentLifelineName)));
								}
*/								
								// // }
							}
							//</Separation>
							//<SynMessage>
							ArrayList<BooleanFormulae> syncWithReplyBF = getSyncWithReplyBF(liEvents);
							if (syncWithReplyBF.size() > 0)
								f.addAll(syncWithReplyBF);
							//</SynMessage>
						}
					}
					// // for (j = 1; j < EV[i].size - 1; j++){
					for (int j = 1; j < evSize - 1; j++) {// for the second event to next to the last event
						liEvjPrd = liEvjp1Prd = null;
						liEvj = liNonEOEvents.get(j);
						liEvjp1 = liNonEOEvents.get(j + 1);
						if (liEvj instanceof MessageStart)
							liEvjPrd = new SMessageStart((MessageStart)liEvj).getPredicate();
						if (liEvj instanceof MessageEnd)
							liEvjPrd = new SMessageEnd((MessageEnd)liEvj).getPredicate();
						if (liEvjp1 instanceof MessageStart)
							liEvjp1Prd = new SMessageStart((MessageStart)liEvjp1).getPredicate();
						if (liEvjp1 instanceof MessageEnd)
							liEvjp1Prd = new SMessageEnd((MessageEnd)liEvjp1).getPredicate();
						// // if ((EV[i][j] is message) && (EV[i][j + 1] is message))
						// // order(EV[i][j], EV[i][j + 1], True, (enclosingFragmentPrd_End || SD_Stop || SD_End), False)
						if (liEvjPrd != null && liEvjp1Prd != null) {
							comments.add(null);
//							f.add(new SOrder(liEvjPrd, liEvjp1Prd, SD_Stop, false).getFun());////#### before break
							f.add(new SOrder(liEvjPrd, liEvjp1Prd, guard, exception, true).getFun());
							
							
						}
					}
				}
				// // module_End => ((||i=1 to nmodule_Li_End) && (&&i=1 to nsomPIn_i(module_Li_End, module)))
				And tmpAnd = new And();
				for (int i = 0; i < n; i++) {
					tmpAnd.addFormulae(new SSomPIn_i(ssd.getLifelinePredicate(i).getEndPredicate(), ssd.getPredicate()).getFun());
				}
				comments.add(null);
				f.add(new Implies(SD_End, new And(new Or(ssd.getLifelinesPredicateEnds()), tmpAnd)));
				// //for (i = 0; i < n; i++){
				    // //for (j = 0; j < EV[i].size; j++){
				        // //if ((EV[i][j] == CF_X) && (history.indexOF != -1)){
				            // //history.add(CF_X)
				            // //CF_X(CF_X, enclosingFragmentPrd, CF_X_L_Pre, CF_X_L_Post, config)
				        // //}}}
				ArrayList<String> history = new ArrayList<String>();
				for (int i = 0; i < n; i++){
					int evSize = sd.getLifelines().get(i).getEvents().size();
					for (int j = 0; j < evSize ; j++){
						if (SInteractionFragmentFactory.getInstance(sd.getLifelines().get(i).getEvents().get(j)) instanceof SCombinedFragment && !history.contains(SInteractionFragmentFactory.getInstance(sd.getLifelines().get(i).getEvents().get(j)).getPredicate().toString())){
							ArrayList<BooleanFormulae> tempf1 = new ArrayList<BooleanFormulae>();
							tempf1 = SCombinedFragmentFactory.getInstance((CombinedFragmentItf)sd.getLifelines().get(i).getEvents().get(j)).getSemantics();
							f.addAll(tempf1);
							history.add(SInteractionFragmentFactory.getInstance(sd.getLifelines().get(i).getEvents().get(j)).getPredicate().toString());
						}
				   	}
				}
				/*
//				if (module == SD)
//					module_Skip <=> ||for allmodule_SkipTriggers
				if (PredicateSkip.instances.containsKey(ssd.getPredicate().getSkipPredicate()))
					if (PredicateSkip.instances.get(ssd.getPredicate().getSkipPredicate()).size() > 0)
						f.add(new Iff(ssd.getPredicate().getSkipPredicate(), new Or(PredicateSkip.instances.get(ssd.getPredicate().getSkipPredicate()))));
						*/
//<Skip semantics>
//				if (module == SD)
//					for (i = 0; i < n; i++){
				for (int i = 0; i < n; i++){
					//						module_Li_Skip <=> ||for allmoduleLi_SkipTriggers
					if (PredicateSkip.instances.containsKey(ssd.getLifelinePredicate(i).getSkipPredicate())) {
						if (PredicateSkip.instances.get(ssd.getLifelinePredicate(i).getSkipPredicate()).size() > 0)
							f.add(new Iff(ssd.getLifelinePredicate(i).getSkipPredicate(), new Or(PredicateSkip.instances.get(ssd.getLifelinePredicate(i).getSkipPredicate()))));
					}else
						f.add(new Not(ssd.getLifelinePredicate(i).getSkipPredicate()));
//						}
					}
//</Skip semantics>
			}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			if (module != null) {///////////////////////////////////////////////////////////////////////////////////////////////////////////
				Predicate SD_Stop = smodule.getSDPredicate().getStopPredicate();
				BooleanFormulae exception = SD_Stop;
				int n = module.getLifelines().size(); //n: number of lifelines in the module(or SD)
				// //     borders(CF_X_Op, SD_End || SD_Stop)
				comments.add("<Semantics for "+ smodule.getPredicate().getPredicateName()+">");
				f.add(new SBorders(smodule.getPredicate(), SD_Stop).getFun());
			    // // &&i=1 to nborders(CF_X_Op_Li, SD_End || SD_Stop)
				for (int i = 0; i < n; i++) 
					{comments.add(null);
					f.add(new SBorders(smodule.getLifelinePredicate(i), SD_Stop));}
			    // // CF_X_Op_End => ((||j=1 to nCF_X_Op_Li_End) && (&&j=1 to nsomPIn_i(CF_X_Op_Lj_End, CF_X_Op)))
				ArrayList<BooleanFormulae> tempf1 = new ArrayList<BooleanFormulae>();
				for (int i = 0; i < n; i++) 
					tempf1.add(new SSomPIn_i(smodule.getLifelinePredicate(i).getEndPredicate(), smodule.getPredicate()));
				comments.add(null);
				f.add(new Implies(smodule.getPredicate().getEndPredicate(), new And(new Or(smodule.getLifelinesEndPredicates()), new And(tempf1))));
				// // &&i=1 to n(CF_X_Op_Li => CF_X_Op)
				for (int i = 0; i < n; i++)
					{comments.add(null);
					f.add(new Implies(smodule.getLifelinePredicate(i), smodule.getPredicate()));}

				// // if (config.combine == �ws�)
				//if OP belongs to a CF_Loop then it follows config.loop (WS or SYNC), otherwise follows the config.combine
				SCombinedFragment tempSCF = smodule.getEnclosingSCF();
				if (tempSCF.getOperator().equals("loop")){
					if (config.loop == ConfigCombine.WS){
				        // // 	CF_X_Op_Start => ||j=1 to n (CF_X_Op_Lj_Start)
							comments.add(null);
							f.add(new Implies(smodule.getPredicate().getStartPredicate(), new Or(smodule.getLifelinesStartPredicates())));
						}
						// // if (config.combine == �sync�)
						if (config.loop == ConfigCombine.SYNC){
							// // for (int i = 0; i < n; i++){
							for (int i = 0; i < n; i++) {
					        // //     CF_X_Op_Start <=> (CF_X_Op_Li_Start)}
								comments.add(null);
								f.add(new Iff(smodule.getPredicate().getStartPredicate(), smodule.getLifelinePredicate(i).getStartPredicate()));
							}
						}
				}else{
					if (config.combine == ConfigCombine.WS){
			        // // 	CF_X_Op_Start => ||j=1 to n (CF_X_Op_Lj_Start)
						comments.add(null);
						f.add(new Implies(smodule.getPredicate().getStartPredicate(), new Or(smodule.getLifelinesStartPredicates())));
					}
					// // if (config.combine == �sync�)
					if (config.combine == ConfigCombine.SYNC){
						// // for (int i = 0; i < n; i++){
						for (int i = 0; i < n; i++) {
				        // //     CF_X_Op_Start <=> (CF_X_Op_Li_Start)}
							comments.add(null);
							f.add(new Iff(smodule.getPredicate().getStartPredicate(), smodule.getLifelinePredicate(i).getStartPredicate()));
						}
					}
				}
				// // order(module_Start, module_End, true, SD_Stop, True)
				comments.add(null);
				f.add(new SOrder(smodule.getPredicate().getStartPredicate(), smodule.getPredicate().getEndPredicate(), exception, true).getFun());
				// // &&i=1 to n (order(module_Li_Start, module_Li_End, True, SD_Stop, True))
				for (int i = 0; i < n; i++){
					comments.add(null);
					f.add(new SOrder(smodule.getLifelinePredicate(i).getStartPredicate(), smodule.getLifelinePredicate(i).getEndPredicate(), exception, true).getFun());
				}
				for (int i = 0; i < n; i++) {
					String currentLifelineName = module.getLifelinesNames().get(i);
					InteractionFragment liFirstEv = null;
					InteractionFragment liSecondEv = null;
					InteractionFragment liLastEv = null;
					InteractionFragment liEvj = null;
					InteractionFragment liEvjp1 = null;
					Predicate liFirstEvPrd = null;
					Predicate liSecondEvPrd = null;
					Predicate liLastEvPrd = null;
					Predicate liEvjPrd = null;
					Predicate liEvjp1Prd = null;
					BooleanFormulae nullcheck;
//					BooleanFormulae exception = new Or(smodule.getLifelinePredicate(i).getSkipPredicate(), SD_Stop);
//					BooleanFormulae NOexception = new Not(new Or(smodule.getLifelinePredicate(i).getSkipPredicate(), SD_Stop));
					BooleanFormulae guard = new Not(smodule.getLifelinePredicate(i).getSkipPredicate());
					List<InteractionFragment> liEvents = module.getLifelineEvents(i);
					f.addAll(getEOSemanticsBF(liEvents));
					ArrayList<InteractionFragment> liNonEOEvents = getNonEOEvents(liEvents);
					int evSize = liNonEOEvents.size();
					// //if (Ev[i].size == 0)
					if (evSize == 0)
						// // module_Li_Start <=> module_Li_End
						{comments.add(null);
						f.add(new Iff(smodule.getLifelinePredicate(i)
								.getStartPredicate(), smodule.getLifelinePredicate(i)
								.getEndPredicate()));}
					else {
						// //gathering information for next line
						liFirstEv = liNonEOEvents.get(0);
						liFirstEvPrd = null;
						if (liFirstEv instanceof MessageStart)
							liFirstEvPrd = new SMessageStart((MessageStart)liFirstEv).getPredicate();
						if (liFirstEv instanceof MessageEnd)
							liFirstEvPrd = new SMessageEnd((MessageEnd)liFirstEv).getPredicate();
						// // if (Ev[i][0] is message)
						// // order(module_Li_Start, Ev[i][0], True, SD_Stop, True)
						if (liFirstEvPrd != null)
							{comments.add(null);
							f.add(new SOrder(smodule.getLifelinePredicate(i).getStartPredicate(), liFirstEvPrd, exception, true));}////####before break
//							f.add(new SOrder(smodule.getLifelinePredicate(i).getStartPredicate(), liFirstEvPrd, new Or(smodule.getLifelinePredicate(i).getEndPredicate(), SD_Stop), true).getFun());}
						// if ((EV[i].size > 1) && (EV[i][1] is message) && (EV[i][0] is message))
						// order(EV[i][0], EV[i][1], True, SD_Stop, False)
						if (evSize > 1) {
							liSecondEv = null;
							liSecondEv = liNonEOEvents.get(1);
							liSecondEvPrd = null;
							if (liSecondEv instanceof MessageStart)
								liSecondEvPrd = new SMessageStart((MessageStart)liSecondEv).getPredicate();//.getStartPredicate();
							if (liSecondEv instanceof MessageEnd)
								liSecondEvPrd = new SMessageEnd((MessageEnd)liSecondEv).getPredicate();//.getEndPredicate();
							if (liFirstEvPrd != null && liSecondEvPrd != null)
							{comments.add(null);
//							f.add(new SOrder(liFirstEvPrd, liSecondEvPrd, SD_Stop, false).getFun());}////#### before break
							f.add(new SOrder(liFirstEvPrd, liSecondEvPrd, guard, exception, true).getFun());}
						
							//<Separation> //Please find documentation of used methods in [separate].docx
							// // we have same separation for Operand as well.
							// // lastM = null;
							Predicate lastM = null;
				            // // for (j = 0; j < EV[i].size - 1; j++){
							for (int j = 0; j < evSize - 1; j++) {
								//<auxiliary variables>
								InteractionFragment sepliEvj = null;
								InteractionFragment sepliEvjp1 = null;
								SCombinedFragment sepliCFj = null;
								SCombinedFragment sepliCFjp1 = null;
								Predicate sepliEvjPrd = null;
								Predicate sepliEvjp1Prd = null;
								
								sepliEvj = liNonEOEvents.get(j);
								sepliEvjp1 = liNonEOEvents.get(j + 1);
								String currentMessageUMLID = "";
								String nextMessageUMLID = "";
								boolean isRecursiveMessage = false;
								if (sepliEvj instanceof MessageStart) {
									sepliEvjPrd = new SMessageStart((MessageStart)sepliEvj).getPredicate();
									currentMessageUMLID = ((MessageStart)sepliEvj).getMessage().getUMLId();
									if (((MessageStart)sepliEvj).getMessage().getMessageType() == MessageType.RECURSIVE)
										isRecursiveMessage = true;
								}
								if (sepliEvj instanceof MessageEnd)
									sepliEvjPrd = new SMessageEnd((MessageEnd)sepliEvj).getPredicate();
								
								if (sepliEvjp1 instanceof MessageStart)
									sepliEvjp1Prd = new SMessageStart((MessageStart)sepliEvjp1).getPredicate();
								if (sepliEvjp1 instanceof MessageEnd) {
									sepliEvjp1Prd = new SMessageEnd((MessageEnd)sepliEvjp1).getPredicate();
									nextMessageUMLID = ((MessageEnd)sepliEvjp1).getMessage().getUMLId();
								}
								
//								if (currentMessageUMLID != "" && currentMessageUMLID == nextMessageUMLID)
//									isRecursiveMessage = true;
								if (SInteractionFragmentFactory.getInstance(sepliEvj) instanceof SCombinedFragment)
//									sepliCFj = (SCombinedFragment)SInteractionFragmentFactory.getInstance(sepliEvj, config);
									sepliCFj = (SCombinedFragment)SCombinedFragmentFactory.getInstance((CombinedFragment)sepliEvj);
								if (SInteractionFragmentFactory.getInstance(sepliEvjp1) instanceof SCombinedFragment)
//									sepliCFjp1 = (SCombinedFragment)SInteractionFragmentFactory.getInstance(sepliEvjp1, config);
									sepliCFjp1 = (SCombinedFragment)SCombinedFragmentFactory.getInstance((CombinedFragment)sepliEvjp1);
								//</auxiliary variables>
								
								// // if  EV[i][j] is M1 and EV[i][j+1] is M2 and (M1 and M2 are not Send and Rec event of same message)
								if (sepliEvjPrd != null && sepliEvjp1Prd != null && !isRecursiveMessage) 
							// //     separate({M1}, {M2})
									f.add(separate(sepliEvjPrd, sepliEvjp1Prd));

							// // if Ev[i][j] is M1 and Ev[i][j+1] is CF_Y{
								if (sepliEvjPrd != null && sepliCFjp1 != null) {
							// //     separate({M1}, getFirstMs(CF_Y));
									nullcheck = separate(sepliEvjPrd, sepliCFjp1.getFirstMessages(currentLifelineName));
									if (nullcheck != null)
										f.add(nullcheck);
							// //     lastM = M1;}
									lastM = sepliEvjPrd;
								}
							
							// // if Ev[i][j] is CF_X and Ev[i][j+1] is M2{
								if (sepliCFj != null && sepliEvjp1Prd != null) {
							// //     separate(getLastMs(CF_X), {M2});
									nullcheck = separate(sepliEvjp1Prd, sepliCFj.getLastMessages(currentLifelineName));
									if (nullcheck != null)
										f.add(nullcheck);
							// //     separate({lastM}, {M2});}
									nullcheck = null;
									if (lastM != null)
										nullcheck = separate(lastM, sepliEvjp1Prd);
									if (nullcheck != null)
										f.add(nullcheck);
								}

							// // if Ev[i][j] is CF_X and Ev[i][j+1] is CF_Y
							if (sepliCFj != null && sepliCFjp1 != null) {
							// //     separate(getLastMs(CF_X), getFirstMs(CF_Y))
								if (separate(sepliCFj.getLastMessages(currentLifelineName), sepliCFjp1.getFirstMessages(currentLifelineName)) != null)
									f.addAll(separate(sepliCFj.getLastMessages(currentLifelineName), sepliCFjp1.getFirstMessages(currentLifelineName)));
							}
							
							/*Since iterations of loop are separated this semantics is not required. 
							 * // // if Ev[i][j] is CF_Loop //When current element is CF_Loop, we need this additional separation.
							if (sepliCFj != null) {
							// //     separate(getLastMs(CF_Loop), getFirstMs(CF_Loop))
								if (sepliCFj.getOperator().equals("loop"))
									f.addAll(separate(sepliCFj.getLastMessages(currentLifelineName), sepliCFj.getFirstMessages(currentLifelineName)));
							}*/
							
							// // }
							}
				            //</Separation>
							//<SynMessage>
							ArrayList<BooleanFormulae> syncWithReplyBF = getSyncWithReplyBF(liEvents);
							if (syncWithReplyBF.size() > 0)
								f.addAll(syncWithReplyBF);
							//</SynMessage>
						}
						
						// // EV[i][EV[i].size-1] => module_Li_End 	//in WS and (last event = CF_X) module_Li_End <=> CF_X_Li_End. in SYNC and (last event = CF_X) module_Li_End <=> CF_X_End 
						liLastEv = liNonEOEvents.get(evSize - 1);
						if (liLastEv instanceof MessageStart)
							liLastEvPrd = new SMessageStart((MessageStart)liLastEv).getPredicate();
						if (liLastEv instanceof MessageEnd)
							liLastEvPrd = new SMessageEnd((MessageEnd)liLastEv).getPredicate();
						if (liLastEv instanceof CombinedFragment)
							if (config.combine == ConfigCombine.WS) 
								liLastEvPrd = new SCombinedFragment((CombinedFragment)liLastEv).getLifelinePredicate(smodule.getLifelines().get(i).getName()).getEndPredicate();// we need to get lifeline's predicate by using its name, because indexes may be different in different CFs.
							else if (config.combine == ConfigCombine.SYNC)
								liLastEvPrd = new SCombinedFragment((CombinedFragment)liLastEv).getPredicate().getEndPredicate();
						comments.add(null);
//						f.add(new Iff(smodule.getLifelinePredicate(i).getEndPredicate(), liLastEvPrd));////#### before break
						f.add(new Implies(liLastEvPrd, smodule.getLifelinePredicate(i).getEndPredicate()));
						
//						module_Li_End => (EV[i][EV[i].size-1] || module_Li_Skip)
						f.add(new Implies(smodule.getLifelinePredicate(i).getEndPredicate(), new Or(liLastEvPrd, smodule.getLifelinePredicate(i).getSkipPredicate())));
						
						
//				        orderMonoD(EV[i][EV[i].size-1], module_Li_End, True, SD_Stop, True)
						f.add(new SOrderMonoD(liLastEvPrd, smodule.getLifelinePredicate(i).getEndPredicate(), guard, exception, true));
						
					}
					
					// // for (j = 1; j < EV[i].size - 1; j++){
					for (int j = 1; j < evSize - 1; j++) {// for second event to next last event
						liEvj = liNonEOEvents.get(j);
						liEvjp1 = liNonEOEvents.get(j + 1);
						if (liEvj instanceof MessageStart)
							liEvjPrd = new SMessageStart((MessageStart)liEvj).getPredicate();
						if (liEvj instanceof MessageEnd)
							liEvjPrd = new SMessageEnd((MessageEnd)liEvj).getPredicate();
						if (liEvjp1 instanceof MessageStart)
							liEvjp1Prd = new SMessageStart((MessageStart)liEvjp1).getPredicate();
						if (liEvjp1 instanceof MessageEnd)
							liEvjp1Prd = new SMessageEnd((MessageEnd)liEvjp1).getPredicate();
						// // if ((EV[i][j] is message) && (EV[i][j + 1] is message))
						// // order(EV[i][j], EV[i][j + 1], True, SD_Stop, False)
						if (liEvjPrd != null && liEvjp1Prd != null)
							{comments.add(null);
//							f.add(new SOrder(liEvjPrd, liEvjp1Prd, SD_Stop, false).getFun());}////#### before break
							f.add(new SOrder(liEvjPrd, liEvjp1Prd, guard, exception, true).getFun());}
					}
				}
				// // module_End => ((||i=1 to nmodule_Li_End) && (&&i=1 to nsomPIn_i(module_Li_End, module)))
				And tmpAnd = new And();
				for (int i = 0; i < n; i++) {
					tmpAnd.addFormulae(new SSomPIn_i(smodule.getLifelinePredicate(i).getEndPredicate(), smodule.getPredicate()));
				}
				comments.add(null);
				f.add(new Implies(smodule.getPredicate().getEndPredicate(), new And(new Or(smodule.getLifelinesEndPredicates()), tmpAnd)));
				// //for (i = 0; i < n; i++){
				    // //for (j = 0; j < EV[i].size; j++){
				        // //if ((EV[i][j] == CF_X) && (history.indexOF != -1)){
				            // //history.add(CF_X)
				            // //CF_X(CF_X, enclosingFragmentPrd, CF_X_L_Pre, CF_X_L_Post, config)
				        // //}}}
				ArrayList<String> history = new ArrayList<String>();
				for (int i = 0; i < n; i++){
					int evSize = module.getLifelineEvents(i).size();
					for (int j = 0; j < evSize ; j++){
						if (SInteractionFragmentFactory.getInstance(module.getLifelineEvents(i).get(j)) instanceof SCombinedFragment && !history.contains(SInteractionFragmentFactory.getInstance(module.getLifelineEvents(i).get(j)).getPredicate().toString())){
							history.add(SInteractionFragmentFactory.getInstance(module.getLifelineEvents(i).get(j)).getPredicate().toString());
							ArrayList<BooleanFormulae> tempf2 = new ArrayList<BooleanFormulae>();
							tempf2 = SCombinedFragmentFactory.getInstance((CombinedFragmentItf)module.getLifelineEvents(i).get(j)).getSemantics();
							f.addAll(tempf2);
						}
					}
				}
//<Skip semantics>
//			if (module == CF_X_Op)
//				for (i = 0; i < n; i++){
				for (int i = 0; i < n; i++){
//					module_Li_Skip <=> ||for allmoduleLi_SkipTriggers
					if (PredicateSkip.instances.containsKey(smodule.getLifelinePredicate(i).getSkipPredicate())){
						if (PredicateSkip.instances.get(smodule.getLifelinePredicate(i).getSkipPredicate()).size() > 0)
							f.add(new Iff(smodule.getLifelinePredicate(i).getSkipPredicate(), new Or(PredicateSkip.instances.get(smodule.getLifelinePredicate(i).getSkipPredicate()))));
					}else
						f.add(new Not(smodule.getLifelinePredicate(i).getSkipPredicate()));
//					}
				}
				
				if (config.combine == ConfigCombine.WS) {
//				for (i = 0; i < n; i++){
					for (int i = 0; i < n; i++){
//						module_Li_Skip <=> ||for all module.enclosingCF_Li_SkipTriggers
						if (PredicateSkip.instances.containsKey(smodule.getEnclosingSCF().getLifelinePredicate(i).getSkipPredicate())){
							if (PredicateSkip.instances.get(smodule.getEnclosingSCF().getLifelinePredicate(i).getSkipPredicate()).size() > 0)
								f.add(new Iff(smodule.getEnclosingSCF().getLifelinePredicate(i).getSkipPredicate(), new Or(PredicateSkip.instances.get(smodule.getEnclosingSCF().getLifelinePredicate(i).getSkipPredicate()))));
						}else
							f.add(new Not(smodule.getEnclosingSCF().getLifelinePredicate(i).getSkipPredicate()));
//						}
					}
				}
				else if (config.combine == ConfigCombine.SYNC) {//module.eclosingCF_Skip <=> ||for all module.enclosingCF_SkipTriggers
					if (PredicateSkip.instances.containsKey(smodule.getEnclosingSCF().getPredicate().getSkipPredicate())){
						if (PredicateSkip.instances.get(smodule.getEnclosingSCF().getPredicate().getSkipPredicate()).size() > 0)
							f.add(new Iff(smodule.getEnclosingSCF().getPredicate().getSkipPredicate(), new Or(PredicateSkip.instances.get(smodule.getEnclosingSCF().getPredicate().getSkipPredicate()))));
					}else
						f.add(new Not(smodule.getEnclosingSCF().getPredicate().getSkipPredicate()));
				}
					
//</Skip semantics>
				
			}//end of module = CF_X_Op
			return f;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * @param liEvents events on the lifeline in the scope of sd or module.
	 * @return formal semantics for the body of EOs.
	 */
	public ArrayList<BooleanFormulae> getEOSemanticsBF(List<InteractionFragment> liEvents){
		ArrayList<BooleanFormulae> eoSemBF = new ArrayList<BooleanFormulae>();
		for (InteractionFragment event: liEvents){
			if (event instanceof ExecutionOccurrence){
				eoSemBF.add(new SExecutionOccurrence((ExecutionOccurrence) event).getSemanticsBF());
				eoSemBF.addAll(new SExecutionOccurrence((ExecutionOccurrence) event).getSyncSemanticsBF());
			}	
		}
		return eoSemBF;
	}
	
	/**
	 * @param liEvents events on the lifeline in the scope of sd or module.
	 * @return same list of event, but without EOs.
	 */
	public ArrayList<InteractionFragment> getNonEOEvents(List<InteractionFragment> liEvents){
		ArrayList<InteractionFragment> nonEOEvents = new ArrayList<InteractionFragment>();
		for (InteractionFragment event: liEvents){
			if (!(event instanceof ExecutionOccurrence)){
				nonEOEvents.add(event);
			}	
		}
		return nonEOEvents;
	}
	
	public ArrayList<BooleanFormulae> separate(ArrayList<Predicate> group1, ArrayList<Predicate> group2) {
		ArrayList<BooleanFormulae> sepf = new ArrayList<BooleanFormulae>();
		if (group1 == null || group2 == null)
			return null;
		if (group1.size() ==0 || group2.size() == 0)
			return null;
		for (Predicate m1: group1) {
			if (separate(m1, group2) != null)
				sepf.add(separate(m1, group2));
		}
		return sepf;
	}
	
	public BooleanFormulae separate(Predicate m1, Predicate m2) {
		if (m1 == null || m2 == null)
			return null;
		return(new Implies(m1, new Not(m2)));
	}
	
	public BooleanFormulae separate(Predicate m1, ArrayList<Predicate> group2) {
		if (group2 == null)
			return null;
		if (group2.size() == 0)
			return null;
		if (group2.size() == 1)
			return separate(m1, group2.get(0));
		else
			return (new Implies(m1, new Not(new Or(group2))));
	}
	
	/*Considering a specific lifeline, no message can follow
	 *a synchronous message except its reply, whereas there is
	 *no such constraint for asynchronous messages. In other words,
	 *sender of a synchronous message (m1Synch) cannot send further
	 *messages before receiving the reply message (m1SynchReply), and
	 *sender of an asynchronous message (m1Asynch) can send and receive
	 *further messages before it receives the reply message (m1AsynchReply).
	 * 
	 */
	/**
	 * @param liEvents
	 * @return Formulae that force each synchronous message to be followed by its reply and not other messages.
	 */
	public ArrayList<BooleanFormulae> getSyncWithReplyBF(List<InteractionFragment> liEvents){
		ArrayList<BooleanFormulae> f = new ArrayList<BooleanFormulae>();
		int evSize = liEvents.size();
		for (int j = 0; j < evSize - 1; j++) {
			InteractionFragment liEvj = liEvents.get(j);
			Predicate syncMStart = null;
			Predicate syncMReplyEnd = null;
			if (liEvj instanceof MessageStart && ((MessageStart)liEvj).getMessage().getMessageType() == MessageType.SYNCHCALL) {
				ArrayList<Predicate> messagesBeforeReply = new ArrayList<Predicate>();
				syncMStart = new SMessageStart((MessageStart)liEvj).getPredicate();
				InteractionFragment liEvjReply = null;
				int indexOfReply = 0;
				for (int k = j + 1; k < evSize; k++) {//Find its reply.
					liEvjReply = liEvents.get(k);
					if (liEvjReply instanceof MessageEnd && ((MessageEnd)liEvjReply).getMessage().getMessageType() == MessageType.REPLY){
						syncMReplyEnd = new SMessageEnd((MessageEnd)liEvjReply).getPredicate();
						indexOfReply = k;
						break;
					}
				}
				for (int j2k = j + 1; j2k < indexOfReply; j2k++){
					if (liEvents.get(j2k) instanceof MessageStart)
						messagesBeforeReply.add(new SMessageStart((MessageStart) liEvents.get(j2k)).getPredicate());
					else if (liEvents.get(j2k) instanceof MessageEnd)
						messagesBeforeReply.add(new SMessageEnd((MessageEnd) liEvents.get(j2k)).getPredicate());
				}
				if (messagesBeforeReply.size() > 0 && syncMReplyEnd != null){
					Or firstOr = new Or(messagesBeforeReply);
					firstOr.addFormulae(syncMStart);
					firstOr.addFormulae(syncMReplyEnd);
					Or secondOr = new Or(messagesBeforeReply);
					secondOr.addFormulae(syncMStart);
					secondOr.addFormulae(ssd.getPredicate().getStopPredicate());
//					(-> syncMStart (|| (until_ei (!! (|| syncMStart messagesBeforeReply syncMReplyEnd) exception) (until_ei (!! (|| syncMStart messagesBeforeReply exception)) syncMReplyEnd)))
					f.add(new Implies(syncMStart, new Or(new Until_ei(new Not(firstOr), ssd.getPredicate().getStopPredicate()), new Until_ei(new Not(secondOr), syncMReplyEnd))));
				}
			}
		}
		return f;
	}

}