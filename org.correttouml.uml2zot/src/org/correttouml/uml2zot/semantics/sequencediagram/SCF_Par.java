package org.correttouml.uml2zot.semantics.sequencediagram;

import java.util.ArrayList;
import org.correttouml.uml.diagrams.sequencediagram.CombinedFragment;
import org.correttouml.uml2zot.semantics.util.bool.*;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.correttouml.uml.diagrams.sequencediagram.*;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/

public class SCF_Par extends SCombinedFragment implements SCombinedFragmentItf{
	//[documentation]: \Dropbox\SharePolimi\Documentation\Sequence Diagram\Combined_Fragment\Modular_Semantics\[CF_Par].docx
	private CF_Par mades_cf_par;
	
	public SCF_Par(CF_Par cfpar, Config config) {
		super((CombinedFragment)cfpar, config);
		this.mades_cf_par = cfpar;
	}

	@Override
	public ArrayList<BooleanFormulae> getSemantics() {
		try {
			ArrayList<BooleanFormulae> f = new ArrayList<BooleanFormulae>();
			Predicate SD_Stop = getSDPredicate().getStopPredicate();
			int n = getLifelines().size();
			int m = getOperandsPredicates().size();
			ArrayList<BooleanFormulae> tempf1 = new ArrayList<BooleanFormulae>();
			ArrayList<BooleanFormulae> tempf2 = new ArrayList<BooleanFormulae>();
			// // borders(CF_Par, SD_End || SD_Stop)
			// // link_Pre_Post(CF_Par, config)
			f.add(new SBorders(getPredicate(), getSDPredicate().getStopPredicate()).getFun());
			f.addAll(new SLink_Pre_Post(this, config.combine).getFormulae());
			// // order(CF_Par_Start, CF_Par_End, True, SD_Stop, True)
			f.add(new SOrder(getPredicate().getStartPredicate(), getPredicate().getEndPredicate(), SD_Stop, true).getFun());
// // 			if (config.combine == “ws”){
			if(config.combine == ConfigCombine.WS){
				// // ||i=1 to n(CF_Par_Li_Start) => CF_Par
				f.add(new Implies(new Or(getLifelinesStartPredicates()), getPredicate()));
				// // CF_Par_Start => ||i=1 to n(CF_Par_Li_Start)
				f.add(new Implies(getPredicate().getStartPredicate(), new Or(getLifelinesStartPredicates())));
				// // For (i=0; i<m; i++){
				for (int i = 0; i < m; i++) {
					// //     &&j=1 to n order(CF_Par_Lj_Start, CF_Par_Opi_Lj_Start, CF_Par_Opi, SD_Stop, True)
					// //    &&j=1 to n orderMonoD(CF_Par_Opi_Lj_End, CF_Par_Lj_End,  SD_Stop, True)
					for (int j=0;j<n;j++) {
						f.add(new SOrder(getLifelinesStartPredicates().get(j), getOpiLjPredicate(i, j).getStartPredicate(),getOperandsPredicates().get(i), SD_Stop, true).getFun());
						f.add(new SOrderMonoD(getOpiLjPredicate(i, j).getEndPredicate(), getLifelinesEndPredicates().get(j), SD_Stop, true).getFun());
					}
					// // }
				}
			// // (CF_Par_Start && !!(||i=1 to n CF_Par_Guardi)) => (&&j=1 to nsomFIn_i(CF_Par_Lj_Start && CF_Par_Lj_End, CF_Par))
			tempf1.clear();
			for(int j=0;j<n;j++) {
				tempf1.add(new SSomFIn_i(new And(getLifelinePredicate(j).getStartPredicate(), getLifelinePredicate(j).getEndPredicate()), getPredicate()).getFun());
			}
			f.add(new Implies(new And(getPredicate().getStartPredicate(), new Not(new Or(getGuards()))), new And(tempf1))); 
			
			// // For (i=0; i<m; i++){
			for (int i=0;i<m;i++) {
			// //     (CF_Par_Start && CF_Par_Guardi) <=> CF_Par_Opi_Start
				f.add(new Iff(new And(getPredicate().getStartPredicate(), getGuards().get(i)), getOperandsPredicates().get(i).getStartPredicate()));
			// // }
			}
			
			// // For (i=0; i<n; i++){
			for (int i=0;i<n;i++) {
			// //     CF_Par_Li_End => ((CF_Par_Li_Start && somPIn_i((CF_Par_Start && !!(||j=1 to mCF_Par_Guardj)), CF_Par)) || ((||j=1 to mCF_Par_Opj_Li_End) && (&&j=1 to msomPIn_i((CF_Par_Opj => CF_Par_Opj_Li_End), CF_Par))))
				tempf1.clear();//part of above formula: (CF_Par_Li_Start && somPIn_i((CF_Par_Start && !!(||j=1 to mCF_Par_Guardj)), CF_Par))
				tempf1.add(new And(getLifelinesStartPredicates().get(i), 
								new SSomPIn_i(new And(
											getPredicate().getStartPredicate(), 
											new Not(new Or(getGuards()))), getPredicate()).getFun()));
				tempf2.clear();// ((||j=1 to mCF_Par_Opj_Li_End) && (&&j=1 to msomPIn_i((CF_Par_Opj => CF_Par_Opj_Li_End), CF_Par)))
				ArrayList<BooleanFormulae> CF_Par_Opj_Li_Ends = new ArrayList<BooleanFormulae>();// j=1 to mCF_Par_Opj_Li_End)
				ArrayList<BooleanFormulae> somPIns = new ArrayList<BooleanFormulae>();//j=1 to msomPIn_i((CF_Par_Opj => CF_Par_Opj_Li_End), CF_Par)
				for (int j=0;j<m;j++) {
					CF_Par_Opj_Li_Ends.add(getOpiLjPredicate(j, i).getEndPredicate());
					somPIns.add(new SSomPIn_i(new Implies(getOperandsPredicates().get(j), getOpiLjPredicate(j, i).getEndPredicate()), getPredicate()).getFun());
				}
				
				
				tempf2.add(new And(new Or(CF_Par_Opj_Li_Ends), new And(somPIns)));
				
				f.add(new Iff(getLifelinesEndPredicates().get(i), new Or(tempf1.get(0), tempf2.get(0))));
			// // }
			}

			// // CF_Par_End => ((||j=1 to nCF_Par_Lj_End) && (&&j=1 to nsomPIn_i(CF_Par_Lj_End, CF_Par)))
			tempf1.clear();
			for (int i = 0; i < n; i++)
				tempf1.add(new SSomPIn_i(getLifelinePredicate(i).getEndPredicate(), getPredicate()));
			f.add(new Implies(getPredicate().getEndPredicate(), new And(new Or(getLifelinesEndPredicates()), new And(tempf1))));
		}
// // if (config.combine == “sync”){
			if (config.combine == ConfigCombine.SYNC) {
			// // 	(CF_Par_Start && !!(||i=1 to n Guardi)) => CF_Par_End
				f.add(new Implies(new And(getPredicate().getStartPredicate(), new Not(new Or(getGuards()))), getPredicate().getEndPredicate()));
			// // 	CF_Par_End => ((||i=1 to n CF_Par_Opi_End) || CF_Par_Start)
				tempf1.clear();
				for (int i = 0; i < m; i++)
					tempf1.add(getOperandsPredicates().get(i).getEndPredicate());
				f.add(new Implies(getPredicate().getEndPredicate(), new Or(new Or(tempf1), getPredicate().getStartPredicate())));
			// // 	CF_Par_End => (&&i=1 to n (somPIn_i(CF_Par_Opi_End, CF_Par) || !!somPIn_i(CF_Par_Opi_Start, CF_Par)))
				tempf1.clear();
				for (int i=0;i<m;i++)
					tempf1.add(new Or(new SSomPIn_i(getOperandsPredicates().get(i).getEndPredicate(), getPredicate()).getFun(), new Not(new SSomPIn_i(getOperandsPredicates().get(i).getStartPredicate(), getPredicate()).getFun())));
				f.add(new Implies(getPredicate().getEndPredicate(), new And(tempf1)));
			// // 	For (i = 0; i<m; i++){
				for (int i=0;i<m;i++)
			// // 	    (CF_Par_Guardi && CF_Par_Start) <=> CF_Par_Opi_Start
					f.add(new Iff(new And(getGuards().get(i), getPredicate().getStartPredicate()), getOperandsPredicates().get(i).getStartPredicate()));
			// // 	}
			}// end of "sync"
		
			// // for (i = 0; i<m; i++)
			for (int i = 0; i < m; i++)
			// //     combine(CF_Alt_Opi, config)
			f.addAll(new SCombine(mades_combinedfragment.getOperands().get(i), config).getFormulae());
			
			return f;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}