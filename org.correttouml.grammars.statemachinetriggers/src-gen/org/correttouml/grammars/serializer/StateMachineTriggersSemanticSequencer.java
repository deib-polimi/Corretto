package org.correttouml.grammars.serializer;

import com.google.inject.Inject;
import com.google.inject.Provider;
import org.correttouml.grammars.services.StateMachineTriggersGrammarAccess;
import org.correttouml.grammars.stateMachineTriggers.Event;
import org.correttouml.grammars.stateMachineTriggers.Left;
import org.correttouml.grammars.stateMachineTriggers.Model;
import org.correttouml.grammars.stateMachineTriggers.Right;
import org.correttouml.grammars.stateMachineTriggers.StateMachineTriggersPackage;
import org.correttouml.grammars.stateMachineTriggers.Trigger;
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
public class StateMachineTriggersSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private StateMachineTriggersGrammarAccess grammarAccess;
	
	public void createSequence(EObject context, EObject semanticObject) {
		if(semanticObject.eClass().getEPackage() == StateMachineTriggersPackage.eINSTANCE) switch(semanticObject.eClass().getClassifierID()) {
			case StateMachineTriggersPackage.EVENT:
				if(context == grammarAccess.getEventRule()) {
					sequence_Event(context, (Event) semanticObject); 
					return; 
				}
				else break;
			case StateMachineTriggersPackage.LEFT:
				if(context == grammarAccess.getLeftRule()) {
					sequence_Left(context, (Left) semanticObject); 
					return; 
				}
				else break;
			case StateMachineTriggersPackage.MODEL:
				if(context == grammarAccess.getModelRule()) {
					sequence_Model(context, (Model) semanticObject); 
					return; 
				}
				else break;
			case StateMachineTriggersPackage.RIGHT:
				if(context == grammarAccess.getRightRule()) {
					sequence_Right(context, (Right) semanticObject); 
					return; 
				}
				else break;
			case StateMachineTriggersPackage.TRIGGER:
				if(context == grammarAccess.getTriggerRule()) {
					sequence_Trigger(context, (Trigger) semanticObject); 
					return; 
				}
				else break;
			}
		if (errorAcceptor != null) errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * Constraint:
	 *     ((eventName=ID eventExtension=EventExtensions) | nowEvent?='now')
	 */
	protected void sequence_Event(EObject context, Event semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     event=Event
	 */
	protected void sequence_Left(EObject context, Left semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, StateMachineTriggersPackage.Literals.LEFT__EVENT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, StateMachineTriggersPackage.Literals.LEFT__EVENT));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getLeftAccess().getEventEventParserRuleCall_1_0(), semanticObject.getEvent());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     trigger=Trigger
	 */
	protected void sequence_Model(EObject context, Model semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, StateMachineTriggersPackage.Literals.MODEL__TRIGGER) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, StateMachineTriggersPackage.Literals.MODEL__TRIGGER));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getModelAccess().getTriggerTriggerParserRuleCall_0(), semanticObject.getTrigger());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     (event=Event op=RELATIONS value=INT)
	 */
	protected void sequence_Right(EObject context, Right semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, StateMachineTriggersPackage.Literals.RIGHT__EVENT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, StateMachineTriggersPackage.Literals.RIGHT__EVENT));
			if(transientValues.isValueTransient(semanticObject, StateMachineTriggersPackage.Literals.RIGHT__OP) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, StateMachineTriggersPackage.Literals.RIGHT__OP));
			if(transientValues.isValueTransient(semanticObject, StateMachineTriggersPackage.Literals.RIGHT__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, StateMachineTriggersPackage.Literals.RIGHT__VALUE));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getRightAccess().getEventEventParserRuleCall_2_0(), semanticObject.getEvent());
		feeder.accept(grammarAccess.getRightAccess().getOpRELATIONSTerminalRuleCall_3_0(), semanticObject.getOp());
		feeder.accept(grammarAccess.getRightAccess().getValueINTTerminalRuleCall_4_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     (left=Left right=Right?)
	 */
	protected void sequence_Trigger(EObject context, Trigger semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
}
