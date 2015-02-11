package org.correttouml.uml2zot.tests.scalability;

import java.io.File;
import java.util.ArrayList;

import org.apache.log4j.Logger;
import org.correttouml.uml2zot.UML2Zot;
import org.correttouml.uml2zot.tests.TestConfiguration;
import org.correttouml.uml2zot.tests.helpers.UML2Helper;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.uml2.uml.AggregationKind;
import org.eclipse.uml2.uml.Constraint;
import org.eclipse.uml2.uml.InstanceSpecification;
import org.eclipse.uml2.uml.Model;
import org.eclipse.uml2.uml.PrimitiveType;
import org.eclipse.uml2.uml.Profile;
import org.eclipse.uml2.uml.Property;
import org.eclipse.uml2.uml.State;
import org.eclipse.uml2.uml.StateMachine;
import org.eclipse.uml2.uml.Type;
import org.eclipse.uml2.uml.resource.UMLResource;

public class FisherProtocol {

	/** The UML2ZOT entry point for making the transformation */
	private UML2Zot t;

	/** Shared model elements **/
	private Model myModel;
	private Profile madesProfile;

	private StateMachine process_SM;

	private static final Logger LOGGER = Logger
			.getLogger(SequenceDiagram.class);

	public static void main(String[] args) {
		FisherProtocol experiment = new FisherProtocol();
		experiment.start();
	}

	public void start() {
		LOGGER.info("Creating the UML model");

		for (int i = 2; i <= 10; i++) {
			create_fisher_model(i);
			//create_alw_not_counter_greater_than_one();

			// Save it to disk
			UML2Helper.save(myModel,
					URI.createFileURI(TestConfiguration.MODEL_SAVE_PATH)
							.appendSegment(TestConfiguration.MODEL_SAVE_NAME)
							.appendFileExtension(UMLResource.FILE_EXTENSION));

			LOGGER.info("Building the MADES UML representation");
			t = new UML2Zot(
					new File(TestConfiguration.MODEL_FILE).getAbsolutePath());

			LOGGER.info("Generate the ZOT File");
			t.generateZOTFile(75, "ae2zot", "z3", new File("output/zot_model_"
					+ i + "_proc.lisp").getAbsolutePath());
		}

	}

	private void create_alw_not_counter_greater_than_one() {

		// Creazione <<Property>> package
		org.eclipse.uml2.uml.Package propertyPackage = UML2Helper
				.createPackage(myModel, "Property");
		org.eclipse.uml2.uml.Stereotype propertyStereotype = UML2Helper
				.getMADESVerificationTagsStereotype(madesProfile, "Property");
		propertyPackage.applyStereotype(propertyStereotype);

		// Time Property diagram

		// <<Term>>
		org.eclipse.uml2.uml.Class COUNTER_EXP = UML2Helper
				.createBooleanExpression(madesProfile, propertyPackage, "{counter>1}", process_SM );

		// <<Not>>
		org.eclipse.uml2.uml.Class not = UML2Helper.createNot(madesProfile,
				propertyPackage, COUNTER_EXP
						.getStereotypeApplications().get(0));

		// <<Alw>>
		org.eclipse.uml2.uml.Class alw = UML2Helper.createAlw(madesProfile,
				propertyPackage, not.getStereotypeApplications().get(0));

		// <<Property>>
		UML2Helper.createProperty(madesProfile, propertyPackage, alw
				.getStereotypeApplications().get(0));

	}

