/*
 * generated by Xtext
 */
package org.correttouml.grammars.ui;

import org.eclipse.xtext.ui.guice.AbstractGuiceAwareExecutableExtensionFactory;
import org.osgi.framework.Bundle;

import com.google.inject.Injector;

import org.correttouml.grammars.ui.internal.PropertyActivator;

/**
 * This class was generated. Customizations should only happen in a newly
 * introduced subclass. 
 */
public class PropertyExecutableExtensionFactory extends AbstractGuiceAwareExecutableExtensionFactory {

	@Override
	protected Bundle getBundle() {
		return PropertyActivator.getInstance().getBundle();
	}
	
	@Override
	protected Injector getInjector() {
		return PropertyActivator.getInstance().getInjector(PropertyActivator.ORG_CORRETTOUML_GRAMMARS_PROPERTY);
	}
	
}
