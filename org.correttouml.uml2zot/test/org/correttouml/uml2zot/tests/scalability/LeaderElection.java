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
import org.eclipse.uml2.uml.InstanceSpecification;
import org.eclipse.uml2.uml.Model;
import org.eclipse.uml2.uml.PrimitiveType;
import org.eclipse.uml2.uml.Profile;
import org.eclipse.uml2.uml.Property;
import org.eclipse.uml2.uml.State;
import org.eclipse.uml2.uml.Type;
import org.eclipse.uml2.uml.resource.UMLResource;

public class LeaderElection {

	/** The UML2ZOT entry point for making the transformation */
	private UML2Zot t;

	/** Shared model elements **/
	private Model myModel;
	private Profile madesProfile;

	private State STATE_NO_WINNER;
	private State STATE_WINNER;
	private State STATE_ERROR;

	private static final Logger LOGGER = Logger
			.getLogger(SequenceDiagram.class);

	public static void main(String[] args) {
		LeaderElection experiment = new LeaderElection();
		experiment.start();
	}

	public void start() {
		LOGGER.info("Creating the UML model");

		for(int i=5; i<=20; i=i+5){
			create_leader_election_model(i);
			//create_alw_somf_monitor_state_winner();
			//create_alw_not_monitor_state_error();

			// Save it to disk
			UML2Helper.save(myModel,
					URI.createFileURI(TestConfiguration.MODEL_SAVE_PATH)
							.appendSegment(TestConfiguration.MODEL_SAVE_NAME)
							.appendFileExtension(UMLResource.FILE_EXTENSION));

			LOGGER.info("Building the MADES UML representation");
			t = new UML2Zot(
					new File(TestConfiguration.MODEL_FILE).getAbsolutePath());

			LOGGER.info("Generate the ZOT File");
			t.generateZOTFile(75, "ae2zot", "z3",
					new File("output/zot_model_"+i+"_proc.lisp").getAbsolutePath());			
		}

	}
	
	//Alw(SomF(MONITOR_STATE_WINNER))
	private void create_alw_somf_monitor_state_winner() {

		// Creazione <<Property>> package
		org.eclipse.uml2.uml.Package propertyPackage = UML2Helper
				.createPackage(myModel, "Property");
		org.eclipse.uml2.uml.Stereotype propertyStereotype = UML2Helper
				.getMADESVerificationTagsStereotype(madesProfile, "Property");
		propertyPackage.applyStereotype(propertyStereotype);

		// Time Property diagram

		// <<Term>>
		org.eclipse.uml2.uml.Class MONITOR_STATE_WINNER = UML2Helper.createTerm(
				madesProfile, propertyPackage, STATE_WINNER);

		// <<SomF>>
		org.eclipse.uml2.uml.Class somf = UML2Helper.createSomF(
				madesProfile, propertyPackage, MONITOR_STATE_WINNER
						.getStereotypeApplications().get(0));

		// <<Alw>>
		org.eclipse.uml2.uml.Class alw = UML2Helper.createAlw(madesProfile,
				propertyPackage, somf.getStereotypeApplications().get(0));

		// <<Property>>
		UML2Helper.createProperty(madesProfile, propertyPackage, alw
				.getStereotypeApplications().get(0));

	}
	
	//Alw(Not(MONITOR_STATE_ERROR))
	private void create_alw_not_monitor_state_error() {

		// Creazione <<Property>> package
		org.eclipse.uml2.uml.Package propertyPackage = UML2Helper
				.createPackage(myModel, "Property");
		org.eclipse.uml2.uml.Stereotype propertyStereotype = UML2Helper
				.getMADESVerificationTagsStereotype(madesProfile, "Property");
		propertyPackage.applyStereotype(propertyStereotype);

		// Time Property diagram

		// <<Term>>
		org.eclipse.uml2.uml.Class MONITOR_STATE_ERROR = UML2Helper.createTerm(
				madesProfile, propertyPackage, STATE_ERROR);

		// <<Not>>
		org.eclipse.uml2.uml.Class not = UML2Helper.createNot(
				madesProfile, propertyPackage, MONITOR_STATE_ERROR
						.getStereotypeApplications().get(0));

		// <<Alw>>
		org.eclipse.uml2.uml.Class alw = UML2Helper.createAlw(madesProfile,
				propertyPackage, not.getStereotypeApplications().get(0));

		// <<Property>>
		UML2Helper.createProperty(madesProfile, propertyPackage, alw
				.getStereotypeApplications().get(0));

	}

