package org.correttouml.uml.helpers;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.xtext.resource.XtextResource;
import org.eclipse.xtext.resource.XtextResourceSet;

import com.google.inject.Injector;

//import org.correttouml.grammars.stateMachineActions.Model;
import org.correttouml.grammars.stateMachineTriggers.*;
import org.correttouml.grammars.*;

public class StDTriggersParser {

	public static Model parse(String trigger){
		//new org.eclipse.emf.mwe.utils.StandaloneSetup().setPlatformUri("../");
		Injector injector = new StateMachineTriggersStandaloneSetup().createInjectorAndDoEMFRegistration();
		XtextResourceSet resourceSet = injector.getInstance(XtextResourceSet.class);
		resourceSet.addLoadOption(XtextResource.OPTION_RESOLVE_ALL, Boolean.TRUE);
		
		Resource resource = resourceSet.createResource(URI.createURI("file:/example.mydsl"));
		InputStream in = new ByteArrayInputStream(trigger.getBytes());
		try {
			resource.load(in, resourceSet.getLoadOptions());
		} catch (IOException e) {
			e.printStackTrace();
		}
		Model model = (org.correttouml.grammars.stateMachineTriggers.Model) resource.getContents().get(0);
		
		try{
			if(model==null) throw new Exception(trigger +" not recognized");
		}catch(Exception e){
			e.printStackTrace();
		}
		return model;
	}
	
	
	
}
