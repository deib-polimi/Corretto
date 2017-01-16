package org.correttouml.uml2zot.semantics.sequencediagram;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.correttouml.uml.diagrams.expressions.PrimitiveType;
import org.correttouml.uml.diagrams.sequencediagram.*;
import org.correttouml.uml2zot.semantics.util.bool.*;
import org.correttouml.uml2zot.semantics.util.fun.SomPIn_i;
import org.correttouml.uml2zot.semantics.util.trio.*;
import org.eclipse.uml2.uml.Element;
import org.eclipse.uml2.uml.Message;
import org.eclipse.uml2.uml.MessageOccurrenceSpecification;
//import org.eclipse.uml2.uml.Model;
//import org.modelmapper.ModelMapper;



/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/

public class SCF_Loop extends SCombinedFragment  implements SCombinedFragmentItf{
	
	//[documentation]: \Dropbox\SharePolimi\Documentation\Sequence Diagram\Combined_Fragment\Modular_Semantics\[CF_Loop].docx
	private CF_Loop mades_cf_loop;
	private String operndName;
	private Map<String, String> mUmlIDName;
	private org.eclipse.uml2.uml.InteractionOperand uml_operand;
//	private org.eclipse.uml2.uml.InteractionOperand uml_operand_copy;
	
	public SCF_Loop(CF_Loop cfloop) {
		super(cfloop);
		this.mades_cf_loop = cfloop;
		this.operndName = mades_cf_loop.getOperands().get(0).getName();
		uml_operand = mades_cf_loop.getOperands().get(0).uml_interactionoperand;
		saveMessagesName();
	}
	
	private void saveMessagesName() {
		mUmlIDName = new HashMap<String, String>();
		for (Element e:mades_cf_loop.getOperands().get(0).uml_interactionoperand.allOwnedElements()) {
			if (e instanceof MessageOccurrenceSpecification) {
				if(e.equals(((MessageOccurrenceSpecification) e).getMessage().getSendEvent())) {
					org.correttouml.uml.diagrams.sequencediagram.Message m = new org.correttouml.uml.diagrams.sequencediagram.Message(((MessageOccurrenceSpecification)e).getMessage());
					mUmlIDName.put(m.getUMLId(), ((MessageOccurrenceSpecification)e).getMessage().getName());
				}
			}
		}
	}
	
	private void restoreOperand() {//restore names of messages to original names.
		for (Element e:mades_cf_loop.getOperands().get(0).uml_interactionoperand.allOwnedElements()) {
			if (e instanceof MessageOccurrenceSpecification) {
				if(e.equals(((MessageOccurrenceSpecification) e).getMessage().getSendEvent())) {
					Message m = ((MessageOccurrenceSpecification)e).getMessage();
					m.setName(mUmlIDName.get(new org.correttouml.uml.diagrams.sequencediagram.Message(m).getUMLId()));
				}
			}
		}
		mades_cf_loop.getOperands().get(0).setName(operndName);
	}
	
//	private void saveNamesOfMembers() {
//			for (EObject e:uml_operand.eContents())
//				if(e instanceof MessageOccurrenceSpecification)
//	}
	
	SInteractionOperand getOpi(int i) {
		InteractionOperand iop = mades_cf_loop.getOperands().get(0);
		iop.setName(operndName + i);
		return new SInteractionOperand(iop);
	}
	
	InteractionOperand getMadesOperand(int i) { // In "ws" version of loop UMLID of message are no longer unique. We need to add prefix(name of CF + name of operand) to all messages in loop (including nested CF, ...) and use new names as unique predicate name. 
		mades_cf_loop.getOperands().get(0).setName(operndName + i);
		for (Element e:uml_operand.allOwnedElements()) {
			if (e instanceof MessageOccurrenceSpecification) {
				if(e.equals(((MessageOccurrenceSpecification) e).getMessage().getSendEvent())){
					Message tempm =((MessageOccurrenceSpecification) e).getMessage();
					String umlMessageName = mUmlIDName.get(new org.correttouml.uml.diagrams.sequencediagram.Message(tempm).getUMLId());
					String umlMessageNameInNewOp = mades_cf_loop.getName()+operndName+i+umlMessageName; 
					tempm.setName(umlMessageNameInNewOp);
					if (config.loop == ConfigCombine.WS)
						RepetitiousMessage.instances.put(umlMessageNameInNewOp, tempm);
				}
			}
		}
		return mades_cf_loop.getOperands().get(0);
	}

