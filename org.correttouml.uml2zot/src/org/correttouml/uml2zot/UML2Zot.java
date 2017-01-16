package org.correttouml.uml2zot;


import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;

import org.apache.log4j.Logger;
import org.correttouml.uml.MadesModel;
import org.correttouml.uml.diagrams.activity.ControlFlow;
import org.correttouml.uml.diagrams.activity.InterruptibleRegion;
import org.correttouml.uml.diagrams.activity.SequenceDiagramNode;
import org.correttouml.uml.diagrams.activitydiagram.AD;
import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.iod.IOD;
import org.correttouml.uml.diagrams.sequencediagram.Message;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;
import org.correttouml.uml.diagrams.statediagram.Transition;
import org.correttouml.uml.helpers.UML2ModelHelper;
import org.correttouml.uml2zot.semantics.SMadesModel;
import org.correttouml.uml2zot.semantics.activity.SControlFlow;
import org.correttouml.uml2zot.semantics.activity.SInterruptibleRegion;
import org.correttouml.uml2zot.semantics.activity.SSequenceDiagramNode;
import org.correttouml.uml2zot.semantics.activitydiagram.SAD;
import org.correttouml.uml2zot.semantics.iod.SIOD;
import org.correttouml.uml2zot.semantics.sequencediagram.SMessage;
import org.correttouml.uml2zot.semantics.sequencediagram.SSequenceDiagram;
import org.correttouml.uml2zot.semantics.statediagram.SState;
import org.correttouml.uml2zot.semantics.statediagram.STransition;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.correttouml.uml2zot.zotutil.ZOTConf;
import org.eclipse.uml2.uml.Model;

