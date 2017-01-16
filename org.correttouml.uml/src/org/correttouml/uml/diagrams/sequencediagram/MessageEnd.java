package org.correttouml.uml.diagrams.sequencediagram;


import org.correttouml.uml.MadesModel;
import org.correttouml.uml.diagrams.events.Event;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.diagrams.statediagram.actions.Action;
import org.correttouml.uml.diagrams.statediagram.actions.ActionFactory;
import org.correttouml.uml.helpers.StDTransitionsParser;
import org.correttouml.uml2zot.UML2Zot;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.uml2.uml.MessageOccurrenceSpecification;

public class MessageEnd implements InteractionFragment, Event, ExpressionContext {

	private MessageOccurrenceSpecification uml_mof;
	
	public MessageEnd(MessageOccurrenceSpecification mof) {
		this.uml_mof=mof;
	}

	public Message getMessage() {
		return new Message(uml_mof.getMessage());
	}
	
	public Lifeline getLifeline(){
		org.eclipse.uml2.uml.Lifeline l=uml_mof.getCovereds().get(0);
		return new Lifeline(l);
	}
	
	public Action getAssignmentAction(){
		StDTransitionsParser p= new StDTransitionsParser();
		//<Result of operation> e.g. when the name of the reply (synchronous) message is atr1 = result. 
		//In this case, in the formal model atr1 will be assigned to a nondeterministic value.
		//What exactly happens is that at the time of assignment atr1=atr1 is asserted and atr
		//keeps its value at other time instants.
		String mName = getMessage().getName();
		mName = mName.toLowerCase().replace(" ", "");
		if (mName.endsWith("=result")){
			mName = mName.substring(0, mName.length() - "=result".length());
			p.parse("/" + mName + " = " + mName);
			return ActionFactory.getInstance(p.getAction(), this, getLifeline().getObject()).get(0);
		}
		//<Result of operation>
		
		//<Getter operation> e.g. when the name of the reply (synchronous) message is atr1 = atr2. 
		p.parse("/" + getMessage().getName());
		return ActionFactory.getInstance(p.getAction(), this, getLifeline().getObject()).get(0);
		//</Getter operation>
	}

	@Override
	public MadesModel getMadesModel() {
		return null;
	}

	@Override
	public String getUMLId() {
		String id=((XMLResource) this.uml_mof.eResource()).getID(this.uml_mof);
		return UML2Zot.Utility.umlIDtoPrdID(id);
	}

}
