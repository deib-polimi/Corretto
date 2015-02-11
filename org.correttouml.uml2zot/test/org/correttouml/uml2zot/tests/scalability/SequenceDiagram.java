package org.correttouml.uml2zot.tests.scalability;

import java.io.File;

import org.apache.log4j.Logger;
import org.correttouml.uml2zot.UML2Zot;
import org.correttouml.uml2zot.tests.TestConfiguration;
import org.correttouml.uml2zot.tests.helpers.UML2Helper;
import org.eclipse.emf.common.util.URI;
import org.eclipse.uml2.uml.Message;
import org.eclipse.uml2.uml.Model;
import org.eclipse.uml2.uml.resource.UMLResource;

public class SequenceDiagram {
	
	/** The UML2ZOT entry point for making the transformation */
	private static UML2Zot t;
	
	private static final Logger LOGGER = Logger.getLogger(SequenceDiagram.class); 
	
	public static void main(String[] args){
		LOGGER.info("Creating the UML model");
		
		for(int i=10; i<=50; i=i+5){
			
			//Create the UML model
			Model myModel=create_scalability_model(i);
			
			//Save it to disk
			UML2Helper.save(myModel, URI.createFileURI(TestConfiguration.MODEL_SAVE_PATH).appendSegment(TestConfiguration.MODEL_SAVE_NAME).appendFileExtension(UMLResource.FILE_EXTENSION)); 
			
			LOGGER.info("Building the MADES UML representation");
			t=new UML2Zot(new File(TestConfiguration.MODEL_FILE).getAbsolutePath());
			
			LOGGER.info("Generate the ZOT File");
			t.generateZOTFile(100, "meezot", "minisat", new File("output/zot_model_"+i+"_msg.lisp").getAbsolutePath());
			//t.generateZOTFile(100, "ae2zot", "z3", new File("output/zot_model_"+i+"_msg.lisp").getAbsolutePath());
		}

	}
	
	/**
	 * Build a sequence diagram with two lifelines
	 * and x messages between them
	 * @param x
	 * @return the new model
	 */
	public static Model create_scalability_model(int x) {		
		//Preparazione modello e package
		Model myModel = UML2Helper.createModel("ScalabilityModel");
		org.eclipse.uml2.uml.Profile madesProfile = UML2Helper.loadProfile(TestConfiguration.MADES_PROFILE_PATH);
		myModel.createElementImport(madesProfile);
		myModel.applyProfile(madesProfile);
		
		//Creazione <<System>> package
		org.eclipse.uml2.uml.Package systemPackage = UML2Helper.createPackage(myModel, "System");
		org.eclipse.uml2.uml.Stereotype systemStereotype=UML2Helper.getMADESVerificationTagsStereotype(madesProfile, "System");
		systemPackage.applyStereotype(systemStereotype);
		
		//Class diagram
		org.eclipse.uml2.uml.Class class1=UML2Helper.createClass(systemPackage, "Class1", false);
		org.eclipse.uml2.uml.InstanceSpecification object1=UML2Helper.createInstanceSpecification(systemPackage, class1, "object1");
		org.eclipse.uml2.uml.Class class2=UML2Helper.createClass(systemPackage, "Class2", false);
		org.eclipse.uml2.uml.InstanceSpecification object2=UML2Helper.createInstanceSpecification(systemPackage, class2, "object2");
		org.eclipse.uml2.uml.Operation op1=UML2Helper.createOperation(class2, "Operation1");
		
		//Sequence diagram
		org.eclipse.uml2.uml.Interaction sd1=UML2Helper.createInteraction(systemPackage, "SD1");
		org.eclipse.uml2.uml.Lifeline l1=sd1.createLifeline("l1");
		l1.setSelector(object1.getSpecification());
		org.eclipse.uml2.uml.Lifeline l2=sd1.createLifeline("l2");
		l2.setSelector(object2.getSpecification());
		
		Message m2=null,m8=null,m5=null,m6=null;
		for(int i=0; i<x; i++){
			org.eclipse.uml2.uml.Message tmp=UML2Helper.createMessage(sd1,l1,l2,op1, "op1_message"+i);
			if(i==1) m2=tmp;
			if(i==4) m5=tmp;
			if(i==5) m6=tmp;
			if(i==7) m8=tmp;
		}
		
		property_m2_implies_somf_m8(m2, m8, myModel, madesProfile);
		//property_m5_implies_not_next_m6(m5, m6, myModel, madesProfile);
		
		return myModel;
	}
	
