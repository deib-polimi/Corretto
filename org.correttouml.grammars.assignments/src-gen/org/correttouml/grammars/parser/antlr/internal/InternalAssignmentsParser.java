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
    public static final int RULE_STRING=7;
    public static final int T__12=12;
    public static final int RULE_ANY_OTHER=11;
    public static final int RULE_INT=6;
    public static final int RULE_OPERATOR=5;
    public static final int RULE_WS=10;
    public static final int RULE_SL_COMMENT=9;
    public static final int EOF=-1;
    public static final int RULE_ML_COMMENT=8;

    // delegates
    // delegators


        public InternalAssignmentsParser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public InternalAssignmentsParser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        

    public String[] getTokenNames() { return InternalAssignmentsParser.tokenNames; }
    public String getGrammarFileName() { return "../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g"; }



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
    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:67:1: entryRuleModel returns [EObject current=null] : iv_ruleModel= ruleModel EOF ;
    public final EObject entryRuleModel() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleModel = null;


        try {
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:68:2: (iv_ruleModel= ruleModel EOF )
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:69:2: iv_ruleModel= ruleModel EOF
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
    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:76:1: ruleModel returns [EObject current=null] : ( (lv_assignment_0_0= ruleASSIGNMENT ) ) ;
    public final EObject ruleModel() throws RecognitionException {
        EObject current = null;

        EObject lv_assignment_0_0 = null;


         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:79:28: ( ( (lv_assignment_0_0= ruleASSIGNMENT ) ) )
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:80:1: ( (lv_assignment_0_0= ruleASSIGNMENT ) )
            {
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:80:1: ( (lv_assignment_0_0= ruleASSIGNMENT ) )
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:81:1: (lv_assignment_0_0= ruleASSIGNMENT )
            {
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:81:1: (lv_assignment_0_0= ruleASSIGNMENT )
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:82:3: lv_assignment_0_0= ruleASSIGNMENT
            {
             
            	        newCompositeNode(grammarAccess.getModelAccess().getAssignmentASSIGNMENTParserRuleCall_0()); 
            	    
            pushFollow(FOLLOW_ruleASSIGNMENT_in_ruleModel130);
            lv_assignment_0_0=ruleASSIGNMENT();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getModelRule());
            	        }
                   		set(
                   			current, 
                   			"assignment",
                    		lv_assignment_0_0, 
                    		"ASSIGNMENT");
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
    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:106:1: entryRuleASSIGNMENT returns [EObject current=null] : iv_ruleASSIGNMENT= ruleASSIGNMENT EOF ;
    public final EObject entryRuleASSIGNMENT() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleASSIGNMENT = null;


        try {
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:107:2: (iv_ruleASSIGNMENT= ruleASSIGNMENT EOF )
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:108:2: iv_ruleASSIGNMENT= ruleASSIGNMENT EOF
            {
             newCompositeNode(grammarAccess.getASSIGNMENTRule()); 
            pushFollow(FOLLOW_ruleASSIGNMENT_in_entryRuleASSIGNMENT165);
            iv_ruleASSIGNMENT=ruleASSIGNMENT();

            state._fsp--;

             current =iv_ruleASSIGNMENT; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleASSIGNMENT175); 

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
    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:115:1: ruleASSIGNMENT returns [EObject current=null] : ( ( (lv_variable_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) ) ) ;
    public final EObject ruleASSIGNMENT() throws RecognitionException {
        EObject current = null;

        Token lv_variable_0_0=null;
        Token otherlv_1=null;
        EObject lv_expression_2_0 = null;


         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:118:28: ( ( ( (lv_variable_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) ) ) )
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:119:1: ( ( (lv_variable_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) ) )
            {
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:119:1: ( ( (lv_variable_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) ) )
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:119:2: ( (lv_variable_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_expression_2_0= ruleEXPRESSION ) )
            {
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:119:2: ( (lv_variable_0_0= RULE_ID ) )
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:120:1: (lv_variable_0_0= RULE_ID )
            {
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:120:1: (lv_variable_0_0= RULE_ID )
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:121:3: lv_variable_0_0= RULE_ID
            {
            lv_variable_0_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleASSIGNMENT217); 

            			newLeafNode(lv_variable_0_0, grammarAccess.getASSIGNMENTAccess().getVariableIDTerminalRuleCall_0_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getASSIGNMENTRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"variable",
                    		lv_variable_0_0, 
                    		"ID");
            	    

            }


            }

            otherlv_1=(Token)match(input,12,FOLLOW_12_in_ruleASSIGNMENT234); 

                	newLeafNode(otherlv_1, grammarAccess.getASSIGNMENTAccess().getEqualsSignKeyword_1());
                
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:141:1: ( (lv_expression_2_0= ruleEXPRESSION ) )
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:142:1: (lv_expression_2_0= ruleEXPRESSION )
            {
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:142:1: (lv_expression_2_0= ruleEXPRESSION )
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:143:3: lv_expression_2_0= ruleEXPRESSION
            {
             
            	        newCompositeNode(grammarAccess.getASSIGNMENTAccess().getExpressionEXPRESSIONParserRuleCall_2_0()); 
            	    
            pushFollow(FOLLOW_ruleEXPRESSION_in_ruleASSIGNMENT255);
            lv_expression_2_0=ruleEXPRESSION();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getASSIGNMENTRule());
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
    // $ANTLR end "ruleASSIGNMENT"


    // $ANTLR start "entryRuleEXPRESSION"
    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:167:1: entryRuleEXPRESSION returns [EObject current=null] : iv_ruleEXPRESSION= ruleEXPRESSION EOF ;
    public final EObject entryRuleEXPRESSION() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleEXPRESSION = null;


        try {
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:168:2: (iv_ruleEXPRESSION= ruleEXPRESSION EOF )
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:169:2: iv_ruleEXPRESSION= ruleEXPRESSION EOF
            {
             newCompositeNode(grammarAccess.getEXPRESSIONRule()); 
            pushFollow(FOLLOW_ruleEXPRESSION_in_entryRuleEXPRESSION291);
            iv_ruleEXPRESSION=ruleEXPRESSION();

            state._fsp--;

             current =iv_ruleEXPRESSION; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleEXPRESSION301); 

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
    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:176:1: ruleEXPRESSION returns [EObject current=null] : ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) ) ;
    public final EObject ruleEXPRESSION() throws RecognitionException {
        EObject current = null;

        Token lv_operator_1_0=null;
        EObject lv_firstTerm_0_0 = null;

        EObject lv_secondTerm_2_0 = null;

        EObject lv_alone_3_0 = null;


         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:179:28: ( ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) ) )
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:180:1: ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) )
            {
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:180:1: ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) )
            int alt1=2;
            int LA1_0 = input.LA(1);

            if ( (LA1_0==RULE_ID) ) {
                int LA1_1 = input.LA(2);

                if ( (LA1_1==RULE_OPERATOR) ) {
                    alt1=1;
                }
                else if ( (LA1_1==EOF) ) {
                    alt1=2;
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 1, 1, input);

                    throw nvae;
                }
            }
            else if ( (LA1_0==RULE_INT) ) {
                int LA1_2 = input.LA(2);

                if ( (LA1_2==EOF) ) {
                    alt1=2;
                }
                else if ( (LA1_2==RULE_OPERATOR) ) {
                    alt1=1;
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
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:180:2: ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) )
                    {
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:180:2: ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) )
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:180:3: ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) )
                    {
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:180:3: ( (lv_firstTerm_0_0= ruleTERM ) )
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:181:1: (lv_firstTerm_0_0= ruleTERM )
                    {
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:181:1: (lv_firstTerm_0_0= ruleTERM )
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:182:3: lv_firstTerm_0_0= ruleTERM
                    {
                     
                    	        newCompositeNode(grammarAccess.getEXPRESSIONAccess().getFirstTermTERMParserRuleCall_0_0_0()); 
                    	    
                    pushFollow(FOLLOW_ruleTERM_in_ruleEXPRESSION348);
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

                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:198:2: ( (lv_operator_1_0= RULE_OPERATOR ) )
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:199:1: (lv_operator_1_0= RULE_OPERATOR )
                    {
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:199:1: (lv_operator_1_0= RULE_OPERATOR )
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:200:3: lv_operator_1_0= RULE_OPERATOR
                    {
                    lv_operator_1_0=(Token)match(input,RULE_OPERATOR,FOLLOW_RULE_OPERATOR_in_ruleEXPRESSION365); 

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

                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:216:2: ( (lv_secondTerm_2_0= ruleTERM ) )
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:217:1: (lv_secondTerm_2_0= ruleTERM )
                    {
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:217:1: (lv_secondTerm_2_0= ruleTERM )
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:218:3: lv_secondTerm_2_0= ruleTERM
                    {
                     
                    	        newCompositeNode(grammarAccess.getEXPRESSIONAccess().getSecondTermTERMParserRuleCall_0_2_0()); 
                    	    
                    pushFollow(FOLLOW_ruleTERM_in_ruleEXPRESSION391);
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
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:235:6: ( (lv_alone_3_0= ruleTERM ) )
                    {
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:235:6: ( (lv_alone_3_0= ruleTERM ) )
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:236:1: (lv_alone_3_0= ruleTERM )
                    {
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:236:1: (lv_alone_3_0= ruleTERM )
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:237:3: lv_alone_3_0= ruleTERM
                    {
                     
                    	        newCompositeNode(grammarAccess.getEXPRESSIONAccess().getAloneTERMParserRuleCall_1_0()); 
                    	    
                    pushFollow(FOLLOW_ruleTERM_in_ruleEXPRESSION419);
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
    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:261:1: entryRuleTERM returns [EObject current=null] : iv_ruleTERM= ruleTERM EOF ;
    public final EObject entryRuleTERM() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleTERM = null;


        try {
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:262:2: (iv_ruleTERM= ruleTERM EOF )
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:263:2: iv_ruleTERM= ruleTERM EOF
            {
             newCompositeNode(grammarAccess.getTERMRule()); 
            pushFollow(FOLLOW_ruleTERM_in_entryRuleTERM455);
            iv_ruleTERM=ruleTERM();

            state._fsp--;

             current =iv_ruleTERM; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleTERM465); 

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
    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:270:1: ruleTERM returns [EObject current=null] : ( ( (lv_variable_0_0= RULE_ID ) ) | ( (lv_constant_1_0= RULE_INT ) ) ) ;
    public final EObject ruleTERM() throws RecognitionException {
        EObject current = null;

        Token lv_variable_0_0=null;
        Token lv_constant_1_0=null;

         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:273:28: ( ( ( (lv_variable_0_0= RULE_ID ) ) | ( (lv_constant_1_0= RULE_INT ) ) ) )
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:274:1: ( ( (lv_variable_0_0= RULE_ID ) ) | ( (lv_constant_1_0= RULE_INT ) ) )
            {
            // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:274:1: ( ( (lv_variable_0_0= RULE_ID ) ) | ( (lv_constant_1_0= RULE_INT ) ) )
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
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:274:2: ( (lv_variable_0_0= RULE_ID ) )
                    {
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:274:2: ( (lv_variable_0_0= RULE_ID ) )
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:275:1: (lv_variable_0_0= RULE_ID )
                    {
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:275:1: (lv_variable_0_0= RULE_ID )
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:276:3: lv_variable_0_0= RULE_ID
                    {
                    lv_variable_0_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleTERM507); 

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
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:293:6: ( (lv_constant_1_0= RULE_INT ) )
                    {
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:293:6: ( (lv_constant_1_0= RULE_INT ) )
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:294:1: (lv_constant_1_0= RULE_INT )
                    {
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:294:1: (lv_constant_1_0= RULE_INT )
                    // ../org.correttouml.grammars.assignments/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalAssignments.g:295:3: lv_constant_1_0= RULE_INT
                    {
                    lv_constant_1_0=(Token)match(input,RULE_INT,FOLLOW_RULE_INT_in_ruleTERM535); 

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

    // Delegated rules


 

    public static final BitSet FOLLOW_ruleModel_in_entryRuleModel75 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleModel85 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleASSIGNMENT_in_ruleModel130 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleASSIGNMENT_in_entryRuleASSIGNMENT165 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleASSIGNMENT175 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleASSIGNMENT217 = new BitSet(new long[]{0x0000000000001000L});
    public static final BitSet FOLLOW_12_in_ruleASSIGNMENT234 = new BitSet(new long[]{0x0000000000000050L});
    public static final BitSet FOLLOW_ruleEXPRESSION_in_ruleASSIGNMENT255 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEXPRESSION_in_entryRuleEXPRESSION291 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleEXPRESSION301 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTERM_in_ruleEXPRESSION348 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_RULE_OPERATOR_in_ruleEXPRESSION365 = new BitSet(new long[]{0x0000000000000050L});
    public static final BitSet FOLLOW_ruleTERM_in_ruleEXPRESSION391 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTERM_in_ruleEXPRESSION419 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTERM_in_entryRuleTERM455 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleTERM465 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleTERM507 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_INT_in_ruleTERM535 = new BitSet(new long[]{0x0000000000000002L});

}