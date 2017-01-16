package org.correttouml.uml2zot.tests.helpers;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.correttouml.uml2zot.tests.papyrus.PapyrusModels;
import org.correttouml.uml2zot.zotutil.TimeInstant;
import org.correttouml.uml2zot.zotutil.ZOTTrace;

public class TestHelper {

	private static final Logger LOGGER = Logger.getLogger(PapyrusModels.class);
	private String TMP_DIR; 
	private String OUTPUT_DIR;
	private String ZOT_MODEL_FILE="zot_model.lisp";
	private String ZOT_OUTPUT_FILE="zot_output.txt";
	private String ZOT_TRACE_FILE="output.hist.txt";
	private String ZOT_MAPPINGS_FILE="model.mappings";
	
	/** Create a test helper that will use the working_dir as a tmp dir for his job */
	public TestHelper(String output_dir,String tmp_dir){
		this.TMP_DIR=tmp_dir;
		this.OUTPUT_DIR=output_dir;
	}
	
	public void verifyZOTFile() throws IOException, InterruptedException{
		//TODO Can we do better?
		Process proc=null;
		File wd=new File(this.TMP_DIR);
		String[] cmd = {"/bin/bash", "-c", "zot "+this.ZOT_MODEL_FILE+" > "+this.ZOT_OUTPUT_FILE};
		proc = Runtime.getRuntime().exec(cmd, null, wd);
		LOGGER.info("Waiting for ZOT to finish");
		proc.waitFor();
		LOGGER.info("ZOT to finished");
	}
	
	public boolean isZOTFileValid() throws IOException{
		File zot_file=new File(this.TMP_DIR+"/"+this.ZOT_MODEL_FILE);
		BufferedReader br=new BufferedReader(new FileReader(zot_file));
		String line="";
		while((line=br.readLine())!=null){
			if(line.contains("null")){
				br.close();
				return false;
			}
		}
		br.close();
		return true;
	}
	
	public void readCounterExample(List<TimeInstant> my_trace) throws IOException{
		LOGGER.info("There is a counterexample, let me find it");
		ZOTTrace z=new ZOTTrace();
		z.readContent(this.TMP_DIR+"/"+this.ZOT_TRACE_FILE);
		z.findTrace(my_trace);
	}
	
	public void cleanUp(){
		
		File model = new File(this.TMP_DIR+"/"+this.ZOT_MODEL_FILE);
		File output = new File(this.TMP_DIR+"/"+this.ZOT_OUTPUT_FILE);
		File mappings = new File(this.TMP_DIR+"/"+this.ZOT_MAPPINGS_FILE);
		File destinationDir=new File(this.OUTPUT_DIR);
		
		try {
			FileUtils.copyFileToDirectory(model, destinationDir);
		} catch (IOException e) {
			LOGGER.warn("Moving "+model.getName()+" to output folder failed");
		}
		try {
			FileUtils.copyFileToDirectory(output, destinationDir);
		} catch (IOException e) {
			LOGGER.warn("Moving "+output.getName()+" to output folder failed");
		}
		try {
			FileUtils.copyFileToDirectory(mappings, destinationDir);
		} catch (IOException e) {
			LOGGER.warn("Moving "+mappings.getName()+" to output folder failed");
			e.printStackTrace();
		}
//		LOGGER.warn("The Zot model is generated.");
	}
	
	public boolean isUnsat() throws Exception{
		File f=new File(this.TMP_DIR+"/"+this.ZOT_OUTPUT_FILE);
		BufferedReader reader = new BufferedReader(new FileReader(f));
		//read the file contents into a String:
		String s="", line=null;
		while ( (line = reader.readLine()) != null) s=s+line;
		reader.close();
		if(s.indexOf("---UNSAT---")!=-1) return true;
		return false;
	}
	
}
