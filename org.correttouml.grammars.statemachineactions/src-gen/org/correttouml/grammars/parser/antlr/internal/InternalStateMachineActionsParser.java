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



import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class InternalStateMachineActionsParser extends AbstractInternalAntlrParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_ID", "RULE_OPERATOR", "RULE_INT", "RULE_STRING", "RULE_ML_COMMENT", "RULE_SL_COMMENT", "RULE_WS", "RULE_ANY_OTHER", "','", "'='", "'<Y>'", "'<X>'", "'#'", "'.'", "'self'", "'@'", "'('", "')'", "'<P>'", "'<F>'", "'exit'", "'enter'", "'start'", "'end'", "'tick'", "'sig'", "'call'"
    };
    public static final int RULE_STRING=7;
    public static final int RULE_SL_COMMENT=9;
    public static final int T__19=19;
    public static final int T__15=15;
    public static final int T__16=16;
    public static final int T__17=17;
    public static final int T__18=18;
    public static final int T__12=12;
    public static final int T__13=13;
    public static final int T__14=14;
    public static final int EOF=-1;
    public static final int T__30=30;
    public static final int RULE_OPERATOR=5;
    public static final int RULE_ID=4;
    public static final int RULE_WS=10;
    public static final int RULE_ANY_OTHER=11;
    public static final int T__26=26;
    public static final int T__27=27;
    public static final int T__28=28;
    public static final int RULE_INT=6;
    public static final int T__29=29;
    public static final int T__22=22;
    public static final int RULE_ML_COMMENT=8;
    public static final int T__23=23;
    public static final int T__24=24;
    public static final int T__25=25;
    public static final int T__20=20;
    public static final int T__21=21;

    // delegates
    // delegators


        public InternalStateMachineActionsParser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public InternalStateMachineActionsParser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        

    public String[] getTokenNames() { return InternalStateMachineActionsParser.tokenNames; }
    public String getGrammarFileName() { return "InternalStateMachineActions.g"; }



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



    // $ANTLR start "entryRuleModel"
    // InternalStateMachineActions.g:67:1: entryRuleModel returns [EObject current=null] : iv_ruleModel= ruleModel EOF ;
    public final EObject entryRuleModel() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleModel = null;


        try {
            // InternalStateMachineActions.g:68:2: (iv_ruleModel= ruleModel EOF )
            // InternalStateMachineActions.g:69:2: iv_ruleModel= ruleModel EOF
            {
             newCompositeNode(grammarAccess.getModelRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleModel=ruleModel();

            state._fsp--;

             current =iv_ruleModel; 
            match(input,EOF,FOLLOW_2); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleModel"


    // $ANTLR start "ruleModel"
    // InternalStateMachineActions.g:76:1: ruleModel returns [EObject current=null] : ( ( (lv_action_0_0= ruleAction ) ) (otherlv_1= ',' ( (lv_actions_2_0= ruleModel ) ) )? ) ;
    public final EObject ruleModel() throws RecognitionException {
        EObject current = null;

        Token otherlv_1=null;
        EObject lv_action_0_0 = null;

        EObject lv_actions_2_0 = null;


         enterRule(); 
            
        try {
            // InternalStateMachineActions.g:79:28: ( ( ( (lv_action_0_0= ruleAction ) ) (otherlv_1= ',' ( (lv_actions_2_0= ruleModel ) ) )? ) )
            // InternalStateMachineActions.g:80:1: ( ( (lv_action_0_0= ruleAction ) ) (otherlv_1= ',' ( (lv_actions_2_0= ruleModel ) ) )? )
            {
            // InternalStateMachineActions.g:80:1: ( ( (lv_action_0_0= ruleAction ) ) (otherlv_1= ',' ( (lv_actions_2_0= ruleModel ) ) )? )
            // InternalStateMachineActions.g:80:2: ( (lv_action_0_0= ruleAction ) ) (otherlv_1= ',' ( (lv_actions_2_0= ruleModel ) ) )?
            {
            // InternalStateMachineActions.g:80:2: ( (lv_action_0_0= ruleAction ) )
            // InternalStateMachineActions.g:81:1: (lv_action_0_0= ruleAction )
            {
            // InternalStateMachineActions.g:81:1: (lv_action_0_0= ruleAction )
            // InternalStateMachineActions.g:82:3: lv_action_0_0= ruleAction
            {
             
            	        newCompositeNode(grammarAccess.getModelAccess().getActionActionParserRuleCall_0_0()); 
            	    
            pushFollow(FOLLOW_3);
            lv_action_0_0=ruleAction();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getModelRule());
            	        }
                   		set(
                   			current, 
                   			"action",
                    		lv_action_0_0, 
                    		"org.correttouml.grammars.StateMachineActions.Action");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            // InternalStateMachineActions.g:98:2: (otherlv_1= ',' ( (lv_actions_2_0= ruleModel ) ) )?
            int alt1=2;
            int LA1_0 = input.LA(1);

            if ( (LA1_0==12) ) {
                alt1=1;
            }
            switch (alt1) {
                case 1 :
                    // InternalStateMachineActions.g:98:4: otherlv_1= ',' ( (lv_actions_2_0= ruleModel ) )
                    {
                    otherlv_1=(Token)match(input,12,FOLLOW_4); 

                        	newLeafNode(otherlv_1, grammarAccess.getModelAccess().getCommaKeyword_1_0());
                        
                    // InternalStateMachineActions.g:102:1: ( (lv_actions_2_0= ruleModel ) )
                    // InternalStateMachineActions.g:103:1: (lv_actions_2_0= ruleModel )
                    {
                    // InternalStateMachineActions.g:103:1: (lv_actions_2_0= ruleModel )
                    // InternalStateMachineActions.g:104:3: lv_actions_2_0= ruleModel
                    {
                     
                    	        newCompositeNode(grammarAccess.getModelAccess().getActionsModelParserRuleCall_1_1_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_actions_2_0=ruleModel();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getModelRule());
                    	        }
                           		set(
                           			current, 
                           			"actions",
                            		lv_actions_2_0, 
                            		"org.correttouml.grammars.StateMachineActions.Model");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }
                    break;

            }


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleModel"


    // $ANTLR start "entryRuleAction"
    // InternalStateMachineActions.g:128:1: entryRuleAction returns [EObject current=null] : iv_ruleAction= ruleAction EOF ;
    public final EObject entryRuleAction() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleAction = null;


        try {
            // InternalStateMachineActions.g:129:2: (iv_ruleAction= ruleAction EOF )
            // InternalStateMachineActions.g:130:2: iv_ruleAction= ruleAction EOF
            {
             newCompositeNode(grammarAccess.getActionRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleAction=ruleAction();

            state._fsp--;

             current =iv_ruleAction; 
            match(input,EOF,FOLLOW_2); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleAction"


    // $ANTLR start "ruleAction"
    // InternalStateMachineActions.g:137:1: ruleAction returns [EObject current=null] : ( ( (lv_assignment_0_0= ruleAssignment ) ) | ( (lv_eventAction_1_0= ruleEventAction ) ) ) ;
    public final EObject ruleAction() throws RecognitionException {
        EObject current = null;

        EObject lv_assignment_0_0 = null;

        EObject lv_eventAction_1_0 = null;


         enterRule(); 
            
        try {
            // InternalStateMachineActions.g:140:28: ( ( ( (lv_assignment_0_0= ruleAssignment ) ) | ( (lv_eventAction_1_0= ruleEventAction ) ) ) )
            // InternalStateMachineActions.g:141:1: ( ( (lv_assignment_0_0= ruleAssignment ) ) | ( (lv_eventAction_1_0= ruleEventAction ) ) )
            {
            // InternalStateMachineActions.g:141:1: ( ( (lv_assignment_0_0= ruleAssignment ) ) | ( (lv_eventAction_1_0= ruleEventAction ) ) )
            int alt2=2;
            int LA2_0 = input.LA(1);

            if ( (LA2_0==RULE_ID) ) {
                alt2=1;
            }
            else if ( (LA2_0==16||(LA2_0>=18 && LA2_0<=19)) ) {
                alt2=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 2, 0, input);

                throw nvae;
            }
            switch (alt2) {
                case 1 :
                    // InternalStateMachineActions.g:141:2: ( (lv_assignment_0_0= ruleAssignment ) )
                    {
                    // InternalStateMachineActions.g:141:2: ( (lv_assignment_0_0= ruleAssignment ) )
                    // InternalStateMachineActions.g:142:1: (lv_assignment_0_0= ruleAssignment )
                    {
                    // InternalStateMachineActions.g:142:1: (lv_assignment_0_0= ruleAssignment )
                    // InternalStateMachineActions.g:143:3: lv_assignment_0_0= ruleAssignment
                    {
                     
                    	        newCompositeNode(grammarAccess.getActionAccess().getAssignmentAssignmentParserRuleCall_0_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_assignment_0_0=ruleAssignment();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getActionRule());
                    	        }
                           		set(
                           			current, 
                           			"assignment",
                            		lv_assignment_0_0, 
                            		"org.correttouml.grammars.StateMachineActions.Assignment");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }
                    break;
                case 2 :
                    // InternalStateMachineActions.g:160:6: ( (lv_eventAction_1_0= ruleEventAction ) )
                    {
                    // InternalStateMachineActions.g:160:6: ( (lv_eventAction_1_0= ruleEventAction ) )
                    // InternalStateMachineActions.g:161:1: (lv_eventAction_1_0= ruleEventAction )
                    {
                    // InternalStateMachineActions.g:161:1: (lv_eventAction_1_0= ruleEventAction )
                    // InternalStateMachineActions.g:162:3: lv_eventAction_1_0= ruleEventAction
                    {
                     
                    	        newCompositeNode(grammarAccess.getActionAccess().getEventActionEventActionParserRuleCall_1_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_eventAction_1_0=ruleEventAction();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getActionRule());
                    	        }
                           		set(
                           			current, 
                           			"eventAction",
                            		lv_eventAction_1_0, 
                            		"org.correttouml.grammars.StateMachineActions.EventAction");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }
                    break;

            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleAction"


    // $ANTLR start "entryRuleAssignment"
    // InternalStateMachineActions.g:186:1: entryRuleAssignment returns [EObject current=null] : iv_ruleAssignment= ruleAssignment EOF ;
    public final EObject entryRuleAssignment() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleAssignment = null;


        try {
            // InternalStateMachineActions.g:187:2: (iv_ruleAssignment= ruleAssignment EOF )
            // InternalStateMachineActions.g:188:2: iv_ruleAssignment= ruleAssignment EOF
            {
             newCompositeNode(grammarAccess.getAssignmentRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleAssignment=ruleAssignment();

            state._fsp--;

             current =iv_ruleAssignment; 
            match(input,EOF,FOLLOW_2); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleAssignment"


    // $ANTLR start "ruleAssignment"
    // InternalStateMachineActions.g:195:1: ruleAssignment returns [EObject current=null] : ( ( (lv_leftvar_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) ) ) ;
    public final EObject ruleAssignment() throws RecognitionException {
        EObject current = null;

        Token lv_leftvar_0_0=null;
        Token otherlv_1=null;
        EObject lv_expression_2_0 = null;


         enterRule(); 
            
        try {
            // InternalStateMachineActions.g:198:28: ( ( ( (lv_leftvar_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) ) ) )
            // InternalStateMachineActions.g:199:1: ( ( (lv_leftvar_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) ) )
            {
            // InternalStateMachineActions.g:199:1: ( ( (lv_leftvar_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) ) )
            // InternalStateMachineActions.g:199:2: ( (lv_leftvar_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) )
            {
            // InternalStateMachineActions.g:199:2: ( (lv_leftvar_0_0= RULE_ID ) )
            // InternalStateMachineActions.g:200:1: (lv_leftvar_0_0= RULE_ID )
            {
            // InternalStateMachineActions.g:200:1: (lv_leftvar_0_0= RULE_ID )
            // InternalStateMachineActions.g:201:3: lv_leftvar_0_0= RULE_ID
            {
            lv_leftvar_0_0=(Token)match(input,RULE_ID,FOLLOW_5); 

            			newLeafNode(lv_leftvar_0_0, grammarAccess.getAssignmentAccess().getLeftvarIDTerminalRuleCall_0_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getAssignmentRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"leftvar",
                    		lv_leftvar_0_0, 
                    		"org.eclipse.xtext.common.Terminals.ID");
            	    

            }


            }

            otherlv_1=(Token)match(input,13,FOLLOW_6); 

                	newLeafNode(otherlv_1, grammarAccess.getAssignmentAccess().getEqualsSignKeyword_1());
                
            // InternalStateMachineActions.g:221:1: ( (lv_expression_2_0= ruleEXPRESSION ) )
            // InternalStateMachineActions.g:222:1: (lv_expression_2_0= ruleEXPRESSION )
            {
            // InternalStateMachineActions.g:222:1: (lv_expression_2_0= ruleEXPRESSION )
            // InternalStateMachineActions.g:223:3: lv_expression_2_0= ruleEXPRESSION
            {
             
            	        newCompositeNode(grammarAccess.getAssignmentAccess().getExpressionEXPRESSIONParserRuleCall_2_0()); 
            	    
            pushFollow(FOLLOW_2);
            lv_expression_2_0=ruleEXPRESSION();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getAssignmentRule());
            	        }
                   		set(
                   			current, 
                   			"expression",
                    		lv_expression_2_0, 
                    		"org.correttouml.grammars.StateMachineActions.EXPRESSION");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleAssignment"


    // $ANTLR start "entryRuleEXPRESSION"
    // InternalStateMachineActions.g:247:1: entryRuleEXPRESSION returns [EObject current=null] : iv_ruleEXPRESSION= ruleEXPRESSION EOF ;
    public final EObject entryRuleEXPRESSION() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleEXPRESSION = null;


        try {
            // InternalStateMachineActions.g:248:2: (iv_ruleEXPRESSION= ruleEXPRESSION EOF )
            // InternalStateMachineActions.g:249:2: iv_ruleEXPRESSION= ruleEXPRESSION EOF
            {
             newCompositeNode(grammarAccess.getEXPRESSIONRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleEXPRESSION=ruleEXPRESSION();

            state._fsp--;

             current =iv_ruleEXPRESSION; 
            match(input,EOF,FOLLOW_2); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleEXPRESSION"


    // $ANTLR start "ruleEXPRESSION"
    // InternalStateMachineActions.g:256:1: ruleEXPRESSION returns [EObject current=null] : ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) ) ;
    public final EObject ruleEXPRESSION() throws RecognitionException {
        EObject current = null;

        Token lv_operator_1_0=null;
        EObject lv_firstTerm_0_0 = null;

        EObject lv_secondTerm_2_0 = null;

        EObject lv_alone_3_0 = null;


         enterRule(); 
            
        try {
            // InternalStateMachineActions.g:259:28: ( ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) ) )
            // InternalStateMachineActions.g:260:1: ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) )
            {
            // InternalStateMachineActions.g:260:1: ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) )
            int alt3=2;
            switch ( input.LA(1) ) {
            case 14:
                {
                int LA3_1 = input.LA(2);

                if ( (LA3_1==RULE_ID) ) {
                    int LA3_3 = input.LA(3);

                    if ( (LA3_3==EOF||LA3_3==12) ) {
                        alt3=2;
                    }
                    else if ( (LA3_3==RULE_OPERATOR) ) {
                        alt3=1;
                    }
                    else {
                        NoViableAltException nvae =
                            new NoViableAltException("", 3, 3, input);

                        throw nvae;
                    }
                }
                else if ( (LA3_1==RULE_INT) ) {
                    int LA3_4 = input.LA(3);

                    if ( (LA3_4==EOF||LA3_4==12) ) {
                        alt3=2;
                    }
                    else if ( (LA3_4==RULE_OPERATOR) ) {
                        alt3=1;
                    }
                    else {
                        NoViableAltException nvae =
                            new NoViableAltException("", 3, 4, input);

                        throw nvae;
                    }
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 3, 1, input);

                    throw nvae;
                }
                }
                break;
            case 15:
                {
                int LA3_2 = input.LA(2);

                if ( (LA3_2==RULE_ID) ) {
                    int LA3_3 = input.LA(3);

                    if ( (LA3_3==EOF||LA3_3==12) ) {
                        alt3=2;
                    }
                    else if ( (LA3_3==RULE_OPERATOR) ) {
                        alt3=1;
                    }
                    else {
                        NoViableAltException nvae =
                            new NoViableAltException("", 3, 3, input);

                        throw nvae;
                    }
                }
                else if ( (LA3_2==RULE_INT) ) {
                    int LA3_4 = input.LA(3);

                    if ( (LA3_4==EOF||LA3_4==12) ) {
                        alt3=2;
                    }
                    else if ( (LA3_4==RULE_OPERATOR) ) {
                        alt3=1;
                    }
                    else {
                        NoViableAltException nvae =
                            new NoViableAltException("", 3, 4, input);

                        throw nvae;
                    }
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 3, 2, input);

                    throw nvae;
                }
                }
                break;
            case RULE_ID:
                {
                int LA3_3 = input.LA(2);

                if ( (LA3_3==EOF||LA3_3==12) ) {
                    alt3=2;
                }
                else if ( (LA3_3==RULE_OPERATOR) ) {
                    alt3=1;
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 3, 3, input);

                    throw nvae;
                }
                }
                break;
            case RULE_INT:
                {
                int LA3_4 = input.LA(2);

                if ( (LA3_4==EOF||LA3_4==12) ) {
                    alt3=2;
                }
                else if ( (LA3_4==RULE_OPERATOR) ) {
                    alt3=1;
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 3, 4, input);

                    throw nvae;
                }
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 3, 0, input);

                throw nvae;
            }

            switch (alt3) {
                case 1 :
                    // InternalStateMachineActions.g:260:2: ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) )
                    {
                    // InternalStateMachineActions.g:260:2: ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) )
                    // InternalStateMachineActions.g:260:3: ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) )
                    {
                    // InternalStateMachineActions.g:260:3: ( (lv_firstTerm_0_0= ruleTERM ) )
                    // InternalStateMachineActions.g:261:1: (lv_firstTerm_0_0= ruleTERM )
                    {
                    // InternalStateMachineActions.g:261:1: (lv_firstTerm_0_0= ruleTERM )
                    // InternalStateMachineActions.g:262:3: lv_firstTerm_0_0= ruleTERM
                    {
                     
                    	        newCompositeNode(grammarAccess.getEXPRESSIONAccess().getFirstTermTERMParserRuleCall_0_0_0()); 
                    	    
                    pushFollow(FOLLOW_7);
                    lv_firstTerm_0_0=ruleTERM();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getEXPRESSIONRule());
                    	        }
                           		set(
                           			current, 
                           			"firstTerm",
                            		lv_firstTerm_0_0, 
                            		"org.correttouml.grammars.StateMachineActions.TERM");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }

                    // InternalStateMachineActions.g:278:2: ( (lv_operator_1_0= RULE_OPERATOR ) )
                    // InternalStateMachineActions.g:279:1: (lv_operator_1_0= RULE_OPERATOR )
                    {
                    // InternalStateMachineActions.g:279:1: (lv_operator_1_0= RULE_OPERATOR )
                    // InternalStateMachineActions.g:280:3: lv_operator_1_0= RULE_OPERATOR
                    {
                    lv_operator_1_0=(Token)match(input,RULE_OPERATOR,FOLLOW_6); 

                    			newLeafNode(lv_operator_1_0, grammarAccess.getEXPRESSIONAccess().getOperatorOPERATORTerminalRuleCall_0_1_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getEXPRESSIONRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"operator",
                            		lv_operator_1_0, 
                            		"org.correttouml.grammars.StateMachineActions.OPERATOR");
                    	    

                    }


                    }

                    // InternalStateMachineActions.g:296:2: ( (lv_secondTerm_2_0= ruleTERM ) )
                    // InternalStateMachineActions.g:297:1: (lv_secondTerm_2_0= ruleTERM )
                    {
                    // InternalStateMachineActions.g:297:1: (lv_secondTerm_2_0= ruleTERM )
                    // InternalStateMachineActions.g:298:3: lv_secondTerm_2_0= ruleTERM
                    {
                     
                    	        newCompositeNode(grammarAccess.getEXPRESSIONAccess().getSecondTermTERMParserRuleCall_0_2_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_secondTerm_2_0=ruleTERM();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getEXPRESSIONRule());
                    	        }
                           		set(
                           			current, 
                           			"secondTerm",
                            		lv_secondTerm_2_0, 
                            		"org.correttouml.grammars.StateMachineActions.TERM");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }


                    }
                    break;
                case 2 :
                    // InternalStateMachineActions.g:315:6: ( (lv_alone_3_0= ruleTERM ) )
                    {
                    // InternalStateMachineActions.g:315:6: ( (lv_alone_3_0= ruleTERM ) )
                    // InternalStateMachineActions.g:316:1: (lv_alone_3_0= ruleTERM )
                    {
                    // InternalStateMachineActions.g:316:1: (lv_alone_3_0= ruleTERM )
                    // InternalStateMachineActions.g:317:3: lv_alone_3_0= ruleTERM
                    {
                     
                    	        newCompositeNode(grammarAccess.getEXPRESSIONAccess().getAloneTERMParserRuleCall_1_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_alone_3_0=ruleTERM();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getEXPRESSIONRule());
                    	        }
                           		set(
                           			current, 
                           			"alone",
                            		lv_alone_3_0, 
                            		"org.correttouml.grammars.StateMachineActions.TERM");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }
                    break;

            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleEXPRESSION"


    // $ANTLR start "entryRuleTERM"
    // InternalStateMachineActions.g:341:1: entryRuleTERM returns [EObject current=null] : iv_ruleTERM= ruleTERM EOF ;
    public final EObject entryRuleTERM() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleTERM = null;


        try {
            // InternalStateMachineActions.g:342:2: (iv_ruleTERM= ruleTERM EOF )
            // InternalStateMachineActions.g:343:2: iv_ruleTERM= ruleTERM EOF
            {
             newCompositeNode(grammarAccess.getTERMRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleTERM=ruleTERM();

            state._fsp--;

             current =iv_ruleTERM; 
            match(input,EOF,FOLLOW_2); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleTERM"


    // $ANTLR start "ruleTERM"
    // InternalStateMachineActions.g:350:1: ruleTERM returns [EObject current=null] : ( ( ( (lv_isPast_0_0= '<Y>' ) ) | ( (lv_isFuture_1_0= '<X>' ) ) )? ( ( (lv_variable_2_0= RULE_ID ) ) | ( (lv_constant_3_0= RULE_INT ) ) ) ) ;
    public final EObject ruleTERM() throws RecognitionException {
        EObject current = null;

        Token lv_isPast_0_0=null;
        Token lv_isFuture_1_0=null;
        Token lv_variable_2_0=null;
        Token lv_constant_3_0=null;

         enterRule(); 
            
        try {
            // InternalStateMachineActions.g:353:28: ( ( ( ( (lv_isPast_0_0= '<Y>' ) ) | ( (lv_isFuture_1_0= '<X>' ) ) )? ( ( (lv_variable_2_0= RULE_ID ) ) | ( (lv_constant_3_0= RULE_INT ) ) ) ) )
            // InternalStateMachineActions.g:354:1: ( ( ( (lv_isPast_0_0= '<Y>' ) ) | ( (lv_isFuture_1_0= '<X>' ) ) )? ( ( (lv_variable_2_0= RULE_ID ) ) | ( (lv_constant_3_0= RULE_INT ) ) ) )
            {
            // InternalStateMachineActions.g:354:1: ( ( ( (lv_isPast_0_0= '<Y>' ) ) | ( (lv_isFuture_1_0= '<X>' ) ) )? ( ( (lv_variable_2_0= RULE_ID ) ) | ( (lv_constant_3_0= RULE_INT ) ) ) )
            // InternalStateMachineActions.g:354:2: ( ( (lv_isPast_0_0= '<Y>' ) ) | ( (lv_isFuture_1_0= '<X>' ) ) )? ( ( (lv_variable_2_0= RULE_ID ) ) | ( (lv_constant_3_0= RULE_INT ) ) )
            {
            // InternalStateMachineActions.g:354:2: ( ( (lv_isPast_0_0= '<Y>' ) ) | ( (lv_isFuture_1_0= '<X>' ) ) )?
            int alt4=3;
            int LA4_0 = input.LA(1);

            if ( (LA4_0==14) ) {
                alt4=1;
            }
            else if ( (LA4_0==15) ) {
                alt4=2;
            }
            switch (alt4) {
                case 1 :
                    // InternalStateMachineActions.g:354:3: ( (lv_isPast_0_0= '<Y>' ) )
                    {
                    // InternalStateMachineActions.g:354:3: ( (lv_isPast_0_0= '<Y>' ) )
                    // InternalStateMachineActions.g:355:1: (lv_isPast_0_0= '<Y>' )
                    {
                    // InternalStateMachineActions.g:355:1: (lv_isPast_0_0= '<Y>' )
                    // InternalStateMachineActions.g:356:3: lv_isPast_0_0= '<Y>'
                    {
                    lv_isPast_0_0=(Token)match(input,14,FOLLOW_8); 

                            newLeafNode(lv_isPast_0_0, grammarAccess.getTERMAccess().getIsPastYKeyword_0_0_0());
                        

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getTERMRule());
                    	        }
                           		setWithLastConsumed(current, "isPast", lv_isPast_0_0, "<Y>");
                    	    

                    }


                    }


                    }
                    break;
                case 2 :
                    // InternalStateMachineActions.g:370:6: ( (lv_isFuture_1_0= '<X>' ) )
                    {
                    // InternalStateMachineActions.g:370:6: ( (lv_isFuture_1_0= '<X>' ) )
                    // InternalStateMachineActions.g:371:1: (lv_isFuture_1_0= '<X>' )
                    {
                    // InternalStateMachineActions.g:371:1: (lv_isFuture_1_0= '<X>' )
                    // InternalStateMachineActions.g:372:3: lv_isFuture_1_0= '<X>'
                    {
                    lv_isFuture_1_0=(Token)match(input,15,FOLLOW_8); 

                            newLeafNode(lv_isFuture_1_0, grammarAccess.getTERMAccess().getIsFutureXKeyword_0_1_0());
                        

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getTERMRule());
                    	        }
                           		setWithLastConsumed(current, "isFuture", lv_isFuture_1_0, "<X>");
                    	    

                    }


                    }


                    }
                    break;

            }

            // InternalStateMachineActions.g:385:4: ( ( (lv_variable_2_0= RULE_ID ) ) | ( (lv_constant_3_0= RULE_INT ) ) )
            int alt5=2;
            int LA5_0 = input.LA(1);

            if ( (LA5_0==RULE_ID) ) {
                alt5=1;
            }
            else if ( (LA5_0==RULE_INT) ) {
                alt5=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 5, 0, input);

                throw nvae;
            }
            switch (alt5) {
                case 1 :
                    // InternalStateMachineActions.g:385:5: ( (lv_variable_2_0= RULE_ID ) )
                    {
                    // InternalStateMachineActions.g:385:5: ( (lv_variable_2_0= RULE_ID ) )
                    // InternalStateMachineActions.g:386:1: (lv_variable_2_0= RULE_ID )
                    {
                    // InternalStateMachineActions.g:386:1: (lv_variable_2_0= RULE_ID )
                    // InternalStateMachineActions.g:387:3: lv_variable_2_0= RULE_ID
                    {
                    lv_variable_2_0=(Token)match(input,RULE_ID,FOLLOW_2); 

                    			newLeafNode(lv_variable_2_0, grammarAccess.getTERMAccess().getVariableIDTerminalRuleCall_1_0_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getTERMRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"variable",
                            		lv_variable_2_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }


                    }
                    break;
                case 2 :
                    // InternalStateMachineActions.g:404:6: ( (lv_constant_3_0= RULE_INT ) )
                    {
                    // InternalStateMachineActions.g:404:6: ( (lv_constant_3_0= RULE_INT ) )
                    // InternalStateMachineActions.g:405:1: (lv_constant_3_0= RULE_INT )
                    {
                    // InternalStateMachineActions.g:405:1: (lv_constant_3_0= RULE_INT )
                    // InternalStateMachineActions.g:406:3: lv_constant_3_0= RULE_INT
                    {
                    lv_constant_3_0=(Token)match(input,RULE_INT,FOLLOW_2); 

                    			newLeafNode(lv_constant_3_0, grammarAccess.getTERMAccess().getConstantINTTerminalRuleCall_1_1_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getTERMRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"constant",
                            		lv_constant_3_0, 
                            		"org.eclipse.xtext.common.Terminals.INT");
                    	    

                    }


                    }


                    }
                    break;

            }


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleTERM"


    // $ANTLR start "entryRuleEventAction"
    // InternalStateMachineActions.g:430:1: entryRuleEventAction returns [EObject current=null] : iv_ruleEventAction= ruleEventAction EOF ;
    public final EObject entryRuleEventAction() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleEventAction = null;


        try {
            // InternalStateMachineActions.g:431:2: (iv_ruleEventAction= ruleEventAction EOF )
            // InternalStateMachineActions.g:432:2: iv_ruleEventAction= ruleEventAction EOF
            {
             newCompositeNode(grammarAccess.getEventActionRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleEventAction=ruleEventAction();

            state._fsp--;

             current =iv_ruleEventAction; 
            match(input,EOF,FOLLOW_2); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleEventAction"


    // $ANTLR start "ruleEventAction"
    // InternalStateMachineActions.g:439:1: ruleEventAction returns [EObject current=null] : ( ( (lv_link_0_0= ruleLink ) )? ( (lv_event_1_0= ruleEvent ) ) ) ;
    public final EObject ruleEventAction() throws RecognitionException {
        EObject current = null;

        EObject lv_link_0_0 = null;

        EObject lv_event_1_0 = null;


         enterRule(); 
            
        try {
            // InternalStateMachineActions.g:442:28: ( ( ( (lv_link_0_0= ruleLink ) )? ( (lv_event_1_0= ruleEvent ) ) ) )
            // InternalStateMachineActions.g:443:1: ( ( (lv_link_0_0= ruleLink ) )? ( (lv_event_1_0= ruleEvent ) ) )
            {
            // InternalStateMachineActions.g:443:1: ( ( (lv_link_0_0= ruleLink ) )? ( (lv_event_1_0= ruleEvent ) ) )
            // InternalStateMachineActions.g:443:2: ( (lv_link_0_0= ruleLink ) )? ( (lv_event_1_0= ruleEvent ) )
            {
            // InternalStateMachineActions.g:443:2: ( (lv_link_0_0= ruleLink ) )?
            int alt6=2;
            int LA6_0 = input.LA(1);

            if ( (LA6_0==16||LA6_0==18) ) {
                alt6=1;
            }
            switch (alt6) {
                case 1 :
                    // InternalStateMachineActions.g:444:1: (lv_link_0_0= ruleLink )
                    {
                    // InternalStateMachineActions.g:444:1: (lv_link_0_0= ruleLink )
                    // InternalStateMachineActions.g:445:3: lv_link_0_0= ruleLink
                    {
                     
                    	        newCompositeNode(grammarAccess.getEventActionAccess().getLinkLinkParserRuleCall_0_0()); 
                    	    
                    pushFollow(FOLLOW_4);
                    lv_link_0_0=ruleLink();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getEventActionRule());
                    	        }
                           		set(
                           			current, 
                           			"link",
                            		lv_link_0_0, 
                            		"org.correttouml.grammars.StateMachineActions.Link");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }
                    break;

            }

            // InternalStateMachineActions.g:461:3: ( (lv_event_1_0= ruleEvent ) )
            // InternalStateMachineActions.g:462:1: (lv_event_1_0= ruleEvent )
            {
            // InternalStateMachineActions.g:462:1: (lv_event_1_0= ruleEvent )
            // InternalStateMachineActions.g:463:3: lv_event_1_0= ruleEvent
            {
             
            	        newCompositeNode(grammarAccess.getEventActionAccess().getEventEventParserRuleCall_1_0()); 
            	    
            pushFollow(FOLLOW_2);
            lv_event_1_0=ruleEvent();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getEventActionRule());
            	        }
                   		set(
                   			current, 
                   			"event",
                    		lv_event_1_0, 
                    		"org.correttouml.grammars.StateMachineActions.Event");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleEventAction"


    // $ANTLR start "entryRuleLink"
    // InternalStateMachineActions.g:487:1: entryRuleLink returns [EObject current=null] : iv_ruleLink= ruleLink EOF ;
    public final EObject entryRuleLink() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleLink = null;


        try {
            // InternalStateMachineActions.g:488:2: (iv_ruleLink= ruleLink EOF )
            // InternalStateMachineActions.g:489:2: iv_ruleLink= ruleLink EOF
            {
             newCompositeNode(grammarAccess.getLinkRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleLink=ruleLink();

            state._fsp--;

             current =iv_ruleLink; 
            match(input,EOF,FOLLOW_2); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleLink"


    // $ANTLR start "ruleLink"
    // InternalStateMachineActions.g:496:1: ruleLink returns [EObject current=null] : ( (otherlv_0= '#' ( (lv_linkName_1_0= RULE_ID ) ) otherlv_2= '.' ( (lv_associationEnd_3_0= RULE_ID ) ) ) | ( (lv_self_4_0= 'self' ) ) ) ;
    public final EObject ruleLink() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token lv_linkName_1_0=null;
        Token otherlv_2=null;
        Token lv_associationEnd_3_0=null;
        Token lv_self_4_0=null;

         enterRule(); 
            
        try {
            // InternalStateMachineActions.g:499:28: ( ( (otherlv_0= '#' ( (lv_linkName_1_0= RULE_ID ) ) otherlv_2= '.' ( (lv_associationEnd_3_0= RULE_ID ) ) ) | ( (lv_self_4_0= 'self' ) ) ) )
            // InternalStateMachineActions.g:500:1: ( (otherlv_0= '#' ( (lv_linkName_1_0= RULE_ID ) ) otherlv_2= '.' ( (lv_associationEnd_3_0= RULE_ID ) ) ) | ( (lv_self_4_0= 'self' ) ) )
            {
            // InternalStateMachineActions.g:500:1: ( (otherlv_0= '#' ( (lv_linkName_1_0= RULE_ID ) ) otherlv_2= '.' ( (lv_associationEnd_3_0= RULE_ID ) ) ) | ( (lv_self_4_0= 'self' ) ) )
            int alt7=2;
            int LA7_0 = input.LA(1);

            if ( (LA7_0==16) ) {
                alt7=1;
            }
            else if ( (LA7_0==18) ) {
                alt7=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 7, 0, input);

                throw nvae;
            }
            switch (alt7) {
                case 1 :
                    // InternalStateMachineActions.g:500:2: (otherlv_0= '#' ( (lv_linkName_1_0= RULE_ID ) ) otherlv_2= '.' ( (lv_associationEnd_3_0= RULE_ID ) ) )
                    {
                    // InternalStateMachineActions.g:500:2: (otherlv_0= '#' ( (lv_linkName_1_0= RULE_ID ) ) otherlv_2= '.' ( (lv_associationEnd_3_0= RULE_ID ) ) )
                    // InternalStateMachineActions.g:500:4: otherlv_0= '#' ( (lv_linkName_1_0= RULE_ID ) ) otherlv_2= '.' ( (lv_associationEnd_3_0= RULE_ID ) )
                    {
                    otherlv_0=(Token)match(input,16,FOLLOW_9); 

                        	newLeafNode(otherlv_0, grammarAccess.getLinkAccess().getNumberSignKeyword_0_0());
                        
                    // InternalStateMachineActions.g:504:1: ( (lv_linkName_1_0= RULE_ID ) )
                    // InternalStateMachineActions.g:505:1: (lv_linkName_1_0= RULE_ID )
                    {
                    // InternalStateMachineActions.g:505:1: (lv_linkName_1_0= RULE_ID )
                    // InternalStateMachineActions.g:506:3: lv_linkName_1_0= RULE_ID
                    {
                    lv_linkName_1_0=(Token)match(input,RULE_ID,FOLLOW_10); 

                    			newLeafNode(lv_linkName_1_0, grammarAccess.getLinkAccess().getLinkNameIDTerminalRuleCall_0_1_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getLinkRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"linkName",
                            		lv_linkName_1_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }

                    otherlv_2=(Token)match(input,17,FOLLOW_9); 

                        	newLeafNode(otherlv_2, grammarAccess.getLinkAccess().getFullStopKeyword_0_2());
                        
                    // InternalStateMachineActions.g:526:1: ( (lv_associationEnd_3_0= RULE_ID ) )
                    // InternalStateMachineActions.g:527:1: (lv_associationEnd_3_0= RULE_ID )
                    {
                    // InternalStateMachineActions.g:527:1: (lv_associationEnd_3_0= RULE_ID )
                    // InternalStateMachineActions.g:528:3: lv_associationEnd_3_0= RULE_ID
                    {
                    lv_associationEnd_3_0=(Token)match(input,RULE_ID,FOLLOW_2); 

                    			newLeafNode(lv_associationEnd_3_0, grammarAccess.getLinkAccess().getAssociationEndIDTerminalRuleCall_0_3_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getLinkRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"associationEnd",
                            		lv_associationEnd_3_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }


                    }


                    }
                    break;
                case 2 :
                    // InternalStateMachineActions.g:545:6: ( (lv_self_4_0= 'self' ) )
                    {
                    // InternalStateMachineActions.g:545:6: ( (lv_self_4_0= 'self' ) )
                    // InternalStateMachineActions.g:546:1: (lv_self_4_0= 'self' )
                    {
                    // InternalStateMachineActions.g:546:1: (lv_self_4_0= 'self' )
                    // InternalStateMachineActions.g:547:3: lv_self_4_0= 'self'
                    {
                    lv_self_4_0=(Token)match(input,18,FOLLOW_2); 

                            newLeafNode(lv_self_4_0, grammarAccess.getLinkAccess().getSelfSelfKeyword_1_0());
                        

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getLinkRule());
                    	        }
                           		setWithLastConsumed(current, "self", lv_self_4_0, "self");
                    	    

                    }


                    }


                    }
                    break;

            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleLink"


    // $ANTLR start "entryRuleEvent"
    // InternalStateMachineActions.g:568:1: entryRuleEvent returns [EObject current=null] : iv_ruleEvent= ruleEvent EOF ;
    public final EObject entryRuleEvent() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleEvent = null;


        try {
            // InternalStateMachineActions.g:569:2: (iv_ruleEvent= ruleEvent EOF )
            // InternalStateMachineActions.g:570:2: iv_ruleEvent= ruleEvent EOF
            {
             newCompositeNode(grammarAccess.getEventRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleEvent=ruleEvent();

            state._fsp--;

             current =iv_ruleEvent; 
            match(input,EOF,FOLLOW_2); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleEvent"


    // $ANTLR start "ruleEvent"
    // InternalStateMachineActions.g:577:1: ruleEvent returns [EObject current=null] : (otherlv_0= '@' ( ( (lv_eventName_1_0= RULE_ID ) ) | ( ( (lv_associationEnd_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_opName_4_0= RULE_ID ) ) ) ) (otherlv_5= '(' ( (lv_parameters_6_0= ruleParameters ) ) otherlv_7= ')' )? otherlv_8= '.' ( (lv_eventExtension_9_0= ruleEventExtensions ) ) ) ;
    public final EObject ruleEvent() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token lv_eventName_1_0=null;
        Token lv_associationEnd_2_0=null;
        Token otherlv_3=null;
        Token lv_opName_4_0=null;
        Token otherlv_5=null;
        Token otherlv_7=null;
        Token otherlv_8=null;
        EObject lv_parameters_6_0 = null;

        AntlrDatatypeRuleToken lv_eventExtension_9_0 = null;


         enterRule(); 
            
        try {
            // InternalStateMachineActions.g:580:28: ( (otherlv_0= '@' ( ( (lv_eventName_1_0= RULE_ID ) ) | ( ( (lv_associationEnd_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_opName_4_0= RULE_ID ) ) ) ) (otherlv_5= '(' ( (lv_parameters_6_0= ruleParameters ) ) otherlv_7= ')' )? otherlv_8= '.' ( (lv_eventExtension_9_0= ruleEventExtensions ) ) ) )
            // InternalStateMachineActions.g:581:1: (otherlv_0= '@' ( ( (lv_eventName_1_0= RULE_ID ) ) | ( ( (lv_associationEnd_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_opName_4_0= RULE_ID ) ) ) ) (otherlv_5= '(' ( (lv_parameters_6_0= ruleParameters ) ) otherlv_7= ')' )? otherlv_8= '.' ( (lv_eventExtension_9_0= ruleEventExtensions ) ) )
            {
            // InternalStateMachineActions.g:581:1: (otherlv_0= '@' ( ( (lv_eventName_1_0= RULE_ID ) ) | ( ( (lv_associationEnd_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_opName_4_0= RULE_ID ) ) ) ) (otherlv_5= '(' ( (lv_parameters_6_0= ruleParameters ) ) otherlv_7= ')' )? otherlv_8= '.' ( (lv_eventExtension_9_0= ruleEventExtensions ) ) )
            // InternalStateMachineActions.g:581:3: otherlv_0= '@' ( ( (lv_eventName_1_0= RULE_ID ) ) | ( ( (lv_associationEnd_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_opName_4_0= RULE_ID ) ) ) ) (otherlv_5= '(' ( (lv_parameters_6_0= ruleParameters ) ) otherlv_7= ')' )? otherlv_8= '.' ( (lv_eventExtension_9_0= ruleEventExtensions ) )
            {
            otherlv_0=(Token)match(input,19,FOLLOW_9); 

                	newLeafNode(otherlv_0, grammarAccess.getEventAccess().getCommercialAtKeyword_0());
                
            // InternalStateMachineActions.g:585:1: ( ( (lv_eventName_1_0= RULE_ID ) ) | ( ( (lv_associationEnd_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_opName_4_0= RULE_ID ) ) ) )
            int alt8=2;
            int LA8_0 = input.LA(1);

            if ( (LA8_0==RULE_ID) ) {
                int LA8_1 = input.LA(2);

                if ( (LA8_1==17) ) {
                    int LA8_2 = input.LA(3);

                    if ( (LA8_2==RULE_ID) ) {
                        alt8=2;
                    }
                    else if ( ((LA8_2>=24 && LA8_2<=30)) ) {
                        alt8=1;
                    }
                    else {
                        NoViableAltException nvae =
                            new NoViableAltException("", 8, 2, input);

                        throw nvae;
                    }
                }
                else if ( (LA8_1==20) ) {
                    alt8=1;
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 8, 1, input);

                    throw nvae;
                }
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 8, 0, input);

                throw nvae;
            }
            switch (alt8) {
                case 1 :
                    // InternalStateMachineActions.g:585:2: ( (lv_eventName_1_0= RULE_ID ) )
                    {
                    // InternalStateMachineActions.g:585:2: ( (lv_eventName_1_0= RULE_ID ) )
                    // InternalStateMachineActions.g:586:1: (lv_eventName_1_0= RULE_ID )
                    {
                    // InternalStateMachineActions.g:586:1: (lv_eventName_1_0= RULE_ID )
                    // InternalStateMachineActions.g:587:3: lv_eventName_1_0= RULE_ID
                    {
                    lv_eventName_1_0=(Token)match(input,RULE_ID,FOLLOW_11); 

                    			newLeafNode(lv_eventName_1_0, grammarAccess.getEventAccess().getEventNameIDTerminalRuleCall_1_0_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getEventRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"eventName",
                            		lv_eventName_1_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }


                    }
                    break;
                case 2 :
                    // InternalStateMachineActions.g:604:6: ( ( (lv_associationEnd_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_opName_4_0= RULE_ID ) ) )
                    {
                    // InternalStateMachineActions.g:604:6: ( ( (lv_associationEnd_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_opName_4_0= RULE_ID ) ) )
                    // InternalStateMachineActions.g:604:7: ( (lv_associationEnd_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_opName_4_0= RULE_ID ) )
                    {
                    // InternalStateMachineActions.g:604:7: ( (lv_associationEnd_2_0= RULE_ID ) )
                    // InternalStateMachineActions.g:605:1: (lv_associationEnd_2_0= RULE_ID )
                    {
                    // InternalStateMachineActions.g:605:1: (lv_associationEnd_2_0= RULE_ID )
                    // InternalStateMachineActions.g:606:3: lv_associationEnd_2_0= RULE_ID
                    {
                    lv_associationEnd_2_0=(Token)match(input,RULE_ID,FOLLOW_10); 

                    			newLeafNode(lv_associationEnd_2_0, grammarAccess.getEventAccess().getAssociationEndIDTerminalRuleCall_1_1_0_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getEventRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"associationEnd",
                            		lv_associationEnd_2_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }

                    otherlv_3=(Token)match(input,17,FOLLOW_9); 

                        	newLeafNode(otherlv_3, grammarAccess.getEventAccess().getFullStopKeyword_1_1_1());
                        
                    // InternalStateMachineActions.g:626:1: ( (lv_opName_4_0= RULE_ID ) )
                    // InternalStateMachineActions.g:627:1: (lv_opName_4_0= RULE_ID )
                    {
                    // InternalStateMachineActions.g:627:1: (lv_opName_4_0= RULE_ID )
                    // InternalStateMachineActions.g:628:3: lv_opName_4_0= RULE_ID
                    {
                    lv_opName_4_0=(Token)match(input,RULE_ID,FOLLOW_11); 

                    			newLeafNode(lv_opName_4_0, grammarAccess.getEventAccess().getOpNameIDTerminalRuleCall_1_1_2_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getEventRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"opName",
                            		lv_opName_4_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }


                    }


                    }
                    break;

            }

            // InternalStateMachineActions.g:644:4: (otherlv_5= '(' ( (lv_parameters_6_0= ruleParameters ) ) otherlv_7= ')' )?
            int alt9=2;
            int LA9_0 = input.LA(1);

            if ( (LA9_0==20) ) {
                alt9=1;
            }
            switch (alt9) {
                case 1 :
                    // InternalStateMachineActions.g:644:6: otherlv_5= '(' ( (lv_parameters_6_0= ruleParameters ) ) otherlv_7= ')'
                    {
                    otherlv_5=(Token)match(input,20,FOLLOW_12); 

                        	newLeafNode(otherlv_5, grammarAccess.getEventAccess().getLeftParenthesisKeyword_2_0());
                        
                    // InternalStateMachineActions.g:648:1: ( (lv_parameters_6_0= ruleParameters ) )
                    // InternalStateMachineActions.g:649:1: (lv_parameters_6_0= ruleParameters )
                    {
                    // InternalStateMachineActions.g:649:1: (lv_parameters_6_0= ruleParameters )
                    // InternalStateMachineActions.g:650:3: lv_parameters_6_0= ruleParameters
                    {
                     
                    	        newCompositeNode(grammarAccess.getEventAccess().getParametersParametersParserRuleCall_2_1_0()); 
                    	    
                    pushFollow(FOLLOW_13);
                    lv_parameters_6_0=ruleParameters();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getEventRule());
                    	        }
                           		set(
                           			current, 
                           			"parameters",
                            		lv_parameters_6_0, 
                            		"org.correttouml.grammars.StateMachineActions.Parameters");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }

                    otherlv_7=(Token)match(input,21,FOLLOW_10); 

                        	newLeafNode(otherlv_7, grammarAccess.getEventAccess().getRightParenthesisKeyword_2_2());
                        

                    }
                    break;

            }

            otherlv_8=(Token)match(input,17,FOLLOW_14); 

                	newLeafNode(otherlv_8, grammarAccess.getEventAccess().getFullStopKeyword_3());
                
            // InternalStateMachineActions.g:674:1: ( (lv_eventExtension_9_0= ruleEventExtensions ) )
            // InternalStateMachineActions.g:675:1: (lv_eventExtension_9_0= ruleEventExtensions )
            {
            // InternalStateMachineActions.g:675:1: (lv_eventExtension_9_0= ruleEventExtensions )
            // InternalStateMachineActions.g:676:3: lv_eventExtension_9_0= ruleEventExtensions
            {
             
            	        newCompositeNode(grammarAccess.getEventAccess().getEventExtensionEventExtensionsParserRuleCall_4_0()); 
            	    
            pushFollow(FOLLOW_2);
            lv_eventExtension_9_0=ruleEventExtensions();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getEventRule());
            	        }
                   		set(
                   			current, 
                   			"eventExtension",
                    		lv_eventExtension_9_0, 
                    		"org.correttouml.grammars.StateMachineActions.EventExtensions");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleEvent"


    // $ANTLR start "entryRuleParameters"
    // InternalStateMachineActions.g:700:1: entryRuleParameters returns [EObject current=null] : iv_ruleParameters= ruleParameters EOF ;
    public final EObject entryRuleParameters() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleParameters = null;


        try {
            // InternalStateMachineActions.g:701:2: (iv_ruleParameters= ruleParameters EOF )
            // InternalStateMachineActions.g:702:2: iv_ruleParameters= ruleParameters EOF
            {
             newCompositeNode(grammarAccess.getParametersRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleParameters=ruleParameters();

            state._fsp--;

             current =iv_ruleParameters; 
            match(input,EOF,FOLLOW_2); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleParameters"


    // $ANTLR start "ruleParameters"
    // InternalStateMachineActions.g:709:1: ruleParameters returns [EObject current=null] : ( ( ( ( (lv_isPast_0_0= '<P>' ) ) | ( (lv_isFuture_1_0= '<F>' ) ) )? ( (lv_param_2_0= RULE_ID ) ) ) | ( ( ( (lv_isPast_3_0= '<P>' ) ) | ( (lv_isFuture_4_0= '<F>' ) ) )? ( (lv_param_5_0= RULE_ID ) ) otherlv_6= ',' ( (lv_parameters_7_0= ruleParameters ) ) ) ) ;
    public final EObject ruleParameters() throws RecognitionException {
        EObject current = null;

        Token lv_isPast_0_0=null;
        Token lv_isFuture_1_0=null;
        Token lv_param_2_0=null;
        Token lv_isPast_3_0=null;
        Token lv_isFuture_4_0=null;
        Token lv_param_5_0=null;
        Token otherlv_6=null;
        EObject lv_parameters_7_0 = null;


         enterRule(); 
            
        try {
            // InternalStateMachineActions.g:712:28: ( ( ( ( ( (lv_isPast_0_0= '<P>' ) ) | ( (lv_isFuture_1_0= '<F>' ) ) )? ( (lv_param_2_0= RULE_ID ) ) ) | ( ( ( (lv_isPast_3_0= '<P>' ) ) | ( (lv_isFuture_4_0= '<F>' ) ) )? ( (lv_param_5_0= RULE_ID ) ) otherlv_6= ',' ( (lv_parameters_7_0= ruleParameters ) ) ) ) )
            // InternalStateMachineActions.g:713:1: ( ( ( ( (lv_isPast_0_0= '<P>' ) ) | ( (lv_isFuture_1_0= '<F>' ) ) )? ( (lv_param_2_0= RULE_ID ) ) ) | ( ( ( (lv_isPast_3_0= '<P>' ) ) | ( (lv_isFuture_4_0= '<F>' ) ) )? ( (lv_param_5_0= RULE_ID ) ) otherlv_6= ',' ( (lv_parameters_7_0= ruleParameters ) ) ) )
            {
            // InternalStateMachineActions.g:713:1: ( ( ( ( (lv_isPast_0_0= '<P>' ) ) | ( (lv_isFuture_1_0= '<F>' ) ) )? ( (lv_param_2_0= RULE_ID ) ) ) | ( ( ( (lv_isPast_3_0= '<P>' ) ) | ( (lv_isFuture_4_0= '<F>' ) ) )? ( (lv_param_5_0= RULE_ID ) ) otherlv_6= ',' ( (lv_parameters_7_0= ruleParameters ) ) ) )
            int alt12=2;
            switch ( input.LA(1) ) {
            case 22:
                {
                int LA12_1 = input.LA(2);

                if ( (LA12_1==RULE_ID) ) {
                    int LA12_3 = input.LA(3);

                    if ( (LA12_3==12) ) {
                        alt12=2;
                    }
                    else if ( (LA12_3==EOF||LA12_3==21) ) {
                        alt12=1;
                    }
                    else {
                        NoViableAltException nvae =
                            new NoViableAltException("", 12, 3, input);

                        throw nvae;
                    }
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 12, 1, input);

                    throw nvae;
                }
                }
                break;
            case 23:
                {
                int LA12_2 = input.LA(2);

                if ( (LA12_2==RULE_ID) ) {
                    int LA12_3 = input.LA(3);

                    if ( (LA12_3==12) ) {
                        alt12=2;
                    }
                    else if ( (LA12_3==EOF||LA12_3==21) ) {
                        alt12=1;
                    }
                    else {
                        NoViableAltException nvae =
                            new NoViableAltException("", 12, 3, input);

                        throw nvae;
                    }
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 12, 2, input);

                    throw nvae;
                }
                }
                break;
            case RULE_ID:
                {
                int LA12_3 = input.LA(2);

                if ( (LA12_3==12) ) {
                    alt12=2;
                }
                else if ( (LA12_3==EOF||LA12_3==21) ) {
                    alt12=1;
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 12, 3, input);

                    throw nvae;
                }
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 12, 0, input);

                throw nvae;
            }

            switch (alt12) {
                case 1 :
                    // InternalStateMachineActions.g:713:2: ( ( ( (lv_isPast_0_0= '<P>' ) ) | ( (lv_isFuture_1_0= '<F>' ) ) )? ( (lv_param_2_0= RULE_ID ) ) )
                    {
                    // InternalStateMachineActions.g:713:2: ( ( ( (lv_isPast_0_0= '<P>' ) ) | ( (lv_isFuture_1_0= '<F>' ) ) )? ( (lv_param_2_0= RULE_ID ) ) )
                    // InternalStateMachineActions.g:713:3: ( ( (lv_isPast_0_0= '<P>' ) ) | ( (lv_isFuture_1_0= '<F>' ) ) )? ( (lv_param_2_0= RULE_ID ) )
                    {
                    // InternalStateMachineActions.g:713:3: ( ( (lv_isPast_0_0= '<P>' ) ) | ( (lv_isFuture_1_0= '<F>' ) ) )?
                    int alt10=3;
                    int LA10_0 = input.LA(1);

                    if ( (LA10_0==22) ) {
                        alt10=1;
                    }
                    else if ( (LA10_0==23) ) {
                        alt10=2;
                    }
                    switch (alt10) {
                        case 1 :
                            // InternalStateMachineActions.g:713:4: ( (lv_isPast_0_0= '<P>' ) )
                            {
                            // InternalStateMachineActions.g:713:4: ( (lv_isPast_0_0= '<P>' ) )
                            // InternalStateMachineActions.g:714:1: (lv_isPast_0_0= '<P>' )
                            {
                            // InternalStateMachineActions.g:714:1: (lv_isPast_0_0= '<P>' )
                            // InternalStateMachineActions.g:715:3: lv_isPast_0_0= '<P>'
                            {
                            lv_isPast_0_0=(Token)match(input,22,FOLLOW_9); 

                                    newLeafNode(lv_isPast_0_0, grammarAccess.getParametersAccess().getIsPastPKeyword_0_0_0_0());
                                

                            	        if (current==null) {
                            	            current = createModelElement(grammarAccess.getParametersRule());
                            	        }
                                   		setWithLastConsumed(current, "isPast", lv_isPast_0_0, "<P>");
                            	    

                            }


                            }


                            }
                            break;
                        case 2 :
                            // InternalStateMachineActions.g:729:6: ( (lv_isFuture_1_0= '<F>' ) )
                            {
                            // InternalStateMachineActions.g:729:6: ( (lv_isFuture_1_0= '<F>' ) )
                            // InternalStateMachineActions.g:730:1: (lv_isFuture_1_0= '<F>' )
                            {
                            // InternalStateMachineActions.g:730:1: (lv_isFuture_1_0= '<F>' )
                            // InternalStateMachineActions.g:731:3: lv_isFuture_1_0= '<F>'
                            {
                            lv_isFuture_1_0=(Token)match(input,23,FOLLOW_9); 

                                    newLeafNode(lv_isFuture_1_0, grammarAccess.getParametersAccess().getIsFutureFKeyword_0_0_1_0());
                                

                            	        if (current==null) {
                            	            current = createModelElement(grammarAccess.getParametersRule());
                            	        }
                                   		setWithLastConsumed(current, "isFuture", lv_isFuture_1_0, "<F>");
                            	    

                            }


                            }


                            }
                            break;

                    }

                    // InternalStateMachineActions.g:744:4: ( (lv_param_2_0= RULE_ID ) )
                    // InternalStateMachineActions.g:745:1: (lv_param_2_0= RULE_ID )
                    {
                    // InternalStateMachineActions.g:745:1: (lv_param_2_0= RULE_ID )
                    // InternalStateMachineActions.g:746:3: lv_param_2_0= RULE_ID
                    {
                    lv_param_2_0=(Token)match(input,RULE_ID,FOLLOW_2); 

                    			newLeafNode(lv_param_2_0, grammarAccess.getParametersAccess().getParamIDTerminalRuleCall_0_1_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getParametersRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"param",
                            		lv_param_2_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }


                    }


                    }
                    break;
                case 2 :
                    // InternalStateMachineActions.g:763:6: ( ( ( (lv_isPast_3_0= '<P>' ) ) | ( (lv_isFuture_4_0= '<F>' ) ) )? ( (lv_param_5_0= RULE_ID ) ) otherlv_6= ',' ( (lv_parameters_7_0= ruleParameters ) ) )
                    {
                    // InternalStateMachineActions.g:763:6: ( ( ( (lv_isPast_3_0= '<P>' ) ) | ( (lv_isFuture_4_0= '<F>' ) ) )? ( (lv_param_5_0= RULE_ID ) ) otherlv_6= ',' ( (lv_parameters_7_0= ruleParameters ) ) )
                    // InternalStateMachineActions.g:763:7: ( ( (lv_isPast_3_0= '<P>' ) ) | ( (lv_isFuture_4_0= '<F>' ) ) )? ( (lv_param_5_0= RULE_ID ) ) otherlv_6= ',' ( (lv_parameters_7_0= ruleParameters ) )
                    {
                    // InternalStateMachineActions.g:763:7: ( ( (lv_isPast_3_0= '<P>' ) ) | ( (lv_isFuture_4_0= '<F>' ) ) )?
                    int alt11=3;
                    int LA11_0 = input.LA(1);

                    if ( (LA11_0==22) ) {
                        alt11=1;
                    }
                    else if ( (LA11_0==23) ) {
                        alt11=2;
                    }
                    switch (alt11) {
                        case 1 :
                            // InternalStateMachineActions.g:763:8: ( (lv_isPast_3_0= '<P>' ) )
                            {
                            // InternalStateMachineActions.g:763:8: ( (lv_isPast_3_0= '<P>' ) )
                            // InternalStateMachineActions.g:764:1: (lv_isPast_3_0= '<P>' )
                            {
                            // InternalStateMachineActions.g:764:1: (lv_isPast_3_0= '<P>' )
                            // InternalStateMachineActions.g:765:3: lv_isPast_3_0= '<P>'
                            {
                            lv_isPast_3_0=(Token)match(input,22,FOLLOW_9); 

                                    newLeafNode(lv_isPast_3_0, grammarAccess.getParametersAccess().getIsPastPKeyword_1_0_0_0());
                                

                            	        if (current==null) {
                            	            current = createModelElement(grammarAccess.getParametersRule());
                            	        }
                                   		setWithLastConsumed(current, "isPast", lv_isPast_3_0, "<P>");
                            	    

                            }


                            }


                            }
                            break;
                        case 2 :
                            // InternalStateMachineActions.g:779:6: ( (lv_isFuture_4_0= '<F>' ) )
                            {
                            // InternalStateMachineActions.g:779:6: ( (lv_isFuture_4_0= '<F>' ) )
                            // InternalStateMachineActions.g:780:1: (lv_isFuture_4_0= '<F>' )
                            {
                            // InternalStateMachineActions.g:780:1: (lv_isFuture_4_0= '<F>' )
                            // InternalStateMachineActions.g:781:3: lv_isFuture_4_0= '<F>'
                            {
                            lv_isFuture_4_0=(Token)match(input,23,FOLLOW_9); 

                                    newLeafNode(lv_isFuture_4_0, grammarAccess.getParametersAccess().getIsFutureFKeyword_1_0_1_0());
                                

                            	        if (current==null) {
                            	            current = createModelElement(grammarAccess.getParametersRule());
                            	        }
                                   		setWithLastConsumed(current, "isFuture", lv_isFuture_4_0, "<F>");
                            	    

                            }


                            }


                            }
                            break;

                    }

                    // InternalStateMachineActions.g:794:4: ( (lv_param_5_0= RULE_ID ) )
                    // InternalStateMachineActions.g:795:1: (lv_param_5_0= RULE_ID )
                    {
                    // InternalStateMachineActions.g:795:1: (lv_param_5_0= RULE_ID )
                    // InternalStateMachineActions.g:796:3: lv_param_5_0= RULE_ID
                    {
                    lv_param_5_0=(Token)match(input,RULE_ID,FOLLOW_15); 

                    			newLeafNode(lv_param_5_0, grammarAccess.getParametersAccess().getParamIDTerminalRuleCall_1_1_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getParametersRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"param",
                            		lv_param_5_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }

                    otherlv_6=(Token)match(input,12,FOLLOW_12); 

                        	newLeafNode(otherlv_6, grammarAccess.getParametersAccess().getCommaKeyword_1_2());
                        
                    // InternalStateMachineActions.g:816:1: ( (lv_parameters_7_0= ruleParameters ) )
                    // InternalStateMachineActions.g:817:1: (lv_parameters_7_0= ruleParameters )
                    {
                    // InternalStateMachineActions.g:817:1: (lv_parameters_7_0= ruleParameters )
                    // InternalStateMachineActions.g:818:3: lv_parameters_7_0= ruleParameters
                    {
                     
                    	        newCompositeNode(grammarAccess.getParametersAccess().getParametersParametersParserRuleCall_1_3_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_parameters_7_0=ruleParameters();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getParametersRule());
                    	        }
                           		set(
                           			current, 
                           			"parameters",
                            		lv_parameters_7_0, 
                            		"org.correttouml.grammars.StateMachineActions.Parameters");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }


                    }
                    break;

            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleParameters"


    // $ANTLR start "entryRuleEventExtensions"
    // InternalStateMachineActions.g:842:1: entryRuleEventExtensions returns [String current=null] : iv_ruleEventExtensions= ruleEventExtensions EOF ;
    public final String entryRuleEventExtensions() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleEventExtensions = null;


        try {
            // InternalStateMachineActions.g:843:2: (iv_ruleEventExtensions= ruleEventExtensions EOF )
            // InternalStateMachineActions.g:844:2: iv_ruleEventExtensions= ruleEventExtensions EOF
            {
             newCompositeNode(grammarAccess.getEventExtensionsRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleEventExtensions=ruleEventExtensions();

            state._fsp--;

             current =iv_ruleEventExtensions.getText(); 
            match(input,EOF,FOLLOW_2); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleEventExtensions"


    // $ANTLR start "ruleEventExtensions"
    // InternalStateMachineActions.g:851:1: ruleEventExtensions returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' ) ;
    public final AntlrDatatypeRuleToken ruleEventExtensions() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token kw=null;

         enterRule(); 
            
        try {
            // InternalStateMachineActions.g:854:28: ( (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' ) )
            // InternalStateMachineActions.g:855:1: (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' )
            {
            // InternalStateMachineActions.g:855:1: (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' )
            int alt13=7;
            switch ( input.LA(1) ) {
            case 24:
                {
                alt13=1;
                }
                break;
            case 25:
                {
                alt13=2;
                }
                break;
            case 26:
                {
                alt13=3;
                }
                break;
            case 27:
                {
                alt13=4;
                }
                break;
            case 28:
                {
                alt13=5;
                }
                break;
            case 29:
                {
                alt13=6;
                }
                break;
            case 30:
                {
                alt13=7;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 13, 0, input);

                throw nvae;
            }

            switch (alt13) {
                case 1 :
                    // InternalStateMachineActions.g:856:2: kw= 'exit'
                    {
                    kw=(Token)match(input,24,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getExitKeyword_0()); 
                        

                    }
                    break;
                case 2 :
                    // InternalStateMachineActions.g:863:2: kw= 'enter'
                    {
                    kw=(Token)match(input,25,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getEnterKeyword_1()); 
                        

                    }
                    break;
                case 3 :
                    // InternalStateMachineActions.g:870:2: kw= 'start'
                    {
                    kw=(Token)match(input,26,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getStartKeyword_2()); 
                        

                    }
                    break;
                case 4 :
                    // InternalStateMachineActions.g:877:2: kw= 'end'
                    {
                    kw=(Token)match(input,27,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getEndKeyword_3()); 
                        

                    }
                    break;
                case 5 :
                    // InternalStateMachineActions.g:884:2: kw= 'tick'
                    {
                    kw=(Token)match(input,28,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getTickKeyword_4()); 
                        

                    }
                    break;
                case 6 :
                    // InternalStateMachineActions.g:891:2: kw= 'sig'
                    {
                    kw=(Token)match(input,29,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getSigKeyword_5()); 
                        

                    }
                    break;
                case 7 :
                    // InternalStateMachineActions.g:898:2: kw= 'call'
                    {
                    kw=(Token)match(input,30,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getCallKeyword_6()); 
                        

                    }
                    break;

            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleEventExtensions"

    // Delegated rules


 

    public static final BitSet FOLLOW_1 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_2 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_3 = new BitSet(new long[]{0x0000000000001002L});
    public static final BitSet FOLLOW_4 = new BitSet(new long[]{0x00000000000D0010L});
    public static final BitSet FOLLOW_5 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_6 = new BitSet(new long[]{0x000000000000C050L});
    public static final BitSet FOLLOW_7 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_8 = new BitSet(new long[]{0x0000000000000050L});
    public static final BitSet FOLLOW_9 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_10 = new BitSet(new long[]{0x0000000000020000L});
    public static final BitSet FOLLOW_11 = new BitSet(new long[]{0x0000000000120000L});
    public static final BitSet FOLLOW_12 = new BitSet(new long[]{0x0000000000C00010L});
    public static final BitSet FOLLOW_13 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_14 = new BitSet(new long[]{0x000000007F000000L});
    public static final BitSet FOLLOW_15 = new BitSet(new long[]{0x0000000000001000L});

}