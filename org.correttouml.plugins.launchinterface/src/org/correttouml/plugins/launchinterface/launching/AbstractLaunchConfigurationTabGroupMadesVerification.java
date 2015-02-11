package org.correttouml.plugins.launchinterface.launching;

import org.eclipse.debug.ui.AbstractLaunchConfigurationTabGroup;
import org.eclipse.debug.ui.ILaunchConfigurationDialog;
import org.eclipse.debug.ui.ILaunchConfigurationTab;

import org.correttouml.plugins.launchinterface.launching.tabs.*;

public class AbstractLaunchConfigurationTabGroupMadesVerification extends
		AbstractLaunchConfigurationTabGroup {

	@Override
	public void createTabs(ILaunchConfigurationDialog dialog, String mode) {
		
		SampleTab sampleTab = new SampleTab();
		
		ILaunchConfigurationTab[] tabs = 
				new ILaunchConfigurationTab[]{
					sampleTab
				};
			setTabs(tabs);	
	}
}