	/**
	 * Creates the Model and apply the profile to it
	 * @return the new model
	 */
	public static Model create_model_and_apply_profile(Model myModel, org.eclipse.uml2.uml.Profile madesProfile){
		//Preparazione modello e package
		myModel = UML2Helper.createModel("ScalabilityModel");
		madesProfile = UML2Helper.loadProfile(TestConfiguration.MADES_PROFILE_PATH);
		myModel.createElementImport(madesProfile);
		myModel.applyProfile(madesProfile);
		return myModel;
	}
	
	/**
	 * Helper method to create the following property
	 * m2 => SomF(m8)
	 * @param m2
	 * @param m8
	 * @param myModel
	 * @param madesProfile
	 */
	public static void property_m2_implies_somf_m8(Message m2, Message m8, Model myModel, org.eclipse.uml2.uml.Profile madesProfile){
		//Creazione <<Property>> package
		org.eclipse.uml2.uml.Package propertyPackage = UML2Helper.createPackage(myModel, "Property");
		org.eclipse.uml2.uml.Stereotype propertyStereotype=UML2Helper.getMADESVerificationTagsStereotype(madesProfile, "Property");
		propertyPackage.applyStereotype(propertyStereotype);
		
		//Time Property diagram
		
		//<<Term>>
		org.eclipse.uml2.uml.Class m8Term=UML2Helper.createTerm(madesProfile, propertyPackage, m8);
		
		//<<SomF>>
		org.eclipse.uml2.uml.Class somf=UML2Helper.createSomF(madesProfile, propertyPackage, m8Term.getStereotypeApplications().get(0));
		
		//<<Term>>
		org.eclipse.uml2.uml.Class m2Term=UML2Helper.createTerm(madesProfile, propertyPackage, m2);
		
		//<<Implies>>
		org.eclipse.uml2.uml.Class implies=UML2Helper.createImplies(madesProfile, propertyPackage, m2Term.getStereotypeApplications().get(0), somf.getStereotypeApplications().get(0));
		
		//<<Alw>>
		org.eclipse.uml2.uml.Class alw=UML2Helper.createAlw(madesProfile, propertyPackage, implies.getStereotypeApplications().get(0));
		
		//<<Property>>
		UML2Helper.createProperty(madesProfile, propertyPackage, alw.getStereotypeApplications().get(0));
	}
	
	/**
	 * Helper method to create the following property
	 * m6 => Not(Next(m5))
	 * @param m2
	 * @param m8
	 * @param myModel
	 * @param madesProfile
	 */
	public static void property_m5_implies_not_next_m6(Message m5, Message m6, Model myModel, org.eclipse.uml2.uml.Profile madesProfile){
		//Creazione <<Property>> package
		org.eclipse.uml2.uml.Package propertyPackage = UML2Helper.createPackage(myModel, "Property");
		org.eclipse.uml2.uml.Stereotype propertyStereotype=UML2Helper.getMADESVerificationTagsStereotype(madesProfile, "Property");
		propertyPackage.applyStereotype(propertyStereotype);
		
		//Time Property diagram
		
		//<<Term>>
		org.eclipse.uml2.uml.Class m5Term=UML2Helper.createTerm(madesProfile, propertyPackage, m5);
		
		//<<Next>>
		org.eclipse.uml2.uml.Class next=UML2Helper.createNext(madesProfile, propertyPackage, m5Term.getStereotypeApplications().get(0));
		
		//<<Not>>
		org.eclipse.uml2.uml.Class not=UML2Helper.createNot(madesProfile, propertyPackage, next.getStereotypeApplications().get(0));
		
		//<<Term>>
		org.eclipse.uml2.uml.Class m6Term=UML2Helper.createTerm(madesProfile, propertyPackage, m6);
		
		//<<Implies>>
		org.eclipse.uml2.uml.Class implies=UML2Helper.createImplies(madesProfile, propertyPackage, m6Term.getStereotypeApplications().get(0), not.getStereotypeApplications().get(0));
		
		//<<Alw>>
		org.eclipse.uml2.uml.Class alw=UML2Helper.createAlw(madesProfile, propertyPackage, implies.getStereotypeApplications().get(0));
		
		//<<Property>>
		UML2Helper.createProperty(madesProfile, propertyPackage, alw.getStereotypeApplications().get(0));
	}		
	
}
