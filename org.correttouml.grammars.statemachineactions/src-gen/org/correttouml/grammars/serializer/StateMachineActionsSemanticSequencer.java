package org.correttouml.grammars.serializer;

import com.google.inject.Inject;
import com.google.inject.Provider;
import org.correttouml.grammars.services.StateMachineActionsGrammarAccess;
import org.correttouml.grammars.stateMachineActions.Action;
import org.correttouml.grammars.stateMachineActions.Assignment;
import org.correttouml.grammars.stateMachineActions.EXPRESSION;
import org.correttouml.grammars.stateMachineActions.EventAction;
import org.correttouml.grammars.stateMachineActions.Model;
import org.correttouml.grammars.stateMachineActions.Parameters;
import org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage;
import org.correttouml.grammars.stateMachineActions.TERM;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.serializer.acceptor.ISemanticSequenceAcceptor;
import org.eclipse.xtext.serializer.acceptor.SequenceFeeder;
import org.eclipse.xtext.serializer.diagnostic.ISemanticSequencerDiagnosticProvider;
import org.eclipse.xtext.serializer.diagnostic.ISerializationDiagnostic.Acceptor;
import org.eclipse.xtext.serializer.sequencer.AbstractDelegatingSemanticSequencer;
import org.eclipse.xtext.serializer.sequencer.GenericSequencer;
import org.eclipse.xtext.serializer.sequencer.ISemanticNodeProvider.INodesForEObjectProvider;
import org.eclipse.xtext.serializer.sequencer.ISemanticSequencer;
import org.eclipse.xtext.serializer.sequencer.ITransientValueService;
import org.eclipse.xtext.serializer.sequencer.ITransientValueService.ValueTransient;

@SuppressWarnings("all")
public class StateMachineActionsSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private StateMachineActionsGrammarAccess grammarAccess;
	
	public void createSequence(EObject context, EObject semanticObject) {
		if(semanticObject.eClass().getEPackage() == StateMachineActionsPackage.eINSTANCE) switch(semanticObject.eClass().getClassifierID()) {
			case StateMachineActionsPackage.ACTION:
				if(context == grammarAccess.getActionRule()) {
					sequence_Action(context, (Action) semanticObject); 
					return; 
				}
				else break;
			case StateMachineActionsPackage.ASSIGNMENT:
				if(context == grammarAccess.getAssignmentRule()) {
					sequence_Assignment(context, (Assignment) semanticObject); 
					return; 
				}
				else break;
			case StateMachineActionsPackage.EXPRESSION:
				if(context == grammarAccess.getEXPRESSIONRule()) {
					sequence_EXPRESSION(context, (EXPRESSION) semanticObject); 
					return; 
				}
				else break;
			case StateMachineActionsPackage.EVENT_ACTION:
				if(context == grammarAccess.getEventActionRule()) {
					sequence_EventAction(context, (EventAction) semanticObject); 
					return; 
				}
				else break;
			case StateMachineActionsPackage.MODEL:
				if(context == grammarAccess.getModelRule()) {
					sequence_Model(context, (Model) semanticObject); 
					return; 
				}
				else break;
			case StateMachineActionsPackage.PARAMETERS:
				if(context == grammarAccess.getParametersRule()) {
					sequence_Parameters(context, (Parameters) semanticObject); 
					return; 
				}
				else break;
			case StateMachineActionsPackage.TERM:
				if(context == grammarAccess.getTERMRule()) {
					sequence_TERM(context, (TERM) semanticObject); 
					return; 
				}
				else break;
			}
		if (errorAcceptor != null) errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * Constraint:
	 *     (assignment=Assignment | eventAction=EventAction)
	 */
	protected void sequence_Action(EObject context, Action semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (leftvar=ID expression=EXPRESSION)
	 */
	protected void sequence_Assignment(EObject context, Assignment semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, StateMachineActionsPackage.Literals.ASSIGNMENT__LEFTVAR) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, StateMachineActionsPackage.Literals.ASSIGNMENT__LEFTVAR));
			if(transientValues.isValueTransient(semanticObject, StateMachineActionsPackage.Literals.ASSIGNMENT__EXPRESSION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, StateMachineActionsPackage.Literals.ASSIGNMENT__EXPRESSION));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getAssignmentAccess().getLeftvarIDTerminalRuleCall_0_0(), semanticObject.getLeftvar());
		feeder.accept(grammarAccess.getAssignmentAccess().getExpressionEXPRESSIONParserRuleCall_2_0(), semanticObject.getExpression());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     ((firstTerm=TERM operator=OPERATOR secondTerm=TERM) | alone=TERM)
	 */
	protected void sequence_EXPRESSION(EObject context, EXPRESSION semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (eventName=ID parameters=Parameters? eventExtension=EventExtensions)
	 */
	protected void sequence_EventAction(EObject context, EventAction semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     action=Action
	 */
	protected void sequence_Model(EObject context, Model semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, StateMachineActionsPackage.Literals.MODEL__ACTION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, StateMachineActionsPackage.Literals.MODEL__ACTION));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getModelAccess().getActionActionParserRuleCall_0(), semanticObject.getAction());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     (param=ID | (param=ID parameters=Parameters))
	 */
	protected void sequence_Parameters(EObject context, Parameters semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (variable=ID | constant=INT)
	 */
	protected void sequence_TERM(EObject context, TERM semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
}
