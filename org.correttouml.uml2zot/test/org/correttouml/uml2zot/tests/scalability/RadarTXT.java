package org.correttouml.uml2zot.tests.scalability;

import java.io.File;

import org.apache.log4j.Logger;
import org.correttouml.uml2zot.UML2Zot;
import org.correttouml.uml2zot.tests.TestConfiguration;
import org.correttouml.uml2zot.tests.helpers.UML2Helper;
import org.eclipse.emf.common.util.URI;
import org.eclipse.uml2.uml.Model;
import org.eclipse.uml2.uml.resource.UMLResource;

public class RadarTXT {
	
	/** The UML2ZOT entry point for making the transformation */
	private static UML2Zot t;
	
	private static final Logger LOGGER = Logger.getLogger(SequenceDiagram.class); 
	
	public static void main(String[] args){
		for(int num_processi=1; num_processi<=5; num_processi++){
			LOGGER.info("Creating the UML model");
			create_txt_model(num_processi, false);
			
			LOGGER.info("Building the MADES UML representation");
			t=new UML2Zot(new File(TestConfiguration.MODEL_FILE).getAbsolutePath());
			
			LOGGER.info("Generate the ZOT File");
			t.generateZOTFile(100, "meezot", "minisat", new File("output/txt_model_"+num_processi+".lisp").getAbsolutePath());
			//t.generateZOTFile(100, "ae2zot", "z3", new File("output/txt_model_"+i+".lisp").getAbsolutePath());
		}
	}

