/*
* generated by Xtext
*/
grammar InternalStateMachineActions;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.correttouml.grammars.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.correttouml.grammars.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.correttouml.grammars.services.StateMachineActionsGrammarAccess;

}

@parser::members {

 	private StateMachineActionsGrammarAccess grammarAccess;
 	
    public InternalStateMachineActionsParser(TokenStream input, StateMachineActionsGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "Model";	
   	}
   	
   	@Override
   	protected StateMachineActionsGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleModel
entryRuleModel returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getModelRule()); }
	 iv_ruleModel=ruleModel 
	 { $current=$iv_ruleModel.current; } 
	 EOF 
;

// Rule Model
ruleModel returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		{ 
	        newCompositeNode(grammarAccess.getModelAccess().getActionActionParserRuleCall_0()); 
	    }
		lv_action_0_0=ruleAction		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getModelRule());
	        }
       		set(
       			$current, 
       			"action",
        		lv_action_0_0, 
        		"Action");
	        afterParserOrEnumRuleCall();
	    }

)
)
;





// Entry rule entryRuleAction
entryRuleAction returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getActionRule()); }
	 iv_ruleAction=ruleAction 
	 { $current=$iv_ruleAction.current; } 
	 EOF 
;

// Rule Action
ruleAction returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		{ 
	        newCompositeNode(grammarAccess.getActionAccess().getAssignmentAssignmentParserRuleCall_0_0()); 
	    }
		lv_assignment_0_0=ruleAssignment		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getActionRule());
	        }
       		set(
       			$current, 
       			"assignment",
        		lv_assignment_0_0, 
        		"Assignment");
	        afterParserOrEnumRuleCall();
	    }

)
)
    |(
(
		{ 
	        newCompositeNode(grammarAccess.getActionAccess().getEventActionEventActionParserRuleCall_1_0()); 
	    }
		lv_eventAction_1_0=ruleEventAction		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getActionRule());
	        }
       		set(
       			$current, 
       			"eventAction",
        		lv_eventAction_1_0, 
        		"EventAction");
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleAssignment
entryRuleAssignment returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getAssignmentRule()); }
	 iv_ruleAssignment=ruleAssignment 
	 { $current=$iv_ruleAssignment.current; } 
	 EOF 
;

// Rule Assignment
ruleAssignment returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_leftvar_0_0=RULE_ID
		{
			newLeafNode(lv_leftvar_0_0, grammarAccess.getAssignmentAccess().getLeftvarIDTerminalRuleCall_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getAssignmentRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"leftvar",
        		lv_leftvar_0_0, 
        		"ID");
	    }

)
)	otherlv_1='=' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getAssignmentAccess().getEqualsSignKeyword_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getAssignmentAccess().getExpressionEXPRESSIONParserRuleCall_2_0()); 
	    }
		lv_expression_2_0=ruleEXPRESSION		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getAssignmentRule());
	        }
       		set(
       			$current, 
       			"expression",
        		lv_expression_2_0, 
        		"EXPRESSION");
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleEXPRESSION
entryRuleEXPRESSION returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getEXPRESSIONRule()); }
	 iv_ruleEXPRESSION=ruleEXPRESSION 
	 { $current=$iv_ruleEXPRESSION.current; } 
	 EOF 
;

// Rule EXPRESSION
ruleEXPRESSION returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(((
(
		{ 
	        newCompositeNode(grammarAccess.getEXPRESSIONAccess().getFirstTermTERMParserRuleCall_0_0_0()); 
	    }
		lv_firstTerm_0_0=ruleTERM		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getEXPRESSIONRule());
	        }
       		set(
       			$current, 
       			"firstTerm",
        		lv_firstTerm_0_0, 
        		"TERM");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		lv_operator_1_0=RULE_OPERATOR
		{
			newLeafNode(lv_operator_1_0, grammarAccess.getEXPRESSIONAccess().getOperatorOPERATORTerminalRuleCall_0_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getEXPRESSIONRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"operator",
        		lv_operator_1_0, 
        		"OPERATOR");
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getEXPRESSIONAccess().getSecondTermTERMParserRuleCall_0_2_0()); 
	    }
		lv_secondTerm_2_0=ruleTERM		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getEXPRESSIONRule());
	        }
       		set(
       			$current, 
       			"secondTerm",
        		lv_secondTerm_2_0, 
        		"TERM");
	        afterParserOrEnumRuleCall();
	    }

)
))
    |(
(
		{ 
	        newCompositeNode(grammarAccess.getEXPRESSIONAccess().getAloneTERMParserRuleCall_1_0()); 
	    }
		lv_alone_3_0=ruleTERM		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getEXPRESSIONRule());
	        }
       		set(
       			$current, 
       			"alone",
        		lv_alone_3_0, 
        		"TERM");
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleTERM
entryRuleTERM returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getTERMRule()); }
	 iv_ruleTERM=ruleTERM 
	 { $current=$iv_ruleTERM.current; } 
	 EOF 
