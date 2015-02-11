
package org.correttouml.grammars;

/**
 * Initialization support for running Xtext languages 
 * without equinox extension registry
 */
public class StateMachineTriggersStandaloneSetup extends StateMachineTriggersStandaloneSetupGenerated{

	public static void doSetup() {
		new StateMachineTriggersStandaloneSetup().createInjectorAndDoEMFRegistration();
	}
}

