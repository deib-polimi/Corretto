package org.correttouml.uml;

import org.correttouml.uml.diagrams.activity.Activity;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;

/**
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class Comment implements ExpressionContext {
	
	private org.eclipse.uml2.uml.Comment uml_comment;
	private ExpressionContext context;
	
    public Comment(org.eclipse.uml2.uml.Comment uml_comment, ExpressionContext context){
    	this.uml_comment = uml_comment;
    	this.context = context;
    }
    
	@Override
	public MadesModel getMadesModel() {
		return new MadesModel(uml_comment.getModel());
	}

	@Override
	public String getUMLId() {
		return null;
	}
	
	public ExpressionContext getOwnerDiagram(){
		return context;
	}
}
