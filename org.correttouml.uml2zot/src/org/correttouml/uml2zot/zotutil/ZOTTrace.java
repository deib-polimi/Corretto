package org.correttouml.uml2zot.zotutil;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;

public class ZOTTrace {

	private static final Logger LOGGER = Logger.getLogger(ZOTTrace.class); 
	
	private ArrayList<TimeInstant> trace=new ArrayList<TimeInstant>();
	
	public void readContent(String zot_trace_file) throws IOException{
		File trace_file=new File(zot_trace_file);
		FileReader file_reader=new FileReader(trace_file);
		BufferedReader reader=new BufferedReader(file_reader);
		
		//Get the first line
		String line=reader.readLine();
		do{
			
			String prec="";
			//Read until you find the first non-empty time instant
			while(line!=null && line.startsWith("---")){
				if(prec.startsWith("---")){
					//l'istante di tempo precedente era vuoto
					//e lo devo aggiungere alla mia lista
					trace.add(new TimeInstant());
				}
				
				//salvo questa linea prima della prossima per individuare gli istanti successivi vuoti
				prec=line;
				//leggi la prossima linea
				line=reader.readLine();
			}
			//Either the file is finished, either we are at the next time instant
			//If the file is finished, just get out of here
			if(line==null) break;
			
			//Ready to get this time instant
			TimeInstant t=new TimeInstant();
			do{
				t.addPredicate(new Predicate(line.trim()));
				line=reader.readLine();
			}while(line!=null && !line.startsWith("---"));
			
			//Store this time instant
			trace.add(t);
			
			//Either we have finished the file, either we hit a new time instant
		}while(line!=null);
		
		LOGGER.info("La traccia letta contiene istanti di tempo = " + trace.size());
		
		reader.close();
		file_reader.close();
	}
	
	public int findTrace(List<TimeInstant> my_trace){
		
		for(int i=0; i<this.trace.size()-my_trace.size(); i++){
			//If you find a match, start the inner search
			//LOGGER.info("Check trace at time " + i);
			if(this.isSubset(my_trace.get(0), this.trace.get(i))){
				//LOGGER.info("There is a potential candidate at time " + i);
				int j=i+1, my_index=1;
				for(; j<this.trace.size()-my_trace.size() && my_index<my_trace.size() &&  this.isSubset(my_trace.get(my_index), this.trace.get(j)) ; j++, my_index++);

				//Successfull match
				if(j<this.trace.size()-my_trace.size() && my_index>=my_trace.size()){
					LOGGER.info("Match found at time instant " + i);
					return j;
				}
				//Match failed
				else{
					//LOGGER.info("Candidate failed at time " + j);
					continue;
				}
			}
		}
		LOGGER.info("Trace not found");
		return -1;		
	}
	
	/** The set of predicates in t1 are included in the set of predicates of t2 */
	private boolean isSubset(TimeInstant t1, TimeInstant t2){
		return t2.getPredicates().containsAll(t1.getPredicates());
	}

	
}
