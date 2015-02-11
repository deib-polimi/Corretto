
package org.correttouml.grammars;

/**
 * Initialization support for running Xtext languages 
 * without equinox extension registry
 */
public class BooleanExpressionsStandaloneSetup extends BooleanExpressionsStandaloneSetupGenerated{

	public static void doSetup() {
		new BooleanExpressionsStandaloneSetup().createInjectorAndDoEMFRegistration();
	}
}