	private void create_leader_election_model(int num_process) {
		// Preparazione modello e package
		myModel = UML2Helper.createModel("ScalabilityModel");
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
		UML2Helper.createAttribute(processClass, "active", integer).setIntegerDefaultValue(1);
		// this attribute has not a default value but will be initialized with
		// the slots
		Property mynumber_attr = UML2Helper.createAttribute(processClass,
				"mynumber", integer);
		UML2Helper.createAttribute(processClass, "max", integer).setIntegerDefaultValue(0);
		UML2Helper.createAttribute(processClass, "neighbourR", integer).setIntegerDefaultValue(0);
		
		//This guy is going to monitor if we have a winner
		org.eclipse.uml2.uml.Class monitorClass = UML2Helper.createClass(
				systemPackage, "Monitor", false);
		org.eclipse.uml2.uml.Signal we_have_winner_signal = UML2Helper.createSignal(systemPackage, "we_have_winner");

		// TODO[mottalrd] need predicate disambiguation for parameters
		EList<String> one_parametersName = new BasicEList<String>();
		EList<Type> one_parametersType = new BasicEList<Type>();
		one_parametersName.add("one_nr");
		one_parametersType.add(integer);

		EList<String> two_parametersName = new BasicEList<String>();
		EList<Type> two_parametersType = new BasicEList<Type>();
		two_parametersName.add("two_nr");
		two_parametersType.add(integer);

		EList<String> win_parametersName = new BasicEList<String>();
		EList<Type> win_parametersType = new BasicEList<Type>();
		win_parametersName.add("win_nr");
		win_parametersType.add(integer);

		UML2Helper.createOperation(processClass, "one", one_parametersName,
				one_parametersType);
		UML2Helper.createOperation(processClass, "two", two_parametersName,
				two_parametersType);
		UML2Helper.createOperation(processClass, "winner", win_parametersName,
				win_parametersType);

		// TODO[mottalrd] the XMI generated is different from the one of
		// papyrus. But I don't need it for the zot generation, so who cares
		org.eclipse.uml2.uml.Association processClass_processClass = UML2Helper
				.createAssociation("link",
						(org.eclipse.uml2.uml.Type) processClass, true,
						AggregationKind.NONE_LITERAL, "in", 1, 1,
						(org.eclipse.uml2.uml.Type) processClass, true,
						AggregationKind.NONE_LITERAL, "out", 1, 1);

		ArrayList<InstanceSpecification> processes=new ArrayList<InstanceSpecification>();
		for(int i=0; i<num_process; i++){
			//TODO: id generator not working
			IdGenerator gen=new IdGenerator(0, num_process*3);
			int id=gen.getNextId();
			
			InstanceSpecification tmp=UML2Helper
			.createInstanceSpecification(systemPackage, processClass,
					"proc_"+id);
			UML2Helper.createIntegerSlot(tmp, mynumber_attr, id);
			processes.add(tmp);
		}
		org.eclipse.uml2.uml.InstanceSpecification monitor = UML2Helper
				.createInstanceSpecification(systemPackage, monitorClass,
						"monitor");

		for(int i=0; i<num_process; i++){
			int pos1=i % num_process;
			int pos2=(i+1) % num_process;
			
			InstanceSpecification proc_1=processes.get(pos1);
			InstanceSpecification proc_2=processes.get(pos2);
			
			UML2Helper.createInstanceSpecificationLink(proc_1.getName()+"_"+proc_2.getName(),
							systemPackage, processClass_processClass, "in", proc_1,
							"out", proc_2);
		}


		// STD MONITOR
		org.eclipse.uml2.uml.StateMachine monitor_SM = UML2Helper
				.createStateMachine(monitorClass, "Monitor_SM");
		UML2Helper.createRegion(monitor_SM);
		org.eclipse.uml2.uml.Pseudostate MONITOR_INIT = UML2Helper
				.createInitialState(monitor_SM, "start");
		STATE_NO_WINNER = UML2Helper.createState(
				monitor_SM, "STATE_NO_WINNER");
		STATE_WINNER = UML2Helper.createState(
				monitor_SM, "STATE_WINNER");
		STATE_ERROR = UML2Helper.createState(
				monitor_SM, "STATE_ERROR");		
		UML2Helper.createTransition(monitor_SM, MONITOR_INIT, STATE_NO_WINNER, "");
		UML2Helper.createTransition(monitor_SM, STATE_NO_WINNER, STATE_WINNER, "we_have_winner.sig");
		UML2Helper.createTransition(monitor_SM, STATE_WINNER, STATE_ERROR, "we_have_winner.sig");
		
		
		// STD PROCESS
		org.eclipse.uml2.uml.StateMachine process_SM = UML2Helper
				.createStateMachine(processClass, "Process_SM");
		UML2Helper.createRegion(process_SM);
		org.eclipse.uml2.uml.Pseudostate STATE_0 = UML2Helper
				.createInitialState(process_SM, "start");
		org.eclipse.uml2.uml.State STATE_INIT = UML2Helper.createState(
				process_SM, "INIT");
		org.eclipse.uml2.uml.State STATE_MAIN = UML2Helper.createState(
				process_SM, "MAIN");
		org.eclipse.uml2.uml.State STATE_WIN = UML2Helper.createState(
				process_SM, "WIN");
		org.eclipse.uml2.uml.State STATE_LOST = UML2Helper.createState(
				process_SM, "LOST");

		// initial transition
		UML2Helper.createTransition(process_SM, STATE_0, STATE_INIT, "");
		// at the beginning send your number to the neighbour
		UML2Helper
				.createTransition(process_SM, STATE_INIT, STATE_MAIN,
						"@now - @INIT.enter > 1/#link.out@one(mynumber).call, max=mynumber");
		// no active, just pass the message
		UML2Helper.createTransition(process_SM, STATE_MAIN, STATE_MAIN,
				"@one.call[{active==0}]/#link.out@one(<P>one_nr).call");
		// no active, just pass the message
		UML2Helper.createTransition(process_SM, STATE_MAIN, STATE_MAIN,
				"@two.call[{active==0}]/#link.out@two(<P>two_nr).call");
		// active, receive one and pass the info
		UML2Helper
				.createTransition(
						process_SM,
						STATE_MAIN,
						STATE_MAIN,
						"@one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr");
		// active, receive two and keep playing
		UML2Helper
				.createTransition(
						process_SM,
						STATE_MAIN,
						STATE_MAIN,
						"@two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call");
		// active, receive two and go out of the game
		UML2Helper
				.createTransition(
						process_SM,
						STATE_MAIN,
						STATE_MAIN,
						"@two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0, #link.out@one(<P>neighbourR).call");
		// winner found, communicate the winner
		UML2Helper
				.createTransition(process_SM, STATE_MAIN, STATE_MAIN,
						"@one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig");
		// received winner communication, it is me
		UML2Helper
				.createTransition(process_SM, STATE_MAIN, STATE_WIN,
						"@winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call");
		// received winner communication, it is NOT me
		UML2Helper
				.createTransition(process_SM, STATE_MAIN, STATE_LOST,
						"@winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call");

	}
	

	private class IdGenerator{
		/** 
		 * Given a set of adiacent ids
		 * returns each of them in random order
		 * @author motta
		 *
		 */
		
		ArrayList<Integer> ids=new ArrayList<Integer>();
		
		public IdGenerator(int min, int max){
			for(int i=min; i<=max; i++) ids.add(i);
		}
		
		public int getNextId(){
			
			//TODO: this is wrong
			int r=ids.get(this.getRandom(0, ids.size()));
			ids.remove(ids.indexOf(r));
						
			return r;
		}
		
		private int getRandom(int min, int max){
			return min + (int)(Math.random() * ((max - min) + 1));
		}
		
	}

}
