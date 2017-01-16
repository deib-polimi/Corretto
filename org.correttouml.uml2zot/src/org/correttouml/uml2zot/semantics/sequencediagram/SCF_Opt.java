package org.correttouml.uml2zot.semantics.sequencediagram;

import java.util.ArrayList;
import org.correttouml.uml.diagrams.sequencediagram.CF_Opt;
import org.correttouml.uml2zot.semantics.util.bool.*;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/

public class SCF_Opt extends SCombinedFragment implements SCombinedFragmentItf{
	//[documentation]: \Dropbox\SharePolimi\Documentation\Sequence Diagram\Combined_Fragment\Modular_Semantics\[CF_Opt].docx
	private CF_Opt mades_cf_opt;
	
	public SCF_Opt(CF_Opt cfopt) {
		super(cfopt);
		this.mades_cf_opt = cfopt;
	}
	

	@Override
	public ArrayList<BooleanFormulae> getSemantics() {
		try {
			ArrayList<BooleanFormulae> f = new ArrayList<BooleanFormulae>();
			Predicate SD_Stop = getSDPredicate().getStopPredicate();
			int n = getLifelines().size();
			// // borders(CF_Opt, SD_End || SD_Stop)
			// // link_Pre_Post(CF_Opt, config)
			f.add(new SBorders(getPredicate(), SD_Stop).getFun());
			f.addAll(new SLink_Pre_Post(this, config.combine).getFormulae());
			// // order(CF_Opt_Start, CF_Opt_End, True, SD_Stop, True)
			f.add(new SOrder(getPredicate().getStartPredicate(), getPredicate().getEndPredicate(), SD_Stop, true).getFun());
			// // if (config.combine == �ws�){
			if(config.combine == ConfigCombine.WS){
				// // ||i=1 to n(CF_Opt_Li_Start) => CF_Opt
				f.add(new Implies(new Or(getLifelinesStartPredicates()), getPredicate()));
				// // CF_Opt_Start => ||i=1 to n(CF_Opt_Li_Start) 
				f.add(new Implies(getPredicate().getStartPredicate(), new Or(getLifelinesStartPredicates())));
				// //  &&j=1 to n order(CF_Opt_Lj_Start, CF_Opt_Op_Lj_Start, CF_Opt_Op, (SD_Stop || CF_Opt_Op_Lj_End), True)
				for (int i = 0; i < n; i++) 
					f.add(new SOrder(getLifelinesStartPredicates().get(i), getOpiLjPredicate(0, i).getStartPredicate(), getOperandsPredicates().get(0), SD_Stop, true).getFun());////#### before break
//					f.add(new SOrder(getLifelinesStartPredicates().get(i), getOpiLjPredicate(0, i).getStartPredicate(), getOperandsPredicates().get(0),new Or(getOpiLjPredicate(0, i).getEndPredicate(), SD_Stop), true).getFun());
				// // &&j=1 to n orderMonoD(CF_Opt_Op_Lj_End, CF_Opt_Lj_End, True, (SD_Stop), True)
				for (int i = 0; i < n; i++) 
					f.add(new SOrderMonoD(getOpiLjPredicate(0, i).getEndPredicate(), getLifelinesEndPredicates().get(i), SD_Stop, true).getFun());
				
				ArrayList<BooleanFormulae> tempf1 = new ArrayList<BooleanFormulae>();
				ArrayList<BooleanFormulae> tempf2 = new ArrayList<BooleanFormulae>();
				
//				CF_Opt_Op_End => ((||j=1 to nCF_Opt_Op_Li_End) && (&&j=1 to nsomPIn_i(CF_Opt_Op_Lj_End, CF_Opt_Op)))//already implemented in [combine] 
//				for (int i = 0; i < n; i++){
//					tempf1.add(getOpiLjPredicate(0, i).getEndPredicate());
//					tempf2.add(new SSomPIn_i(getOpiLjPredicate(0, i).getEndPredicate(), getOperandsPredicates().get(0)).getFun());
//				}
//				f.add(new Implies(getOperandsPredicates().get(0).getEndPredicate(), new And(new Or(tempf1), new And(tempf2))));
//				
				// // (CF_Opt_Start && !!CF_Opt_Guard)  => &&j=1 to nsomFIn_i(CF_Opt_Lj_Start && CF_Opt_Lj_End, CF_Opt)
				if (getGuards().get(0) == null) {
					throw new Exception("CF_Opt's guard cannot be null, it should be \"true\" or \"false\"");
				}else if (!getGuards().get(0).toString().equals(new Predicate("t").toString())){// if CF_Opt_Guard is False or an explicit guard, this axiom will be added {(CF_Opt_Start && !!CF_Opt_Guard)  => &&j=1 to nsomFIn_i(CF_Opt_Lj_Start && CF_Opt_Lj_End, CF_Opt)} //otherwise if CF_Opt_Guard is implicit True this axiom is no longer viable and no axiom will be added. 
				tempf1.clear();
				for (int i = 0; i < n; i++)
					tempf1.add(new SSomFIn_i(new And(getLifelinesStartPredicates().get(i), getLifelinesEndPredicates().get(i)), getPredicate()).getFun());
				f.add(new Implies(
						new And(getPredicate().getStartPredicate(), new Not(getGuards().get(0))),
						new And(tempf1)));
				}
				
				// // (CF_Opt_Start && CF_Opt_Guard) => (CF_Opt_Op_Start || (!!CF_Opt_Op_Start && &&j=1 to nsomFIn_i(CF_Opt_Lj_Start && CF_Opt_Lj_End, CF_Opt)))
				tempf1.clear();
				for (int i = 0; i < n; i++)
					tempf1.add(new SSomFIn_i(new And(getLifelinesStartPredicates().get(i), getLifelinesEndPredicates().get(i)), getPredicate()).getFun());
				if (getGuards().get(0) == null) {
					throw new Exception("CF_Opt's guard cannot be null, it should be \"true\" or \"false\"");
				}else if (!getGuards().get(0).toString().equals(new Predicate("t").toString())) {// if CF_Opt_Guard is an explicit guard, this axiom will be added {(CF_Opt_Start && CF_Opt_Guard) => (CF_Opt_Op_Start || (!!CF_Opt_Op_Start && &&j=1 to nsomFIn_i(CF_Opt_Lj_Start && CF_Opt_Lj_End, CF_Opt)))}
					f.add(new Implies(
							new And(getPredicate().getStartPredicate(), getGuards().get(0)),
							new Or(
									getOperandsPredicates().get(0).getStartPredicate(), 
									new And(new Not(getOperandsPredicates().get(0).getStartPredicate()), new And(tempf1)))));
				}else {// // in case of no guard (implicit true) this formula will be added.
					// // CF_Opt_Start => (CF_Opt_Op_Start || (!!CF_Opt_Op_Start && &&j=1 to nsomFIn_i(CF_Opt_Lj_Start && CF_Opt_Lj_End, CF_Opt)))
					f.add(new Implies(
							getPredicate().getStartPredicate(),
							new Or(
									getOperandsPredicates().get(0).getStartPredicate(), 
									new And(new Not(getOperandsPredicates().get(0).getStartPredicate()), new And(tempf1)))));
					}
				
				// // CF_Opt_Op_End => CF_Opt_End
				f.add(new Implies(getOperandsPredicates().get(0).getEndPredicate(), getPredicate().getEndPredicate()));
				// // CF_Opt_End => ((||j=1 to nCF_Opt_Li_End) && (&&j=1 to nsomPIn_i(CF_Opt_Lj_End, CF_Opt)))
				tempf1.clear();
				for (int i = 0; i < n; i++)
					tempf1.add(new SSomPIn_i(getLifelinePredicate(i).getEndPredicate(), getPredicate()));
				f.add(new Implies(getPredicate().getEndPredicate(), new And(new Or(getLifelinesEndPredicates()), new And(tempf1))));

				// // CF_Opt_Op_Start => CF_Opt_Guard && CF_Opt_Start
				if (getGuards().get(0) == null) {
					throw new Exception("CF_Opt's guard cannot be null, it should be \"true\" or \"false\"");}
				else {
					f.add(new Implies(getOperandsPredicates().get(0).getStartPredicate(), new And(getGuards().get(0), getPredicate().getStartPredicate())));
				}
			
			}//end "ws"
			// // if (config.combine == �sync�){
			else if (config.combine == ConfigCombine.SYNC){
				
				// // (CF_Opt_Start && !! CF_Opt_Guard) => CF_Opt_End
				if (getGuards().get(0) == null) {
					throw new Exception("CF_Opt's guard cannot be null, it should be \"true\" or \"false\"");}
				else {
					f.add(new Implies(new And(getPredicate().getStartPredicate(), new Not(getGuards().get(0))), getPredicate().getEndPredicate()));
				}
				// // (CF_Opt_Start && CF_Opt_Guard) => (CF_Opt_Op_Start || (!!CF_Opt_Op_Start && CF_Opt_End))
				BooleanFormulae tempf1;
				if (getGuards().get(0) == null) {
					throw new Exception("CF_Opt's guard cannot be null, it should be \"true\" or \"false\"");}
				else {
					tempf1 = new And(getPredicate().getStartPredicate(),getGuards().get(0));
					f.add(new Implies(
							tempf1, 
							new Or(getOperandsPredicates().get(0).getStartPredicate(), new And(new Not(getOperandsPredicates().get(0).getStartPredicate()), getPredicate().getEndPredicate()))));
				}
				// // CF_Opt_End => (CF_Opt_Start  || CF_Opt_Op_End)
				f.add(new Implies(getPredicate().getEndPredicate(), new Or(getPredicate().getStartPredicate(), getOperandsPredicates().get(0).getEndPredicate())));
				// // CF_Opt_Op_Start => (CF_Opt_Start && CF_Opt_Guard)
				if (getGuards().get(0) != null)
					f.add(new Implies(getOperandsPredicates().get(0).getStartPredicate(), new And(getGuards().get(0), getPredicate().getStartPredicate())));
				else
					f.add(new Implies(getOperandsPredicates().get(0).getStartPredicate(), getPredicate().getStartPredicate()));
				// // CF_Opt_Op_End => CF_Opt_End
				f.add(new Implies(getOperandsPredicates().get(0).getEndPredicate(), getPredicate().getEndPredicate()));
			}
			// // combine(CF_Opt_Op, config)
			f.addAll(new SCombine(mades_combinedfragment.getOperands().get(0)).getFormulae());
			
			return f;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}