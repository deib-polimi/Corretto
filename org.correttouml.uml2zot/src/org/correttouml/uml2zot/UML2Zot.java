package org.correttouml.uml2zot;


import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Console;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Time;

import javax.swing.text.html.HTMLEditorKit.Parser;

import org.apache.log4j.Logger;
import org.correttouml.uml.MadesModel;
import org.correttouml.uml.diagrams.sequencediagram.Message;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;
import org.correttouml.uml.diagrams.statediagram.Transition;
import org.correttouml.uml.diagrams.timeconstraints.TimeConstraint;
import org.correttouml.uml.helpers.UML2ModelHelper;
import org.correttouml.uml2zot.semantics.SMadesModel;
import org.correttouml.uml2zot.semantics.statediagram.SState;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.correttouml.uml2zot.zotutil.ZOTConf;
import org.eclipse.uml2.uml.Model;


public class UML2Zot {
	
	public static final class Utility {
		public static String umlIDtoPrdID(String umlID) {
			/*
			 * Since predicate id in TRIO cannot contain '-' and does not
			 * differentiate lower case and upper case, we need a conversion
			 * which has to be reversible.
			 * Mapping:
			 * (A => A)
			 * (a => ^A)
			 * (- => ^_)
			 * (_ => _)
			 */
			String prdID = "";
			for (char ch : umlID.toCharArray()) {
				if ((ch >= 'A' && ch <= 'Z') || ch == '_')
					prdID += ch;
				else if (ch >= 'a' && ch <= 'z')
					prdID += "^" + Character.toUpperCase(ch);
				else if (ch == '-')
					prdID += "^_";
				else if (ch == '^')
					prdID += "^^";
			}
			return prdID;
		}

		public static String prdIDtoUMLID(String prdID) {
			String umlID = "";
			for (int i = 0; i < prdID.length(); i++) {
				char ch = prdID.charAt(i);
				if (ch != '^')
					umlID += ch;
				else {
					if (prdID.charAt(i + 1) == '_')
						umlID += '-';
					else if (prdID.charAt(i + 1) >= 'A'
							&& prdID.charAt(i + 1) <= 'Z')
						umlID += Character.toLowerCase(prdID.charAt(i + 1));
					i++;
				}
			}
			return umlID;
		}
	}
	private static final Logger LOGGER = Logger.getLogger(UML2Zot.class); 
	
	private Model uml_model;
	private String uml_model_file;
	/** The mades model generated from the UML model */
	private MadesModel mades_model;
	
	/** The model containing the semantics */
	private SMadesModel s_mades_model;
	
	public UML2Zot(String uml_model_file){
		this.uml_model_file = uml_model_file;
		this.uml_model=UML2ModelHelper.loadModel(uml_model_file);
		this.mades_model=new MadesModel(uml_model);
		this.s_mades_model=new SMadesModel(mades_model);
	}
	
	public String getModelStatistics() throws IOException{
		int objectsN = 0;
		int statesN = 0;
		int transitionsN = 0;
		int messagesN = 0;
		int sdTimeConstraintsN = 0;
		int arithVarsN = 0;
		for(org.correttouml.uml.diagrams.classdiagram.Class c: this.mades_model.getClassdiagram().getClasses()){
			for(org.correttouml.uml.diagrams.classdiagram.Object obj: c.getObjects()){
				objectsN++;
			}
			for(org.correttouml.uml.diagrams.statediagram.StateDiagram std: c.getStateDiagrams()){
				for(Transition t : std.getTransitions()){
					transitionsN++;
				}
				for(org.correttouml.uml.diagrams.statediagram.State s: std.getStates()){
					for(org.correttouml.uml.diagrams.classdiagram.Object obj: c.getObjects()){
						statesN++;
					}
				}
			}
		}
		for(SequenceDiagram sd: this.mades_model.getSequenceDiagrams()){
			for (Message m : sd.getMessages()) {
				messagesN++;
				}
			for (TimeConstraint t : sd.getTimeConstraints()) {
				sdTimeConstraintsN++;
			}
		}
		FileInputStream fstream = new FileInputStream(uml_model_file);
		BufferedReader in = new BufferedReader(new InputStreamReader(fstream));
		String readLine = "";
		int umlElementsN = 0;
		while((readLine = in.readLine()) != null) {
		String[] words = readLine.split(" ");
		for(String s : words) {
			if(s.startsWith("xmi:id=")) umlElementsN++;}}
		
			
		return ";  Model statistics:\n;  "
		+ Integer.toString(umlElementsN) + "\t:Number of UML elements\n;  " 
		+ Integer.toString(objectsN) + "\t:Number of objects\n;  " + Integer.toString(statesN) + "\t:Number of states\n;  "  
		+ Integer.toString(transitionsN) + "\t:Number of transitions\n;  " + Integer.toString(messagesN) + "\t:Number of messages in sequence diagrams\n;  " + Integer.toString(sdTimeConstraintsN) 
		+ "\t:Number of time contraints in sequence diagrams\n";
	}
	
	public void generateMappingsFile(File mappings_file){
		try{
		LOGGER.info("Generate mappings file");
		
        //Finally, write
        FileWriter mpw = new FileWriter(mappings_file);
        BufferedWriter out = new BufferedWriter(mpw);
		
		for(org.correttouml.uml.diagrams.classdiagram.Class c: this.mades_model.getClassdiagram().getClasses()){
			for(org.correttouml.uml.diagrams.statediagram.StateDiagram std: c.getStateDiagrams()){
				for(org.correttouml.uml.diagrams.statediagram.State s: std.getStates()){
					for(org.correttouml.uml.diagrams.classdiagram.Object obj: c.getObjects()){
						SState ss=new org.correttouml.uml2zot.semantics.statediagram.SState(s);
						Predicate p=ss.getPredicate(obj);
						out.write(p.getPredicateName()+"," + UML2Zot.Utility.prdIDtoUMLID(s.getUMLId())+"\n");
						
					}
				}
			}
		}
		
		out.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void generateZOTFile(String zot_file){		
		LOGGER.info("Build the ZOT file");
		ZOTConf zot=new ZOTConf(30, "ae2bvzot", "z3", this.s_mades_model);
		try {
			zot.writeVerificationZOTFile(zot_file, getModelStatistics());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void generateZOTFile(int timebound, String plugin, String solver, String zot_file){		
		LOGGER.info("Build the ZOT file");
		ZOTConf zot=new ZOTConf(timebound, plugin, solver, this.s_mades_model);
		try {
			zot.writeVerificationZOTFile(zot_file, getModelStatistics());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	

}
