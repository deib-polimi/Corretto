package org.correttouml.uml.diagrams.sequencediagram;

import org.eclipse.uml2.uml.InteractionOperatorKind;

/**
@author: Mohammad Mehdi Pourhashem Kallehbasti
*/
public class CombinedFragmentFactory {
	
	public static InteractionFragment getInstance(org.eclipse.uml2.uml.CombinedFragment uml_combinedfragment) {
		try {
			switch (uml_combinedfragment.getInteractionOperator().getValue()) {
			case InteractionOperatorKind.ALT:
				 return new CF_Alt(uml_combinedfragment);
			case InteractionOperatorKind.OPT:
				return new CF_Opt(uml_combinedfragment);
			case InteractionOperatorKind.PAR:
				return new CF_Par(uml_combinedfragment);
			case InteractionOperatorKind.LOOP:
				return new CF_Loop(uml_combinedfragment);
			case InteractionOperatorKind.BREAK:
				return new CF_Break(uml_combinedfragment);
			}
			throw new Exception("Event not found");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