	private static void create_txt_model(int num_processes, boolean verify_property){
		//Preparazione modello e package
		Model myModel = UML2Helper.createModel("Radar TXT");
		org.eclipse.uml2.uml.Profile madesProfile = UML2Helper.loadProfile(TestConfiguration.MADES_PROFILE_PATH);
		myModel.createElementImport(madesProfile);
		myModel.applyProfile(madesProfile);
		
		//Creazione <<System>> package
		org.eclipse.uml2.uml.Package systemPackage = UML2Helper.createPackage(myModel, "System");
		org.eclipse.uml2.uml.Stereotype systemStereotype=UML2Helper.getMADESVerificationTagsStereotype(madesProfile, "System");
		systemPackage.applyStereotype(systemStereotype);
		
		//##############################################################//
		
		//CLOCKS
		org.eclipse.uml2.uml.Class ClockTypeMainMMI=UML2Helper.createClass(systemPackage, "ClockTypeMainMMI", false);
		org.eclipse.uml2.uml.Class ClockTypePanelData=UML2Helper.createClass(systemPackage, "ClockTypePanelData", false);
		org.eclipse.uml2.uml.Class ClockTypeRadar=UML2Helper.createClass(systemPackage, "ClockTypeRadar", false);
		org.eclipse.uml2.uml.Class ClockTypeWeather=UML2Helper.createClass(systemPackage, "ClockTypeWeather", false);
		org.eclipse.uml2.uml.Class ClockTypeNavigation=UML2Helper.createClass(systemPackage, "ClockTypeNavigation", false);
		org.eclipse.uml2.uml.Stereotype clockTypeStereotype=UML2Helper.getMADESTimeStereotype(madesProfile, "ClockType");
		org.eclipse.uml2.uml.Stereotype clockStereotype=UML2Helper.getMADESTimeStereotype(madesProfile, "Clock");
		ClockTypeMainMMI.applyStereotype(clockTypeStereotype);
		ClockTypeMainMMI.setValue(clockTypeStereotype, "period", 15);
		org.eclipse.uml2.uml.InstanceSpecification ckMainMMI=UML2Helper.createInstanceSpecification(systemPackage, ClockTypeMainMMI, "ckMainMMI");
		ckMainMMI.applyStereotype(clockStereotype);
		
		ClockTypePanelData.applyStereotype(clockTypeStereotype);
		ClockTypePanelData.setValue(clockTypeStereotype, "period", 15);
		org.eclipse.uml2.uml.InstanceSpecification ckPanelData=UML2Helper.createInstanceSpecification(systemPackage, ClockTypePanelData, "ckPanelData");
		ckPanelData.applyStereotype(clockStereotype);
		
		ClockTypeRadar.applyStereotype(clockTypeStereotype);
		ClockTypeRadar.setValue(clockTypeStereotype, "period", 15);
		org.eclipse.uml2.uml.InstanceSpecification ckRadar=UML2Helper.createInstanceSpecification(systemPackage, ClockTypeRadar, "ckRadar");
		ckRadar.applyStereotype(clockStereotype);
		
		ClockTypeWeather.applyStereotype(clockTypeStereotype);
		ClockTypeWeather.setValue(clockTypeStereotype, "period", 15);
		org.eclipse.uml2.uml.InstanceSpecification ckWeather=UML2Helper.createInstanceSpecification(systemPackage, ClockTypeWeather, "ckWeather");
		ckWeather.applyStereotype(clockStereotype);
		
		ClockTypeNavigation.applyStereotype(clockTypeStereotype);
		ClockTypeNavigation.setValue(clockTypeStereotype, "period", 15);
		org.eclipse.uml2.uml.InstanceSpecification ckNavigation=UML2Helper.createInstanceSpecification(systemPackage, ClockTypeNavigation, "ckNavigation");
		ckNavigation.applyStereotype(clockStereotype);
		
		//##############################################################//
		
		//ENVIRONMENT
		org.eclipse.uml2.uml.Class swEnvironment=UML2Helper.createClass(systemPackage, "swEnvironment", false);
		org.eclipse.uml2.uml.InstanceSpecification environment=UML2Helper.createInstanceSpecification(systemPackage, swEnvironment, "environment");
		org.eclipse.uml2.uml.Operation swEnvironmentop1=UML2Helper.createOperation(swEnvironment, "main_panel_getButton");
		org.eclipse.uml2.uml.Operation swEnvironmentop2=UML2Helper.createOperation(swEnvironment, "main_radar_getSts");
		org.eclipse.uml2.uml.Operation swEnvironmentop3=UML2Helper.createOperation(swEnvironment, "main_nav_getLatitude");
		org.eclipse.uml2.uml.Operation swEnvironmentop4=UML2Helper.createOperation(swEnvironment, "main_nav_getLongitude");
		org.eclipse.uml2.uml.Operation swEnvironmentop5=UML2Helper.createOperation(swEnvironment, "main_weather_getStatus");
		org.eclipse.uml2.uml.Operation swEnvironmentop6=UML2Helper.createOperation(swEnvironment, "main_panel_setLed");
		org.eclipse.uml2.uml.Operation swEnvironmentop7=UML2Helper.createOperation(swEnvironment, "main_radar_setCmd");
		org.eclipse.uml2.uml.Operation swEnvironmentop8=UML2Helper.createOperation(swEnvironment, "main_weather_setNewImage");
		org.eclipse.uml2.uml.Operation swEnvironmentop9=UML2Helper.createOperation(swEnvironment, "main_weather_setImage");
		org.eclipse.uml2.uml.Operation swEnvironmentop10=UML2Helper.createOperation(swEnvironment, "main_radar_getResult");
		org.eclipse.uml2.uml.Operation swEnvironmentop11=UML2Helper.createOperation(swEnvironment, "nav_setLatitude");
		org.eclipse.uml2.uml.Operation swEnvironmentop12=UML2Helper.createOperation(swEnvironment, "nav_setLongitude");
		org.eclipse.uml2.uml.Operation swEnvironmentop13=UML2Helper.createOperation(swEnvironment, "panel_getLed");
		org.eclipse.uml2.uml.Operation swEnvironmentop14=UML2Helper.createOperation(swEnvironment, "panel_setButton");
		org.eclipse.uml2.uml.Operation swEnvironmentop15=UML2Helper.createOperation(swEnvironment, "weather_getNewImage");
		org.eclipse.uml2.uml.Operation swEnvironmentop16=UML2Helper.createOperation(swEnvironment, "weather_getImage");
		org.eclipse.uml2.uml.Operation swEnvironmentop17=UML2Helper.createOperation(swEnvironment, "weather_setStatus");
		org.eclipse.uml2.uml.Operation swEnvironmentop18=UML2Helper.createOperation(swEnvironment, "radar_getCmd");
		org.eclipse.uml2.uml.Operation swEnvironmentop19=UML2Helper.createOperation(swEnvironment, "radar_setSts");
		org.eclipse.uml2.uml.Operation swEnvironmentop20=UML2Helper.createOperation(swEnvironment, "radar_setResult");
		
		//##############################################################//
		
		//MAIN MMI
		org.eclipse.uml2.uml.Class swMainMMI=UML2Helper.createClass(systemPackage, "swMainMMI", false);
		org.eclipse.uml2.uml.InstanceSpecification mainMMI=UML2Helper.createInstanceSpecification(systemPackage, swMainMMI, "mainMMI");
		org.eclipse.uml2.uml.Operation swMainMMIop1=UML2Helper.createOperation(swMainMMI, "activeMainMMI");
		org.eclipse.uml2.uml.Operation swMainMMIop2=UML2Helper.createOperation(swMainMMI, "getData");
		org.eclipse.uml2.uml.Operation swMainMMIop3=UML2Helper.createOperation(swMainMMI, "processData");
		org.eclipse.uml2.uml.Operation swMainMMIop4=UML2Helper.createOperation(swMainMMI, "setData");
		org.eclipse.uml2.uml.Operation swMainMMIop5=UML2Helper.createOperation(swMainMMI, "showData");
		
		//SD MAIN MMI
		org.eclipse.uml2.uml.Interaction sdMainMMIToEnvironment=UML2Helper.createInteraction(systemPackage, "MainMMIToEnvironment");
		org.eclipse.uml2.uml.Lifeline l1=sdMainMMIToEnvironment.createLifeline("l1");
		l1.setSelector(mainMMI.getSpecification());
		org.eclipse.uml2.uml.Lifeline l2=sdMainMMIToEnvironment.createLifeline("l2");
		l2.setSelector(environment.getSpecification());
		UML2Helper.createMessage(sdMainMMIToEnvironment, l1, l2, swEnvironmentop1, "main_panel_getButton_message");
		UML2Helper.createMessage(sdMainMMIToEnvironment, l1, l2, swEnvironmentop2, "main_radar_getSts");
		UML2Helper.createMessage(sdMainMMIToEnvironment, l1, l2, swEnvironmentop10, "main_radar_getResult");
		UML2Helper.createMessage(sdMainMMIToEnvironment, l1, l2, swEnvironmentop3, "main_nav_getLatitude");
		UML2Helper.createMessage(sdMainMMIToEnvironment, l1, l2, swEnvironmentop4, "main_nav_getLongitude");
		UML2Helper.createMessage(sdMainMMIToEnvironment, l1, l1, swMainMMIop3, "processData");
		UML2Helper.createMessage(sdMainMMIToEnvironment, l1, l2, swEnvironmentop6, "main_panel_setLed");
		UML2Helper.createMessage(sdMainMMIToEnvironment, l1, l2, swEnvironmentop7, "main_panel_setCmd");
		UML2Helper.createMessage(sdMainMMIToEnvironment, l1, l2, swEnvironmentop8, "main_weather_setNewImage");
		UML2Helper.createMessage(sdMainMMIToEnvironment, l1, l2, swEnvironmentop9, "main_weather_setImage");
		UML2Helper.createMessage(sdMainMMIToEnvironment, l1, l1, swMainMMIop5, "showData");
		
		//STD MAIN MMI
		org.eclipse.uml2.uml.StateMachine smMainMMI=UML2Helper.createStateMachine(swMainMMI, "smMainMMI");
		UML2Helper.createRegion(smMainMMI);
		org.eclipse.uml2.uml.Pseudostate s0=UML2Helper.createInitialState(smMainMMI, "initial");
		org.eclipse.uml2.uml.State s1=UML2Helper.createState(smMainMMI, "MainMMIState");
		UML2Helper.createTransition(smMainMMI, s0, s1, "initial");
		UML2Helper.createTransition(smMainMMI, s1, s1, "@ckMainMMI.tick/@MainMMIToEnvironment.start");
		
		//##############################################################//
		
		for(int i=0; i<num_processes; i++) create_panel_data(systemPackage, environment, swEnvironmentop13, swEnvironmentop14, i);
		
		//##############################################################//
		
		for(int i=0; i<num_processes; i++) create_radar_data(systemPackage, environment, swEnvironmentop18, swEnvironmentop19, swEnvironmentop20, 1);
		
		//##############################################################//
		
		for(int i=0; i<num_processes; i++) create_navigation_data(systemPackage, environment, swEnvironmentop11, swEnvironmentop12, i);
		
		//##############################################################//
		
		for(int i=0; i<num_processes; i++) create_weather_data(systemPackage, environment, swEnvironmentop15, swEnvironmentop17, i);
			
		//##############################################################//
		
		if(verify_property){
			//Creazione <<Property>> package
			org.eclipse.uml2.uml.Package propertyPackage = UML2Helper.createPackage(myModel, "Property");
			org.eclipse.uml2.uml.Stereotype propertyStereotype=UML2Helper.getMADESVerificationTagsStereotype(madesProfile, "Property");
			propertyPackage.applyStereotype(propertyStereotype);
			
			//Time Property diagram
			
			//<<Term>>
			org.eclipse.uml2.uml.Class main_panel_getButtonTerm=UML2Helper.createTerm(madesProfile, propertyPackage, swEnvironmentop1);
			
			//<<Constant>>
			org.eclipse.uml2.uml.Class constant=UML2Helper.createConstant(madesProfile, propertyPackage, 15);
			
			//<<WithinF>>
			org.eclipse.uml2.uml.Class withinF=UML2Helper.createWithinF(madesProfile, propertyPackage, main_panel_getButtonTerm.getStereotypeApplications().get(0), constant.getStereotypeApplications().get(0));
			
			//<<Term>>
			org.eclipse.uml2.uml.Class panel_setButtonTerm=UML2Helper.createTerm(madesProfile, propertyPackage, swEnvironmentop14);
			
			//<<Implies>>
			org.eclipse.uml2.uml.Class implies=UML2Helper.createImplies(madesProfile, propertyPackage, panel_setButtonTerm.getStereotypeApplications().get(0), withinF.getStereotypeApplications().get(0));
			
			//<<Alw>>
			org.eclipse.uml2.uml.Class alw=UML2Helper.createAlw(madesProfile, propertyPackage, implies.getStereotypeApplications().get(0));
			
			//<<Property>>
			UML2Helper.createProperty(madesProfile, propertyPackage, alw.getStereotypeApplications().get(0));
		}
		
		//Salvataggio del modell
		UML2Helper.save(myModel, URI.createFileURI(TestConfiguration.MODEL_SAVE_PATH).appendSegment(TestConfiguration.MODEL_SAVE_NAME).appendFileExtension(UMLResource.FILE_EXTENSION)); 	
	}

