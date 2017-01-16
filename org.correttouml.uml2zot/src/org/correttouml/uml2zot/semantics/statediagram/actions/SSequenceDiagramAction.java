package org.correttouml.uml2zot.semantics.statediagram.actions;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.diagrams.statediagram.actions.SequenceDiagramAction;
import org.correttouml.uml2zot.semantics.sequencediagram.SSequenceDiagram;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SSequenceDiagramAction implements SAction{

	private SequenceDiagramAction mades_sdaction;

	public SSequenceDiagramAction(SequenceDiagramAction sdaction){
		this.mades_sdaction=sdaction;
	}
	
	@Override
	public Predicate getPredicate(Object... optObjects){
		return new SSequenceDiagram(this.mades_sdaction.getSequenceDiagram()).getPredicate().getStartPredicate();
	}

	@Override
	public String getSemantics(ExpressionContext context,
			Object... optObject) {
		// No need for semantics here
		return null;
	}
	
}