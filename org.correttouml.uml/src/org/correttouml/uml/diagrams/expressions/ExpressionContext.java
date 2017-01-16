package org.correttouml.uml.diagrams.expressions;

import org.correttouml.uml.MadesModel;

/**
 * The context in which a certain expression is parsed
 * Useful to determine what variables are in a certain expression
 * (sd parameter?, attribute?)
 * @author motta
 *
 */
public interface ExpressionContext {
	public MadesModel getMadesModel();
	public String getUMLId();
}
