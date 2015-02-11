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
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_ID", "RULE_OPERATOR", "RULE_INT", "RULE_STRING", "RULE_ML_COMMENT", "RULE_SL_COMMENT", "RULE_WS", "RULE_ANY_OTHER", "'='", "'@'", "'('", "')'", "'.'", "','", "'exit'", "'enter'", "'start'", "'end'", "'tick'", "'sig'", "'call'"
    };
    public static final int RULE_ID=4;
    public static final int T__24=24;
    public static final int T__23=23;
    public static final int T__22=22;
    public static final int RULE_ANY_OTHER=11;
    public static final int T__21=21;
    public static final int T__20=20;
    public static final int RULE_SL_COMMENT=9;
    public static final int EOF=-1;
    public static final int RULE_ML_COMMENT=8;
    public static final int T__19=19;
    public static final int RULE_STRING=7;
    public static final int T__16=16;
    public static final int T__15=15;
    public static final int T__18=18;
    public static final int T__17=17;
    public static final int T__12=12;
    public static final int T__14=14;
    public static final int T__13=13;
    public static final int RULE_INT=6;
    public static final int RULE_OPERATOR=5;
    public static final int RULE_WS=10;

    // delegates
    // delegators


        public InternalStateMachineActionsParser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public InternalStateMachineActionsParser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        

    public String[] getTokenNames() { return InternalStateMachineActionsParser.tokenNames; }
    public String getGrammarFileName() { return "../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g"; }



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
    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:67:1: entryRuleModel returns [EObject current=null] : iv_ruleModel= ruleModel EOF ;
    public final EObject entryRuleModel() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleModel = null;


        try {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:68:2: (iv_ruleModel= ruleModel EOF )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:69:2: iv_ruleModel= ruleModel EOF
            {
             newCompositeNode(grammarAccess.getModelRule()); 
            pushFollow(FOLLOW_ruleModel_in_entryRuleModel75);
            iv_ruleModel=ruleModel();

            state._fsp--;

             current =iv_ruleModel; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleModel85); 

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
    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:76:1: ruleModel returns [EObject current=null] : ( (lv_action_0_0= ruleAction ) ) ;
    public final EObject ruleModel() throws RecognitionException {
        EObject current = null;

        EObject lv_action_0_0 = null;


         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:79:28: ( ( (lv_action_0_0= ruleAction ) ) )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:80:1: ( (lv_action_0_0= ruleAction ) )
            {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:80:1: ( (lv_action_0_0= ruleAction ) )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:81:1: (lv_action_0_0= ruleAction )
            {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:81:1: (lv_action_0_0= ruleAction )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:82:3: lv_action_0_0= ruleAction
            {
             
            	        newCompositeNode(grammarAccess.getModelAccess().getActionActionParserRuleCall_0()); 
            	    
            pushFollow(FOLLOW_ruleAction_in_ruleModel130);
            lv_action_0_0=ruleAction();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getModelRule());
            	        }
                   		set(
                   			current, 
                   			"action",
                    		lv_action_0_0, 
                    		"Action");
            	        afterParserOrEnumRuleCall();
            	    

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
    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:106:1: entryRuleAction returns [EObject current=null] : iv_ruleAction= ruleAction EOF ;
    public final EObject entryRuleAction() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleAction = null;


        try {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:107:2: (iv_ruleAction= ruleAction EOF )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:108:2: iv_ruleAction= ruleAction EOF
            {
             newCompositeNode(grammarAccess.getActionRule()); 
            pushFollow(FOLLOW_ruleAction_in_entryRuleAction165);
            iv_ruleAction=ruleAction();

            state._fsp--;

             current =iv_ruleAction; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleAction175); 

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
    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:115:1: ruleAction returns [EObject current=null] : ( ( (lv_assignment_0_0= ruleAssignment ) ) | ( (lv_eventAction_1_0= ruleEventAction ) ) ) ;
    public final EObject ruleAction() throws RecognitionException {
        EObject current = null;

        EObject lv_assignment_0_0 = null;

        EObject lv_eventAction_1_0 = null;


         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:118:28: ( ( ( (lv_assignment_0_0= ruleAssignment ) ) | ( (lv_eventAction_1_0= ruleEventAction ) ) ) )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:119:1: ( ( (lv_assignment_0_0= ruleAssignment ) ) | ( (lv_eventAction_1_0= ruleEventAction ) ) )
            {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:119:1: ( ( (lv_assignment_0_0= ruleAssignment ) ) | ( (lv_eventAction_1_0= ruleEventAction ) ) )
            int alt1=2;
            int LA1_0 = input.LA(1);

            if ( (LA1_0==RULE_ID) ) {
                alt1=1;
            }
            else if ( (LA1_0==13) ) {
                alt1=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 1, 0, input);

                throw nvae;
            }
            switch (alt1) {
                case 1 :
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:119:2: ( (lv_assignment_0_0= ruleAssignment ) )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:119:2: ( (lv_assignment_0_0= ruleAssignment ) )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:120:1: (lv_assignment_0_0= ruleAssignment )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:120:1: (lv_assignment_0_0= ruleAssignment )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:121:3: lv_assignment_0_0= ruleAssignment
                    {
                     
                    	        newCompositeNode(grammarAccess.getActionAccess().getAssignmentAssignmentParserRuleCall_0_0()); 
                    	    
                    pushFollow(FOLLOW_ruleAssignment_in_ruleAction221);
                    lv_assignment_0_0=ruleAssignment();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getActionRule());
                    	        }
                           		set(
                           			current, 
                           			"assignment",
                            		lv_assignment_0_0, 
                            		"Assignment");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }
                    break;
                case 2 :
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:138:6: ( (lv_eventAction_1_0= ruleEventAction ) )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:138:6: ( (lv_eventAction_1_0= ruleEventAction ) )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:139:1: (lv_eventAction_1_0= ruleEventAction )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:139:1: (lv_eventAction_1_0= ruleEventAction )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:140:3: lv_eventAction_1_0= ruleEventAction
                    {
                     
                    	        newCompositeNode(grammarAccess.getActionAccess().getEventActionEventActionParserRuleCall_1_0()); 
                    	    
                    pushFollow(FOLLOW_ruleEventAction_in_ruleAction248);
                    lv_eventAction_1_0=ruleEventAction();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getActionRule());
                    	        }
                           		set(
                           			current, 
                           			"eventAction",
                            		lv_eventAction_1_0, 
                            		"EventAction");
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
    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:164:1: entryRuleAssignment returns [EObject current=null] : iv_ruleAssignment= ruleAssignment EOF ;
    public final EObject entryRuleAssignment() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleAssignment = null;


        try {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:165:2: (iv_ruleAssignment= ruleAssignment EOF )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:166:2: iv_ruleAssignment= ruleAssignment EOF
            {
             newCompositeNode(grammarAccess.getAssignmentRule()); 
            pushFollow(FOLLOW_ruleAssignment_in_entryRuleAssignment284);
            iv_ruleAssignment=ruleAssignment();

            state._fsp--;

             current =iv_ruleAssignment; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleAssignment294); 

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
    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:173:1: ruleAssignment returns [EObject current=null] : ( ( (lv_leftvar_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) ) ) ;
    public final EObject ruleAssignment() throws RecognitionException {
        EObject current = null;

        Token lv_leftvar_0_0=null;
        Token otherlv_1=null;
        EObject lv_expression_2_0 = null;


         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:176:28: ( ( ( (lv_leftvar_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) ) ) )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:177:1: ( ( (lv_leftvar_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) ) )
            {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:177:1: ( ( (lv_leftvar_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) ) )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:177:2: ( (lv_leftvar_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) )
            {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:177:2: ( (lv_leftvar_0_0= RULE_ID ) )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:178:1: (lv_leftvar_0_0= RULE_ID )
            {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:178:1: (lv_leftvar_0_0= RULE_ID )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:179:3: lv_leftvar_0_0= RULE_ID
            {
            lv_leftvar_0_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleAssignment336); 

            			newLeafNode(lv_leftvar_0_0, grammarAccess.getAssignmentAccess().getLeftvarIDTerminalRuleCall_0_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getAssignmentRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"leftvar",
                    		lv_leftvar_0_0, 
                    		"ID");
            	    

            }


            }

            otherlv_1=(Token)match(input,12,FOLLOW_12_in_ruleAssignment353); 

                	newLeafNode(otherlv_1, grammarAccess.getAssignmentAccess().getEqualsSignKeyword_1());
                
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:199:1: ( (lv_expression_2_0= ruleEXPRESSION ) )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:200:1: (lv_expression_2_0= ruleEXPRESSION )
            {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:200:1: (lv_expression_2_0= ruleEXPRESSION )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:201:3: lv_expression_2_0= ruleEXPRESSION
            {
             
            	        newCompositeNode(grammarAccess.getAssignmentAccess().getExpressionEXPRESSIONParserRuleCall_2_0()); 
            	    
            pushFollow(FOLLOW_ruleEXPRESSION_in_ruleAssignment374);
            lv_expression_2_0=ruleEXPRESSION();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getAssignmentRule());
            	        }
                   		set(
                   			current, 
                   			"expression",
                    		lv_expression_2_0, 
                    		"EXPRESSION");
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
    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:225:1: entryRuleEXPRESSION returns [EObject current=null] : iv_ruleEXPRESSION= ruleEXPRESSION EOF ;
    public final EObject entryRuleEXPRESSION() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleEXPRESSION = null;


        try {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:226:2: (iv_ruleEXPRESSION= ruleEXPRESSION EOF )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:227:2: iv_ruleEXPRESSION= ruleEXPRESSION EOF
            {
             newCompositeNode(grammarAccess.getEXPRESSIONRule()); 
            pushFollow(FOLLOW_ruleEXPRESSION_in_entryRuleEXPRESSION410);
            iv_ruleEXPRESSION=ruleEXPRESSION();

            state._fsp--;

             current =iv_ruleEXPRESSION; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleEXPRESSION420); 

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
    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:234:1: ruleEXPRESSION returns [EObject current=null] : ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) ) ;
    public final EObject ruleEXPRESSION() throws RecognitionException {
        EObject current = null;

        Token lv_operator_1_0=null;
        EObject lv_firstTerm_0_0 = null;

        EObject lv_secondTerm_2_0 = null;

        EObject lv_alone_3_0 = null;


         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:237:28: ( ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) ) )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:238:1: ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) )
            {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:238:1: ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) )
            int alt2=2;
            int LA2_0 = input.LA(1);

            if ( (LA2_0==RULE_ID) ) {
                int LA2_1 = input.LA(2);

                if ( (LA2_1==EOF) ) {
                    alt2=2;
                }
                else if ( (LA2_1==RULE_OPERATOR) ) {
                    alt2=1;
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 2, 1, input);

                    throw nvae;
                }
            }
            else if ( (LA2_0==RULE_INT) ) {
                int LA2_2 = input.LA(2);

                if ( (LA2_2==RULE_OPERATOR) ) {
                    alt2=1;
                }
                else if ( (LA2_2==EOF) ) {
                    alt2=2;
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 2, 2, input);

                    throw nvae;
                }
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 2, 0, input);

                throw nvae;
            }
            switch (alt2) {
                case 1 :
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:238:2: ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:238:2: ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:238:3: ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:238:3: ( (lv_firstTerm_0_0= ruleTERM ) )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:239:1: (lv_firstTerm_0_0= ruleTERM )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:239:1: (lv_firstTerm_0_0= ruleTERM )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:240:3: lv_firstTerm_0_0= ruleTERM
                    {
                     
                    	        newCompositeNode(grammarAccess.getEXPRESSIONAccess().getFirstTermTERMParserRuleCall_0_0_0()); 
                    	    
                    pushFollow(FOLLOW_ruleTERM_in_ruleEXPRESSION467);
                    lv_firstTerm_0_0=ruleTERM();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getEXPRESSIONRule());
                    	        }
                           		set(
                           			current, 
                           			"firstTerm",
                            		lv_firstTerm_0_0, 
                            		"TERM");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }

                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:256:2: ( (lv_operator_1_0= RULE_OPERATOR ) )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:257:1: (lv_operator_1_0= RULE_OPERATOR )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:257:1: (lv_operator_1_0= RULE_OPERATOR )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:258:3: lv_operator_1_0= RULE_OPERATOR
                    {
                    lv_operator_1_0=(Token)match(input,RULE_OPERATOR,FOLLOW_RULE_OPERATOR_in_ruleEXPRESSION484); 

                    			newLeafNode(lv_operator_1_0, grammarAccess.getEXPRESSIONAccess().getOperatorOPERATORTerminalRuleCall_0_1_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getEXPRESSIONRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"operator",
                            		lv_operator_1_0, 
                            		"OPERATOR");
                    	    

                    }


                    }

                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:274:2: ( (lv_secondTerm_2_0= ruleTERM ) )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:275:1: (lv_secondTerm_2_0= ruleTERM )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:275:1: (lv_secondTerm_2_0= ruleTERM )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:276:3: lv_secondTerm_2_0= ruleTERM
                    {
                     
                    	        newCompositeNode(grammarAccess.getEXPRESSIONAccess().getSecondTermTERMParserRuleCall_0_2_0()); 
                    	    
                    pushFollow(FOLLOW_ruleTERM_in_ruleEXPRESSION510);
                    lv_secondTerm_2_0=ruleTERM();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getEXPRESSIONRule());
                    	        }
                           		set(
                           			current, 
                           			"secondTerm",
                            		lv_secondTerm_2_0, 
                            		"TERM");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }


                    }
                    break;
                case 2 :
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:293:6: ( (lv_alone_3_0= ruleTERM ) )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:293:6: ( (lv_alone_3_0= ruleTERM ) )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:294:1: (lv_alone_3_0= ruleTERM )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:294:1: (lv_alone_3_0= ruleTERM )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:295:3: lv_alone_3_0= ruleTERM
                    {
                     
                    	        newCompositeNode(grammarAccess.getEXPRESSIONAccess().getAloneTERMParserRuleCall_1_0()); 
                    	    
                    pushFollow(FOLLOW_ruleTERM_in_ruleEXPRESSION538);
                    lv_alone_3_0=ruleTERM();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getEXPRESSIONRule());
                    	        }
                           		set(
                           			current, 
                           			"alone",
                            		lv_alone_3_0, 
                            		"TERM");
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
    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:319:1: entryRuleTERM returns [EObject current=null] : iv_ruleTERM= ruleTERM EOF ;
    public final EObject entryRuleTERM() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleTERM = null;


        try {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:320:2: (iv_ruleTERM= ruleTERM EOF )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:321:2: iv_ruleTERM= ruleTERM EOF
            {
             newCompositeNode(grammarAccess.getTERMRule()); 
            pushFollow(FOLLOW_ruleTERM_in_entryRuleTERM574);
            iv_ruleTERM=ruleTERM();

            state._fsp--;

             current =iv_ruleTERM; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleTERM584); 

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
    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:328:1: ruleTERM returns [EObject current=null] : ( ( (lv_variable_0_0= RULE_ID ) ) | ( (lv_constant_1_0= RULE_INT ) ) ) ;
    public final EObject ruleTERM() throws RecognitionException {
        EObject current = null;

        Token lv_variable_0_0=null;
        Token lv_constant_1_0=null;

         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:331:28: ( ( ( (lv_variable_0_0= RULE_ID ) ) | ( (lv_constant_1_0= RULE_INT ) ) ) )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:332:1: ( ( (lv_variable_0_0= RULE_ID ) ) | ( (lv_constant_1_0= RULE_INT ) ) )
            {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:332:1: ( ( (lv_variable_0_0= RULE_ID ) ) | ( (lv_constant_1_0= RULE_INT ) ) )
            int alt3=2;
            int LA3_0 = input.LA(1);

            if ( (LA3_0==RULE_ID) ) {
                alt3=1;
            }
            else if ( (LA3_0==RULE_INT) ) {
                alt3=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 3, 0, input);

                throw nvae;
            }
            switch (alt3) {
                case 1 :
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:332:2: ( (lv_variable_0_0= RULE_ID ) )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:332:2: ( (lv_variable_0_0= RULE_ID ) )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:333:1: (lv_variable_0_0= RULE_ID )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:333:1: (lv_variable_0_0= RULE_ID )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:334:3: lv_variable_0_0= RULE_ID
                    {
                    lv_variable_0_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleTERM626); 

                    			newLeafNode(lv_variable_0_0, grammarAccess.getTERMAccess().getVariableIDTerminalRuleCall_0_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getTERMRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"variable",
                            		lv_variable_0_0, 
                            		"ID");
                    	    

                    }


                    }


                    }
                    break;
                case 2 :
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:351:6: ( (lv_constant_1_0= RULE_INT ) )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:351:6: ( (lv_constant_1_0= RULE_INT ) )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:352:1: (lv_constant_1_0= RULE_INT )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:352:1: (lv_constant_1_0= RULE_INT )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:353:3: lv_constant_1_0= RULE_INT
                    {
                    lv_constant_1_0=(Token)match(input,RULE_INT,FOLLOW_RULE_INT_in_ruleTERM654); 

                    			newLeafNode(lv_constant_1_0, grammarAccess.getTERMAccess().getConstantINTTerminalRuleCall_1_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getTERMRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"constant",
                            		lv_constant_1_0, 
                            		"INT");
                    	    

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
    // $ANTLR end "ruleTERM"


    // $ANTLR start "entryRuleEventAction"
    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:377:1: entryRuleEventAction returns [EObject current=null] : iv_ruleEventAction= ruleEventAction EOF ;
    public final EObject entryRuleEventAction() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleEventAction = null;


        try {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:378:2: (iv_ruleEventAction= ruleEventAction EOF )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:379:2: iv_ruleEventAction= ruleEventAction EOF
            {
             newCompositeNode(grammarAccess.getEventActionRule()); 
            pushFollow(FOLLOW_ruleEventAction_in_entryRuleEventAction695);
            iv_ruleEventAction=ruleEventAction();

            state._fsp--;

             current =iv_ruleEventAction; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleEventAction705); 

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
    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:386:1: ruleEventAction returns [EObject current=null] : (otherlv_0= '@' ( ( (lv_eventName_1_0= RULE_ID ) ) (otherlv_2= '(' ( (lv_parameters_3_0= ruleParameters ) ) otherlv_4= ')' )? otherlv_5= '.' ( (lv_eventExtension_6_0= ruleEventExtensions ) ) ) ) ;
    public final EObject ruleEventAction() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token lv_eventName_1_0=null;
        Token otherlv_2=null;
        Token otherlv_4=null;
        Token otherlv_5=null;
        EObject lv_parameters_3_0 = null;

        AntlrDatatypeRuleToken lv_eventExtension_6_0 = null;


         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:389:28: ( (otherlv_0= '@' ( ( (lv_eventName_1_0= RULE_ID ) ) (otherlv_2= '(' ( (lv_parameters_3_0= ruleParameters ) ) otherlv_4= ')' )? otherlv_5= '.' ( (lv_eventExtension_6_0= ruleEventExtensions ) ) ) ) )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:390:1: (otherlv_0= '@' ( ( (lv_eventName_1_0= RULE_ID ) ) (otherlv_2= '(' ( (lv_parameters_3_0= ruleParameters ) ) otherlv_4= ')' )? otherlv_5= '.' ( (lv_eventExtension_6_0= ruleEventExtensions ) ) ) )
            {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:390:1: (otherlv_0= '@' ( ( (lv_eventName_1_0= RULE_ID ) ) (otherlv_2= '(' ( (lv_parameters_3_0= ruleParameters ) ) otherlv_4= ')' )? otherlv_5= '.' ( (lv_eventExtension_6_0= ruleEventExtensions ) ) ) )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:390:3: otherlv_0= '@' ( ( (lv_eventName_1_0= RULE_ID ) ) (otherlv_2= '(' ( (lv_parameters_3_0= ruleParameters ) ) otherlv_4= ')' )? otherlv_5= '.' ( (lv_eventExtension_6_0= ruleEventExtensions ) ) )
            {
            otherlv_0=(Token)match(input,13,FOLLOW_13_in_ruleEventAction742); 

                	newLeafNode(otherlv_0, grammarAccess.getEventActionAccess().getCommercialAtKeyword_0());
                
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:394:1: ( ( (lv_eventName_1_0= RULE_ID ) ) (otherlv_2= '(' ( (lv_parameters_3_0= ruleParameters ) ) otherlv_4= ')' )? otherlv_5= '.' ( (lv_eventExtension_6_0= ruleEventExtensions ) ) )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:394:2: ( (lv_eventName_1_0= RULE_ID ) ) (otherlv_2= '(' ( (lv_parameters_3_0= ruleParameters ) ) otherlv_4= ')' )? otherlv_5= '.' ( (lv_eventExtension_6_0= ruleEventExtensions ) )
            {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:394:2: ( (lv_eventName_1_0= RULE_ID ) )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:395:1: (lv_eventName_1_0= RULE_ID )
            {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:395:1: (lv_eventName_1_0= RULE_ID )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:396:3: lv_eventName_1_0= RULE_ID
            {
            lv_eventName_1_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleEventAction760); 

            			newLeafNode(lv_eventName_1_0, grammarAccess.getEventActionAccess().getEventNameIDTerminalRuleCall_1_0_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getEventActionRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"eventName",
                    		lv_eventName_1_0, 
                    		"ID");
            	    

            }


            }

            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:412:2: (otherlv_2= '(' ( (lv_parameters_3_0= ruleParameters ) ) otherlv_4= ')' )?
            int alt4=2;
            int LA4_0 = input.LA(1);

            if ( (LA4_0==14) ) {
                alt4=1;
            }
            switch (alt4) {
                case 1 :
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:412:4: otherlv_2= '(' ( (lv_parameters_3_0= ruleParameters ) ) otherlv_4= ')'
                    {
                    otherlv_2=(Token)match(input,14,FOLLOW_14_in_ruleEventAction778); 

                        	newLeafNode(otherlv_2, grammarAccess.getEventActionAccess().getLeftParenthesisKeyword_1_1_0());
                        
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:416:1: ( (lv_parameters_3_0= ruleParameters ) )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:417:1: (lv_parameters_3_0= ruleParameters )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:417:1: (lv_parameters_3_0= ruleParameters )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:418:3: lv_parameters_3_0= ruleParameters
                    {
                     
                    	        newCompositeNode(grammarAccess.getEventActionAccess().getParametersParametersParserRuleCall_1_1_1_0()); 
                    	    
                    pushFollow(FOLLOW_ruleParameters_in_ruleEventAction799);
                    lv_parameters_3_0=ruleParameters();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getEventActionRule());
                    	        }
                           		set(
                           			current, 
                           			"parameters",
                            		lv_parameters_3_0, 
                            		"Parameters");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }

                    otherlv_4=(Token)match(input,15,FOLLOW_15_in_ruleEventAction811); 

                        	newLeafNode(otherlv_4, grammarAccess.getEventActionAccess().getRightParenthesisKeyword_1_1_2());
                        

                    }
                    break;

            }

            otherlv_5=(Token)match(input,16,FOLLOW_16_in_ruleEventAction825); 

                	newLeafNode(otherlv_5, grammarAccess.getEventActionAccess().getFullStopKeyword_1_2());
                
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:442:1: ( (lv_eventExtension_6_0= ruleEventExtensions ) )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:443:1: (lv_eventExtension_6_0= ruleEventExtensions )
            {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:443:1: (lv_eventExtension_6_0= ruleEventExtensions )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:444:3: lv_eventExtension_6_0= ruleEventExtensions
            {
             
            	        newCompositeNode(grammarAccess.getEventActionAccess().getEventExtensionEventExtensionsParserRuleCall_1_3_0()); 
            	    
            pushFollow(FOLLOW_ruleEventExtensions_in_ruleEventAction846);
            lv_eventExtension_6_0=ruleEventExtensions();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getEventActionRule());
            	        }
                   		set(
                   			current, 
                   			"eventExtension",
                    		lv_eventExtension_6_0, 
                    		"EventExtensions");
            	        afterParserOrEnumRuleCall();
            	    

            }


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


    // $ANTLR start "entryRuleParameters"
    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:468:1: entryRuleParameters returns [EObject current=null] : iv_ruleParameters= ruleParameters EOF ;
    public final EObject entryRuleParameters() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleParameters = null;


        try {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:469:2: (iv_ruleParameters= ruleParameters EOF )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:470:2: iv_ruleParameters= ruleParameters EOF
            {
             newCompositeNode(grammarAccess.getParametersRule()); 
            pushFollow(FOLLOW_ruleParameters_in_entryRuleParameters883);
            iv_ruleParameters=ruleParameters();

            state._fsp--;

             current =iv_ruleParameters; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleParameters893); 

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
    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:477:1: ruleParameters returns [EObject current=null] : ( ( (lv_param_0_0= RULE_ID ) ) | ( ( (lv_param_1_0= RULE_ID ) ) otherlv_2= ',' ( (lv_parameters_3_0= ruleParameters ) ) ) ) ;
    public final EObject ruleParameters() throws RecognitionException {
        EObject current = null;

        Token lv_param_0_0=null;
        Token lv_param_1_0=null;
        Token otherlv_2=null;
        EObject lv_parameters_3_0 = null;


         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:480:28: ( ( ( (lv_param_0_0= RULE_ID ) ) | ( ( (lv_param_1_0= RULE_ID ) ) otherlv_2= ',' ( (lv_parameters_3_0= ruleParameters ) ) ) ) )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:481:1: ( ( (lv_param_0_0= RULE_ID ) ) | ( ( (lv_param_1_0= RULE_ID ) ) otherlv_2= ',' ( (lv_parameters_3_0= ruleParameters ) ) ) )
            {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:481:1: ( ( (lv_param_0_0= RULE_ID ) ) | ( ( (lv_param_1_0= RULE_ID ) ) otherlv_2= ',' ( (lv_parameters_3_0= ruleParameters ) ) ) )
            int alt5=2;
            int LA5_0 = input.LA(1);

            if ( (LA5_0==RULE_ID) ) {
                int LA5_1 = input.LA(2);

                if ( (LA5_1==EOF||LA5_1==15) ) {
                    alt5=1;
                }
                else if ( (LA5_1==17) ) {
                    alt5=2;
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 5, 1, input);

                    throw nvae;
                }
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 5, 0, input);

                throw nvae;
            }
            switch (alt5) {
                case 1 :
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:481:2: ( (lv_param_0_0= RULE_ID ) )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:481:2: ( (lv_param_0_0= RULE_ID ) )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:482:1: (lv_param_0_0= RULE_ID )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:482:1: (lv_param_0_0= RULE_ID )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:483:3: lv_param_0_0= RULE_ID
                    {
                    lv_param_0_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleParameters935); 

                    			newLeafNode(lv_param_0_0, grammarAccess.getParametersAccess().getParamIDTerminalRuleCall_0_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getParametersRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"param",
                            		lv_param_0_0, 
                            		"ID");
                    	    

                    }


                    }


                    }
                    break;
                case 2 :
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:500:6: ( ( (lv_param_1_0= RULE_ID ) ) otherlv_2= ',' ( (lv_parameters_3_0= ruleParameters ) ) )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:500:6: ( ( (lv_param_1_0= RULE_ID ) ) otherlv_2= ',' ( (lv_parameters_3_0= ruleParameters ) ) )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:500:7: ( (lv_param_1_0= RULE_ID ) ) otherlv_2= ',' ( (lv_parameters_3_0= ruleParameters ) )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:500:7: ( (lv_param_1_0= RULE_ID ) )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:501:1: (lv_param_1_0= RULE_ID )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:501:1: (lv_param_1_0= RULE_ID )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:502:3: lv_param_1_0= RULE_ID
                    {
                    lv_param_1_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleParameters964); 

                    			newLeafNode(lv_param_1_0, grammarAccess.getParametersAccess().getParamIDTerminalRuleCall_1_0_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getParametersRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"param",
                            		lv_param_1_0, 
                            		"ID");
                    	    

                    }


                    }

                    otherlv_2=(Token)match(input,17,FOLLOW_17_in_ruleParameters981); 

                        	newLeafNode(otherlv_2, grammarAccess.getParametersAccess().getCommaKeyword_1_1());
                        
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:522:1: ( (lv_parameters_3_0= ruleParameters ) )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:523:1: (lv_parameters_3_0= ruleParameters )
                    {
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:523:1: (lv_parameters_3_0= ruleParameters )
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:524:3: lv_parameters_3_0= ruleParameters
                    {
                     
                    	        newCompositeNode(grammarAccess.getParametersAccess().getParametersParametersParserRuleCall_1_2_0()); 
                    	    
                    pushFollow(FOLLOW_ruleParameters_in_ruleParameters1002);
                    lv_parameters_3_0=ruleParameters();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getParametersRule());
                    	        }
                           		set(
                           			current, 
                           			"parameters",
                            		lv_parameters_3_0, 
                            		"Parameters");
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
    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:548:1: entryRuleEventExtensions returns [String current=null] : iv_ruleEventExtensions= ruleEventExtensions EOF ;
    public final String entryRuleEventExtensions() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleEventExtensions = null;


        try {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:549:2: (iv_ruleEventExtensions= ruleEventExtensions EOF )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:550:2: iv_ruleEventExtensions= ruleEventExtensions EOF
            {
             newCompositeNode(grammarAccess.getEventExtensionsRule()); 
            pushFollow(FOLLOW_ruleEventExtensions_in_entryRuleEventExtensions1040);
            iv_ruleEventExtensions=ruleEventExtensions();

            state._fsp--;

             current =iv_ruleEventExtensions.getText(); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleEventExtensions1051); 

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
    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:557:1: ruleEventExtensions returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' ) ;
    public final AntlrDatatypeRuleToken ruleEventExtensions() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token kw=null;

         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:560:28: ( (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' ) )
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:561:1: (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' )
            {
            // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:561:1: (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' )
            int alt6=7;
            switch ( input.LA(1) ) {
            case 18:
                {
                alt6=1;
                }
                break;
            case 19:
                {
                alt6=2;
                }
                break;
            case 20:
                {
                alt6=3;
                }
                break;
            case 21:
                {
                alt6=4;
                }
                break;
            case 22:
                {
                alt6=5;
                }
                break;
            case 23:
                {
                alt6=6;
                }
                break;
            case 24:
                {
                alt6=7;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 6, 0, input);

                throw nvae;
            }

            switch (alt6) {
                case 1 :
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:562:2: kw= 'exit'
                    {
                    kw=(Token)match(input,18,FOLLOW_18_in_ruleEventExtensions1089); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getExitKeyword_0()); 
                        

                    }
                    break;
                case 2 :
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:569:2: kw= 'enter'
                    {
                    kw=(Token)match(input,19,FOLLOW_19_in_ruleEventExtensions1108); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getEnterKeyword_1()); 
                        

                    }
                    break;
                case 3 :
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:576:2: kw= 'start'
                    {
                    kw=(Token)match(input,20,FOLLOW_20_in_ruleEventExtensions1127); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getStartKeyword_2()); 
                        

                    }
                    break;
                case 4 :
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:583:2: kw= 'end'
                    {
                    kw=(Token)match(input,21,FOLLOW_21_in_ruleEventExtensions1146); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getEndKeyword_3()); 
                        

                    }
                    break;
                case 5 :
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:590:2: kw= 'tick'
                    {
                    kw=(Token)match(input,22,FOLLOW_22_in_ruleEventExtensions1165); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getTickKeyword_4()); 
                        

                    }
                    break;
                case 6 :
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:597:2: kw= 'sig'
                    {
                    kw=(Token)match(input,23,FOLLOW_23_in_ruleEventExtensions1184); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getSigKeyword_5()); 
                        

                    }
                    break;
                case 7 :
                    // ../org.correttouml.grammars.statemachineactions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalStateMachineActions.g:604:2: kw= 'call'
                    {
                    kw=(Token)match(input,24,FOLLOW_24_in_ruleEventExtensions1203); 

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


 

    public static final BitSet FOLLOW_ruleModel_in_entryRuleModel75 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleModel85 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleAction_in_ruleModel130 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleAction_in_entryRuleAction165 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleAction175 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleAssignment_in_ruleAction221 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEventAction_in_ruleAction248 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleAssignment_in_entryRuleAssignment284 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleAssignment294 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleAssignment336 = new BitSet(new long[]{0x0000000000001000L});
    public static final BitSet FOLLOW_12_in_ruleAssignment353 = new BitSet(new long[]{0x0000000000000050L});
    public static final BitSet FOLLOW_ruleEXPRESSION_in_ruleAssignment374 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEXPRESSION_in_entryRuleEXPRESSION410 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleEXPRESSION420 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTERM_in_ruleEXPRESSION467 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_RULE_OPERATOR_in_ruleEXPRESSION484 = new BitSet(new long[]{0x0000000000000050L});
    public static final BitSet FOLLOW_ruleTERM_in_ruleEXPRESSION510 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTERM_in_ruleEXPRESSION538 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTERM_in_entryRuleTERM574 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleTERM584 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleTERM626 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_INT_in_ruleTERM654 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEventAction_in_entryRuleEventAction695 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleEventAction705 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_13_in_ruleEventAction742 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleEventAction760 = new BitSet(new long[]{0x0000000000014000L});
    public static final BitSet FOLLOW_14_in_ruleEventAction778 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_ruleParameters_in_ruleEventAction799 = new BitSet(new long[]{0x0000000000008000L});
    public static final BitSet FOLLOW_15_in_ruleEventAction811 = new BitSet(new long[]{0x0000000000010000L});
    public static final BitSet FOLLOW_16_in_ruleEventAction825 = new BitSet(new long[]{0x0000000001FC0000L});
    public static final BitSet FOLLOW_ruleEventExtensions_in_ruleEventAction846 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleParameters_in_entryRuleParameters883 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleParameters893 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleParameters935 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleParameters964 = new BitSet(new long[]{0x0000000000020000L});
    public static final BitSet FOLLOW_17_in_ruleParameters981 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_ruleParameters_in_ruleParameters1002 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEventExtensions_in_entryRuleEventExtensions1040 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleEventExtensions1051 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_18_in_ruleEventExtensions1089 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_19_in_ruleEventExtensions1108 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_20_in_ruleEventExtensions1127 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_21_in_ruleEventExtensions1146 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_22_in_ruleEventExtensions1165 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_23_in_ruleEventExtensions1184 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_24_in_ruleEventExtensions1203 = new BitSet(new long[]{0x0000000000000002L});

}