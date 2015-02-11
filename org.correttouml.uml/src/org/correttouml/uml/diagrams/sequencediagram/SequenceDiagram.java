package org.correttouml.uml.diagrams.sequencediagram;


import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.correttouml.uml.MadesModel;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.diagrams.property.PTermElement;
import org.correttouml.uml.diagrams.timeconstraints.TimeConstraint;
import org.correttouml.uml.helpers.BooleanExpressionsParser;
import org.correttouml.uml.helpers.UML2ModelHelper;
import org.eclipse.uml2.uml.Comment;
import org.eclipse.uml2.uml.ExecutionOccurrenceSpecification;
import org.eclipse.uml2.uml.Interaction;

public class SequenceDiagram implements ExpressionContext, PTermElement{

	private org.eclipse.uml2.uml.Interaction uml_interaction;

	public SequenceDiagram(Interaction e) {
		this.uml_interaction=e;
	}

	public ArrayList<Lifeline> getLifelines(){
		ArrayList<Lifeline> lifelines = new ArrayList<Lifeline>();
		for(org.eclipse.uml2.uml.Lifeline l: uml_interaction.getLifelines()){
				lifelines.add(new Lifeline(l));
		}
		return lifelines;
	}
	
	public Lifeline getLifeline(int index){
		return getLifelines().get(index);
	}
	
	
/* Before SD_CF
 * public Set<Lifeline> getLifelines(){
		Set<Lifeline> lifelines=new HashSet<Lifeline>();
		for(org.eclipse.uml2.uml.Lifeline l: uml_interaction.getLifelines()){
			lifelines.add(new Lifeline(l));
		}
		return lifelines;
	}
 */
	
	public String getName() {
		return uml_interaction.getName();
	}

	public Set<Message> getMessages() {
		Set<Message> messages=new HashSet<Message>();
		for(org.eclipse.uml2.uml.Message m: this.uml_interaction.getMessages()){
			messages.add(new Message(m));
		}
		return messages;
	}

	public ArrayList<CombinedFragment> getCombinedFragments() {
		ArrayList<CombinedFragment> combinedfragments = new ArrayList<CombinedFragment>();
		for (org.eclipse.uml2.uml.InteractionFragment sdif : uml_interaction.getFragments()) {
			if (sdif instanceof org.eclipse.uml2.uml.CombinedFragment)
				combinedfragments.add(new CombinedFragment((org.eclipse.uml2.uml.CombinedFragment)sdif));
		}
		return combinedfragments;
	}
	
	public Set<ExecutionOccurrence> getExecutionOccurrences() {
		Set<ExecutionOccurrence> exoccs=new HashSet<ExecutionOccurrence>();
		for(org.eclipse.uml2.uml.Lifeline l: this.uml_interaction.getLifelines()){
			for(org.eclipse.uml2.uml.InteractionFragment irf: l.getCoveredBys()){
				if(irf instanceof ExecutionOccurrenceSpecification){
					exoccs.add(new ExecutionOccurrence(((ExecutionOccurrenceSpecification) irf).getExecution()));
				}
			}
		}
		return exoccs;
	}
	
	public Lifeline findLifeline(String name){
		for(Lifeline l: this.getLifelines()){
			if(l.getName().equals(name)){
				return l;
			}
		}
		return null;
	}
	
	public Set<SequenceDiagramParameter> getSequenceDiagramParameters() {
		Set<SequenceDiagramParameter> params=new HashSet<SequenceDiagramParameter>();
		for(org.eclipse.uml2.uml.Parameter p: this.uml_interaction.getOwnedParameters()){
			params.add(new SequenceDiagramParameter(p));
		}
		return params;
	}
	
	public Set<TimeConstraint> getTimeConstraints() {
		Set<TimeConstraint> tcs=new HashSet<TimeConstraint>();
		
		for(Comment c: this.uml_interaction.getOwnedComments()){
			if(UML2ModelHelper.hasStereotype(c, "TimeConstraint")){
				org.correttouml.grammars.booleanExpressions.Model m=BooleanExpressionsParser.parse(c.getBody());
				org.correttouml.grammars.booleanExpressions.TimeConstraint tc=(org.correttouml.grammars.booleanExpressions.TimeConstraint)m.getExpression().getBooleanTerm();
				tcs.add(new TimeConstraint(tc, this));
			}
			
		}
		return tcs;
	}
	
	public String [] getConfig() {
		String [] strConfig = new String[3];
		for(Comment c: this.uml_interaction.getOwnedComments()){
			if(!UML2ModelHelper.hasStereotype(c, "TimeConstraint")){
				String [] cText = c.getBody().split("\n");
				for(String s :cText){
					s=s.replace(" ", "");
					String [] cPar = s.split(":");
					cPar[1]=cPar[1].replaceAll("\r", "");
					if (cPar[0].toLowerCase().equals("combine"))
						strConfig[0] = cPar[1].toUpperCase();
					if (cPar[0].toLowerCase().equals("loop"))
						strConfig[1] = cPar[1].toUpperCase();
					if (cPar[0].toLowerCase().equals("choice"))
						strConfig[2] = cPar[1].toUpperCase();
				}
				return strConfig;
			}
		}
		return null;
	}
	
	@Override
	public MadesModel getMadesModel() {
		return new MadesModel(this.uml_interaction.getModel());
	}
	
	@Override
	public boolean equals(java.lang.Object object){
		if(object instanceof SequenceDiagram){
			SequenceDiagram other=(SequenceDiagram) object;
			return other.uml_interaction.equals(this.uml_interaction);
		}
		return false;
	}
	
	@Override
	public int hashCode(){
		return this.uml_interaction.hashCode();
	}



	
}