	private static void create_panel_data(org.eclipse.uml2.uml.Package systemPackage, org.eclipse.uml2.uml.InstanceSpecification environment, org.eclipse.uml2.uml.Operation panel_getLed,  org.eclipse.uml2.uml.Operation panel_setButton, int id){
		//PANEL DATA
		org.eclipse.uml2.uml.Class swPanelData=UML2Helper.createClass(systemPackage, "swPanelData"+id, false);
		org.eclipse.uml2.uml.InstanceSpecification panelData=UML2Helper.createInstanceSpecification(systemPackage, swPanelData, "panelData"+id);
		org.eclipse.uml2.uml.Operation swPanelDataop1=UML2Helper.createOperation(swPanelData, "activePanelData");
		org.eclipse.uml2.uml.Operation swPanelDataop2=UML2Helper.createOperation(swPanelData, "getData");
		org.eclipse.uml2.uml.Operation swPanelDataop3=UML2Helper.createOperation(swPanelData, "processData");
		org.eclipse.uml2.uml.Operation swPanelDataop4=UML2Helper.createOperation(swPanelData, "setData");
		org.eclipse.uml2.uml.Operation swPanelDataop5=UML2Helper.createOperation(swPanelData, "showData");
		
		//SD PANEL DATA
		org.eclipse.uml2.uml.Interaction SDPanelDataToEnvironment=UML2Helper.createInteraction(systemPackage, "PanelDataToEnvironment"+id);
		org.eclipse.uml2.uml.Lifeline l1=SDPanelDataToEnvironment.createLifeline("l1");
		l1.setSelector(panelData.getSpecification());
		org.eclipse.uml2.uml.Lifeline l2=SDPanelDataToEnvironment.createLifeline("l2");
		l2.setSelector(environment.getSpecification());
		UML2Helper.createMessage(SDPanelDataToEnvironment, l1, l2, panel_getLed, "panel_getLed");
		UML2Helper.createMessage(SDPanelDataToEnvironment, l1, l1, swPanelDataop3, "processData");
		UML2Helper.createMessage(SDPanelDataToEnvironment, l1, l2, panel_setButton, "panel_setButton");
		UML2Helper.createMessage(SDPanelDataToEnvironment, l1, l1, swPanelDataop5, "showData");
		
		//STD PANEL DATA
		org.eclipse.uml2.uml.StateMachine SMPanelData=UML2Helper.createStateMachine(swPanelData, "SMPanelData"+id);
		UML2Helper.createRegion(SMPanelData);
		org.eclipse.uml2.uml.Vertex s0=UML2Helper.createInitialState(SMPanelData, "initial");
		org.eclipse.uml2.uml.Vertex s1=UML2Helper.createState(SMPanelData, "PanelDataState");
		UML2Helper.createTransition(SMPanelData, s0, s1, "initial");
		UML2Helper.createTransition(SMPanelData, s1, s1, "@ckPanelData.tick/@PanelDataToEnvironment"+id+".start");
	}
	