	@Override
	public ArrayList<BooleanFormulae> getSemantics() {
		try {
			BooleanFormulae start = getPredicate().getStartPredicate();
			BooleanFormulae end = getPredicate().getEndPredicate();
			
			ArrayList<BooleanFormulae> f = new ArrayList<BooleanFormulae>();
			Predicate SD_Stop = getSDPredicate().getStopPredicate();
			// // borders(CF_Loop, SD_End || SD_Stop)
			// // link_Pre_Post(CF_Loop, config)
			f.add(new SBorders(getPredicate(), SD_Stop).getFun());
			f.addAll(new SLink_Pre_Post(this, config.loop).getFormulae());
			// // order(CF_Loop_Start, CF_Loop_End, True, SD_Stop, True)
			f.add(new SOrder(start, end, SD_Stop, true).getFun());
// // if (config.combine == ���ws���){
			if(config.loop == ConfigCombine.WS){
				int n = getLifelines().size();
				int min = getMINValue();
				int max = Integer.MAX_VALUE;
					try {
						max = getMAXValue();
					} catch (Exception e) {
						throw new Exception("Max number of iteration of loop cannot be infinity when config.loop is \"ws\"");
					}
//				||i=1 to n(CF_Loop_Li_Start) => CF_Loop
				f.add(new Implies(new Or(getLifelinesStartPredicates()), getPredicate()));
//				CF_Loop_Start => ||i=1 to n(CF_Loop_Li_Start)
				f.add(new Implies(start, new Or(getLifelinesStartPredicates())));

//				for (i = 0; i < n; i++){
				for (int i = 0; i < n; i++) {
//				    borders(CF_Loop_Li, SD_Stop)
					f.add(new SBorders(getLifelinePredicate(i), SD_Stop));
//					order(CF_Loop_Li_Start, CF_Loop_Li_End, True, SD_Stop, True)
					f.add(new SOrder(getLifelinesStartPredicates().get(i), getLifelinesEndPredicates().get(i), SD_Stop, true));
//			}
				}
				
				
				
				for (int i=1;i<=max;i++) {
//    combine(CF_Loop_Opi, config)
					f.addAll(new SCombine(getMadesOperand(i)).getFormulae());
//					CF_Loop_Opi => CF_Loop
					f.add(new Implies(getOpi(i).getPredicate(), getPredicate()));
				}
				restoreOperand();
//				if (min > 0){
				if (min > 0) {
//				    &&j=1 to nCF_Loop_Lj_Start <=> CF_Loop_Op1_Lj_Start
					for (int j = 0; j < n; j++)
						f.add(new Iff(getLifelinesStartPredicates().get(j), getOpi(1).getLifelinesStartPredicates().get(j)));
//				    &&j=1 to norderMonoD(CF_Loop_Opmin_Lj_End, CF_Loop_Lj_End, True, SD_Stop, True)
					for (int j = 0; j < n; j++)
						f.add(new SOrderMonoD(getOpi(getMINValue()).getLifelinesEndPredicates().get(j), getLifelinesEndPredicates().get(j), SD_Stop, true));
					
//				    &&j=1 to n((CF_Loop_Lj_End && !!CF_Loop_Lj_Skip) => somPIn_i(CF_Loop_Opmin_Lj_End, CF_Loop_Lj)
					for (int j = 0; j < n; j++){
						f.add(new Implies(new And(getLifelinePredicate(j).getEndPredicate(), new Not(getLifelinePredicate(j).getSkipPredicate())), new SomPIn_i(getOpi(getMINValue()).getLifelinesEndPredicates().get(j), getLifelinePredicate(j))));
					}
//				}
				}
//				for (int i = 1; i < max; i++)
				for (int i = 1; i < max; i++)
					for (int j = 0; j < n; j++)
//				    	&&j=1 to n(CF_Loop_Opi_Lj_Start => !!CF_Loop_Lj_Skip)
						f.add(new Implies(getOpi(i).getLifelinesStartPredicates().get(j), new Not(getLifelinePredicate(j).getSkipPredicate())));

				
				
				
//				for (i = 1; i < min; i++){
				for (int i = 1; i < min; i++){
//				    &&j=1 to n(CF_Loop_Opi_Lj_End => (CF_Loop_Lj_End || next(CF_Loop_Opi+1_Lj_Start)))
					for (int j = 0; j < n; j++)
						f.add(new Implies(getOpi(i).getLifelinesEndPredicates().get(j), new Or(getLifelinesEndPredicates().get(j), new Next(getOpi(i + 1).getLifelinesStartPredicates().get(j)))));
//				    &&j=1 to n(CF_Loop_Opi+1_Lj_Start => yesterday(CF_Loop_Opi_Lj_End))
					for (int j = 0; j < n; j++)
						f.add(new Implies(getOpi(i + 1).getLifelinesStartPredicates().get(j), new Yesterday(getOpi(i).getLifelinesEndPredicates().get(j))));
//				}
				}

				
//				for (i = min + 1; i <= max; i++){
				for(int i = min + 1; i <= max; i++) {
//					CF_Loop_Opi_Start => CF_Loop_Guard
					f.add(new Implies(getOpi(i).getPredicate().getStartPredicate(), getGuard()));
//					&&j=1 to n orderMonoD(CF_Loop_Opi_Lj_End, CF_Loop_Lj_End, True, SD_Stop, True)
					for (int j = 0; j < n; j++) 
						f.add(new SOrderMonoD(getOpi(i).getLifelinesEndPredicates().get(j), getLifelinesEndPredicates().get(j), SD_Stop, true));
//					if (i == 1){
					if (i == 1) {
//						&&j=1 to n order(CF_Loop_Lj_Start, CF_Loop_Opi_Lj_Start, CF_Loop_Opi, SD_Stop, True)
						for (int j = 0; j < n; j++) 
							f.add(new SOrder(getLifelinesStartPredicates().get(j), getOpi(i).getLifelinesStartPredicates().get(j), getOpi(i).getPredicate(), SD_Stop, true));
//						(CF_Loop_Start && !!CF_Loop_Guard) => &&j=1 to nsomFIn_i(CF_Loop_Lj_Start && CF_Loop_Lj_End, CF_Loop)
						ArrayList<BooleanFormulae> tempf1 = new ArrayList<BooleanFormulae>();
						for (int j = 0; j < n; j++)
							tempf1.add(new SSomFIn_i(new And(getLifelinesStartPredicates().get(j), getLifelinesEndPredicates().get(j)), getPredicate()));
						f.add(new Implies(new And(getPredicate().getStartPredicate(), new Not(getGuard())), new And(tempf1)));
//						(CF_Loop_Start && CF_Loop_Guard) => (CF_Loop_Opi_Start || (!!CF_Loop_Opi_Start && &&j=1 to nsomFIn_i(CF_Loop_Lj_Start && CF_Loop_Lj_End, CF_Loop)))
						tempf1.clear();
						tempf1.add(new Not(getOpi(i).getPredicate().getStartPredicate()));
						for (int j = 0; j < n; j++)
							tempf1.add(new SSomFIn_i(new And(getLifelinesStartPredicates().get(j), getLifelinesEndPredicates().get(j)), getPredicate()));
						f.add(new Implies(new And(getPredicate().getStartPredicate(), getGuard()), new Or(getOpi(i).getPredicate().getStartPredicate(), new And(tempf1))));
//					}
					}
//					if (i > 1){
					if (i > 1) {
//						for (int j = 0; j < n; j++){
						for (int j = 0; j < n; j++) {
//						    order(CF_Loop_Opi-1_Lj_End, CF_Loop_Opi_Lj_Start, next(CF_Loop_Opi), (CF_Loop_Lj_End || SD_Stop), False)
//							f.add(new SOrder(getOpi(i - 1).getLifelinesEndPredicates().get(j), getOpi(i).getLifelinesStartPredicates().get(j), new Next(getOpi(i).getPredicate()), SD_Stop, false));////#### before break
							f.add(new SOrder(getOpi(i - 1).getLifelinesEndPredicates().get(j), getOpi(i).getLifelinesStartPredicates().get(j), new Next(getOpi(i).getPredicate()), new Or(SD_Stop, getPredicate().getEndPredicate()), false));
//							(CF_Loop_Opi-1_Lj_End && yesterday(!!CF_Loop_Opi) && !!CF_Loop_Guard) => !!somFIn_i(CF_Loop_Opi, CF_Loop)
							f.add(new Implies(new And(getOpi(i - 1).getLifelinesEndPredicates().get(j), new Yesterday(new Not(getOpi(i).getPredicate())), new Not(getGuard())), new Not(new SSomFIn_i(getOpi(i).getPredicate(), getPredicate()))));
//						    (CF_Loop_Opi-1_Lj_End && yesterday(!!CF_Loop_Opi) && CF_Loop_Guard) => (next(CF_Loop_Opi_Start) || !!somFIn_i(CF_Loop_Opi_Start, CF_Loop)))
							f.add(new Implies(new And(getOpi(i - 1).getLifelinesEndPredicates().get(j), new Yesterday(new Not(getOpi(i).getPredicate())), getGuard()), new Or(new Next(getOpi(i).getPredicate().getStartPredicate()), new Not(new SSomFIn_i(getOpi(i).getPredicate().getStartPredicate(), getPredicate()))))); 
//							}
						}
//					}
					}

//				}
				}
				
//				CF_Loop_End => ((||j=1 to nCF_Loop_Li_End) && (&&j=1 to nsomPIn_i(CF_Loop_Lj_End, CF_Loop)))
				ArrayList<BooleanFormulae> tempf1 = new ArrayList<BooleanFormulae>();
				for (int j = 0; j < n; j++)
					tempf1.add(new SSomPIn_i(getLifelinesEndPredicates().get(j), getPredicate()));
				f.add(new Implies(getPredicate().getEndPredicate(), new And(new Or(getLifelinesEndPredicates()), new And(tempf1))));
				
			}// end of "ws"
			
//			if (config.loop == ���sync���){
			if (config.loop == ConfigCombine.SYNC) {
				TrioVar counter = new TrioVar(getPredicate().getPredicateName() + "_Counter", PrimitiveType.INTEGER);
				TrioVar.instances.add(counter);
				TrioConstant min = new TrioConstant(getPredicate().getPredicateName() + "_MIN", getMINValue());
				TrioConstant.instances.add(min);
				TrioConstant max = null;
				if (!getMAXName().equals("*")) {
					max = new TrioConstant(getPredicate().getPredicateName() + "_MAX", getMAXValue());
					TrioConstant.instances.add(max);
				}
				LiteralInt zero = new LiteralInt(0);
				LiteralInt one = new LiteralInt(1);
				BooleanFormulae opStart = getOperandsPredicates().get(0).getStartPredicate();
				BooleanFormulae opEnd = getOperandsPredicates().get(0).getEndPredicate();
//				CF_Loop_Op => CF_Loop
				f.add(new Implies(new SInteractionOperand(mades_cf_loop.getOperands().get(0)).getPredicate(), getPredicate()));
//				CF_Loop_Start => (CF_Loop_C = 0)
				f.add(new Implies(start, new EQ(counter, zero)));
//				(CF_Loop_Start && (CF_Loop_Min = 0) && !!CF_Loop_Guard) => !!CF_Loop_Op_Start && CF_Loop_End
				f.add(new Implies(new And(start, new EQ(min, zero), new Not(getGuard())), new And(new Not(opStart), end)));
//				(CF_Loop_Start && (CF_Loop_Min = 0) && CF_Loop_Guard) => (CF_Loop_Op_Start || ( !!CF_Loop_Op_Start && CF_Loop_End))
				f.add(new Implies(new And(start, new EQ(min, zero), getGuard()), new Or(opStart, new And(new Not(opStart), end)))); 
//				(CF_Loop_Start && (CF_Loop_Min > 0)) => CF_Loop_Op_Start
				f.add(new Implies(new And(start, new GT(min, zero)), opStart));
//				CF_Loop_End => next(CF_Loop_C = 0)
				f.add(new Implies(end, new Next(new EQ(counter, zero))));

//				(CF_Loop_Op_Start || CF_Loop_Op_End) => CF_Loop
				f.add(new Implies(new Or(opStart, opEnd), getPredicate()));
//				(CF_Loop_Op_End && !!CF_Loop_End)=> (next(CF_Loop_C) = (CF_Loop_C + 1))
				f.add(new Implies(new And(opEnd, new Not(end)), new EQ(new Next(counter), new Plus(counter, one))));
//				!!(CF_Loop_Op_End || CF_Loop_End) => (next(CF_Loop_C) = CF_Loop_C)
				f.add(new Implies(new Not(new Or(opEnd, end)), new EQ(new Next(counter), counter)));
//				(CF_Loop_Op_End && ((CF_Loop_C + 1) < CF_Loop_Min) && !!CF_Loop_Skip) => next(CF_Loop_Op_Start)
				f.add(new Implies(new And(opEnd, new LT(new Plus(counter, one), min), new Not(getPredicate().getSkipPredicate())), new Next(opStart)));
				
				//CF_Loop_Skip <=> ||i=1 to nCF_Loop_Li_Skip
				f.add(new Iff(getPredicate().getSkipPredicate(), new Or(getLifelinesSkipPredicates())));
				
//				(CF_Loop_Op_End && ((CF_Loop_C + 1) >= CF_Loop_Min) && !!CF_Loop_Guard) => CF_Loop_End
				f.add(new Implies(new And(opEnd, new GTE(new Plus(counter, one), min), new Not(getGuard())), end));
//				(CF_Loop_Op_End && ((CF_Loop_C + 1) >= CF_Loop_Min) && CF_Loop_Guard) => ((next(CF_Loop_Op_Start) && !!CF_Loop_End) || (next(!!CF_Loop_Op_Start) && CF_Loop_End))
				f.add(new Implies(new And(opEnd, new GTE(new Plus(counter, one), min), getGuard()), new Or(new And(new Next(opStart), new Not(end)), new And(new Next(new Not(opStart)), end))));
//				If CF_Loop_Max != ���*���
				if (!getMAXName().equals("*")) {
//				    (CF_Loop_Op_End && ((CF_Loop_C + 1) = CF_Loop_Max)) => CF_Loop_End
					f.add(new Implies(new And(opEnd, new EQ(new Plus(counter, one), max)), end));
				}
//				combine(CF_Loop_Op, config)
				f.addAll(new SCombine(mades_cf_loop.getOperands().get(0)).getFormulae());
//				//				}
			}
			
			return f;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public int getMINValue() {
		return mades_cf_loop.getMINValue();
	}
	
	public int getMAXValue() {
		return mades_cf_loop.getMAXValue();
	}
	
	public String getMAXName() {
		return mades_cf_loop.getMAXName();
	}
	
	public BooleanFormulae getGuard() {
		return getGuards().get(0);
	}
	
	@Override
	public ArrayList<Predicate> getFirstMessages(String lifelineName){//returns predicate of messages that can possibly be first message of CombinedFragment.
		ArrayList<Predicate> firstMessages = new ArrayList<Predicate>();
		for (int i = 0; i < getLifelines().size(); i++) {
			if (getLifelines().get(i).getName() == lifelineName) {
//				ArrayList<Predicate> tempPrdArr = new SInteractionOperand(getMadesOperand(1)).getFirstMessages(i); //ver1
				ArrayList<Predicate> tempPrdArr = new ArrayList<Predicate>();
				if (config.loop == ConfigCombine.WS) {
					tempPrdArr = new SInteractionOperand(getMadesOperand(1)).getFirstMessages(i);
					restoreOperand();
				}else if (config.loop == ConfigCombine.SYNC) {
					tempPrdArr = new SInteractionOperand(mades_cf_loop.getOperands().get(0)).getFirstMessages(i);
				}
				if (tempPrdArr != null)
					firstMessages.addAll(tempPrdArr);
			}
		}
		restoreOperand();
		if (firstMessages.size() == 0)
			return null;
		return firstMessages;
	}
	
	@Override
	public ArrayList<Predicate> getLastMessages(String lifelineName){//returns predicate of messages that can possibly be last message of CombinedFragment.
		ArrayList<Predicate> lastMessages = new ArrayList<Predicate>();
		for (int i = 0; i < getLifelines().size(); i++) {
			if (getLifelines().get(i).getName() == lifelineName)
				for (int j = getMAXValue(); j >= getMINValue(); j--) {
					if(j > 0) {
						ArrayList<Predicate> tempPrdArr = new SInteractionOperand(getMadesOperand(j)).getLastMessages(i);
						restoreOperand();
						if (tempPrdArr != null)
							lastMessages.addAll(tempPrdArr);
					}
				}
		}
		if (lastMessages.size() == 0)
			return null;
		return lastMessages;
	}
	
}