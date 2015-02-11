package org.correttouml.plugins.launchinterface.launching.tabs;

import org.correttouml.plugins.launchinterface.launching.MadesVerificationLaunchConfigurationAttributes;
import org.correttouml.plugins.launchinterface.util.ZotSetupUtil;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
import org.eclipse.debug.ui.AbstractLaunchConfigurationTab;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.DirectoryDialog;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.FileDialog;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;

public class SampleTab extends AbstractLaunchConfigurationTab implements ModifyListener{

	protected Label fileLabel;
	protected Text filePath;
	protected Button browse;
	protected String source;
	protected Shell shell = new Shell();
	protected Text tbText;
	protected Combo plugin;
	protected Combo solver;
	protected Text location;
	protected Text output_location;
	
	
	/**
	 * Build the layout of this tab
	 */
	@Override
	public void createControl(Composite parent) {
		FillLayout parentLayout = new FillLayout();
		parent.setLayout(parentLayout);

		Composite control = new Composite(parent, SWT.NONE);
		setControl(control);
		
		GridLayout controlLayout = new GridLayout(1, false);
		control.setLayout(controlLayout);
		
		createUmlControl(control);
		createZotControl(control);
		createZotLocationControl(control);
		createOutputFolderControl(control);
		
		control.setBounds(0, 0, 300, 300);
		control.layout();
		control.pack();
		
		canSave();
	}
	
	/**
	 * Fields for selecting the UML model 
	 **/
	private void createUmlControl(Composite parent){
		Group topControl = new Group(parent,SWT.BACKGROUND);
		GridLayout topControlLayout = new GridLayout(3, false);
		topControl.setLayout(topControlLayout);
		topControl.setText("UML Model for Verification");
		GridData gd = new GridData(GridData.FILL_HORIZONTAL);
		topControl.setLayoutData(gd);
		
		
		fileLabel = new Label(topControl, SWT.NONE);
		
		GridData filePathData = new GridData(GridData.FILL_HORIZONTAL);
		filePath = new Text(topControl, SWT.BORDER);
		filePath.setLayoutData(filePathData);
		filePath.addModifyListener(this);
		
		Button browse = new Button(topControl, SWT.NONE);
		browse.setText("Browse Workspace...");
		browse.addSelectionListener(this.getSelectionDialog());
		
		fileLabel.setText("Source .uml model: ");
	}
	
	/**
	 * Fields for configuring Zot
	 **/
	private void createZotControl(Composite parent) {
		Group topControl = new Group(parent, SWT.BACKGROUND);
		GridLayout topControlLayout = new GridLayout(4, false);
		topControl.setLayout(topControlLayout);
		topControl.setText("Zot Setup Information");
		GridData gd = new GridData(GridData.FILL_HORIZONTAL);
		topControl.setLayoutData(gd);

		/**
		 * Time Bound Label and text field
		 **/
		new Label(topControl, SWT.NONE).setText("Time Bound:");
		tbText = new Text(topControl, SWT.BORDER);
		gd = new GridData(GridData.FILL_HORIZONTAL);
		gd.widthHint = 200;
		tbText.setLayoutData(gd);
		tbText.addListener(SWT.Verify, new Listener() {
			public void handleEvent(Event e) {
				ZotSetupUtil.InputIsInt(e.text, e);
			}
		});
		tbText.addModifyListener(this);

		/**
		 * Plug-in Label and text field
		 **/
		new Label(topControl, SWT.NONE).setText("Zot Plugin:");
		plugin = new Combo(topControl, SWT.BORDER | SWT.READ_ONLY);
		gd = new GridData(SWT.FILL, SWT.FILL, true, false);
		gd.widthHint = 200;
		plugin.setLayoutData(gd);
		plugin.addModifyListener(this);

		/**
		 * Property Label and text field
		 **/

		Label propLabel = new Label(topControl, SWT.NONE);

		gd = new GridData(SWT.FILL, SWT.FILL, true, false);
		gd.widthHint = 200;
		gd.horizontalSpan = 2;
		propLabel.setLayoutData(gd);

		/**
		 * Solver Label and field
		 **/
		Label lblSolver = new Label(topControl, SWT.NONE);
		lblSolver.setText("Solver:");
		solver = new Combo(topControl, SWT.BORDER | SWT.READ_ONLY);
		solver.setEnabled(false);
		gd = new GridData(SWT.FILL, SWT.FILL, true, false);
		gd.widthHint = 200;
		solver.setLayoutData(gd);
		solver.addModifyListener(this);

		/**
		 * Add contents of solver combo depending on the contents of the plug-
		 * in combo
		 */
		String items[] = { "eezot", "meezot", "smteezot", "smtmeezot", "ae2zot" };
		plugin.setItems(items);
		plugin.setText("plugin...");
		plugin.addSelectionListener(new org.eclipse.swt.events.SelectionAdapter() {
			public void widgetSelected(SelectionEvent e) {
				initializeSolverCombo(plugin, solver);
			}
		});
	}
	
