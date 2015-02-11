package org.correttouml.uml2zot;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;

import org.apache.log4j.Logger;
import org.correttouml.uml.MadesModel;
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
			 * (a => ~A)
			 * (~ => ~~)
			 * (- => ~_)
			 */
			String prdID = "";
			for (char ch : umlID.toCharArray()) {
				if ((ch >= 'A' && ch <= 'Z') || ch == '_')
					prdID += ch;
				else if (ch >= 'a' && ch <= 'z')
					prdID += "~" + Character.toUpperCase(ch);
				else if (ch == '-')
					prdID += "~_";
				else if (ch == '~')
					prdID += "~~";
			}
			return prdID;
		}

		public static String prdIDtoUMLID(String prdID) {
			String umlID = "";
			for (int i = 0; i < prdID.length(); i++) {
				char ch = prdID.charAt(i);
				if (ch != '~')
					umlID += ch;
				else {
					if (prdID.charAt(i + 1) == '~')
						umlID += '~';
					else if (prdID.charAt(i + 1) == '_')
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

	/** The mades model generated from the UML model */
	private MadesModel mades_model;

	/** The model containing the semantics */
	private SMadesModel s_mades_model;

	public UML2Zot(String uml_model_file) {
		this.uml_model = UML2ModelHelper.loadModel(uml_model_file);
		this.mades_model = new MadesModel(uml_model);
		this.s_mades_model = new SMadesModel(mades_model);
	}

	public void generateMappingsFile(File mappings_file) {
		try {
			LOGGER.info("Generate mappings file");

			// Finally, write
			FileWriter mpw = new FileWriter(mappings_file);
			BufferedWriter out = new BufferedWriter(mpw);

			for (org.correttouml.uml.diagrams.classdiagram.Class c : this.mades_model
					.getClassdiagram().getClasses()) {
				for (org.correttouml.uml.diagrams.statediagram.StateDiagram std : c
						.getStateDiagrams()) {
					for (org.correttouml.uml.diagrams.statediagram.State s : std
							.getStates()) {
						for (org.correttouml.uml.diagrams.classdiagram.Object obj : c
								.getObjects()) {
							SState ss = new org.correttouml.uml2zot.semantics.statediagram.SState(
									s);
							Predicate p = ss.getPredicate(obj);
							out.write(p.getPredicateName() + "," + s.getUMLId()
									+ "\n");
						}
					}
				}
			}
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void generateZOTFile(String zot_file) {
		LOGGER.info("Build the ZOT file");
		ZOTConf zot = new ZOTConf(11, "ae2zot", "z3", this.s_mades_model);//////////////////////
		try {
			zot.writeVerificationZOTFile(zot_file);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void generateZOTFile(int timebound, String plugin, String solver,
			String zot_file) {
		LOGGER.info("Build the ZOT file");
		ZOTConf zot = new ZOTConf(timebound, plugin, solver, this.s_mades_model);
		try {
			zot.writeVerificationZOTFile(zot_file);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
