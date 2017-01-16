package org.correttouml.plugins.launchinterface.launching;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;

import org.correttouml.uml2zot.UML2Zot;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.model.ILaunchConfigurationDelegate;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IConsole;
import org.eclipse.ui.console.IConsoleManager;
import org.eclipse.ui.console.MessageConsole;
import org.eclipse.ui.console.MessageConsoleStream;

public class MadesVerificationLaunchConfigurationDelegate implements
		ILaunchConfigurationDelegate {

	// private static final Logger LOGGER =
	// Logger.getLogger(MadesVerificationLaunchConfigurationDelegate.class);

	@Override
	public void launch(ILaunchConfiguration configuration, String mode,
			ILaunch launch, IProgressMonitor monitor) throws CoreException {

		/** The UML2ZOT entry point for making the transformation */

		/** Taken from MadesVerificationLaunchConfigurationAttributes **/
		String path_to_model = configuration.getAttribute(
				MadesVerificationLaunchConfigurationAttributes.PATH_TO_MODEL,
				"");
		String timebound = configuration.getAttribute(
				MadesVerificationLaunchConfigurationAttributes.TIME_BOUND, "");
		String zot_location = configuration
				.getAttribute(
						MadesVerificationLaunchConfigurationAttributes.ZOT_LOCATION,
						"");
		String plugin = configuration.getAttribute(
				MadesVerificationLaunchConfigurationAttributes.PLUGIN, "");
		String solver = configuration.getAttribute(
				MadesVerificationLaunchConfigurationAttributes.SOLVER, "");
		String output_folder = configuration.getAttribute(
				MadesVerificationLaunchConfigurationAttributes.OUTPUT_FOLDER,
				"");

		UML2Zot t = new UML2Zot(new File(path_to_model).getAbsolutePath());

		// IWorkspace workspace = ResourcesPlugin.getWorkspace();
		// File workspaceDirectory = workspace.getRoot().getLocation().toFile();

		// LOGGER.info("Generate the ZOT File");
		String zot_model_file = new File(output_folder, "model.zot")
				.getAbsolutePath();
		File zot_mappings_file = new File(output_folder, "model.mappings");
		t.generateZOTFile(Integer.parseInt(timebound), plugin, solver,
				zot_model_file);

		// LOGGER.info("Generate the Mappings File");
		t.generateMappingsFile(zot_mappings_file);

		// Running solver
		MessageConsole myConsole = findConsole("Console");
		MessageConsoleStream out = myConsole.newMessageStream();

		try {
			String line;
			String[] command = { zot_location+IPath.SEPARATOR+"zot", zot_model_file };
			Process p = Runtime.getRuntime().exec(command);
			BufferedReader bri = new BufferedReader(new InputStreamReader(
					p.getInputStream()));
			BufferedReader bre = new BufferedReader(new InputStreamReader(
					p.getErrorStream()));
			while ((line = bri.readLine()) != null) {
				out.println(line);
			}
			bri.close();
			while ((line = bre.readLine()) != null) {
				out.println(line);
			}
			bre.close();
			p.waitFor();
			out.println("Done.");
		} catch (Exception err) {
			err.printStackTrace();
		}

	}

	private MessageConsole findConsole(String name) {
		ConsolePlugin plugin = ConsolePlugin.getDefault();
		IConsoleManager conMan = plugin.getConsoleManager();
		IConsole[] existing = conMan.getConsoles();
		for (int i = 0; i < existing.length; i++)
			if (name.equals(existing[i].getName()))
				return (MessageConsole) existing[i];
		// no console found, so create a new one
		MessageConsole myConsole = new MessageConsole(name, null);
		conMan.addConsoles(new IConsole[] { myConsole });
		return myConsole;
	}

}