	/**
	 * Fields for selecting the zot executable
	 **/
	private void createZotLocationControl(final Composite parent) {
		GridData gd = null;

		Group bottomControl = new Group(parent, SWT.BACKGROUND);
		GridLayout bottomControlLayout = new GridLayout(3, false);
		bottomControl.setLayout(bottomControlLayout);
		bottomControl.setText("Directory of Zot executable");
		gd = new GridData(SWT.FILL, SWT.FILL, true, false);
		bottomControl.setLayoutData(gd);

		/**
		 * Create bottom control contents
		 **/
		Label lblZotLocation = new Label(bottomControl, SWT.NONE);
		lblZotLocation.setText("Zot Directory:");
		location = new Text(bottomControl, SWT.BORDER);
		gd = new GridData(GridData.FILL_HORIZONTAL);
		location.setLayoutData(gd);
		location.addModifyListener(this);

		Button button = new Button(bottomControl, SWT.PUSH);
		button.setText("Browse");
		gd = new GridData(SWT.END);
		button.setLayoutData(gd);
		button.addSelectionListener(new org.eclipse.swt.events.SelectionAdapter() {
			public void widgetSelected(SelectionEvent event) {
				createDirectoryDialog(parent, location, "Zot Directory Dialog",
						"Select a directory");
			}
		});
	}
	
	/**
	 * Fields for selecting the output folder
	 **/
	private void createOutputFolderControl(final Composite parent) {
		GridData gd = null;

		Group bottomControl = new Group(parent, SWT.BACKGROUND);
		GridLayout bottomControlLayout = new GridLayout(3, false);
		bottomControl.setLayout(bottomControlLayout);
		bottomControl.setText("Output folder");
		gd = new GridData(SWT.FILL, SWT.FILL, true, false);
		bottomControl.setLayoutData(gd);

		/**
		 * Create bottom control contents
		 **/
		Label lblZotLocation = new Label(bottomControl, SWT.NONE);
		lblZotLocation.setText("Output Directory:");
		output_location = new Text(bottomControl, SWT.BORDER);
		gd = new GridData(GridData.FILL_HORIZONTAL);
		output_location.setLayoutData(gd);
		output_location.addModifyListener(this);

		Button button = new Button(bottomControl, SWT.PUSH);
		button.setText("Browse");
		gd = new GridData(SWT.END);
		button.setLayoutData(gd);
		button.addSelectionListener(new org.eclipse.swt.events.SelectionAdapter() {
			public void widgetSelected(SelectionEvent event) {
				createDirectoryDialog(parent, output_location, "Output Directory Dialog",
						"Select a directory");
			}
		});
	}
	
	private void createDirectoryDialog(Composite parent, Text location,
			String title, String message) {
		DirectoryDialog dlg = new DirectoryDialog(parent.getShell());
		dlg.setFilterPath(location.getText());
		dlg.setText(title);
		dlg.setMessage(message);
		String dir = dlg.open();
		if (dir != null) {
			location.setText(dir);
		}
	}
	
	private void initializeSolverCombo(Combo plugin, Combo solver) {
		if (plugin.getSelectionIndex() != -1) {
			if (plugin.getText().equals("eezot")
					|| plugin.getText().equals("meezot")) {
				String newItems[] = { "minisat" };
				solver.setItems(newItems);
			} else if (plugin.getText().equals("ae2zot")
					|| plugin.getText().equals("smteezot")) {
				String newItems[] = { "yices", "z3" };
				solver.setItems(newItems);
			} else {
				String newItems[] = { "z3" };
				solver.setItems(newItems);
				solver.setText("z3");
			}
			solver.setEnabled(true);
		}
	}

	@Override
	public void setDefaults(ILaunchConfigurationWorkingCopy configuration) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void initializeFrom(ILaunchConfiguration configuration) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void performApply(ILaunchConfigurationWorkingCopy configuration) {
		configuration.setAttribute(MadesVerificationLaunchConfigurationAttributes.PATH_TO_MODEL, filePath.getText());
		configuration.setAttribute(MadesVerificationLaunchConfigurationAttributes.PLUGIN, plugin.getText());
		configuration.setAttribute(MadesVerificationLaunchConfigurationAttributes.SOLVER, solver.getText());
		configuration.setAttribute(MadesVerificationLaunchConfigurationAttributes.TIME_BOUND, tbText.getText());
		configuration.setAttribute(MadesVerificationLaunchConfigurationAttributes.ZOT_LOCATION, location.getText());
		configuration.setAttribute(MadesVerificationLaunchConfigurationAttributes.OUTPUT_FOLDER, output_location.getText());
		try {
			ILaunchConfiguration s=configuration.doSave();
			IFile f=s.getFile();
			System.out.println(f);
		} catch (CoreException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public String getName() {
		return "Corretto UML Launch";
	}

	@Override
	public boolean canSave(){
		super.canSave();
		return true;
	}
	
	@Override
	public void modifyText(ModifyEvent e) {
		canSave();
		//when the text is updated, just update the configuration dialog (performApply will be triggered automatically)
		updateLaunchConfigurationDialog();
	}

	/**
	 * Returns the dialog box to select the file
	 */
	private SelectionAdapter getSelectionDialog(){
		return new SelectionAdapter() {
			public void widgetSelected(SelectionEvent e) {
				FileDialog dialog = new FileDialog(shell, SWT.NULL);
				String path = dialog.open();
				filePath.setText(path);
			}
		};
	}

}
