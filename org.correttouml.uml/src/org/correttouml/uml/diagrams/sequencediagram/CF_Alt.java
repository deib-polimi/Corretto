package org.correttouml.uml.diagrams.sequencediagram;


import java.util.ArrayList;

import org.correttouml.uml.diagrams.events.Event;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/
public class CF_Alt extends org.correttouml.uml.diagrams.sequencediagram.CombinedFragment implements InteractionFragment, Event, CombinedFragmentItf {

	public org.eclipse.uml2.uml.CombinedFragment uml_cf_alt;
	
	public CF_Alt(org.eclipse.uml2.uml.CombinedFragment uml_cf_alt) {
		super(uml_cf_alt);
		this.uml_cf_alt = uml_cf_alt;
	}

	@Override
	public ArrayList<InteractionOperand> getOperands(){
		ArrayList<InteractionOperand> ios = new ArrayList<InteractionOperand>();
		int umlm = uml_cf_alt.getOperands().size(); //number of uml operands in which else operand is included.
		for (int i = 0; i < umlm - 1; i++) {
			ios.add(new InteractionOperand(uml_cf_alt.getOperands().get(i)));
		}
		if (uml_cf_alt.getOperands().get(umlm - 1).getGuard().getName() != null) //if last operand is not else operand add it to list of mades operands
			ios.add(new InteractionOperand(uml_cf_alt.getOperands().get(umlm - 1)));
		return ios;
	}
	
	@Override
	public ArrayList<String> getOperandsNames(){
		ArrayList<String> operandsnames = new ArrayList<String>();
		for (InteractionOperand io: getOperands())
			operandsnames.add(io.getName());
		return operandsnames;
	}
	
//	@Override
//	public ArrayList<String> getGuards(){// in CF_Alt we do not obtain guards through operands, because its different from other CFs. In CF_Alt empty guard ("") means null, and only else operand has null guard. But in other CFs empty guard ("") means implicit true((-P- t)). Else operand must be last operand and other operands' guards should not be null, if not, it should throw exception.
//		try {
//			ArrayList<String> guards = new ArrayList<String>();
//			for (InteractionOperand operand:getOperands()) {
//				if (operand.getGuard().length() == 0)// if guard is ("")
//					throw new Exception("All operands in CF_Alt should have a guard, except Else operand.");
//				else
//					guards.add(operand.getGuard());
//			}
//			return guards;
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return null;
//	}
	public InteractionOperand getElseOperand() {
		if (getUMLOperands().size() > getOperands().size())
			return getUMLOperands().get(getUMLOperands().size() - 1);
		return null;
	}
	
	public String getElseOperandName() {
		return getElseOperand().getName();
	}
}