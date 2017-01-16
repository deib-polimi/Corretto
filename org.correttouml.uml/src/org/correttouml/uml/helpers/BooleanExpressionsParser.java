package org.correttouml.uml.helpers;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.xtext.resource.XtextResource;
import org.eclipse.xtext.resource.XtextResourceSet;

import com.google.inject.Injector;

import org.correttouml.grammars.BooleanExpressionsStandaloneSetup;
import org.correttouml.grammars.booleanExpressions.*;

public class BooleanExpressionsParser {

	public static Model parse(String boolean_expression){
		new org.eclipse.emf.mwe.utils.StandaloneSetup().setPlatformUri("../");
		Injector injector = new BooleanExpressionsStandaloneSetup().createInjectorAndDoEMFRegistration();
		XtextResourceSet resourceSet = injector.getInstance(XtextResourceSet.class);
		resourceSet.addLoadOption(XtextResource.OPTION_RESOLVE_ALL, Boolean.TRUE);
		
		Resource resource = resourceSet.createResource(URI.createURI("file:/example.boolexp"));
		InputStream in = new ByteArrayInputStream(boolean_expression.getBytes());
		try {
			resource.load(in, resourceSet.getLoadOptions());
		} catch (IOException e) {
			e.printStackTrace();
		}
		Model model = (Model) resource.getContents().get(0);
		
		try{
			if(model.getExpression()==null) throw new Exception(boolean_expression +" not recognized");
		}catch(Exception e){
			e.printStackTrace();
		}
		return model;
	}
	
}
