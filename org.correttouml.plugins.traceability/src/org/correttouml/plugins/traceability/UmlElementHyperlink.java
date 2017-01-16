package org.correttouml.plugins.traceability;

import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.hyperlink.IHyperlink;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.papyrus.infra.core.resource.ModelSet;
import org.eclipse.papyrus.infra.core.resource.NotFoundException;
import org.eclipse.papyrus.infra.core.services.ServiceException;
import org.eclipse.papyrus.infra.core.services.ServicesRegistry;
import org.eclipse.papyrus.views.modelexplorer.ModelExplorerPage;
import org.eclipse.papyrus.views.modelexplorer.ModelExplorerPageBookView;
import org.eclipse.papyrus.views.modelexplorer.ModelExplorerView;
import org.eclipse.papyrus.uml.tools.model.UmlModel;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.navigator.CommonViewer;
import org.eclipse.ui.part.IPage;

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
			String eObjectId = "";
			BufferedReader br = new BufferedReader(new FileReader(mappings_file));

			String line = null;
			while ((line = br.readLine()) != null) {
				if (text.equalsIgnoreCase(line.split(",")[0].trim())) {
					eObjectId = line.split(",")[1].trim();
					break;
				}
			}

			this.locateInModelExplorer(eObjectId);
			br.close();
		}

		catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	@SuppressWarnings("deprecation")
	private void locateInModelExplorer(String elementID){
		IViewPart modelExplorerViewPart=null;
		for(IViewPart curr_view: PlatformUI.getWorkbench().getActiveWorkbenchWindow().getActivePage().getViews()){
			if(curr_view.getTitle().equals("Model Explorer")) modelExplorerViewPart=curr_view;
		}
		ModelExplorerPageBookView view = (ModelExplorerPageBookView)modelExplorerViewPart;
		IPage currentPage = (IPage) view.getCurrentPage();
		ModelExplorerPage page = (ModelExplorerPage)currentPage;
		IViewPart viewer = page.getViewer();
		ModelExplorerView modelExplorerView = (ModelExplorerView)viewer;
		CommonViewer commonViewer = modelExplorerView.getCommonViewer();
		commonViewer.collapseAll();
		EObject element = findElementInModelExplorer(commonViewer, view, elementID);
		commonViewer.getControl().setFocus();
		commonViewer.setSelection(new StructuredSelection(element), true);
		List<EObject> semanticElementList=new ArrayList<EObject>();
		semanticElementList.add(element);
		modelExplorerView.revealSemanticElement(semanticElementList);
		commonViewer.getSelection();
		commonViewer.expandToLevel(element, 1);
	}
	
	private EObject findElementInModelExplorer(TreeViewer treeViewer, ModelExplorerPageBookView view, String elementID) {
		ServicesRegistry registry = (ServicesRegistry) view.getAdapter(ServicesRegistry.class);
		ModelSet papyrusModelSet = null;
		try {
			papyrusModelSet = registry.getService(ModelSet.class);
			UmlModel umlModel = (UmlModel)papyrusModelSet.getModel(UmlModel.MODEL_ID);
			EObject modelRoot = null;
			modelRoot = umlModel.lookupRoot();
			Resource umlResource = modelRoot.eResource(); 
			return umlResource.getEObject(elementID.trim());
		}
		 catch (ServiceException | NotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}
}