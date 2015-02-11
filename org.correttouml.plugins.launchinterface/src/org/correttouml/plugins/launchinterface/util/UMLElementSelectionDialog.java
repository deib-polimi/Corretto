package org.correttouml.plugins.launchinterface.util;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.jface.dialogs.TitleAreaDialog;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PlatformUI;
import org.eclipse.uml2.uml.NamedElement;

public class UMLElementSelectionDialog extends TitleAreaDialog implements ISelectionChangedListener{
	
	protected Resource resource = null;
	protected TreeViewer viewer = null;
	protected String selectedElementText = null;
	protected String selectedElementXmiId = null;
	
	public String getSelectedElementText() {
		return selectedElementText;
	}
	
	public String getSelectedElementXmiId() {
		return selectedElementXmiId;
	}
	
	public UMLElementSelectionDialog(Shell parentShell, Resource resource) {
		super(parentShell);
		this.resource = resource;
	}
	
	@Override
	protected void setShellStyle(int newShellStyle) {
	   super.setShellStyle(newShellStyle | SWT.RESIZE);
	}
	
	@Override
	protected Rectangle getConstrainedShellBounds(Rectangle preferredSize) {
		preferredSize.height = 350;
		return super.getConstrainedShellBounds(preferredSize);
	}
	
	@Override
	protected Control createDialogArea(Composite parent) {
		
		Composite dialogArea = (Composite) super.createDialogArea(parent);
		GridData dialogAreaData = new GridData(GridData.FILL_BOTH);
		dialogArea.setLayoutData(dialogAreaData);
		
		PlatformUI.getWorkbench().getHelpSystem().setHelp(parent, "org.eclipse.epsilon.help.emc_dialogs");
		
		this.setTitle("Select type of model");
		this.setMessage("Select the type of model to add");
		this.getShell().setText("Select UML element");
		//this.getShell().setImage(EpsilonCommonsPlugin.createImage("icons/model.gif"));
		
		Composite control = new Composite(dialogArea, SWT.NONE);
		GridLayout controlLayout = new GridLayout(1, false);
		control.setLayout(controlLayout);
		GridData controlData = new GridData(GridData.FILL_BOTH);
		control.setLayoutData(controlData);
		
		viewer = new TreeViewer(control);
		viewer.setContentProvider(new UMLTreeContentProvider());
		viewer.setLabelProvider(new UMLTreeLabelProvider());
		viewer.setInput(resource);
		viewer.addSelectionChangedListener(this);
		GridData viewerData = new GridData(GridData.FILL_BOTH);
		viewer.getControl().setLayoutData(viewerData);
		viewer.getControl().setFocus();
		
		return control;
	}
	
	@Override
	public void selectionChanged(SelectionChangedEvent event) {
		IStructuredSelection selection = (IStructuredSelection) viewer.getSelection();
		if (selection != null) {
			EObject eObject = (EObject) selection.getFirstElement();
			selectedElementXmiId = eObject.eResource().getURIFragment(eObject);
			selectedElementText = viewer.getTree().getSelection()[0].getText();
		}
	}
	
	class UMLTreeLabelProvider extends LabelProvider {
		
		@Override
		public String getText(Object element) {
			
			EObject eObject = (EObject) element;
			
			String label = eObject.eClass().getName();
			
			if (element instanceof NamedElement) {
				label = label + " - " + ((NamedElement) element).getName();
			}
			
			return label;
		}
		
	}
	
	class UMLTreeContentProvider implements ITreeContentProvider {

		@Override
		public void dispose() {
		}

		@Override
		public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {			
		}

		@Override
		public Object[] getElements(Object inputElement) {
			if (inputElement instanceof Resource) {
				return new Object[]{((Resource)inputElement).getContents().get(0)};
			}
			else {
				return new Object[]{};
			}
		}

		@Override
		public Object[] getChildren(Object parentElement) {
			if (parentElement instanceof EObject) {
				EObject eObject = (EObject) parentElement;
				EObject[] children = new EObject[eObject.eContents().size()];
				int i = 0;
				for (EObject child : eObject.eContents()) {
					children[i] = child;
					i++;
				}
				return children;
			}
			else {
				return new Object[]{};
			}
			
			
		}

		@Override
		public Object getParent(Object element) {
			if (element instanceof EObject) {
				return ((EObject) element).eContainer();
			}
			else {
				return null;
			}
		}

		@Override
		public boolean hasChildren(Object element) {
			if (element instanceof EObject) {
				return ((EObject) element).eContents().size() > 0;
			}
			else {
				return false;
			}
		}
		
	}

}
