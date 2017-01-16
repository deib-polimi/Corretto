package org.correttouml.uml2zot.semantics;

import java.io.IOException;

import org.correttouml.uml.MadesModel;
import org.correttouml.uml.diagrams.iod.IOD;
import org.correttouml.uml.diagrams.sequencediagram.SequenceDiagram;
import org.correttouml.uml2zot.semantics.classdiagram.SClassDiagram;
import org.correttouml.uml2zot.semantics.iod.SIOD;
import org.correttouml.uml2zot.semantics.sequencediagram.*;
import org.correttouml.uml2zot.semantics.util.bool.And;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.fun.*;
import org.correttouml.uml2zot.semantics.util.trio.AlwF_e;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.correttouml.uml2zot.semantics.util.trio.TrioConstant;
import org.correttouml.uml2zot.semantics.util.trio.Yesterday;


public class SMadesModel {

	public static final Predicate SYSTEMSTART = new Predicate("BigBang");
//	// Set the default configuration that is Combine:SYNC Loop:SYNC Choice:ND
//	// Details can be found in the paper entitled "Flexible Modular Formalization of UML Sequence Diagrams" http://dl.acm.org/citation.cfm?id=2593492
//	
//	public static Config staticConfig = new Config(ConfigCombine.SYNC, ConfigCombine.SYNC, ConfigWhat.NONDETERMINISTICALLY);
	/** The semantic decorators */
	private MadesModel mm;
	
	/** Takes the MADES model to which we are giving semantics */
	public SMadesModel(MadesModel mm){
		this.mm=mm;
	}
	
    public String getSemantics() throws IOException {
        String s = "";
        //Class diagram semantics
        s=s+printSeparator("CLASS DIAGRAM");
        s = s + new SClassDiagram(this.mm.getClassdiagram()).getSemantics();
        
        //Sequence Diagram semantics
        s=s+printSeparator("SEQUENCE DIAGRAMS");
        for(SequenceDiagram sd: this.mm.getSequenceDiagrams()){
        	s=s+printSeparator("SD " + sd.getName());
        	s=s+new SSequenceDiagram(sd).getSemantics();
        }
        
        //IODs semantics
        s=s+printSeparator("IODs");
        for(IOD iod: this.mm.getIODs()){
        	s=s+printSeparatorSmall("IOD " + iod.getName());
        	s=s+new SIOD(iod).getSemantics();
        }
        
        s = s + "\n";
        return s;
    }

    public static String printSeparator(String name) {
        return ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n"
                + ";; " + name + " \n"
                + ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n";
    }
    
    public static String printSeparatorSmall(String name) {
        return printSeparatorSmall(name, true);
    }
    
    /** Print a small separator. If we use false, we do not add a space before */
    public static String printSeparatorSmall(String name, boolean space) {
        String r="";
        if(space) r=r+"\n";
        r=r+";;"+name+"\n";
    	return r;
    }

	public String getInitAxiom() {
		String sem="";
		
		//The MADESSYSTEMSTART predicate holds only on the first time instant
		sem=sem+new Yesterday(new And(SMadesModel.SYSTEMSTART, new AlwF_e(new Not(SMadesModel.SYSTEMSTART))))+"\n";
		
		//Class Diagram Initialization
        sem=sem+printSeparator("CLASS DIAGRAM INITIALIZATION");
        sem = sem + new SClassDiagram(this.mm.getClassdiagram()).getInitializationSemantics();
		
		return sem;
	}
	
	public String getDefun() {
		String s = new Borders().getDefun() +"\n" +
		new OrderCon().getDefun() +"\n" +
		new OrderGCon().getDefun() +"\n" +
		new OrderGnoCon().getDefun() +"\n" +
		new OrdernoCon().getDefun() +"\n" +
		new SomFIn_i().getDefun() +"\n" +
		new SomPIn_i().getDefun() +"\n" +
		new OrderConMonoD().getDefun() +"\n" +
		new OrderGConMonoD().getDefun() +"\n" +
		new OrderGnoConMonoD().getDefun() +"\n" +
		new OrdernoConMonoD().getDefun() +"\n"+
		new OrderConMonoDRev().getDefun() +"\n" +
		new OrderGConMonoDRev().getDefun() +"\n" +
		new OrderGnoConMonoDRev().getDefun() +"\n" +
		new OrdernoConMonoDRev().getDefun() +"\n";
		return s;
	}

	public String getDeclarations() {
	    //Predicate based modular semantics
        String s ="";
        s += ";; Variables:\n";
		s += getVariableDeclarationsForae2zot();
        s += ";; Constants:\n";
        s += getConstants();
		s += ";; <Predicate based modular semantics>\n";
		s += getDefun();
		s += ";; </Predicate based modular semantics>\n";
        return s;
	}
	
	public String getConstants() {
		String s = "";
		//E.g. (defvar SD1_Loop_Min 2)
		for (TrioConstant tc:TrioConstant.instances)
			s += "(defvar " + tc.getConstantName() + " " + tc.getValue() + ")\n"; 
		return s;
	}
	
	public String getVariableDeclarationsForae2zot() {
		String s="";
		//E.g. (define-tvar SD1_Loop_C *int*)
		for(org.correttouml.uml2zot.semantics.util.trio.TrioVar t: org.correttouml.uml2zot.semantics.util.trio.TrioVar.instances){
			if(t.getType()==org.correttouml.uml.diagrams.expressions.PrimitiveType.INTEGER)
				s = s + "(define-tvar " + t.getVariableName() + " *int*)" + "\n";
			else if(t.getType()==org.correttouml.uml.diagrams.expressions.PrimitiveType.REAL)
				s = s + "(define-tvar " + t.getVariableName() + " *real*)" + "\n";
		}
		return s;
	}
	
	public boolean hasProperty() throws Exception {
		return this.mm.hasProperty();
	}

	public BooleanFormulae getProperty() throws Exception {
		return mm.getProperty();
	}    
	
}