import com.sun.corba.se.spi.legacy.connection.GetEndPointInfoAgainException;

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
				if ((ch >= 'A' && ch <= 'Z') || (ch >= '0' && ch <= '9') || ch == '_')
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
					else if (prdID.charAt(i + 1) == '^')
						umlID += '^';
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
		int adsN = 0;
		int adNodesN = 0;
		int statesN = 0;
		int transitionsN = 0;
		int messagesN = 0;
		int sdTimeConstraintsN = 0;
		int sdParametersN = 0;
		int clocksN = this.mades_model.getClassdiagram().getClocks().size();
		int lifelinesN = 0;
		int iodNodesN = 0;
		for(org.correttouml.uml.diagrams.classdiagram.Class c: this.mades_model.getClassdiagram().getClasses()){
			objectsN += c.getObjects().size();
			for(org.correttouml.uml.diagrams.statediagram.StateDiagram std: c.getStateDiagrams()){
				transitionsN += std.getTransitions().size() * c.getObjects().size();
				statesN += std.getStates().size() * c.getObjects().size();
			}
			for (org.eclipse.uml2.uml.Activity umlAD : c.getUMLADs()){
				adsN += c.getObjects().size();
				adNodesN += c.getObjects().size() * umlAD.getNodes().size();
			}
		}
		for(SequenceDiagram sd: this.mades_model.getSequenceDiagrams()){
			messagesN += sd.getMessages().size();
			sdTimeConstraintsN += sd.getTimeConstraints().size();
			sdParametersN += sd.getSequenceDiagramParameters().size();
			lifelinesN += sd.getLifelines().size();
		}
		for(org.correttouml.uml.diagrams.iod.IOD i: this.mades_model.getIODs()){
			iodNodesN += i.getNodes().size();
		}
		FileInputStream fstream = new FileInputStream(uml_model_file);
		BufferedReader in = new BufferedReader(new InputStreamReader(fstream));
		String readLine = "";
		int umlElementsN = 0;
		while((readLine = in.readLine()) != null) {
		String[] words = readLine.split(" ");
		for(String s : words) {
			if(s.startsWith("xmi:id=")) umlElementsN++;}}
		in.close();

		return ";  Model statistics:\n;  "
		+ Integer.toString(umlElementsN) + "\t:Number of UML elements\n;  "  
		+ Integer.toString(objectsN) + "\t:Number of objects\n;  "
		+ Integer.toString(adsN) + "\t:Number of activity diagrams\n;  "
		+ Integer.toString(adNodesN) + "\t:Number of nodes in activity diagrams\n;  "
		+ Integer.toString(statesN) + "\t:Number of states\n;  " 
		+ Integer.toString(transitionsN) + "\t:Number of transitions\n;  "
		+ Integer.toString(lifelinesN) + "\t:Number of lifelines in sequence diagrams\n;  "
		+ Integer.toString(messagesN) + "\t:Number of messages in sequence diagrams\n;  " 
		+ Integer.toString(sdParametersN) + "\t:Number of parameters in sequence diagrams\n;  "
		+ Integer.toString(sdTimeConstraintsN) + "\t:Number of time contraints in sequence diagrams\n;  " 
		+ Integer.toString(clocksN) + "\t:Number of clocks\n;  "
		+ Integer.toString(iodNodesN) + "\t:Number of nodes in interaction overview diagrams\n";
	}
	
	public void generateMappingsFile(File mappings_file){
		try{
		LOGGER.info("Generate mappings file");
		
        //Finally, write
        FileWriter mpw = new FileWriter(mappings_file);
        BufferedWriter out = new BufferedWriter(mpw);
		
		for(org.correttouml.uml.diagrams.classdiagram.Class c: this.mades_model.getClassdiagram().getClasses()){
			for(org.correttouml.uml.diagrams.statediagram.StateDiagram std: c.getStateDiagrams()){
				for (Transition t : std.getTransitions()){
					for (Object obj : c.getObjects())
						out.write(new STransition(t).getPredicate(obj).getPredicateName() + "," + Utility.prdIDtoUMLID(t.getUMLId())+"\n");
				}
				for(org.correttouml.uml.diagrams.statediagram.State s: std.getStates()){
					for(org.correttouml.uml.diagrams.classdiagram.Object obj: c.getObjects()){
						SState ss=new org.correttouml.uml2zot.semantics.statediagram.SState(s);
						Predicate p=ss.getPredicate(obj);
						out.write(p.getPredicateName() + "," + Utility.prdIDtoUMLID(s.getUMLId())+"\n");
						
					}
				}
			}
		}
		for (SequenceDiagram sd : mades_model.getSequenceDiagrams()){
			SSequenceDiagram ssd = new SSequenceDiagram(sd);
			out.write(ssd.getPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(sd.getUMLId())+"\n");
			out.write(ssd.getPredicate().getStartPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(sd.getUMLId())+"\n");
			out.write(ssd.getPredicate().getEndPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(sd.getUMLId())+"\n");
			for (Message m : sd.getMessages()){
				SMessage sm = new SMessage(m);
				out.write(sm.getPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(m.getUMLId())+"\n");
				out.write(sm.getPredicate().getStartPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(m.getUMLId())+"\n");
				out.write(sm.getPredicate().getEndPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(m.getUMLId())+"\n");
			}
		}
		
		for (AD ad : mades_model.getADs()){
//			SAD sad = new SAD(ad);
//			out.write(sad.getPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(ad.getUMLId())+"\n");
			for (SequenceDiagramNode sdn : ad.getSequenceDiagramNodes()){
				SSequenceDiagramNode ssdn = new SSequenceDiagramNode(sdn, ad);
				out.write(ssdn.getPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(sdn.getUMLId())+"\n");
				out.write(ssdn.getPredicate().getStartPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(sdn.getUMLId())+"\n");
				out.write(ssdn.getPredicate().getEndPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(sdn.getUMLId())+"\n");
			}
			for (ControlFlow cf : ad.getControlFlows()){
				SControlFlow scf = new SControlFlow(cf, ad);
				out.write(scf.getPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(cf.getUMLId())+"\n");
			}
			for (InterruptibleRegion ir : ad.getInterruptibleRegions()){
				out.write(new SInterruptibleRegion(ir).getPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(ir.getUMLId())+"\n");
				out.write(new SInterruptibleRegion(ir).getPredicate().getStartPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(ir.getUMLId())+"\n");
				out.write(new SInterruptibleRegion(ir).getPredicate().getEndPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(ir.getUMLId())+"\n");
			}
		}
		
		for (IOD iod : mades_model.getIODs()){
//			SIOD siod = new SIOD(iod);
//			out.write(siod.getPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(iod.getUMLId())+"\n");
			for (SequenceDiagramNode sdn : iod.getSequenceDiagramNodes()){
				SSequenceDiagramNode ssdn = new SSequenceDiagramNode(sdn, iod);
				out.write(ssdn.getPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(sdn.getUMLId())+"\n");
				out.write(ssdn.getPredicate().getStartPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(sdn.getUMLId())+"\n");
				out.write(ssdn.getPredicate().getEndPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(sdn.getUMLId())+"\n");
			}
			for (ControlFlow cf : iod.getControlFlows()){
				SControlFlow scf = new SControlFlow(cf, iod);
				out.write(scf.getPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(cf.getUMLId())+"\n");
			}
			for (InterruptibleRegion ir : iod.getInterruptibleRegions()){
				out.write(new SInterruptibleRegion(ir).getPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(ir.getUMLId())+"\n");
				out.write(new SInterruptibleRegion(ir).getPredicate().getStartPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(ir.getUMLId())+"\n");
				out.write(new SInterruptibleRegion(ir).getPredicate().getEndPredicate().getPredicateName() + "," + Utility.prdIDtoUMLID(ir.getUMLId())+"\n");
			}
		}
		
		
		out.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void generateZOTFile(String zot_file){		
		LOGGER.info("Building the ZOT file");
		ZOTConf zot=new ZOTConf(40, "ae2bvzot", "z3", this.s_mades_model);
		try {
			zot.writeVerificationZOTFile(zot_file, getModelStatistics());
			LOGGER.info("The ZOT file is created");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void generateZOTFile(int timebound, String plugin, String solver, String zot_file){		
		LOGGER.info("Building the ZOT file");
		ZOTConf zot=new ZOTConf(timebound, plugin, solver, this.s_mades_model);
		try {
			zot.writeVerificationZOTFile(zot_file, getModelStatistics());
			LOGGER.info("The ZOT file is created");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	

}
