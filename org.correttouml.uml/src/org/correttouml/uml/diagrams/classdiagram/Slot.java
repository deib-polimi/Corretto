package org.correttouml.uml.diagrams.classdiagram;

import org.correttouml.uml.diagrams.expressions.ValueSpecification;

public class Slot {

	private org.eclipse.uml2.uml.Slot uml_slot;
	
	public Slot(org.eclipse.uml2.uml.Slot uml_slot){
		this.uml_slot= uml_slot;
	}
	
	/**
	 * [corretto-man] To assign a default value to a variable it needs a slot in Object Diagram.
	 * @return Default value of the slot.
	 */
	public ValueSpecification getValueSpecification() {
		org.eclipse.uml2.uml.ValueSpecification value = null;
		if (uml_slot.getValues().size() > 0)
			value = uml_slot.getValues().get(0);
		else
			return null;
		return new ValueSpecification(value);
	}
	
}
