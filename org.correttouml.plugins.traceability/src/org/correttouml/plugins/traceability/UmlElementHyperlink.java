package org.correttouml.plugins.traceability;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.LinkedList;

import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.common.ui.viewer.IViewerProvider;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.edit.domain.IEditingDomainProvider;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.hyperlink.IHyperlink;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.papyrus.views.modelexplorer.ModelExplorerPageBookView;
import org.eclipse.papyrus.views.modelexplorer.ModelExplorerView;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.navigator.CommonViewer;

public class UmlElementHyperlink implements IHyperlink {
	
	protected String text;
	protected IRegion region;
	private File mappings_file;
	
	public UmlElementHyperlink(String text, IRegion region) {
		this.text = text;
		this.region = region;
	}
	
	public void setMappingsFile(File mappings_file){
		this.mappings_file=mappings_file;
	}
	
	@Override
	public IRegion getHyperlinkRegion() {
		return region;
	}

	@Override
	public String getTypeLabel() {
		return null;
	}

	@Override
	public String getHyperlinkText() {
		return text;
	}

	@Override
	public void open() {
		
		try {
		
			IEditorReference[] references = PlatformUI.getWorkbench().getActiveWorkbenchWindow().getActivePage().getEditorReferences();
			for (IEditorReference reference : references) {
				IEditorPart editor = reference.getEditor(true);
				
				if (editor instanceof IEditingDomainProvider && editor instanceof IViewerProvider) {
					IEditingDomainProvider provider = (IEditingDomainProvider) editor;
					EditingDomain domain = provider.getEditingDomain();
					Resource resource = domain.getResourceSet().getResources().get(0);
					
					String eObjectId = "";
					BufferedReader br = new BufferedReader(new FileReader(mappings_file));
					
					String line = null;
					while ((line = br.readLine()) != null) {
						if (text.equalsIgnoreCase(line.split(",")[0].trim())) {
							eObjectId = line.split(",")[1].trim();
							break;
						}
					}
					
					EObject target = resource.getEObject(eObjectId);
					this.locateInModelExplorer(target);
					br.close();
				}
			}
		}
		catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	private void locateInModelExplorer(Object object){
		if (object instanceof EObject) {
			
			IViewPart view=null;
			for(IViewPart curr_view: PlatformUI.getWorkbench().getActiveWorkbenchWindow().getActivePage().getViews()){
				if(curr_view.getTitle().equals("Model Explorer")) view=curr_view;
			}
			
			ModelExplorerPageBookView modelExplorerPageBookView = null;
			if (view instanceof ModelExplorerPageBookView) {
				modelExplorerPageBookView = (ModelExplorerPageBookView)view;
			}
			CommonViewer modelExplorerView = ((ModelExplorerView) modelExplorerPageBookView.getAdapter(ModelExplorerView.class)).getCommonViewer();
			
			//List<Object> items = new ArrayList<Object>();
			//items.add(modelExplorerPageBookView.findElementForEObject( modelExplorerView, (EObject)object));

			Object t_object=this.findElementForEObject((EObject)object, modelExplorerView);
			
			// set focus
			modelExplorerView.getControl().setFocus();
			
			// set new selection
			modelExplorerView.setSelection(new StructuredSelection(t_object), true);
      	}
	}
	
	private Object findElementForEObject(EObject eObjectToFind, TreeViewer treeViewer) {
		   ITreeContentProvider contentProvider = (ITreeContentProvider) treeViewer
		       .getContentProvider();
		   Object[] elements = contentProvider.getElements(treeViewer.getInput());
		   LinkedList<Object> elementsToHandle = new LinkedList<Object>();
		   for (Object element : elements) {
		     elementsToHandle.add(element);
		   }
		   while (!elementsToHandle.isEmpty()) {
		     Object e = elementsToHandle.removeFirst();
		     EObject eObject = (EObject) Platform.getAdapterManager().getAdapter(e, EObject.class);
		     
		     String id2=((XMLResource) eObjectToFind.eResource()).getID(eObjectToFind);
		     
		     if (eObject != null) {
		    	 String id1=((XMLResource) eObject.eResource()).getID(eObject);
		    	 if(id1!=null && id1.equals(id2)) return e;
		     }
		     if (contentProvider.hasChildren(e)) {
		       Object[] children = contentProvider.getChildren(e);
		       if (children != null) {
		         for (Object child : children) {
		           elementsToHandle.addLast(child);
		         }
		       }
		     }
		   }
		   return null;
		 }

}
