package org.correttouml.uml2zot.tests.scalability;

import java.io.File;
import java.util.ArrayList;

import org.apache.log4j.Logger;
import org.correttouml.uml2zot.UML2Zot;
import org.correttouml.uml2zot.tests.TestConfiguration;
import org.correttouml.uml2zot.tests.helpers.UML2Helper;
import org.eclipse.emf.common.util.URI;
import org.eclipse.uml2.uml.InstanceSpecification;
import org.eclipse.uml2.uml.Model;
import org.eclipse.uml2.uml.PrimitiveType;
import org.eclipse.uml2.uml.Profile;
import org.eclipse.uml2.uml.Property;
import org.eclipse.uml2.uml.State;
import org.eclipse.uml2.uml.StateMachine;
import org.eclipse.uml2.uml.resource.UMLResource;

public class FisherProtocol {

	/** The UML2ZOT entry point for making the transformation */
	private UML2Zot t;

	/** Shared model elements **/
	private Model myModel;
	private Profile madesProfile;

	private StateMachine process_SM;
	private State STATE_CS;
	private State STATE_REQ;
	private State STATE_UPDATED;
	private State STATE_WAIT;
	private State STATE_EXIT;

	private static final Logger LOGGER = Logger
			.getLogger(SequenceDiagram.class);

	public static void main(String[] args) {
		FisherProtocol experiment = new FisherProtocol();
		experiment.start();
	}

