/*
 * generated by Xtext
 */
package org.correttouml.grammars.parser.antlr;

import java.io.InputStream;
import org.eclipse.xtext.parser.antlr.IAntlrTokenFileProvider;

public class AssignmentsAntlrTokenFileProvider implements IAntlrTokenFileProvider {
	
	public InputStream getAntlrTokenFile() {
		ClassLoader classLoader = getClass().getClassLoader();
    	return classLoader.getResourceAsStream("org/correttouml/grammars/parser/antlr/internal/InternalAssignments.tokens");
	}
}
