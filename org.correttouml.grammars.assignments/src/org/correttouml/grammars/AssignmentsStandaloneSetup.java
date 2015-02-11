
package org.correttouml.grammars;

/**
 * Initialization support for running Xtext languages 
 * without equinox extension registry
 */
public class AssignmentsStandaloneSetup extends AssignmentsStandaloneSetupGenerated{

	public static void doSetup() {
		new AssignmentsStandaloneSetup().createInjectorAndDoEMFRegistration();
	}
}

