
package org.correttouml.grammars;

/**
 * Initialization support for running Xtext languages 
 * without equinox extension registry
 */
public class StateMachineActionsStandaloneSetup extends StateMachineActionsStandaloneSetupGenerated{

	public static void doSetup() {
		new StateMachineActionsStandaloneSetup().createInjectorAndDoEMFRegistration();
	}
}