	private static void create_radar_data(org.eclipse.uml2.uml.Package systemPackage, org.eclipse.uml2.uml.InstanceSpecification environment, org.eclipse.uml2.uml.Operation radar_getCmd,  org.eclipse.uml2.uml.Operation radar_setSts, org.eclipse.uml2.uml.Operation radar_setResult , int id){
		//RADAR DATA
		org.eclipse.uml2.uml.Class swRadarData=UML2Helper.createClass(systemPackage, "swRadarData", false);
		org.eclipse.uml2.uml.InstanceSpecification radarData=UML2Helper.createInstanceSpecification(systemPackage, swRadarData, "radarData");
		org.eclipse.uml2.uml.Operation swRadarDataop1=UML2Helper.createOperation(swRadarData, "activePanelData");
		org.eclipse.uml2.uml.Operation swRadarDataop2=UML2Helper.createOperation(swRadarData, "getData");
		org.eclipse.uml2.uml.Operation swRadarDataop3=UML2Helper.createOperation(swRadarData, "processData");
		org.eclipse.uml2.uml.Operation swRadarDataop4=UML2Helper.createOperation(swRadarData, "setData");
		org.eclipse.uml2.uml.Operation swRadarDataop5=UML2Helper.createOperation(swRadarData, "showData");
		
		//SD RADAR DATA
		org.eclipse.uml2.uml.Interaction SDRadarDataToEnvironment=UML2Helper.createInteraction(systemPackage, "RadarDataToEnvironment");
		org.eclipse.uml2.uml.Lifeline l1=SDRadarDataToEnvironment.createLifeline("l1");
		l1.setSelector(radarData.getSpecification());
		org.eclipse.uml2.uml.Lifeline l2=SDRadarDataToEnvironment.createLifeline("l2");
		l2.setSelector(environment.getSpecification());
		UML2Helper.createMessage(SDRadarDataToEnvironment, l1, l2, radar_getCmd, "radar_getCmd");
		UML2Helper.createMessage(SDRadarDataToEnvironment, l1, l1, swRadarDataop3, "processData");
		UML2Helper.createMessage(SDRadarDataToEnvironment, l1, l2, radar_setSts, "radar_setSts");
		UML2Helper.createMessage(SDRadarDataToEnvironment, l1, l2, radar_setResult, "radar_setResult");
		UML2Helper.createMessage(SDRadarDataToEnvironment, l1, l1, swRadarDataop5, "showData");
		
		//STD RADAR DATA
		org.eclipse.uml2.uml.StateMachine SMRadarData=UML2Helper.createStateMachine(swRadarData, "SMRadarData");
		UML2Helper.createRegion(SMRadarData);
		org.eclipse.uml2.uml.Vertex s0=UML2Helper.createInitialState(SMRadarData, "initial");
		org.eclipse.uml2.uml.Vertex s1=UML2Helper.createState(SMRadarData, "RadarDataState");
		UML2Helper.createTransition(SMRadarData, s0, s1, "initial");
		UML2Helper.createTransition(SMRadarData, s1, s1, "@ckRadar.tick/@RadarDataToEnvironment.start");
	}

