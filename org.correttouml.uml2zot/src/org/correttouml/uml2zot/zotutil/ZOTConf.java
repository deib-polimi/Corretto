package org.correttouml.uml2zot.zotutil;


import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashSet;

import org.correttouml.uml.MadesModel;
import org.correttouml.uml2zot.UML2Zot;
import org.correttouml.uml2zot.semantics.SMadesModel;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;

/**
 *
 * @author motta
 */
public class ZOTConf {

    private HashSet<String> satsolvers = new HashSet<String>();
    private HashSet<String> smtsolvers = new HashSet<String>();
    private HashSet<String> zotplugins = new HashSet<String>();
    //Settings
    private SMadesModel model;
    private int timebound;
    private String plugin;
    private String solver;

    private void declareAvailablePlugins() {
        //supported sat solvers
        satsolvers.add("minisat");
        satsolvers.add("zchaff");
        satsolvers.add("picosat");

        //supported smt solvers
        smtsolvers.add("z3");
        smtsolvers.add("yices");
        smtsolvers.add("mathsat");

        //supported plugins
        zotplugins.add("ae2zot");
        zotplugins.add("eezot");
        zotplugins.add("meezot");
        zotplugins.add("smteezot");
        zotplugins.add("smtmeezot");
    }

    public ZOTConf(int timebound, String plugin, String solver, SMadesModel model) {
        this.model = model;
        this.solver=solver;
        this.plugin=plugin;
        this.timebound=timebound;
        declareAvailablePlugins();
    }
    
    public void writeVerificationZOTFile(String filename, String modelStats) throws IOException, Exception {
        String sem=model.getSemantics();
    	String loadplugin = "(asdf:operate 'asdf:load-op '" + plugin + ")\n";
        String loadtrioutils = "(use-package :trio-utils)\n";
        String loadsatsolverinterface = "";
        String definetimebound = "(defvar TSPACE " + timebound + ")\n";
        BooleanFormulae property_formulae=null;
        if (model.hasProperty()) property_formulae=model.getProperty();
        String ae2zotVariables = model.getVariableDeclarationsForae2zot();
        String definemodel = "(defvar AX1 \n (&& \n" + sem + "\n)) ;;END AX1 \n\n\n";
        String smtsolverparameter = "";

        if (!zotplugins.contains(plugin)) {
            throw new Exception("ERROR in ZotConf: the specified zot plugin is not supported");
        }

        //use another sat solver, not minisat
        if (solver.equals("minisat")) {
            //default solver, nothing to do
        } else if (!solver.equals("minisat") && satsolvers.contains(solver)) {
            //setup the optional sat solver interface
            loadsatsolverinterface = "(setq sat-interface:*zot-solver* :" + solver + ")\n";
        } else if (smtsolvers.contains(solver)) {
            //setup the smt solver parameter in the running command
            smtsolverparameter = ":smt-solver :" + solver + " ";
            if (plugin.equals("ae2zot")) {
                smtsolverparameter = smtsolverparameter + ":logic :QF_UFLIA ";
            }
        } else {
            throw new Exception("ERROR in ZotConf: the specified solver is not supported");
        }

        String property = "";
        if (model.hasProperty()) {
            property = ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n"
                    + ";;; PROPERTIES\n"
                    + ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n"
                    + "(defvar Q1 " + property_formulae + " )\n\n\n";
        }
        String initaxiom = ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n"
                + ";;; INIT AXIOM\n"
                + ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n"
                + "(defvar initAx (&& \n" + model.getInitAxiom() + "\n) )\n\n\n";

        String thesystem = ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n"
                + ";;; THE SYSTEM\n"
                + ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n";
        if (model.hasProperty()) {
            thesystem = thesystem + "(defvar the_system  (&& (yesterday (alwf AX1)) (!!(yesterday (alwf Q1))) initAx ))";
        } else {
            thesystem = thesystem + "(defvar the_system  (&& (yesterday (alwf AX1)) initAx ))";
        }
        thesystem = thesystem + "\n\n\n" + "(" + plugin + ":zot TSPACE (&& the_system) " + smtsolverparameter + " )";
        int arithVarsN=0;
        for(org.correttouml.uml2zot.semantics.util.trio.TrioVar t: org.correttouml.uml2zot.semantics.util.trio.TrioVar.instances){
			arithVarsN++;
		}
        String zot = modelStats + ";  " + Integer.toString(arithVarsN) + "\t:Number of arithmetic variables\n"
                + ""
                + loadplugin
                + loadtrioutils
                + loadsatsolverinterface
                + ""
                + definetimebound
                + ""
                + ae2zotVariables
                + ""
                + definemodel
                + property
                + initaxiom
                + thesystem;
        
        //Finally, write
        FileWriter zotfile = new FileWriter(filename);
        BufferedWriter out = new BufferedWriter(zotfile);
        out.write(zot);
        out.close();
    }

}