;

// Rule TERM
ruleTERM returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_variable_0_0=RULE_ID
		{
			newLeafNode(lv_variable_0_0, grammarAccess.getTERMAccess().getVariableIDTerminalRuleCall_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getTERMRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"variable",
        		lv_variable_0_0, 
        		"ID");
	    }

)
)
    |(
(
		lv_constant_1_0=RULE_INT
		{
			newLeafNode(lv_constant_1_0, grammarAccess.getTERMAccess().getConstantINTTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getTERMRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"constant",
        		lv_constant_1_0, 
        		"INT");
	    }

)
))
;





// Entry rule entryRuleEventAction
entryRuleEventAction returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getEventActionRule()); }
	 iv_ruleEventAction=ruleEventAction 
	 { $current=$iv_ruleEventAction.current; } 
	 EOF 
;

// Rule EventAction
ruleEventAction returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='@' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getEventActionAccess().getCommercialAtKeyword_0());
    }
((
(
		lv_eventName_1_0=RULE_ID
		{
			newLeafNode(lv_eventName_1_0, grammarAccess.getEventActionAccess().getEventNameIDTerminalRuleCall_1_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getEventActionRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"eventName",
        		lv_eventName_1_0, 
        		"ID");
	    }

)
)(	otherlv_2='(' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getEventActionAccess().getLeftParenthesisKeyword_1_1_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getEventActionAccess().getParametersParametersParserRuleCall_1_1_1_0()); 
	    }
		lv_parameters_3_0=ruleParameters		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getEventActionRule());
	        }
       		set(
       			$current, 
       			"parameters",
        		lv_parameters_3_0, 
        		"Parameters");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_4=')' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getEventActionAccess().getRightParenthesisKeyword_1_1_2());
    }
)?	otherlv_5='.' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getEventActionAccess().getFullStopKeyword_1_2());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getEventActionAccess().getEventExtensionEventExtensionsParserRuleCall_1_3_0()); 
	    }
		lv_eventExtension_6_0=ruleEventExtensions		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getEventActionRule());
	        }
       		set(
       			$current, 
       			"eventExtension",
        		lv_eventExtension_6_0, 
        		"EventExtensions");
	        afterParserOrEnumRuleCall();
	    }

)
)))
;





// Entry rule entryRuleParameters
entryRuleParameters returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getParametersRule()); }
	 iv_ruleParameters=ruleParameters 
	 { $current=$iv_ruleParameters.current; } 
	 EOF 
;

// Rule Parameters
ruleParameters returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_param_0_0=RULE_ID
		{
			newLeafNode(lv_param_0_0, grammarAccess.getParametersAccess().getParamIDTerminalRuleCall_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getParametersRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"param",
        		lv_param_0_0, 
        		"ID");
	    }

)
)
    |((
(
		lv_param_1_0=RULE_ID
		{
			newLeafNode(lv_param_1_0, grammarAccess.getParametersAccess().getParamIDTerminalRuleCall_1_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getParametersRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"param",
        		lv_param_1_0, 
        		"ID");
	    }

)
)	otherlv_2=',' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getParametersAccess().getCommaKeyword_1_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getParametersAccess().getParametersParametersParserRuleCall_1_2_0()); 
	    }
		lv_parameters_3_0=ruleParameters		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getParametersRule());
	        }
       		set(
       			$current, 
       			"parameters",
        		lv_parameters_3_0, 
        		"Parameters");
	        afterParserOrEnumRuleCall();
	    }

)
)))
;





// Entry rule entryRuleEventExtensions
entryRuleEventExtensions returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getEventExtensionsRule()); } 
	 iv_ruleEventExtensions=ruleEventExtensions 
	 { $current=$iv_ruleEventExtensions.current.getText(); }  
	 EOF 
;

// Rule EventExtensions
ruleEventExtensions returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
	kw='exit' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getExitKeyword_0()); 
    }

    |
	kw='enter' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getEnterKeyword_1()); 
    }

    |
	kw='start' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getStartKeyword_2()); 
    }

    |
	kw='end' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getEndKeyword_3()); 
    }

    |
	kw='tick' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getTickKeyword_4()); 
    }

    |
	kw='sig' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getSigKeyword_5()); 
    }

    |
	kw='call' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getCallKeyword_6()); 
    }
)
    ;





RULE_OPERATOR : ('-'|'+'|'*');

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


