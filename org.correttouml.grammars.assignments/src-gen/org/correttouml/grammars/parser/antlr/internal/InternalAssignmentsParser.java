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
import org.correttouml.grammars.services.AssignmentsGrammarAccess;



import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class InternalAssignmentsParser extends AbstractInternalAntlrParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_ID", "RULE_OPERATOR", "RULE_INT", "RULE_STRING", "RULE_ML_COMMENT", "RULE_SL_COMMENT", "RULE_WS", "RULE_ANY_OTHER", "'='"
    };
    public static final int RULE_ID=4;
    public static final int RULE_WS=10;
    public static final int RULE_STRING=7;
    public static final int RULE_ANY_OTHER=11;
    public static final int RULE_SL_COMMENT=9;
    public static final int RULE_INT=6;
    public static final int RULE_ML_COMMENT=8;
    public static final int T__12=12;
    public static final int EOF=-1;
    public static final int RULE_OPERATOR=5;

    // delegates
    // delegators


        public InternalAssignmentsParser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public InternalAssignmentsParser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        

    public String[] getTokenNames() { return InternalAssignmentsParser.tokenNames; }
    public String getGrammarFileName() { return "InternalAssignments.g"; }



     	private AssignmentsGrammarAccess grammarAccess;
     	
        public InternalAssignmentsParser(TokenStream input, AssignmentsGrammarAccess grammarAccess) {
            this(input);
            this.grammarAccess = grammarAccess;
            registerRules(grammarAccess.getGrammar());
        }
        
        @Override
        protected String getFirstRuleName() {
        	return "Model";	
       	}
       	
       	@Override
       	protected AssignmentsGrammarAccess getGrammarAccess() {
       		return grammarAccess;
       	}



    // $ANTLR start "entryRuleModel"
    // InternalAssignments.g:67:1: entryRuleModel returns [EObject current=null] : iv_ruleModel= ruleModel EOF ;
    public final EObject entryRuleModel() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleModel = null;


        try {
            // InternalAssignments.g:68:2: (iv_ruleModel= ruleModel EOF )
            // InternalAssignments.g:69:2: iv_ruleModel= ruleModel EOF
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
    // InternalAssignments.g:76:1: ruleModel returns [EObject current=null] : ( (lv_assignment_0_0= ruleASSIGNMENT ) ) ;
    public final EObject ruleModel() throws RecognitionException {
        EObject current = null;

        EObject lv_assignment_0_0 = null;


         enterRule(); 
            
        try {
            // InternalAssignments.g:79:28: ( ( (lv_assignment_0_0= ruleASSIGNMENT ) ) )
            // InternalAssignments.g:80:1: ( (lv_assignment_0_0= ruleASSIGNMENT ) )
            {
            // InternalAssignments.g:80:1: ( (lv_assignment_0_0= ruleASSIGNMENT ) )
            // InternalAssignments.g:81:1: (lv_assignment_0_0= ruleASSIGNMENT )
            {
            // InternalAssignments.g:81:1: (lv_assignment_0_0= ruleASSIGNMENT )
            // InternalAssignments.g:82:3: lv_assignment_0_0= ruleASSIGNMENT
            {
             
            	        newCompositeNode(grammarAccess.getModelAccess().getAssignmentASSIGNMENTParserRuleCall_0()); 
            	    
            pushFollow(FOLLOW_2);
            lv_assignment_0_0=ruleASSIGNMENT();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getModelRule());
            	        }
                   		set(
                   			current, 
                   			"assignment",
                    		lv_assignment_0_0, 
                    		"org.correttouml.grammars.Assignments.ASSIGNMENT");
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


    // $ANTLR start "entryRuleASSIGNMENT"
    // InternalAssignments.g:106:1: entryRuleASSIGNMENT returns [EObject current=null] : iv_ruleASSIGNMENT= ruleASSIGNMENT EOF ;
    public final EObject entryRuleASSIGNMENT() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleASSIGNMENT = null;


        try {
            // InternalAssignments.g:107:2: (iv_ruleASSIGNMENT= ruleASSIGNMENT EOF )
            // InternalAssignments.g:108:2: iv_ruleASSIGNMENT= ruleASSIGNMENT EOF
            {
             newCompositeNode(grammarAccess.getASSIGNMENTRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleASSIGNMENT=ruleASSIGNMENT();

            state._fsp--;

             current =iv_ruleASSIGNMENT; 
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
    // $ANTLR end "entryRuleASSIGNMENT"


    // $ANTLR start "ruleASSIGNMENT"
    // InternalAssignments.g:115:1: ruleASSIGNMENT returns [EObject current=null] : ( ( (lv_variable_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) ) ) ;
    public final EObject ruleASSIGNMENT() throws RecognitionException {
        EObject current = null;

        Token lv_variable_0_0=null;
        Token otherlv_1=null;
        EObject lv_expression_2_0 = null;


         enterRule(); 
            
        try {
            // InternalAssignments.g:118:28: ( ( ( (lv_variable_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) ) ) )
            // InternalAssignments.g:119:1: ( ( (lv_variable_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) ) )
            {
            // InternalAssignments.g:119:1: ( ( (lv_variable_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) ) )
            // InternalAssignments.g:119:2: ( (lv_variable_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) )
            {
            // InternalAssignments.g:119:2: ( (lv_variable_0_0= RULE_ID ) )
            // InternalAssignments.g:120:1: (lv_variable_0_0= RULE_ID )
            {
            // InternalAssignments.g:120:1: (lv_variable_0_0= RULE_ID )
            // InternalAssignments.g:121:3: lv_variable_0_0= RULE_ID
            {
            lv_variable_0_0=(Token)match(input,RULE_ID,FOLLOW_3); 

            			newLeafNode(lv_variable_0_0, grammarAccess.getASSIGNMENTAccess().getVariableIDTerminalRuleCall_0_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getASSIGNMENTRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"variable",
                    		lv_variable_0_0, 
                    		"org.eclipse.xtext.common.Terminals.ID");
            	    

            }


            }

            otherlv_1=(Token)match(input,12,FOLLOW_4); 

                	newLeafNode(otherlv_1, grammarAccess.getASSIGNMENTAccess().getEqualsSignKeyword_1());
                
            // InternalAssignments.g:141:1: ( (lv_expression_2_0= ruleEXPRESSION ) )
            // InternalAssignments.g:142:1: (lv_expression_2_0= ruleEXPRESSION )
            {
            // InternalAssignments.g:142:1: (lv_expression_2_0= ruleEXPRESSION )
            // InternalAssignments.g:143:3: lv_expression_2_0= ruleEXPRESSION
            {
             
            	        newCompositeNode(grammarAccess.getASSIGNMENTAccess().getExpressionEXPRESSIONParserRuleCall_2_0()); 
            	    
            pushFollow(FOLLOW_2);
            lv_expression_2_0=ruleEXPRESSION();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getASSIGNMENTRule());
            	        }
                   		set(
                   			current, 
                   			"expression",
                    		lv_expression_2_0, 
                    		"org.correttouml.grammars.Assignments.EXPRESSION");
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
    // $ANTLR end "ruleASSIGNMENT"


    // $ANTLR start "entryRuleEXPRESSION"
    // InternalAssignments.g:167:1: entryRuleEXPRESSION returns [EObject current=null] : iv_ruleEXPRESSION= ruleEXPRESSION EOF ;
    public final EObject entryRuleEXPRESSION() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleEXPRESSION = null;


        try {
            // InternalAssignments.g:168:2: (iv_ruleEXPRESSION= ruleEXPRESSION EOF )
            // InternalAssignments.g:169:2: iv_ruleEXPRESSION= ruleEXPRESSION EOF
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
    // InternalAssignments.g:176:1: ruleEXPRESSION returns [EObject current=null] : ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) ) ;
    public final EObject ruleEXPRESSION() throws RecognitionException {
        EObject current = null;

        Token lv_operator_1_0=null;
        EObject lv_firstTerm_0_0 = null;

        EObject lv_secondTerm_2_0 = null;

        EObject lv_alone_3_0 = null;


         enterRule(); 
            
        try {
            // InternalAssignments.g:179:28: ( ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) ) )
            // InternalAssignments.g:180:1: ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) )
            {
            // InternalAssignments.g:180:1: ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) )
            int alt1=2;
            int LA1_0 = input.LA(1);

            if ( (LA1_0==RULE_ID) ) {
                int LA1_1 = input.LA(2);

                if ( (LA1_1==EOF) ) {
                    alt1=2;
                }
                else if ( (LA1_1==RULE_OPERATOR) ) {
                    alt1=1;
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 1, 1, input);

                    throw nvae;
                }
            }
            else if ( (LA1_0==RULE_INT) ) {
                int LA1_2 = input.LA(2);

                if ( (LA1_2==RULE_OPERATOR) ) {
                    alt1=1;
                }
                else if ( (LA1_2==EOF) ) {
                    alt1=2;
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 1, 2, input);

                    throw nvae;
                }
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 1, 0, input);

                throw nvae;
            }
            switch (alt1) {
                case 1 :
                    // InternalAssignments.g:180:2: ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) )
                    {
                    // InternalAssignments.g:180:2: ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) )
                    // InternalAssignments.g:180:3: ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) )
                    {
                    // InternalAssignments.g:180:3: ( (lv_firstTerm_0_0= ruleTERM ) )
                    // InternalAssignments.g:181:1: (lv_firstTerm_0_0= ruleTERM )
                    {
                    // InternalAssignments.g:181:1: (lv_firstTerm_0_0= ruleTERM )
                    // InternalAssignments.g:182:3: lv_firstTerm_0_0= ruleTERM
                    {
                     
                    	        newCompositeNode(grammarAccess.getEXPRESSIONAccess().getFirstTermTERMParserRuleCall_0_0_0()); 
                    	    
                    pushFollow(FOLLOW_5);
                    lv_firstTerm_0_0=ruleTERM();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getEXPRESSIONRule());
                    	        }
                           		set(
                           			current, 
                           			"firstTerm",
                            		lv_firstTerm_0_0, 
                            		"org.correttouml.grammars.Assignments.TERM");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }

                    // InternalAssignments.g:198:2: ( (lv_operator_1_0= RULE_OPERATOR ) )
                    // InternalAssignments.g:199:1: (lv_operator_1_0= RULE_OPERATOR )
                    {
                    // InternalAssignments.g:199:1: (lv_operator_1_0= RULE_OPERATOR )
                    // InternalAssignments.g:200:3: lv_operator_1_0= RULE_OPERATOR
                    {
                    lv_operator_1_0=(Token)match(input,RULE_OPERATOR,FOLLOW_4); 

                    			newLeafNode(lv_operator_1_0, grammarAccess.getEXPRESSIONAccess().getOperatorOPERATORTerminalRuleCall_0_1_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getEXPRESSIONRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"operator",
                            		lv_operator_1_0, 
                            		"org.correttouml.grammars.Assignments.OPERATOR");
                    	    

                    }


                    }

                    // InternalAssignments.g:216:2: ( (lv_secondTerm_2_0= ruleTERM ) )
                    // InternalAssignments.g:217:1: (lv_secondTerm_2_0= ruleTERM )
                    {
                    // InternalAssignments.g:217:1: (lv_secondTerm_2_0= ruleTERM )
                    // InternalAssignments.g:218:3: lv_secondTerm_2_0= ruleTERM
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
                            		"org.correttouml.grammars.Assignments.TERM");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }


                    }
                    break;
                case 2 :
                    // InternalAssignments.g:235:6: ( (lv_alone_3_0= ruleTERM ) )
                    {
                    // InternalAssignments.g:235:6: ( (lv_alone_3_0= ruleTERM ) )
                    // InternalAssignments.g:236:1: (lv_alone_3_0= ruleTERM )
                    {
                    // InternalAssignments.g:236:1: (lv_alone_3_0= ruleTERM )
                    // InternalAssignments.g:237:3: lv_alone_3_0= ruleTERM
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
                            		"org.correttouml.grammars.Assignments.TERM");
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
    // InternalAssignments.g:261:1: entryRuleTERM returns [EObject current=null] : iv_ruleTERM= ruleTERM EOF ;
    public final EObject entryRuleTERM() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleTERM = null;


        try {
            // InternalAssignments.g:262:2: (iv_ruleTERM= ruleTERM EOF )
            // InternalAssignments.g:263:2: iv_ruleTERM= ruleTERM EOF
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
    // InternalAssignments.g:270:1: ruleTERM returns [EObject current=null] : ( ( (lv_variable_0_0= RULE_ID ) ) | ( (lv_constant_1_0= RULE_INT ) ) ) ;
    public final EObject ruleTERM() throws RecognitionException {
        EObject current = null;

        Token lv_variable_0_0=null;
        Token lv_constant_1_0=null;

         enterRule(); 
            
        try {
            // InternalAssignments.g:273:28: ( ( ( (lv_variable_0_0= RULE_ID ) ) | ( (lv_constant_1_0= RULE_INT ) ) ) )
            // InternalAssignments.g:274:1: ( ( (lv_variable_0_0= RULE_ID ) ) | ( (lv_constant_1_0= RULE_INT ) ) )
            {
            // InternalAssignments.g:274:1: ( ( (lv_variable_0_0= RULE_ID ) ) | ( (lv_constant_1_0= RULE_INT ) ) )
            int alt2=2;
            int LA2_0 = input.LA(1);

            if ( (LA2_0==RULE_ID) ) {
                alt2=1;
            }
            else if ( (LA2_0==RULE_INT) ) {
                alt2=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 2, 0, input);

                throw nvae;
            }
            switch (alt2) {
                case 1 :
                    // InternalAssignments.g:274:2: ( (lv_variable_0_0= RULE_ID ) )
                    {
                    // InternalAssignments.g:274:2: ( (lv_variable_0_0= RULE_ID ) )
                    // InternalAssignments.g:275:1: (lv_variable_0_0= RULE_ID )
                    {
                    // InternalAssignments.g:275:1: (lv_variable_0_0= RULE_ID )
                    // InternalAssignments.g:276:3: lv_variable_0_0= RULE_ID
                    {
                    lv_variable_0_0=(Token)match(input,RULE_ID,FOLLOW_2); 

                    			newLeafNode(lv_variable_0_0, grammarAccess.getTERMAccess().getVariableIDTerminalRuleCall_0_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getTERMRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"variable",
                            		lv_variable_0_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }


                    }
                    break;
                case 2 :
                    // InternalAssignments.g:293:6: ( (lv_constant_1_0= RULE_INT ) )
                    {
                    // InternalAssignments.g:293:6: ( (lv_constant_1_0= RULE_INT ) )
                    // InternalAssignments.g:294:1: (lv_constant_1_0= RULE_INT )
                    {
                    // InternalAssignments.g:294:1: (lv_constant_1_0= RULE_INT )
                    // InternalAssignments.g:295:3: lv_constant_1_0= RULE_INT
                    {
                    lv_constant_1_0=(Token)match(input,RULE_INT,FOLLOW_2); 

                    			newLeafNode(lv_constant_1_0, grammarAccess.getTERMAccess().getConstantINTTerminalRuleCall_1_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getTERMRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"constant",
                            		lv_constant_1_0, 
                            		"org.eclipse.xtext.common.Terminals.INT");
                    	    

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

    // Delegated rules


 

    public static final BitSet FOLLOW_1 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_2 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_3 = new BitSet(new long[]{0x0000000000001000L});
    public static final BitSet FOLLOW_4 = new BitSet(new long[]{0x0000000000000050L});
    public static final BitSet FOLLOW_5 = new BitSet(new long[]{0x0000000000000020L});

}