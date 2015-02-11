package org.correttouml.uml2zot.semantics.sequencediagram;

import java.util.ArrayList;

import org.correttouml.grammars.booleanExpressions.booleanExpression;
import org.correttouml.uml.diagrams.sequencediagram.CF_Alt;
import org.correttouml.uml.diagrams.sequencediagram.CombinedFragment;
import org.correttouml.uml.diagrams.sequencediagram.InteractionOperand;
import org.correttouml.uml2zot.semantics.util.bool.*;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.omg.PortableInterceptor.NON_EXISTENT;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/

public class SCF_Alt extends SCombinedFragment implements SCombinedFragmentItf{
	//[documentation]: \Dropbox\SharePolimi\Documentation\Sequence Diagram\Combined_Fragment\Modular_Semantics\[CF_Alt].docx
	private CF_Alt mades_cf_alt;
	public SCF_Alt(CF_Alt cfalt, Config config) {
		super((CombinedFragment)cfalt, config);
		this.mades_cf_alt = cfalt;
	}

	@Override
	public ArrayList<BooleanFormulae> getSemantics() {
		
		ArrayList<BooleanFormulae> f;
		try {
			f = new ArrayList<BooleanFormulae>();
			Predicate SD_Stop = getSDPredicate().getStopPredicate();
			int n = getLifelines().size();
			int m = getOperandsPredicates().size(); //which is number of operands that have a guard. (E.g. if uml_cf_alt has 3 operands (last one is else), me is 2)
			ArrayList<BooleanFormulae> tempf1 = new ArrayList<BooleanFormulae>();
			// // borders(CF_Alt, SD_End || SD_Stop)
			// // link_Pre_Post(CF_Alt, config)
			f.add(new SBorders(getPredicate(), getSDPredicate().getStopPredicate()).getFun());
			f.addAll(new SLink_Pre_Post(this, config.combine).getFormulae());
			// // order(CF_Alt_Start, CF_Alt_End, True, SD_Stop, True)
			f.add(new SOrder(getPredicate().getStartPredicate(), getPredicate().getEndPredicate(), SD_Stop, true).getFun());
// // if (config.combine == “ws”){
			if(config.combine == ConfigCombine.WS){
				// // ||i=1 to n(CF_Alt_Li_Start) => CF_Alt
				f.add(new Implies(new Or(getLifelinesStartPredicates()), getPredicate()));
				// // CF_Alt_Start => ||i=1 to n(CF_Alt_Li_Start)
				f.add(new Implies(getPredicate().getStartPredicate(), new Or(getLifelinesStartPredicates())));
				// // for (i=1; i<=m; i++){ //for all operands
				for (int i = 0; i < m; i++) { 
					// //     &&j=1 to n order(CF_Alt_Lj_Start, CF_Alt_Opi_Lj_Start, CF_Alt_Opi, (SD_End || SD_Stop || CF_Alt_End || CF_Alt_Opi_Lj_End), True)
					for (int j = 0; j < n; j++) {
						f.add(new SOrder(getLifelinesStartPredicates().get(j),getOpiLjPredicate(i, j).getStartPredicate(),getOperandsPredicates().get(i), SD_Stop, true).getFun());
					}
					// //     &&j=1 to n orderMonoD(CF_Alt_Opi_Lj_End, CF_Alt_Lj_End, True, (SD_End || SD_Stop || CF_Alt_End || CF_Alt_Opi_Lj_End), True)
					for (int j = 0; j < n; j++) {
						f.add(new SOrderMonoD(getOpiLjPredicate(i, j).getEndPredicate(), getLifelinesEndPredicates().get(j), SD_Stop, true).getFun());
					}
					// // }
				}

				// // if CF_Alt has Else operand {
				if (getOpElse() != null) {
					// //     &&j=1 to n order(CF_Alt_Lj_Start, CF_Alt_OpElse_Lj_Start, CF_Alt_OpElse, (SD_End || SD_Stop || CF_Alt_End || CF_Alt_OpElse_Lj_End), True)
					for (int j = 0; j < n; j++) {
						f.add(new SOrder(getLifelinesStartPredicates().get(j), getOpElseLjPredicate(j).getStartPredicate(), getOpElsePredicate(), SD_Stop, true).getFun());
					}
					// //     &&j=1 to n orderMonoD(CF_Alt_OpElse_Lj_End, CF_Alt_Lj_End, True, (SD_End || SD_Stop || CF_Alt_End || CF_Alt_Opi_Lj_End), True)
					for (int j = 0; j < n; j++) {
						f.add(new SOrderMonoD(getOpElseLjPredicate(j).getEndPredicate(), getLifelinesEndPredicates().get(j), SD_Stop, true).getFun());
					}
					// //     CF_Alt_OpElse_Start <=> (!! (||i=1 to n CF_Alt_Guardi) && CF_Alt_Start)
					f.add(new Iff(getOpElsePredicate().getStartPredicate(), new And(new Not(new Or(getGuards())),getPredicate().getStartPredicate())));
					// //     if (config.what == “nondeterministically”)
					if (config.what == ConfigWhat.NONDETERMINISTICALLY) {

						// //         CF_Alt_Start => (||i=1 to m(CF_Alt_Opi_Start && !!(||j=1 to m,j!=iCF_Alt_Opj_Start))) || CF_Alt_OpElse_Start
						if (m == 1) {//////[CF_Alt_Start => (CF_Alt_Op0_Start || CF_Alt_OpElse_Start)]
							f.add(new Implies(getPredicate().getStartPredicate(), new Or(getOperandsPredicates().get(0).getStartPredicate(), getOpElsePredicate().getStartPredicate())));	
						}
						else {
							tempf1.clear();
							ArrayList<BooleanFormulae> tempf2 = new ArrayList<BooleanFormulae>();
							for (int i = 0; i < m; i++) {
								for (int j = 0; j < m; j++) {
									if (i != j)
									tempf2.add(getOperandsPredicates().get(j).getStartPredicate());
							}
							tempf1.add(new And(getOperandsPredicates().get(i).getStartPredicate(), new Not(new Or(tempf2))));
						}
						
						f.add(new Implies(getPredicate().getStartPredicate(), new Or(new Or(tempf1), getOpElsePredicate().getStartPredicate())));
						}
					}
					
				// //     (CF_Alt_OpElse_End || (||i=1 to m CF_Alt_Opi_End)) <=> CF_Alt_End
					tempf1.clear();
					for (int i = 0; i < m; i++) {
						tempf1.add(getOperandsPredicates().get(i).getEndPredicate());
					}
					f.add(new Iff(new Or(getOpElsePredicate().getEndPredicate(), new Or(tempf1)), getPredicate().getEndPredicate()));
				// // }
				}

				// // if CF_Alt does not have Else operand {
				if (getOpElse() == null) { 
					// //     (CF_Alt_Start && !!(||i=1 to m CF_Alt_Guardi)) => &&j=1 to nsomFIn_i(CF_Alt_Lj_Start && CF_Alt_Lj_End, CF_Alt)
					tempf1.clear();
					for(int j=0;j<n;j++) {
						tempf1.add(new SSomFIn_i(new And(getLifelinePredicate(j).getStartPredicate(), getLifelinePredicate(j).getEndPredicate()), getPredicate()).getFun());
					}
					f.add(new Implies(new And(getPredicate().getStartPredicate(), new Not(new Or(getGuards()))), new And(tempf1)));
					// //     if (config.what == “nondeterministically”)
					if (config.what == ConfigWhat.NONDETERMINISTICALLY) {
						// //         (CF_Alt_Start && (||i=1 to m CF_Alt_Guardi)) => (||j=1 to m(CF_Alt_Opj_Start && !!(||k=1 to m,k!=jCF_Alt_Opk_Start)))
						tempf1.clear();
						if (m == 1)
							tempf1.add(getOperandsPredicates().get(0).getStartPredicate());
						else
							for (int j = 0; j < m; j++) {
								ArrayList<BooleanFormulae> tempf2 = new ArrayList<BooleanFormulae>();
								for (int k = 0; k < m; k++) {
									if (k != j)
										tempf2.add(getOperandsPredicates().get(k).getStartPredicate());
								}
								tempf1.add(new And(getOperandsPredicates().get(j).getStartPredicate(), new Not(new Or(tempf2))));

							}
						f.add(new Implies(new And(getPredicate().getStartPredicate(), new Or(getGuards())), new Or(tempf1)));
					}
					// //     (||i=1 to m CF_Alt_Opi_End) => CF_Alt_End
						tempf1.clear();
						for (int i = 0; i < m; i++) {
							tempf1.add(getOperandsPredicates().get(i).getEndPredicate());
						}
						f.add(new Implies(new Or(tempf1), getPredicate().getEndPredicate()));
				// // }
				}

				// // for (i = 0; i<m; i++){
					for (int i = 0; i < m; i++) {
				// //     if (config.what == “nondeterministically”)
						if (config.what == ConfigWhat.NONDETERMINISTICALLY) {
				// //         CF_Alt_Opi_Start => (CF_Alt_Start && CF_Alt_Guardi)
							f.add(new Implies(getOperandsPredicates().get(i).getStartPredicate(), new And(getPredicate().getStartPredicate(), getGuards().get(i))));
						}
				// //     if (config.what == “firstOp”)
						if (config.what == ConfigWhat.FIRSTOP) { // check for m= 0 m =1 ...
				// //         CF_Alt_Opi_Start <=> (CF_Alt_Start && CF_Alt_Guardi && !!(||j=1 to i-1 CF_Alt_Guardj))
							tempf1.clear();
							for (int j = 0; j < i; j++) {
								tempf1.add(getGuards().get(j));
							}
							if (m == 1) //if we have only one operand [// // CF_Alt_Opi_Start <=> (CF_Alt_Start && CF_Alt_Guardi)]
								f.add(new Iff(getOperandsPredicates().get(i).getStartPredicate(), new And(getPredicate().getStartPredicate(), getGuards().get(i))));
							else {
								if (tempf1.size() > 0)
									f.add(new Iff(getOperandsPredicates().get(i).getStartPredicate(), new And(getPredicate().getStartPredicate(), getGuards().get(i), new Not(new Or(tempf1)))));
								else// in order to avoid [CF_Alt_Op0_Start <=> (CF_Alt_Start && CF_Alt_Guard0 && !!(||  ))]
									f.add(new Iff(getOperandsPredicates().get(i).getStartPredicate(), new And(getPredicate().getStartPredicate(), getGuards().get(i))));
							}
						}
				// // 	}// end of "ws"
					}
				}
// // if (config.combine == “sync”){
					if (config.combine == ConfigCombine.SYNC) {
						// // 	if CF_Alt has Else operand {
						if (getOpElse() != null) {
							// // 	    CF_Alt_OpElse_Start <=> (!! (||i=1 to m Guardi) && CF_Alt_Start)
							f.add(new Iff(getOpElsePredicate().getStartPredicate(), new And(new Not(new Or(getGuards())), getPredicate().getStartPredicate())));	
							// // 	    if (config.what == “nondeterministically”)
							if (config.what == ConfigWhat.NONDETERMINISTICALLY) {
								// // 	        CF_Alt_Start => (||j=1 to m(CF_Alt_Opj_Start && !!(||k=1 to m,k!=jCF_Alt_Opk_Start))) || CF_Alt_OpElse_Start
								tempf1.clear();
								if (m == 1)
									tempf1.add(getOperandsPredicates().get(0).getStartPredicate());
								else
									for (int j = 0; j < m; j++) {
										ArrayList<BooleanFormulae> tempf2 = new ArrayList<BooleanFormulae>();
										for (int k = 0; k < m; k++) {
											if (k != j)
												tempf2.add(getOperandsPredicates().get(k).getStartPredicate());
										}
										tempf1.add(new And(getOperandsPredicates().get(j).getStartPredicate(), new Not(new Or(tempf2))));

									}
								f.add(new Implies(getPredicate().getStartPredicate(), new Or(new Or(tempf1), getOpElsePredicate().getStartPredicate())));
							}
							// // 	    CF_Alt_OpElse_End || (||i=1 to m CF_Alt_Opi_End) <=> CF_Alt_End
							tempf1.clear();
							for (int i = 0; i < m; i++) {
								tempf1.add(getOperandsPredicates().get(i).getEndPredicate());
							}
							f.add(new Iff(new Or(getOpElsePredicate().getEndPredicate(), new Or(tempf1)), getPredicate().getEndPredicate()));
					// // 	}
						}
					
						// // If CF_Alt does not have Else operand {
						if (getOpElse() == null) {
						// //     (CF_Alt_Start && (||i=1 to m CF_Alt_Guardi)) => (||j=1 to m(CF_Alt_Opj_Start && !!(||k=1 to m,k!=jCF_Alt_Opk_Start)))
							tempf1.clear();
							if (m == 1)
								tempf1.add(getOperandsPredicates().get(0).getStartPredicate());
							else
								for (int j = 0; j < m; j++) {
									ArrayList<BooleanFormulae> tempf2 = new ArrayList<BooleanFormulae>();
									for (int k = 0; k < m; k++) {
										if (k != j)
											tempf2.add(getOperandsPredicates().get(k).getStartPredicate());
									}
									tempf1.add(new And(getOperandsPredicates().get(j).getStartPredicate(), new Not(new Or(tempf2))));

								}
							f.add(new Implies(new And(getPredicate().getStartPredicate(), new Or(getGuards())), new Or(tempf1)));
						
						// //     ((CF_Alt_Start && !!(||i=1 to m Guardi)) || (||i=1 to m CF_Alt_Opi_End)) <=> CF_Alt_End
							tempf1.clear();
							for (int i = 0; i < m; i++) {
								tempf1.add(getOperandsPredicates().get(i).getEndPredicate());
							}//i=1 to m CF_Alt_Opi_End
							f.add(new Iff(
									new Or(
											new And(getPredicate().getStartPredicate(), new Not(new Or(getGuards()))), 
											new Or(tempf1)), 
									getPredicate().getEndPredicate()));
						// //     if (config.what == “nondeterministically”)
							if (config.what == ConfigWhat.NONDETERMINISTICALLY) {
						// //         CF_Alt_Start => ((||j=1 to m(CF_Alt_Opj_Start && !!(||k=1 to m,k!=jCF_Alt_Opk_Start))) || CF_Alt_End)
								tempf1.clear();
								if (m == 1)
									tempf1.add(getOperandsPredicates().get(0).getStartPredicate());
								else
									for (int j = 0; j < m; j++) {
										ArrayList<BooleanFormulae> tempf2 = new ArrayList<BooleanFormulae>();
										for (int k = 0; k < m; k++) {
											if (k != j)
												tempf2.add(getOperandsPredicates().get(k).getStartPredicate());
										}//k=1 to m,k!=jCF_Alt_Opk_Start
										tempf1.add(new And(getOperandsPredicates().get(j).getStartPredicate(), new Not(new Or(tempf2))));
									}//i=j to m(CF_Alt_Opj_Start && !!(||k=1 to m,k!=jCF_Alt_Opk_Start))
								f.add(new Implies(getPredicate().getStartPredicate(), new Or(new Or(tempf1), getPredicate().getEndPredicate())));
							}
						// //     if (config.what == “firstOp”)
							if (config.what == ConfigWhat.FIRSTOP) {
						// //         CF_Alt_Start => (||i=1 to m(CF_Alt_Opi_Start) || CF_Alt_End )
								tempf1.clear();
								for (int i = 0; i < m; i++) {
			 						tempf1.add(getOperandsPredicates().get(i).getStartPredicate());
			 					}//i=1 to m CF_Alt_Opi_Start
								f.add(new Implies(getPredicate().getStartPredicate(), new Or(new Or(tempf1), getPredicate().getEndPredicate())));
							}
						// // }
						}
					
						// // for (i = 0; i<m; i++){
						for (int i = 0; i < m; i++) {
						// //     if (config.what == “nondeterministically”)
							if (config.what == ConfigWhat.NONDETERMINISTICALLY) {
						// //         CF_Alt_Opi_Start => CF_Alt_Guardi && CF_Alt_Start
								f.add(new Implies(getOperandsPredicates().get(i).getStartPredicate(), new And(getGuards().get(i), getPredicate().getStartPredicate())));
							}
							// //     if (config.what == “firstOp”)
							if (config.what == ConfigWhat.FIRSTOP) {
								// //         CF_Alt_Opi_Start <=> (CF_Alt_Start && CF_Alt_Guardi && !!(||j=1 to i-1 CF_Alt_Guardj))
								tempf1.clear();
								for (int j = 0; j < i; j++) {
									tempf1.add(getGuards().get(j));
								}
								if (m == 1) //if we have only one operand [// // CF_Alt_Opi_Start <=> (CF_Alt_Start && CF_Alt_Guardi)]
									f.add(new Iff(getOperandsPredicates().get(i).getStartPredicate(), new And(getPredicate().getStartPredicate(), getGuards().get(i))));
								else {
									if (tempf1.size() > 0)
										f.add(new Iff(getOperandsPredicates().get(i).getStartPredicate(), new And(getPredicate().getStartPredicate(), getGuards().get(i), new Not(new Or(tempf1)))));
									else// in order to avoid [CF_Alt_Op0_Start <=> (CF_Alt_Start && CF_Alt_Guard0 && !!(||  ))]
										f.add(new Iff(getOperandsPredicates().get(i).getStartPredicate(), new And(getPredicate().getStartPredicate(), getGuards().get(i))));
								}

							}
							// // }
						}

						// // if CF_Alt has Else operand {
						if (getOpElse() != null) {
							// //     CF_Alt_OpElse_Start => (!! (||i=1 to m Guardi) && CF_Alt_Start)
							f.add(new Implies(
									getOpElsePredicate().getStartPredicate(), 
									new And(
											new Not(new Or(getGuards())),
											getPredicate().getStartPredicate())));
							// // }
						}
					}// end of sync
					// // 	for (i = 0; i<m; i++)
					for (int i = 0; i < m; i++) 
						// // 	    combine(CF_Alt_Opi, config)
						f.addAll(new SCombine(mades_cf_alt.getOperands().get(i), config).getFormulae());
					// // 	if CF_Alt has Else operand
					if (getOpElse() != null)
						// // 	    combine(CF_Alt_OpElse, config)
						f.addAll(new SCombine(mades_cf_alt.getElseOperand(), config).getFormulae());
					return f;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	@Override
	public Predicate getOpiLjPredicate(int i, int j){ // returns predicate of Lifeline_j of Operand_i
		return new Predicate(getOperandsPredicates().get(i).getPredicateName() + '_' + mades_combinedfragment.getLifelines().get(j).getName());
	}

	@Override
	public ArrayList<Predicate> getOperandsPredicates(){
		ArrayList<Predicate> operandspredicates = new ArrayList<Predicate>();
		for (String on: mades_cf_alt.getOperandsNames())
			operandspredicates.add(new Predicate(mades_combinedfragment.getPredicateName() + '_' + on));
		return operandspredicates;
	}
	
	@Override
	public ArrayList<BooleanFormulae> getGuards(){// if CF_Alt UMLM number of operands that does not have any guard (guard = null), we assume that first (UMLM - 1) operands are CF_Alt_Op and their guard is implicit true ((-P- t)) and last operand is CF_Alt_OpElse. 
		ArrayList<BooleanFormulae> guards = new ArrayList<BooleanFormulae>(); 
		for(InteractionOperand operand:mades_cf_alt.getOperands()) {
			guards.add(new SInteractionOperand(operand).getGuard());
		}
			
		return guards;
	}

	public SInteractionOperand getOpElse(){
		if (mades_cf_alt.getElseOperand() == null)
				return null;
		return new SInteractionOperand(mades_cf_alt.getElseOperand());
	}
	
	public Predicate getOpElsePredicate(){
		return getOpElse().getPredicate();
	}
	
	public Predicate getOpElseLjPredicate(int j){ // returns predicate of Lifeline_j of Else operand // // CF_Alt_OpElse_Lj
		return new Predicate(getOpElsePredicate().getPredicateName() + '_' + mades_combinedfragment.getLifelines().get(j).getName());
	}
	
}