package org.correttouml.grammars.serializer;

import com.google.inject.Inject;
import com.google.inject.Provider;
import org.correttouml.grammars.assignments.ASSIGNMENT;
import org.correttouml.grammars.assignments.AssignmentsPackage;
import org.correttouml.grammars.assignments.EXPRESSION;
import org.correttouml.grammars.assignments.Model;
import org.correttouml.grammars.assignments.TERM;
import org.correttouml.grammars.services.AssignmentsGrammarAccess;
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
public class AssignmentsSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private AssignmentsGrammarAccess grammarAccess;
	
	public void createSequence(EObject context, EObject semanticObject) {
		if(semanticObject.eClass().getEPackage() == AssignmentsPackage.eINSTANCE) switch(semanticObject.eClass().getClassifierID()) {
			case AssignmentsPackage.ASSIGNMENT:
				if(context == grammarAccess.getASSIGNMENTRule()) {
					sequence_ASSIGNMENT(context, (ASSIGNMENT) semanticObject); 
					return; 
				}
				else break;
			case AssignmentsPackage.EXPRESSION:
				if(context == grammarAccess.getEXPRESSIONRule()) {
					sequence_EXPRESSION(context, (EXPRESSION) semanticObject); 
					return; 
				}
				else break;
			case AssignmentsPackage.MODEL:
				if(context == grammarAccess.getModelRule()) {
					sequence_Model(context, (Model) semanticObject); 
					return; 
				}
				else break;
			case AssignmentsPackage.TERM:
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
	 *     (variable=ID expression=EXPRESSION)
	 */
	protected void sequence_ASSIGNMENT(EObject context, ASSIGNMENT semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, AssignmentsPackage.Literals.ASSIGNMENT__VARIABLE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, AssignmentsPackage.Literals.ASSIGNMENT__VARIABLE));
			if(transientValues.isValueTransient(semanticObject, AssignmentsPackage.Literals.ASSIGNMENT__EXPRESSION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, AssignmentsPackage.Literals.ASSIGNMENT__EXPRESSION));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getASSIGNMENTAccess().getVariableIDTerminalRuleCall_0_0(), semanticObject.getVariable());
		feeder.accept(grammarAccess.getASSIGNMENTAccess().getExpressionEXPRESSIONParserRuleCall_2_0(), semanticObject.getExpression());
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
	 *     assignment=ASSIGNMENT
	 */
	protected void sequence_Model(EObject context, Model semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, AssignmentsPackage.Literals.MODEL__ASSIGNMENT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, AssignmentsPackage.Literals.MODEL__ASSIGNMENT));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getModelAccess().getAssignmentASSIGNMENTParserRuleCall_0(), semanticObject.getAssignment());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     (variable=ID | constant=INT)
	 */
	protected void sequence_TERM(EObject context, TERM semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
}
