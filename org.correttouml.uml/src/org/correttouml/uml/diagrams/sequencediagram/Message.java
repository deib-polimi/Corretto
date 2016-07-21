package org.correttouml.uml.diagrams.sequencediagram;


import java.util.ArrayList;
import java.util.List;

import org.correttouml.uml.MadesModel;
import org.correttouml.uml.diagrams.classdiagram.Clock;
import org.correttouml.uml.diagrams.classdiagram.Operation;
import org.correttouml.uml.diagrams.property.PTermElement;
import org.correttouml.uml.helpers.UML2ModelHelper;
import org.correttouml.uml2zot.UML2Zot;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.uml2.uml.InstanceSpecification;
import org.eclipse.uml2.uml.Interaction;
import org.eclipse.uml2.uml.MessageOccurrenceSpecification;
import org.eclipse.uml2.uml.Stereotype;
import org.eclipse.uml2.uml.util.UMLUtil;

public class Message implements PTermElement {

	private org.eclipse.uml2.uml.Message uml_message;

	public Message(org.eclipse.uml2.uml.Message message) {
		this.uml_message=message;
	}
	
	public String getName(){
		return uml_message.getName();
	}

	public List<MessageParameter> getParameters() {
		List<MessageParameter> parameters=new ArrayList<MessageParameter>();
		for(org.eclipse.uml2.uml.ValueSpecification vs:this.uml_message.getArguments()){
			parameters.add(new MessageParameter(uml_message, vs));
		}
		return parameters;
	}

	public MessageEnd getMessageEndEvent() {
		MessageOccurrenceSpecification mos=(MessageOccurrenceSpecification)this.uml_message.getReceiveEvent();
		return new MessageEnd(mos);
	}
	
	public MessageStart getMessageStartEvent() {
		MessageOccurrenceSpecification mos=(MessageOccurrenceSpecification)this.uml_message.getSendEvent();
		return new MessageStart(mos);
	}

	public MessageType getMessageType() {
		if(this.getMessageStartEvent().getLifeline().equals(this.getMessageEndEvent().getLifeline())){
			return MessageType.RECURSIVE;
		}
		
		//TODO: Non so ancora come distinguere tra un messaggio orizzontale e uno obliquo
		return MessageType.INSTANTANEOUS;
	}
	
	public Operation getOperation(){
		return new Operation((org.eclipse.uml2.uml.Operation)uml_message.getSignature());
	}
	
	public SequenceDiagram getSequenceDiagram() {
		org.eclipse.uml2.uml.InteractionFragment tempif = (org.eclipse.uml2.uml.InteractionFragment)uml_message.getInteraction();
		while (tempif.getEnclosingInteraction() != null){
			tempif = tempif.getEnclosingInteraction();
		}
		return new SequenceDiagram((Interaction)tempif);
	}
	
//	public SequenceDiagram getSequenceDiagram() {
//		return new SequenceDiagram(this.uml_message.getInteraction());
//	}
	
	public boolean hasTimedEventStereotype() {
		return UML2ModelHelper.hasStereotype(this.uml_message, "TimedEvent");
	}
	
	public Clock getAssociatedClock() {
		Stereotype c=this.getTimedEventStereotype();
		//The "on" attribute is a <<clock>>, a stereotype
		EObject dynamicEObject=(EObject) this.uml_message.getValue(c, "on");
		//This gives me the instance specification to which it is applied
		InstanceSpecification clock=(InstanceSpecification) UMLUtil.getBaseElement(dynamicEObject);
		
		for(Clock ck: new MadesModel(this.uml_message.getModel()).getClassdiagram().getClocks()){
			if(ck.getName().equals(clock.getName())) return ck;
		}
		return null;
	}
	
	private Stereotype getTimedEventStereotype() {
		return UML2ModelHelper.getStereotype(this.uml_message, "TimedEvent");
	}
	
	@Override
	public boolean equals(java.lang.Object object){
		if(object instanceof Message){
			Message other=(Message) object;
			return other.uml_message.equals(this.uml_message);
		}
		return false;
	}
	
	@Override
	public int hashCode(){
		return this.uml_message.hashCode();
	}

	public String getUMLId() {
		String id=((XMLResource) this.uml_message.eResource()).getID(uml_message);
		return UML2Zot.Utility.umlIDtoPrdID(id);
	}
}
