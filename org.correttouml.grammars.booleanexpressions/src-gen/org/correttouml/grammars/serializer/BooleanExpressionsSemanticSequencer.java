package org.correttouml.grammars.serializer;

import com.google.inject.Inject;
import com.google.inject.Provider;
import org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage;
import org.correttouml.grammars.booleanExpressions.BooleanVariable;
import org.correttouml.grammars.booleanExpressions.Event;
import org.correttouml.grammars.booleanExpressions.Model;
import org.correttouml.grammars.booleanExpressions.TimeConstraint;
import org.correttouml.grammars.booleanExpressions.VariableCondition;
import org.correttouml.grammars.booleanExpressions.booleanExpression;
import org.correttouml.grammars.services.BooleanExpressionsGrammarAccess;
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
public class BooleanExpressionsSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private BooleanExpressionsGrammarAccess grammarAccess;
	
	public void createSequence(EObject context, EObject semanticObject) {
		if(semanticObject.eClass().getEPackage() == BooleanExpressionsPackage.eINSTANCE) switch(semanticObject.eClass().getClassifierID()) {
			case BooleanExpressionsPackage.BOOLEAN_VARIABLE:
				if(context == grammarAccess.getBooleanVariableRule() ||
				   context == grammarAccess.getBooleanTermRule()) {
					sequence_BooleanVariable(context, (BooleanVariable) semanticObject); 
					return; 
				}
				else break;
			case BooleanExpressionsPackage.EVENT:
				if(context == grammarAccess.getEventRule()) {
					sequence_Event(context, (Event) semanticObject); 
					return; 
				}
				else break;
			case BooleanExpressionsPackage.MODEL:
				if(context == grammarAccess.getModelRule()) {
					sequence_Model(context, (Model) semanticObject); 
					return; 
				}
				else break;
			case BooleanExpressionsPackage.TIME_CONSTRAINT:
				if(context == grammarAccess.getTimeConstraintRule() ||
				   context == grammarAccess.getBooleanTermRule()) {
					sequence_TimeConstraint(context, (TimeConstraint) semanticObject); 
					return; 
				}
				else break;
			case BooleanExpressionsPackage.VARIABLE_CONDITION:
				if(context == grammarAccess.getVariableConditionRule() ||
				   context == grammarAccess.getBooleanTermRule()) {
					sequence_VariableCondition(context, (VariableCondition) semanticObject); 
					return; 
				}
				else break;
			case BooleanExpressionsPackage.BOOLEAN_EXPRESSION:
				if(context == grammarAccess.getBooleanExpressionRule()) {
					sequence_booleanExpression(context, (booleanExpression) semanticObject); 
					return; 
				}
				else break;
			}
		if (errorAcceptor != null) errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * Constraint:
	 *     variable=ID
	 */
	protected void sequence_BooleanVariable(EObject context, BooleanVariable semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, BooleanExpressionsPackage.Literals.BOOLEAN_VARIABLE__VARIABLE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BooleanExpressionsPackage.Literals.BOOLEAN_VARIABLE__VARIABLE));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getBooleanVariableAccess().getVariableIDTerminalRuleCall_0(), semanticObject.getVariable());
		feeder.finish();
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
	 *     expression=booleanExpression
	 */
	protected void sequence_Model(EObject context, Model semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, BooleanExpressionsPackage.Literals.MODEL__EXPRESSION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BooleanExpressionsPackage.Literals.MODEL__EXPRESSION));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getModelAccess().getExpressionBooleanExpressionParserRuleCall_0(), semanticObject.getExpression());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     (event2=Event event1=Event op=RELATIONS value=INT)
	 */
	protected void sequence_TimeConstraint(EObject context, TimeConstraint semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, BooleanExpressionsPackage.Literals.TIME_CONSTRAINT__EVENT2) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BooleanExpressionsPackage.Literals.TIME_CONSTRAINT__EVENT2));
			if(transientValues.isValueTransient(semanticObject, BooleanExpressionsPackage.Literals.TIME_CONSTRAINT__EVENT1) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BooleanExpressionsPackage.Literals.TIME_CONSTRAINT__EVENT1));
			if(transientValues.isValueTransient(semanticObject, BooleanExpressionsPackage.Literals.TIME_CONSTRAINT__OP) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BooleanExpressionsPackage.Literals.TIME_CONSTRAINT__OP));
			if(transientValues.isValueTransient(semanticObject, BooleanExpressionsPackage.Literals.TIME_CONSTRAINT__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BooleanExpressionsPackage.Literals.TIME_CONSTRAINT__VALUE));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getTimeConstraintAccess().getEvent2EventParserRuleCall_1_0(), semanticObject.getEvent2());
		feeder.accept(grammarAccess.getTimeConstraintAccess().getEvent1EventParserRuleCall_4_0(), semanticObject.getEvent1());
		feeder.accept(grammarAccess.getTimeConstraintAccess().getOpRELATIONSTerminalRuleCall_5_0(), semanticObject.getOp());
		feeder.accept(grammarAccess.getTimeConstraintAccess().getValueINTTerminalRuleCall_6_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     (variable=ID relation=RELATIONS value=INT)
	 */
	protected void sequence_VariableCondition(EObject context, VariableCondition semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, BooleanExpressionsPackage.Literals.VARIABLE_CONDITION__VARIABLE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BooleanExpressionsPackage.Literals.VARIABLE_CONDITION__VARIABLE));
			if(transientValues.isValueTransient(semanticObject, BooleanExpressionsPackage.Literals.VARIABLE_CONDITION__RELATION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BooleanExpressionsPackage.Literals.VARIABLE_CONDITION__RELATION));
			if(transientValues.isValueTransient(semanticObject, BooleanExpressionsPackage.Literals.VARIABLE_CONDITION__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BooleanExpressionsPackage.Literals.VARIABLE_CONDITION__VALUE));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getVariableConditionAccess().getVariableIDTerminalRuleCall_1_0(), semanticObject.getVariable());
		feeder.accept(grammarAccess.getVariableConditionAccess().getRelationRELATIONSTerminalRuleCall_2_0(), semanticObject.getRelation());
		feeder.accept(grammarAccess.getVariableConditionAccess().getValueINTTerminalRuleCall_3_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     (notExpression=booleanExpression | (orLeft=booleanTerm orRight=booleanTerm) | (andLeft=booleanTerm andRight=booleanTerm) | booleanTerm=booleanTerm)
	 */
	protected void sequence_booleanExpression(EObject context, booleanExpression semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
}
