/*
 * generated by Xtext
 */
package org.correttouml.grammars.ui.contentassist.antlr;

import java.util.Collection;
import java.util.Map;
import java.util.HashMap;

import org.antlr.runtime.RecognitionException;
import org.eclipse.xtext.AbstractElement;
import org.eclipse.xtext.ui.editor.contentassist.antlr.AbstractContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.FollowElement;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;

import com.google.inject.Inject;

import org.correttouml.grammars.services.BooleanExpressionsGrammarAccess;

public class BooleanExpressionsParser extends AbstractContentAssistParser {
	
	@Inject
	private BooleanExpressionsGrammarAccess grammarAccess;
	
	private Map<AbstractElement, String> nameMappings;
	
	@Override
	protected org.correttouml.grammars.ui.contentassist.antlr.internal.InternalBooleanExpressionsParser createParser() {
		org.correttouml.grammars.ui.contentassist.antlr.internal.InternalBooleanExpressionsParser result = new org.correttouml.grammars.ui.contentassist.antlr.internal.InternalBooleanExpressionsParser(null);
		result.setGrammarAccess(grammarAccess);
		return result;
	}
	
	@Override
	protected String getRuleName(AbstractElement element) {
		if (nameMappings == null) {
			nameMappings = new HashMap<AbstractElement, String>() {
				private static final long serialVersionUID = 1L;
				{
					put(grammarAccess.getBaseExpressionAccess().getAlternatives_1(), "rule__BaseExpression__Alternatives_1");
					put(grammarAccess.getBooleanTermAccess().getAlternatives(), "rule__BooleanTerm__Alternatives");
					put(grammarAccess.getEXPRESSIONAccess().getAlternatives(), "rule__EXPRESSION__Alternatives");
					put(grammarAccess.getTERMAccess().getAlternatives(), "rule__TERM__Alternatives");
					put(grammarAccess.getEventAccess().getAlternatives(), "rule__Event__Alternatives");
					put(grammarAccess.getEventExtensionsAccess().getAlternatives(), "rule__EventExtensions__Alternatives");
					put(grammarAccess.getOrExpressionAccess().getGroup(), "rule__OrExpression__Group__0");
					put(grammarAccess.getOrExpressionAccess().getGroup_1(), "rule__OrExpression__Group_1__0");
					put(grammarAccess.getAndExpressionAccess().getGroup(), "rule__AndExpression__Group__0");
					put(grammarAccess.getAndExpressionAccess().getGroup_1(), "rule__AndExpression__Group_1__0");
					put(grammarAccess.getBaseExpressionAccess().getGroup(), "rule__BaseExpression__Group__0");
					put(grammarAccess.getBaseExpressionAccess().getGroup_1_1(), "rule__BaseExpression__Group_1_1__0");
					put(grammarAccess.getTimeConstraintAccess().getGroup(), "rule__TimeConstraint__Group__0");
					put(grammarAccess.getVariableConditionAccess().getGroup(), "rule__VariableCondition__Group__0");
					put(grammarAccess.getEXPRESSIONAccess().getGroup_0(), "rule__EXPRESSION__Group_0__0");
					put(grammarAccess.getEventAccess().getGroup_0(), "rule__Event__Group_0__0");
					put(grammarAccess.getEventAccess().getGroup_0_0(), "rule__Event__Group_0_0__0");
					put(grammarAccess.getEventAccess().getGroup_0_1(), "rule__Event__Group_0_1__0");
					put(grammarAccess.getModelAccess().getExpressionAssignment(), "rule__Model__ExpressionAssignment");
					put(grammarAccess.getOrExpressionAccess().getLeftExpressionAssignment_0(), "rule__OrExpression__LeftExpressionAssignment_0");
					put(grammarAccess.getOrExpressionAccess().getOrAssignment_1_0(), "rule__OrExpression__OrAssignment_1_0");
					put(grammarAccess.getOrExpressionAccess().getRightExpressionAssignment_1_1(), "rule__OrExpression__RightExpressionAssignment_1_1");
					put(grammarAccess.getAndExpressionAccess().getLeftExpressionAssignment_0(), "rule__AndExpression__LeftExpressionAssignment_0");
					put(grammarAccess.getAndExpressionAccess().getAndAssignment_1_0(), "rule__AndExpression__AndAssignment_1_0");
					put(grammarAccess.getAndExpressionAccess().getRightExpressionAssignment_1_1(), "rule__AndExpression__RightExpressionAssignment_1_1");
					put(grammarAccess.getBaseExpressionAccess().getNotAssignment_0(), "rule__BaseExpression__NotAssignment_0");
					put(grammarAccess.getBaseExpressionAccess().getBooleanTermAssignment_1_0(), "rule__BaseExpression__BooleanTermAssignment_1_0");
					put(grammarAccess.getBaseExpressionAccess().getRootExpressionAssignment_1_1_1(), "rule__BaseExpression__RootExpressionAssignment_1_1_1");
					put(grammarAccess.getBooleanTermAccess().getTimeConstraintAssignment_0(), "rule__BooleanTerm__TimeConstraintAssignment_0");
					put(grammarAccess.getBooleanTermAccess().getBooleanVariableAssignment_1(), "rule__BooleanTerm__BooleanVariableAssignment_1");
					put(grammarAccess.getBooleanTermAccess().getVariableConditionAssignment_2(), "rule__BooleanTerm__VariableConditionAssignment_2");
					put(grammarAccess.getTimeConstraintAccess().getEvent2Assignment_1(), "rule__TimeConstraint__Event2Assignment_1");
					put(grammarAccess.getTimeConstraintAccess().getEvent1Assignment_4(), "rule__TimeConstraint__Event1Assignment_4");
					put(grammarAccess.getTimeConstraintAccess().getOpAssignment_5(), "rule__TimeConstraint__OpAssignment_5");
					put(grammarAccess.getTimeConstraintAccess().getValueAssignment_6(), "rule__TimeConstraint__ValueAssignment_6");
					put(grammarAccess.getBooleanVariableAccess().getVariableAssignment(), "rule__BooleanVariable__VariableAssignment");
					put(grammarAccess.getVariableConditionAccess().getExpression_leftAssignment_1(), "rule__VariableCondition__Expression_leftAssignment_1");
					put(grammarAccess.getVariableConditionAccess().getRelationAssignment_2(), "rule__VariableCondition__RelationAssignment_2");
					put(grammarAccess.getVariableConditionAccess().getExpression_rightAssignment_3(), "rule__VariableCondition__Expression_rightAssignment_3");
					put(grammarAccess.getEXPRESSIONAccess().getFirstTermAssignment_0_0(), "rule__EXPRESSION__FirstTermAssignment_0_0");
					put(grammarAccess.getEXPRESSIONAccess().getOperatorAssignment_0_1(), "rule__EXPRESSION__OperatorAssignment_0_1");
					put(grammarAccess.getEXPRESSIONAccess().getSecondTermAssignment_0_2(), "rule__EXPRESSION__SecondTermAssignment_0_2");
					put(grammarAccess.getEXPRESSIONAccess().getAloneAssignment_1(), "rule__EXPRESSION__AloneAssignment_1");
					put(grammarAccess.getTERMAccess().getVariableAssignment_0(), "rule__TERM__VariableAssignment_0");
					put(grammarAccess.getTERMAccess().getConstantAssignment_1(), "rule__TERM__ConstantAssignment_1");
					put(grammarAccess.getEventAccess().getObjNameAssignment_0_0_0(), "rule__Event__ObjNameAssignment_0_0_0");
					put(grammarAccess.getEventAccess().getEventNameAssignment_0_1_0(), "rule__Event__EventNameAssignment_0_1_0");
					put(grammarAccess.getEventAccess().getEventExtensionAssignment_0_1_2(), "rule__Event__EventExtensionAssignment_0_1_2");
					put(grammarAccess.getEventAccess().getNowEventAssignment_1(), "rule__Event__NowEventAssignment_1");
				}
			};
		}
		return nameMappings.get(element);
	}
	
	@Override
	protected Collection<FollowElement> getFollowElements(AbstractInternalContentAssistParser parser) {
		try {
			org.correttouml.grammars.ui.contentassist.antlr.internal.InternalBooleanExpressionsParser typedParser = (org.correttouml.grammars.ui.contentassist.antlr.internal.InternalBooleanExpressionsParser) parser;
			typedParser.entryRuleModel();
			return typedParser.getFollowElements();
		} catch(RecognitionException ex) {
			throw new RuntimeException(ex);
		}		
	}
	
	@Override
	protected String[] getInitialHiddenTokens() {
		return new String[] { "RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT" };
	}
	
	public BooleanExpressionsGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}
	
	public void setGrammarAccess(BooleanExpressionsGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
}
