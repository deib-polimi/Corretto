package org.correttouml.uml2zot.semantics.statediagram.actions;

import org.correttouml.uml.diagrams.statediagram.actions.Action;
import org.correttouml.uml.diagrams.statediagram.actions.AssignmentAction;
import org.correttouml.uml.diagrams.statediagram.actions.CallAction;
import org.correttouml.uml.diagrams.statediagram.actions.SequenceDiagramAction;
import org.correttouml.uml.diagrams.statediagram.actions.SignalAction;

public class SActionFactory {

	public static SAction getInstance(Action mades_action){
		try {
			if(mades_action instanceof CallAction){
				return new SCallAction((CallAction)mades_action);
			}
			if(mades_action instanceof SequenceDiagramAction){
				return new SSequenceDiagramAction((SequenceDiagramAction) mades_action);
			}
			if(mades_action instanceof SignalAction){
				return new SSignalAction((SignalAction) mades_action);
			}
			if(mades_action instanceof AssignmentAction){
				return new SAssignmentAction((AssignmentAction) mades_action);
			}
			throw new Exception("Action not supported");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	

}