	public void start() {
		LOGGER.info("Creating the UML model");
		int scalabilityParameter = 1;
		String modeltype = "sat";
		
		//<SAT>
//		create_fisher_model(scalabilityParameter, null);
		//</SAT>
		
		//<P>
		//(alwf (!! ([>] (-V- ATTRcounter) 1)))
		modeltype = "p";
		create_fisher_model(scalabilityParameter, "Corretto.verify(Time.neverTrue(Process.counter > 1))");
		//</P>
		
		// Save it to disk
		UML2Helper.save(myModel,
				URI.createFileURI(TestConfiguration.MODEL_SAVE_PATH)
						.appendSegment(TestConfiguration.MODEL_SAVE_NAME)
						.appendFileExtension(UMLResource.FILE_EXTENSION));

		LOGGER.info("Building the MADES UML representation");
		t = new UML2Zot(
				new File(TestConfiguration.MODEL_FILE).getAbsolutePath());

		LOGGER.info("Generate the ZOT File");
		t.generateZOTFile(75, "ae2bvzot", "z3", new File("output/fischer-" + modeltype + "-" + scalabilityParameter + ".lisp").getAbsolutePath());
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
	
	private void create_alw_not_some_state(State someState) {

		// Creazione <<Property>> package
		org.eclipse.uml2.uml.Package propertyPackage = UML2Helper
				.createPackage(myModel, "Property");
		org.eclipse.uml2.uml.Stereotype propertyStereotype = UML2Helper
				.getMADESVerificationTagsStereotype(madesProfile, "Property");
		propertyPackage.applyStereotype(propertyStereotype);

		// Time Property diagram

		// <<Term>>
		org.eclipse.uml2.uml.Class P_SOME_STATE = UML2Helper.createTerm(madesProfile, propertyPackage, someState);

		// <<Not>>
		org.eclipse.uml2.uml.Class not = UML2Helper.createNot(madesProfile,
				propertyPackage, P_SOME_STATE
						.getStereotypeApplications().get(0));

		// <<Alw>>
		org.eclipse.uml2.uml.Class alw = UML2Helper.createAlw(madesProfile,
				propertyPackage, not.getStereotypeApplications().get(0));

		// <<Property>>
		UML2Helper.createProperty(madesProfile, propertyPackage, alw
				.getStereotypeApplications().get(0));

	}
	
	private void create_state_future_exit_check(State someState, int t) {

		// Creazione <<Property>> package
		org.eclipse.uml2.uml.Package propertyPackage = UML2Helper
				.createPackage(myModel, "Property");
		org.eclipse.uml2.uml.Stereotype propertyStereotype = UML2Helper
				.getMADESVerificationTagsStereotype(madesProfile, "Property");
		propertyPackage.applyStereotype(propertyStereotype);

		// Time Property diagram

		//<<Constant>
		org.eclipse.uml2.uml.Class constant = UML2Helper.createConstant(madesProfile, propertyPackage, t);
		
		// <<Term>>
		org.eclipse.uml2.uml.Class P_SOME_STATE = UML2Helper.createTerm(madesProfile, propertyPackage, someState);
		
		// <<Lasts>>
		org.eclipse.uml2.uml.Class lasts = UML2Helper.createLasts(madesProfile, propertyPackage, 
				P_SOME_STATE.getStereotypeApplications().get(0), constant.getStereotypeApplications().get(0));

		// <<Not>>
		org.eclipse.uml2.uml.Class not = UML2Helper.createNot(madesProfile,
				propertyPackage, lasts.getStereotypeApplications().get(0));

		// <<Alw>>
		org.eclipse.uml2.uml.Class alw = UML2Helper.createAlw(madesProfile,
				propertyPackage, not.getStereotypeApplications().get(0));

		// <<Property>>
		UML2Helper.createProperty(madesProfile, propertyPackage, alw
				.getStereotypeApplications().get(0));

	}

	private void create_fisher_model(int num_process, String property) {
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
		
		if (property != null)
			UML2Helper.createConstraint(systemPackage, "property", property);

		// Class diagram
		PrimitiveType integer = UML2Helper.createPrimitiveType(myModel,
				"Integer");

		org.eclipse.uml2.uml.Class processClass = UML2Helper.createClass(
				systemPackage, "Process", false);

		Property pid_attr = UML2Helper.createAttribute(processClass, "pid",
				integer);
		//The following two are static attributes
		Property id_attr = UML2Helper.createAttribute(processClass, "id", integer, true);
		Property counter = UML2Helper.createAttribute(processClass, "counter", integer, true);
		org.eclipse.uml2.uml.Operation takeLock=UML2Helper.createOperation(processClass, "takeLock");
		org.eclipse.uml2.uml.Operation goWait=UML2Helper.createOperation(processClass, "goWait");

		ArrayList<InstanceSpecification> processes = new ArrayList<InstanceSpecification>();
		for (int i = 0; i < num_process; i++) {
			int id = i;

			InstanceSpecification tmp = UML2Helper.createInstanceSpecification(
					systemPackage, processClass, "proc_" + id);
			UML2Helper.createIntegerSlot(tmp, pid_attr, id);
			UML2Helper.createIntegerSlot(tmp, id_attr, -1);
			UML2Helper.createIntegerSlot(tmp, counter, 0);
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
		STATE_REQ = UML2Helper.createState(
				process_SM, "REQ");
		STATE_UPDATED = UML2Helper.createState(
				process_SM, "UPDATED");
		STATE_WAIT = UML2Helper.createState(
				process_SM, "WAIT");
		STATE_CS = UML2Helper.createState(
				process_SM, "CS");
		STATE_EXIT = UML2Helper.createState(
				process_SM, "EXIT");
		
		UML2Helper.addStateInvariant(STATE_REQ, "@now - @REQ.enter <= 3");
		UML2Helper.addStateInvariant(STATE_UPDATED, "@now - @UPDATED.enter <= 4");

		// initial transition
		UML2Helper.createTransition(process_SM, STATE_0, STATE_FISHERP, "");
		UML2Helper.createTransition(process_SM, STATE_FISHERP, STATE_REQ,
				"@takeLock.call [(id==0--1)]");
		UML2Helper.createTransition(process_SM, STATE_REQ, STATE_UPDATED,
				"/id=pid");
		UML2Helper.createTransition(process_SM, STATE_UPDATED, STATE_WAIT,
				"@goWait.call[@now - @UPDATED.enter >= 4]");
		UML2Helper.createTransition(process_SM, STATE_WAIT, STATE_CS,
				"[(id==pid)]");
		UML2Helper.createTransition(process_SM, STATE_WAIT, STATE_FISHERP,
				"[(id!=pid)]");
		UML2Helper.createTransition(process_SM, STATE_CS, STATE_EXIT, "/counter=<Y>counter+1");
		UML2Helper.createTransition(process_SM, STATE_EXIT, STATE_FISHERP, "/id=0-1, counter=<Y>counter-1");
	}
}