	private static void create_navigation_data(org.eclipse.uml2.uml.Package systemPackage, org.eclipse.uml2.uml.InstanceSpecification environment, org.eclipse.uml2.uml.Operation radar_setLatitude,  org.eclipse.uml2.uml.Operation radar_setLongitude, int id){
		//NAVIGATION DATA
		org.eclipse.uml2.uml.Class swNavData=UML2Helper.createClass(systemPackage, "swNavData", false);
		org.eclipse.uml2.uml.InstanceSpecification navData=UML2Helper.createInstanceSpecification(systemPackage, swNavData, "navData");
		org.eclipse.uml2.uml.Operation swNavDataop1=UML2Helper.createOperation(swNavData, "activePanelData");
		org.eclipse.uml2.uml.Operation swNavDataop2=UML2Helper.createOperation(swNavData, "getData");
		org.eclipse.uml2.uml.Operation swNavDataop3=UML2Helper.createOperation(swNavData, "processData");
		org.eclipse.uml2.uml.Operation swNavDataop4=UML2Helper.createOperation(swNavData, "setData");
		org.eclipse.uml2.uml.Operation swNavDataop5=UML2Helper.createOperation(swNavData, "showData");
		
		//SD NAVIGATION DATA
		org.eclipse.uml2.uml.Interaction SDNavigationToEnvironment=UML2Helper.createInteraction(systemPackage, "NavigationToEnvironment");
		org.eclipse.uml2.uml.Lifeline l1=SDNavigationToEnvironment.createLifeline("l1");
		l1.setSelector(navData.getSpecification());
		org.eclipse.uml2.uml.Lifeline l2=SDNavigationToEnvironment.createLifeline("l2");
		l2.setSelector(environment.getSpecification());
		UML2Helper.createMessage(SDNavigationToEnvironment, l1, l1, swNavDataop2, "getData");
		UML2Helper.createMessage(SDNavigationToEnvironment, l1, l1, swNavDataop3, "processData");
		UML2Helper.createMessage(SDNavigationToEnvironment, l1, l2, radar_setLatitude, "radar_setLatitude");
		UML2Helper.createMessage(SDNavigationToEnvironment, l1, l2, radar_setLongitude, "radar_setLongitude");
		UML2Helper.createMessage(SDNavigationToEnvironment, l1, l1, swNavDataop5, "showData");
		
		//STD NAVIGATION DATA
		org.eclipse.uml2.uml.StateMachine SMNavData=UML2Helper.createStateMachine(swNavData, "SMNavData");
		UML2Helper.createRegion(SMNavData);
		org.eclipse.uml2.uml.Vertex s0=UML2Helper.createInitialState(SMNavData, "initial");
		org.eclipse.uml2.uml.Vertex s1=UML2Helper.createState(SMNavData, "NavDataState");
		UML2Helper.createTransition(SMNavData, s0, s1, "initial");
		UML2Helper.createTransition(SMNavData, s1, s1, "@ckNavigation.tick/@NavigationToEnvironment.start");
	}

