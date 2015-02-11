package org.correttouml.uml2zot.semantics.classdiagram;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.classdiagram.OperationParameter;
import org.correttouml.uml.diagrams.expressions.PrimitiveType;
import org.correttouml.uml2zot.semantics.expressions.SVariable;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;
import org.correttouml.uml2zot.semantics.util.trio.TrioVar;


public class SOperationParameter implements SVariable{

	private OperationParameter mades_operationparam;

	public SOperationParameter(OperationParameter mades_operationparam){
		this.mades_operationparam=mades_operationparam;
	}

	@Override
	public BooleanFormulae getPredicate(Object... obj) {
        if(mades_operationparam.getType() == PrimitiveType.INTEGER || mades_operationparam.getType()==PrimitiveType.REAL)
            return new TrioVar("OBJ"+obj[0].getName()+"PARAM"+mades_operationparam.getName(), mades_operationparam.getType());
        else if(mades_operationparam.getType() == PrimitiveType.BOOLEAN){
            return new Predicate("OBJ"+obj[0].getName()+"PARAM"+mades_operationparam.getName());
        }
		return null;
	}
	
	
	
}
