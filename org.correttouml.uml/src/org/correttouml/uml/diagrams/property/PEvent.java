package org.correttouml.uml.diagrams.property;


import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.events.Event;
import org.correttouml.uml.diagrams.events.EventFactory;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.helpers.EventParser;
import org.correttouml.uml.helpers.UML2ModelHelper;
import org.eclipse.uml2.uml.NamedElement;
import org.eclipse.uml2.uml.Stereotype;

public class PEvent implements PBooleanFormulae {

	private NamedElement uml_element;

	public PEvent(NamedElement uml_element) {
		this.uml_element=uml_element;
	}
	
	public Event getEvent() {
		Stereotype s=UML2ModelHelper.getStereotype(uml_element, "Event");
		String event_exp=(String)uml_element.getValue(s, "event");
		EventParser parser=new EventParser(event_exp);
		return EventFactory.getInstance(this.getExpressionContext(), parser.getEventName(), parser.getEventExtension());
	}
	
	public ExpressionContext getExpressionContext(){
		Stereotype s=UML2ModelHelper.getStereotype(uml_element, "Event");
		org.eclipse.uml2.uml.NamedElement ne=(org.eclipse.uml2.uml.NamedElement)uml_element.getValue(s, "context");
		return PExpressionContextFactory.getInstance(ne);
	}
	
	public Object getObject() {
		Stereotype s=UML2ModelHelper.getStereotype(uml_element, "Event");
		org.eclipse.uml2.uml.InstanceSpecification obj=(org.eclipse.uml2.uml.InstanceSpecification)uml_element.getValue(s, "object");
		return new Object(obj);
	}

	@Override
	public String getName() {
		//no one should ask...
		return null;
	}



}
