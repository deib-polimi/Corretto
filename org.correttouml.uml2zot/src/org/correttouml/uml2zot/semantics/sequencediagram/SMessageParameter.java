package org.correttouml.uml2zot.semantics.sequencediagram;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.sequencediagram.MessageParameter;
import org.correttouml.uml2zot.semantics.classdiagram.SOperationParameter;
import org.correttouml.uml2zot.semantics.expressions.SVariableFactory;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Implies;
import org.correttouml.uml2zot.semantics.util.trio.EQ;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SMessageParameter {

	private MessageParameter mades_mp;

	public SMessageParameter(MessageParameter mp) {
		this.mades_mp=mp;
	}

	public String getSemantics(Object object) {
        String sem = "";
        Predicate message_end=new SMessageEnd(this.mades_mp.getMessage().getMessageEndEvent()).getPredicate();
        BooleanFormulae var=SVariableFactory.getInstance(this.mades_mp.getVariable()).getPredicate(object);
        BooleanFormulae operationpar=new SOperationParameter(this.mades_mp.getOperationParameter()).getPredicate(object);
        
        /*@AXIOM
         * \begin{align}
         * The parameter of a message holds at the time of the message end
         * messageEnd \Rightarrow messageParameter = operationParameter
         * \nonumber
         * \end{align}
         */
        sem = sem + new Implies(message_end ,new EQ(var, operationpar));
        return sem;
	}

}