	private void create_fisher_model(int num_process) {
		// Preparazione modello e package
		myModel = UML2Helper.createModel("Fisher Protocol Model");
		madesProfile = UML2Helper
				.loadProfile(TestConfiguration.MADES_PROFILE_PATH);
		myModel.createElementImport(madesProfile);
		myModel.applyProfile(madesProfile);

		// Creazione <<System>> package
		org.eclipse.uml2.uml.Package systemPackage = UML2Helper.createPackage(
				myModel, "System");
		org.eclipse.uml2.uml.Stereotype systemStereotype = UML2Helper
				.getMADESVerificationTagsStereotype(madesProfile, "System");
		systemPackage.applyStereotype(systemStereotype);

		// Class diagram
		PrimitiveType integer = UML2Helper.createPrimitiveType(myModel,
				"Integer");

		org.eclipse.uml2.uml.Class processClass = UML2Helper.createClass(
				systemPackage, "Process", false);

		Property pid_attr = UML2Helper.createAttribute(processClass, "pid",
				integer);
		//The following two are static attributes
		UML2Helper.createAttribute(processClass, "id", integer, true).setIntegerDefaultValue(-1);
		UML2Helper.createAttribute(processClass, "counter", integer, true).setIntegerDefaultValue(0);

		ArrayList<InstanceSpecification> processes = new ArrayList<InstanceSpecification>();
		for (int i = 0; i < num_process; i++) {
			int id = i;

			InstanceSpecification tmp = UML2Helper.createInstanceSpecification(
					systemPackage, processClass, "proc_" + id);
			UML2Helper.createIntegerSlot(tmp, pid_attr, id);
			processes.add(tmp);
		}

		// STD PROCESS
		process_SM = UML2Helper
				.createStateMachine(processClass, "Process_SM");
		UML2Helper.createRegion(process_SM);
		org.eclipse.uml2.uml.Pseudostate STATE_0 = UML2Helper
				.createInitialState(process_SM, "start");
		org.eclipse.uml2.uml.State STATE_FISHERP = UML2Helper.createState(
				process_SM, "FISHERP");
		org.eclipse.uml2.uml.State STATE_REQ = UML2Helper.createState(
				process_SM, "REQ");
		org.eclipse.uml2.uml.State STATE_UPDATED = UML2Helper.createState(
				process_SM, "UPDATED");
		org.eclipse.uml2.uml.State STATE_WAIT = UML2Helper.createState(
				process_SM, "WAIT");
		org.eclipse.uml2.uml.State STATE_CS = UML2Helper.createState(
				process_SM, "CS");
		org.eclipse.uml2.uml.State STATE_EXIT = UML2Helper.createState(
				process_SM, "EXIT");
		
		UML2Helper.addStateInvariant(STATE_REQ, "@now - @REQ.enter <= 3");
		//TODO: spiegato nella nota del 16/07/2013
		//UML2Helper.addStateInvariant(STATE_UPDATED, "@now - @UPDATED.enter <= 4");

		// initial transition
		UML2Helper.createTransition(process_SM, STATE_0, STATE_FISHERP, "");
		UML2Helper.createTransition(process_SM, STATE_FISHERP, STATE_REQ,
				"[{id==0--1}]");
		UML2Helper.createTransition(process_SM, STATE_REQ, STATE_UPDATED,
				"/id=pid");
		UML2Helper.createTransition(process_SM, STATE_UPDATED, STATE_WAIT,
				"@now - @UPDATED.enter == 4");
		UML2Helper.createTransition(process_SM, STATE_WAIT, STATE_CS,
				"[{id==pid}]");
		UML2Helper.createTransition(process_SM, STATE_WAIT, STATE_FISHERP,
				"[{id!=pid}]");
		UML2Helper.createTransition(process_SM, STATE_CS, STATE_EXIT, "/counter=<P>counter+1");
		UML2Helper.createTransition(process_SM, STATE_EXIT, STATE_FISHERP, "/id=0-1, counter=<P>counter-1");
		
	}
	
	//TODO: remove me
//	private void test_model(int num_process) {
//		// Preparazione modello e package
//		myModel = UML2Helper.createModel("Fisher Protocol Model");
//		madesProfile = UML2Helper
//				.loadProfile(TestConfiguration.MADES_PROFILE_PATH);
//		myModel.createElementImport(madesProfile);
//		myModel.applyProfile(madesProfile);
//
//		// Creazione <<System>> package
//		org.eclipse.uml2.uml.Package systemPackage = UML2Helper.createPackage(
//				myModel, "System");
//		org.eclipse.uml2.uml.Stereotype systemStereotype = UML2Helper
//				.getMADESVerificationTagsStereotype(madesProfile, "System");
//		systemPackage.applyStereotype(systemStereotype);
//
//		// Class diagram
//		PrimitiveType integer = UML2Helper.createPrimitiveType(myModel,
//				"Integer");
//
//		org.eclipse.uml2.uml.Class processClass = UML2Helper.createClass(
//				systemPackage, "Process", false);
//
//		Property pid_attr = UML2Helper.createAttribute(processClass, "pid",
//				integer);
//		//The following two are static attributes
//		UML2Helper.createAttribute(processClass, "id", integer, true).setIntegerDefaultValue(0);
//
//		ArrayList<InstanceSpecification> processes = new ArrayList<InstanceSpecification>();
//		for (int i = 0; i < num_process; i++) {
//			int id = i;
//
//			InstanceSpecification tmp = UML2Helper.createInstanceSpecification(
//					systemPackage, processClass, "proc_" + id);
//			UML2Helper.createIntegerSlot(tmp, pid_attr, id);
//			processes.add(tmp);
//		}
//
//		// STD PROCESS
//		process_SM = UML2Helper
//				.createStateMachine(processClass, "Process_SM");
//		UML2Helper.createRegion(process_SM);
//		org.eclipse.uml2.uml.Pseudostate STATE_0 = UML2Helper
//				.createInitialState(process_SM, "start");
//		org.eclipse.uml2.uml.State STATE_ONE = UML2Helper.createState(
//				process_SM, "ONE");
//		org.eclipse.uml2.uml.State STATE_TWO = UML2Helper.createState(
//				process_SM, "TWO");
//
//		// initial transition
//		UML2Helper.createTransition(process_SM, STATE_0, STATE_ONE, "");
//		UML2Helper.createTransition(process_SM, STATE_ONE, STATE_TWO,
//				"/id=<P>id+1");
//		UML2Helper.createTransition(process_SM, STATE_TWO, STATE_ONE,
//				"/id=<P>id-1");		
//	}

}
