package org.correttouml.grammars.validation;
 
import java.util.ArrayList;
import java.util.List;

import org.eclipse.emf.ecore.EPackage;
import org.eclipse.xtext.validation.AbstractDeclarativeValidator;

public class AbstractStateMachineTriggersJavaValidator extends AbstractDeclarativeValidator {

	@Override
	protected List<EPackage> getEPackages() {
	    List<EPackage> result = new ArrayList<EPackage>();
	    result.add(org.correttouml.grammars.stateMachineTriggers.StateMachineTriggersPackage.eINSTANCE);
		return result;
	}

}