	private static void create_weather_data(org.eclipse.uml2.uml.Package systemPackage, org.eclipse.uml2.uml.InstanceSpecification environment, org.eclipse.uml2.uml.Operation weather_getNewImage,  org.eclipse.uml2.uml.Operation weather_setStatus, int id){
		//WEATHER DATA
		org.eclipse.uml2.uml.Class swWeatherData=UML2Helper.createClass(systemPackage, "swWeatherData", false);
		org.eclipse.uml2.uml.InstanceSpecification weatherData=UML2Helper.createInstanceSpecification(systemPackage, swWeatherData, "weatherData");
		org.eclipse.uml2.uml.Operation swWeatherDataop1=UML2Helper.createOperation(swWeatherData, "activePanelData");
		org.eclipse.uml2.uml.Operation swWeatherDataop2=UML2Helper.createOperation(swWeatherData, "getData");
		org.eclipse.uml2.uml.Operation swWeatherDataop3=UML2Helper.createOperation(swWeatherData, "processData");
		org.eclipse.uml2.uml.Operation swWeatherDataop4=UML2Helper.createOperation(swWeatherData, "setData");
		org.eclipse.uml2.uml.Operation swWeatherDataop5=UML2Helper.createOperation(swWeatherData, "showData");
		
		//SD WEATHER DATA
		org.eclipse.uml2.uml.Interaction SDWeatherDataToEnvironment=UML2Helper.createInteraction(systemPackage, "WeatherDataToEnvironment");
		org.eclipse.uml2.uml.Lifeline l1=SDWeatherDataToEnvironment.createLifeline("l1");
		l1.setSelector(weatherData.getSpecification());
		org.eclipse.uml2.uml.Lifeline l2=SDWeatherDataToEnvironment.createLifeline("l2");
		l2.setSelector(environment.getSpecification());
		UML2Helper.createMessage(SDWeatherDataToEnvironment, l1, l2, weather_getNewImage, "weather_getNewImage");
		UML2Helper.createMessage(SDWeatherDataToEnvironment, l1, l1, swWeatherDataop3, "processData");
		UML2Helper.createMessage(SDWeatherDataToEnvironment, l1, l2, weather_setStatus, "weather_setStatus");
		UML2Helper.createMessage(SDWeatherDataToEnvironment, l1, l1, swWeatherDataop5, "showData");
		
		//STD WEATHER DATA
		org.eclipse.uml2.uml.StateMachine SMWeatherData=UML2Helper.createStateMachine(swWeatherData, "SMWeatherData");
		UML2Helper.createRegion(SMWeatherData);
		org.eclipse.uml2.uml.Vertex s0=UML2Helper.createInitialState(SMWeatherData, "initial");
		org.eclipse.uml2.uml.Vertex s1=UML2Helper.createState(SMWeatherData, "WeatherDataState");
		UML2Helper.createTransition(SMWeatherData, s0, s1, "initial");
		UML2Helper.createTransition(SMWeatherData, s1, s1, "@ckWeather.tick/@WeatherDataToEnvironment.start");
	}
}
