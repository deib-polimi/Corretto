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
import org.correttouml.grammars.services.BooleanExpressionsGrammarAccess;



import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class InternalBooleanExpressionsParser extends AbstractInternalAntlrParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_RELATIONS", "RULE_INT", "RULE_ID", "RULE_STRING", "RULE_ML_COMMENT", "RULE_SL_COMMENT", "RULE_WS", "RULE_ANY_OTHER", "'!!'", "'||'", "'&&'", "'@'", "'-'", "'{'", "'}'", "'.'", "'now'", "'exit'", "'enter'", "'start'", "'end'", "'tick'", "'sig'", "'call'", "'send'", "'receive'"
    };
    public static final int RULE_ID=6;
    public static final int T__29=29;
    public static final int T__28=28;
    public static final int T__27=27;
    public static final int T__26=26;
    public static final int T__25=25;
    public static final int T__24=24;
    public static final int T__23=23;
    public static final int T__22=22;
    public static final int RULE_ANY_OTHER=11;
    public static final int T__21=21;
    public static final int T__20=20;
    public static final int RULE_RELATIONS=4;
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
    public static final int RULE_INT=5;
    public static final int RULE_WS=10;

    // delegates
    // delegators


        public InternalBooleanExpressionsParser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public InternalBooleanExpressionsParser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        

    public String[] getTokenNames() { return InternalBooleanExpressionsParser.tokenNames; }
    public String getGrammarFileName() { return "../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g"; }



     	private BooleanExpressionsGrammarAccess grammarAccess;
     	
        public InternalBooleanExpressionsParser(TokenStream input, BooleanExpressionsGrammarAccess grammarAccess) {
            this(input);
            this.grammarAccess = grammarAccess;
            registerRules(grammarAccess.getGrammar());
        }
        
        @Override
        protected String getFirstRuleName() {
        	return "Model";	
       	}
       	
       	@Override
       	protected BooleanExpressionsGrammarAccess getGrammarAccess() {
       		return grammarAccess;
       	}



    // $ANTLR start "entryRuleModel"
    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:67:1: entryRuleModel returns [EObject current=null] : iv_ruleModel= ruleModel EOF ;
    public final EObject entryRuleModel() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleModel = null;


        try {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:68:2: (iv_ruleModel= ruleModel EOF )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:69:2: iv_ruleModel= ruleModel EOF
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
    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:76:1: ruleModel returns [EObject current=null] : ( (lv_expression_0_0= rulebooleanExpression ) ) ;
    public final EObject ruleModel() throws RecognitionException {
        EObject current = null;

        EObject lv_expression_0_0 = null;


         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:79:28: ( ( (lv_expression_0_0= rulebooleanExpression ) ) )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:80:1: ( (lv_expression_0_0= rulebooleanExpression ) )
            {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:80:1: ( (lv_expression_0_0= rulebooleanExpression ) )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:81:1: (lv_expression_0_0= rulebooleanExpression )
            {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:81:1: (lv_expression_0_0= rulebooleanExpression )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:82:3: lv_expression_0_0= rulebooleanExpression
            {
             
            	        newCompositeNode(grammarAccess.getModelAccess().getExpressionBooleanExpressionParserRuleCall_0()); 
            	    
            pushFollow(FOLLOW_rulebooleanExpression_in_ruleModel130);
            lv_expression_0_0=rulebooleanExpression();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getModelRule());
            	        }
                   		set(
                   			current, 
                   			"expression",
                    		lv_expression_0_0, 
                    		"booleanExpression");
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


    // $ANTLR start "entryRulebooleanExpression"
    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:106:1: entryRulebooleanExpression returns [EObject current=null] : iv_rulebooleanExpression= rulebooleanExpression EOF ;
    public final EObject entryRulebooleanExpression() throws RecognitionException {
        EObject current = null;

        EObject iv_rulebooleanExpression = null;


        try {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:107:2: (iv_rulebooleanExpression= rulebooleanExpression EOF )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:108:2: iv_rulebooleanExpression= rulebooleanExpression EOF
            {
             newCompositeNode(grammarAccess.getBooleanExpressionRule()); 
            pushFollow(FOLLOW_rulebooleanExpression_in_entryRulebooleanExpression165);
            iv_rulebooleanExpression=rulebooleanExpression();

            state._fsp--;

             current =iv_rulebooleanExpression; 
            match(input,EOF,FOLLOW_EOF_in_entryRulebooleanExpression175); 

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
    // $ANTLR end "entryRulebooleanExpression"


    // $ANTLR start "rulebooleanExpression"
    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:115:1: rulebooleanExpression returns [EObject current=null] : ( (otherlv_0= '!!' ( (lv_notExpression_1_0= rulebooleanExpression ) ) ) | ( ( (lv_orLeft_2_0= rulebooleanTerm ) ) otherlv_3= '||' ( (lv_orRight_4_0= rulebooleanTerm ) ) ) | ( ( (lv_andLeft_5_0= rulebooleanTerm ) ) otherlv_6= '&&' ( (lv_andRight_7_0= rulebooleanTerm ) ) ) | ( (lv_booleanTerm_8_0= rulebooleanTerm ) ) ) ;
    public final EObject rulebooleanExpression() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token otherlv_3=null;
        Token otherlv_6=null;
        EObject lv_notExpression_1_0 = null;

        EObject lv_orLeft_2_0 = null;

        EObject lv_orRight_4_0 = null;

        EObject lv_andLeft_5_0 = null;

        EObject lv_andRight_7_0 = null;

        EObject lv_booleanTerm_8_0 = null;


         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:118:28: ( ( (otherlv_0= '!!' ( (lv_notExpression_1_0= rulebooleanExpression ) ) ) | ( ( (lv_orLeft_2_0= rulebooleanTerm ) ) otherlv_3= '||' ( (lv_orRight_4_0= rulebooleanTerm ) ) ) | ( ( (lv_andLeft_5_0= rulebooleanTerm ) ) otherlv_6= '&&' ( (lv_andRight_7_0= rulebooleanTerm ) ) ) | ( (lv_booleanTerm_8_0= rulebooleanTerm ) ) ) )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:119:1: ( (otherlv_0= '!!' ( (lv_notExpression_1_0= rulebooleanExpression ) ) ) | ( ( (lv_orLeft_2_0= rulebooleanTerm ) ) otherlv_3= '||' ( (lv_orRight_4_0= rulebooleanTerm ) ) ) | ( ( (lv_andLeft_5_0= rulebooleanTerm ) ) otherlv_6= '&&' ( (lv_andRight_7_0= rulebooleanTerm ) ) ) | ( (lv_booleanTerm_8_0= rulebooleanTerm ) ) )
            {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:119:1: ( (otherlv_0= '!!' ( (lv_notExpression_1_0= rulebooleanExpression ) ) ) | ( ( (lv_orLeft_2_0= rulebooleanTerm ) ) otherlv_3= '||' ( (lv_orRight_4_0= rulebooleanTerm ) ) ) | ( ( (lv_andLeft_5_0= rulebooleanTerm ) ) otherlv_6= '&&' ( (lv_andRight_7_0= rulebooleanTerm ) ) ) | ( (lv_booleanTerm_8_0= rulebooleanTerm ) ) )
            int alt1=4;
            alt1 = dfa1.predict(input);
            switch (alt1) {
                case 1 :
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:119:2: (otherlv_0= '!!' ( (lv_notExpression_1_0= rulebooleanExpression ) ) )
                    {
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:119:2: (otherlv_0= '!!' ( (lv_notExpression_1_0= rulebooleanExpression ) ) )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:119:4: otherlv_0= '!!' ( (lv_notExpression_1_0= rulebooleanExpression ) )
                    {
                    otherlv_0=(Token)match(input,12,FOLLOW_12_in_rulebooleanExpression213); 

                        	newLeafNode(otherlv_0, grammarAccess.getBooleanExpressionAccess().getExclamationMarkExclamationMarkKeyword_0_0());
                        
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:123:1: ( (lv_notExpression_1_0= rulebooleanExpression ) )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:124:1: (lv_notExpression_1_0= rulebooleanExpression )
                    {
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:124:1: (lv_notExpression_1_0= rulebooleanExpression )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:125:3: lv_notExpression_1_0= rulebooleanExpression
                    {
                     
                    	        newCompositeNode(grammarAccess.getBooleanExpressionAccess().getNotExpressionBooleanExpressionParserRuleCall_0_1_0()); 
                    	    
                    pushFollow(FOLLOW_rulebooleanExpression_in_rulebooleanExpression234);
                    lv_notExpression_1_0=rulebooleanExpression();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getBooleanExpressionRule());
                    	        }
                           		set(
                           			current, 
                           			"notExpression",
                            		lv_notExpression_1_0, 
                            		"booleanExpression");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }


                    }
                    break;
                case 2 :
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:142:6: ( ( (lv_orLeft_2_0= rulebooleanTerm ) ) otherlv_3= '||' ( (lv_orRight_4_0= rulebooleanTerm ) ) )
                    {
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:142:6: ( ( (lv_orLeft_2_0= rulebooleanTerm ) ) otherlv_3= '||' ( (lv_orRight_4_0= rulebooleanTerm ) ) )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:142:7: ( (lv_orLeft_2_0= rulebooleanTerm ) ) otherlv_3= '||' ( (lv_orRight_4_0= rulebooleanTerm ) )
                    {
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:142:7: ( (lv_orLeft_2_0= rulebooleanTerm ) )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:143:1: (lv_orLeft_2_0= rulebooleanTerm )
                    {
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:143:1: (lv_orLeft_2_0= rulebooleanTerm )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:144:3: lv_orLeft_2_0= rulebooleanTerm
                    {
                     
                    	        newCompositeNode(grammarAccess.getBooleanExpressionAccess().getOrLeftBooleanTermParserRuleCall_1_0_0()); 
                    	    
                    pushFollow(FOLLOW_rulebooleanTerm_in_rulebooleanExpression263);
                    lv_orLeft_2_0=rulebooleanTerm();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getBooleanExpressionRule());
                    	        }
                           		set(
                           			current, 
                           			"orLeft",
                            		lv_orLeft_2_0, 
                            		"booleanTerm");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }

                    otherlv_3=(Token)match(input,13,FOLLOW_13_in_rulebooleanExpression275); 

                        	newLeafNode(otherlv_3, grammarAccess.getBooleanExpressionAccess().getVerticalLineVerticalLineKeyword_1_1());
                        
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:164:1: ( (lv_orRight_4_0= rulebooleanTerm ) )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:165:1: (lv_orRight_4_0= rulebooleanTerm )
                    {
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:165:1: (lv_orRight_4_0= rulebooleanTerm )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:166:3: lv_orRight_4_0= rulebooleanTerm
                    {
                     
                    	        newCompositeNode(grammarAccess.getBooleanExpressionAccess().getOrRightBooleanTermParserRuleCall_1_2_0()); 
                    	    
                    pushFollow(FOLLOW_rulebooleanTerm_in_rulebooleanExpression296);
                    lv_orRight_4_0=rulebooleanTerm();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getBooleanExpressionRule());
                    	        }
                           		set(
                           			current, 
                           			"orRight",
                            		lv_orRight_4_0, 
                            		"booleanTerm");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }


                    }
                    break;
                case 3 :
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:183:6: ( ( (lv_andLeft_5_0= rulebooleanTerm ) ) otherlv_6= '&&' ( (lv_andRight_7_0= rulebooleanTerm ) ) )
                    {
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:183:6: ( ( (lv_andLeft_5_0= rulebooleanTerm ) ) otherlv_6= '&&' ( (lv_andRight_7_0= rulebooleanTerm ) ) )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:183:7: ( (lv_andLeft_5_0= rulebooleanTerm ) ) otherlv_6= '&&' ( (lv_andRight_7_0= rulebooleanTerm ) )
                    {
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:183:7: ( (lv_andLeft_5_0= rulebooleanTerm ) )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:184:1: (lv_andLeft_5_0= rulebooleanTerm )
                    {
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:184:1: (lv_andLeft_5_0= rulebooleanTerm )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:185:3: lv_andLeft_5_0= rulebooleanTerm
                    {
                     
                    	        newCompositeNode(grammarAccess.getBooleanExpressionAccess().getAndLeftBooleanTermParserRuleCall_2_0_0()); 
                    	    
                    pushFollow(FOLLOW_rulebooleanTerm_in_rulebooleanExpression325);
                    lv_andLeft_5_0=rulebooleanTerm();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getBooleanExpressionRule());
                    	        }
                           		set(
                           			current, 
                           			"andLeft",
                            		lv_andLeft_5_0, 
                            		"booleanTerm");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }

                    otherlv_6=(Token)match(input,14,FOLLOW_14_in_rulebooleanExpression337); 

                        	newLeafNode(otherlv_6, grammarAccess.getBooleanExpressionAccess().getAmpersandAmpersandKeyword_2_1());
                        
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:205:1: ( (lv_andRight_7_0= rulebooleanTerm ) )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:206:1: (lv_andRight_7_0= rulebooleanTerm )
                    {
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:206:1: (lv_andRight_7_0= rulebooleanTerm )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:207:3: lv_andRight_7_0= rulebooleanTerm
                    {
                     
                    	        newCompositeNode(grammarAccess.getBooleanExpressionAccess().getAndRightBooleanTermParserRuleCall_2_2_0()); 
                    	    
                    pushFollow(FOLLOW_rulebooleanTerm_in_rulebooleanExpression358);
                    lv_andRight_7_0=rulebooleanTerm();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getBooleanExpressionRule());
                    	        }
                           		set(
                           			current, 
                           			"andRight",
                            		lv_andRight_7_0, 
                            		"booleanTerm");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }


                    }
                    break;
                case 4 :
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:224:6: ( (lv_booleanTerm_8_0= rulebooleanTerm ) )
                    {
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:224:6: ( (lv_booleanTerm_8_0= rulebooleanTerm ) )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:225:1: (lv_booleanTerm_8_0= rulebooleanTerm )
                    {
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:225:1: (lv_booleanTerm_8_0= rulebooleanTerm )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:226:3: lv_booleanTerm_8_0= rulebooleanTerm
                    {
                     
                    	        newCompositeNode(grammarAccess.getBooleanExpressionAccess().getBooleanTermBooleanTermParserRuleCall_3_0()); 
                    	    
                    pushFollow(FOLLOW_rulebooleanTerm_in_rulebooleanExpression386);
                    lv_booleanTerm_8_0=rulebooleanTerm();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getBooleanExpressionRule());
                    	        }
                           		set(
                           			current, 
                           			"booleanTerm",
                            		lv_booleanTerm_8_0, 
                            		"booleanTerm");
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
    // $ANTLR end "rulebooleanExpression"


    // $ANTLR start "entryRulebooleanTerm"
    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:250:1: entryRulebooleanTerm returns [EObject current=null] : iv_rulebooleanTerm= rulebooleanTerm EOF ;
    public final EObject entryRulebooleanTerm() throws RecognitionException {
        EObject current = null;

        EObject iv_rulebooleanTerm = null;


        try {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:251:2: (iv_rulebooleanTerm= rulebooleanTerm EOF )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:252:2: iv_rulebooleanTerm= rulebooleanTerm EOF
            {
             newCompositeNode(grammarAccess.getBooleanTermRule()); 
            pushFollow(FOLLOW_rulebooleanTerm_in_entryRulebooleanTerm422);
            iv_rulebooleanTerm=rulebooleanTerm();

            state._fsp--;

             current =iv_rulebooleanTerm; 
            match(input,EOF,FOLLOW_EOF_in_entryRulebooleanTerm432); 

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
    // $ANTLR end "entryRulebooleanTerm"


    // $ANTLR start "rulebooleanTerm"
    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:259:1: rulebooleanTerm returns [EObject current=null] : (this_TimeConstraint_0= ruleTimeConstraint | this_BooleanVariable_1= ruleBooleanVariable | this_VariableCondition_2= ruleVariableCondition ) ;
    public final EObject rulebooleanTerm() throws RecognitionException {
        EObject current = null;

        EObject this_TimeConstraint_0 = null;

        EObject this_BooleanVariable_1 = null;

        EObject this_VariableCondition_2 = null;


         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:262:28: ( (this_TimeConstraint_0= ruleTimeConstraint | this_BooleanVariable_1= ruleBooleanVariable | this_VariableCondition_2= ruleVariableCondition ) )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:263:1: (this_TimeConstraint_0= ruleTimeConstraint | this_BooleanVariable_1= ruleBooleanVariable | this_VariableCondition_2= ruleVariableCondition )
            {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:263:1: (this_TimeConstraint_0= ruleTimeConstraint | this_BooleanVariable_1= ruleBooleanVariable | this_VariableCondition_2= ruleVariableCondition )
            int alt2=3;
            switch ( input.LA(1) ) {
            case 15:
                {
                alt2=1;
                }
                break;
            case RULE_ID:
                {
                alt2=2;
                }
                break;
            case 17:
                {
                alt2=3;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 2, 0, input);

                throw nvae;
            }

            switch (alt2) {
                case 1 :
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:264:5: this_TimeConstraint_0= ruleTimeConstraint
                    {
                     
                            newCompositeNode(grammarAccess.getBooleanTermAccess().getTimeConstraintParserRuleCall_0()); 
                        
                    pushFollow(FOLLOW_ruleTimeConstraint_in_rulebooleanTerm479);
                    this_TimeConstraint_0=ruleTimeConstraint();

                    state._fsp--;

                     
                            current = this_TimeConstraint_0; 
                            afterParserOrEnumRuleCall();
                        

                    }
                    break;
                case 2 :
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:274:5: this_BooleanVariable_1= ruleBooleanVariable
                    {
                     
                            newCompositeNode(grammarAccess.getBooleanTermAccess().getBooleanVariableParserRuleCall_1()); 
                        
                    pushFollow(FOLLOW_ruleBooleanVariable_in_rulebooleanTerm506);
                    this_BooleanVariable_1=ruleBooleanVariable();

                    state._fsp--;

                     
                            current = this_BooleanVariable_1; 
                            afterParserOrEnumRuleCall();
                        

                    }
                    break;
                case 3 :
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:284:5: this_VariableCondition_2= ruleVariableCondition
                    {
                     
                            newCompositeNode(grammarAccess.getBooleanTermAccess().getVariableConditionParserRuleCall_2()); 
                        
                    pushFollow(FOLLOW_ruleVariableCondition_in_rulebooleanTerm533);
                    this_VariableCondition_2=ruleVariableCondition();

                    state._fsp--;

                     
                            current = this_VariableCondition_2; 
                            afterParserOrEnumRuleCall();
                        

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
    // $ANTLR end "rulebooleanTerm"


    // $ANTLR start "entryRuleTimeConstraint"
    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:300:1: entryRuleTimeConstraint returns [EObject current=null] : iv_ruleTimeConstraint= ruleTimeConstraint EOF ;
    public final EObject entryRuleTimeConstraint() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleTimeConstraint = null;


        try {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:301:2: (iv_ruleTimeConstraint= ruleTimeConstraint EOF )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:302:2: iv_ruleTimeConstraint= ruleTimeConstraint EOF
            {
             newCompositeNode(grammarAccess.getTimeConstraintRule()); 
            pushFollow(FOLLOW_ruleTimeConstraint_in_entryRuleTimeConstraint568);
            iv_ruleTimeConstraint=ruleTimeConstraint();

            state._fsp--;

             current =iv_ruleTimeConstraint; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleTimeConstraint578); 

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
    // $ANTLR end "entryRuleTimeConstraint"


    // $ANTLR start "ruleTimeConstraint"
    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:309:1: ruleTimeConstraint returns [EObject current=null] : (otherlv_0= '@' ( (lv_event2_1_0= ruleEvent ) ) otherlv_2= '-' otherlv_3= '@' ( (lv_event1_4_0= ruleEvent ) ) ( (lv_op_5_0= RULE_RELATIONS ) ) ( (lv_value_6_0= RULE_INT ) ) ) ;
    public final EObject ruleTimeConstraint() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token otherlv_2=null;
        Token otherlv_3=null;
        Token lv_op_5_0=null;
        Token lv_value_6_0=null;
        EObject lv_event2_1_0 = null;

        EObject lv_event1_4_0 = null;


         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:312:28: ( (otherlv_0= '@' ( (lv_event2_1_0= ruleEvent ) ) otherlv_2= '-' otherlv_3= '@' ( (lv_event1_4_0= ruleEvent ) ) ( (lv_op_5_0= RULE_RELATIONS ) ) ( (lv_value_6_0= RULE_INT ) ) ) )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:313:1: (otherlv_0= '@' ( (lv_event2_1_0= ruleEvent ) ) otherlv_2= '-' otherlv_3= '@' ( (lv_event1_4_0= ruleEvent ) ) ( (lv_op_5_0= RULE_RELATIONS ) ) ( (lv_value_6_0= RULE_INT ) ) )
            {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:313:1: (otherlv_0= '@' ( (lv_event2_1_0= ruleEvent ) ) otherlv_2= '-' otherlv_3= '@' ( (lv_event1_4_0= ruleEvent ) ) ( (lv_op_5_0= RULE_RELATIONS ) ) ( (lv_value_6_0= RULE_INT ) ) )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:313:3: otherlv_0= '@' ( (lv_event2_1_0= ruleEvent ) ) otherlv_2= '-' otherlv_3= '@' ( (lv_event1_4_0= ruleEvent ) ) ( (lv_op_5_0= RULE_RELATIONS ) ) ( (lv_value_6_0= RULE_INT ) )
            {
            otherlv_0=(Token)match(input,15,FOLLOW_15_in_ruleTimeConstraint615); 

                	newLeafNode(otherlv_0, grammarAccess.getTimeConstraintAccess().getCommercialAtKeyword_0());
                
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:317:1: ( (lv_event2_1_0= ruleEvent ) )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:318:1: (lv_event2_1_0= ruleEvent )
            {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:318:1: (lv_event2_1_0= ruleEvent )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:319:3: lv_event2_1_0= ruleEvent
            {
             
            	        newCompositeNode(grammarAccess.getTimeConstraintAccess().getEvent2EventParserRuleCall_1_0()); 
            	    
            pushFollow(FOLLOW_ruleEvent_in_ruleTimeConstraint636);
            lv_event2_1_0=ruleEvent();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getTimeConstraintRule());
            	        }
                   		set(
                   			current, 
                   			"event2",
                    		lv_event2_1_0, 
                    		"Event");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            otherlv_2=(Token)match(input,16,FOLLOW_16_in_ruleTimeConstraint648); 

                	newLeafNode(otherlv_2, grammarAccess.getTimeConstraintAccess().getHyphenMinusKeyword_2());
                
            otherlv_3=(Token)match(input,15,FOLLOW_15_in_ruleTimeConstraint660); 

                	newLeafNode(otherlv_3, grammarAccess.getTimeConstraintAccess().getCommercialAtKeyword_3());
                
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:343:1: ( (lv_event1_4_0= ruleEvent ) )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:344:1: (lv_event1_4_0= ruleEvent )
            {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:344:1: (lv_event1_4_0= ruleEvent )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:345:3: lv_event1_4_0= ruleEvent
            {
             
            	        newCompositeNode(grammarAccess.getTimeConstraintAccess().getEvent1EventParserRuleCall_4_0()); 
            	    
            pushFollow(FOLLOW_ruleEvent_in_ruleTimeConstraint681);
            lv_event1_4_0=ruleEvent();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getTimeConstraintRule());
            	        }
                   		set(
                   			current, 
                   			"event1",
                    		lv_event1_4_0, 
                    		"Event");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:361:2: ( (lv_op_5_0= RULE_RELATIONS ) )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:362:1: (lv_op_5_0= RULE_RELATIONS )
            {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:362:1: (lv_op_5_0= RULE_RELATIONS )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:363:3: lv_op_5_0= RULE_RELATIONS
            {
            lv_op_5_0=(Token)match(input,RULE_RELATIONS,FOLLOW_RULE_RELATIONS_in_ruleTimeConstraint698); 

            			newLeafNode(lv_op_5_0, grammarAccess.getTimeConstraintAccess().getOpRELATIONSTerminalRuleCall_5_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getTimeConstraintRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"op",
                    		lv_op_5_0, 
                    		"RELATIONS");
            	    

            }


            }

            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:379:2: ( (lv_value_6_0= RULE_INT ) )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:380:1: (lv_value_6_0= RULE_INT )
            {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:380:1: (lv_value_6_0= RULE_INT )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:381:3: lv_value_6_0= RULE_INT
            {
            lv_value_6_0=(Token)match(input,RULE_INT,FOLLOW_RULE_INT_in_ruleTimeConstraint720); 

            			newLeafNode(lv_value_6_0, grammarAccess.getTimeConstraintAccess().getValueINTTerminalRuleCall_6_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getTimeConstraintRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"value",
                    		lv_value_6_0, 
                    		"INT");
            	    

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
    // $ANTLR end "ruleTimeConstraint"


    // $ANTLR start "entryRuleBooleanVariable"
    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:405:1: entryRuleBooleanVariable returns [EObject current=null] : iv_ruleBooleanVariable= ruleBooleanVariable EOF ;
    public final EObject entryRuleBooleanVariable() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleBooleanVariable = null;


        try {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:406:2: (iv_ruleBooleanVariable= ruleBooleanVariable EOF )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:407:2: iv_ruleBooleanVariable= ruleBooleanVariable EOF
            {
             newCompositeNode(grammarAccess.getBooleanVariableRule()); 
            pushFollow(FOLLOW_ruleBooleanVariable_in_entryRuleBooleanVariable761);
            iv_ruleBooleanVariable=ruleBooleanVariable();

            state._fsp--;

             current =iv_ruleBooleanVariable; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleBooleanVariable771); 

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
    // $ANTLR end "entryRuleBooleanVariable"


    // $ANTLR start "ruleBooleanVariable"
    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:414:1: ruleBooleanVariable returns [EObject current=null] : ( (lv_variable_0_0= RULE_ID ) ) ;
    public final EObject ruleBooleanVariable() throws RecognitionException {
        EObject current = null;

        Token lv_variable_0_0=null;

         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:417:28: ( ( (lv_variable_0_0= RULE_ID ) ) )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:418:1: ( (lv_variable_0_0= RULE_ID ) )
            {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:418:1: ( (lv_variable_0_0= RULE_ID ) )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:419:1: (lv_variable_0_0= RULE_ID )
            {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:419:1: (lv_variable_0_0= RULE_ID )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:420:3: lv_variable_0_0= RULE_ID
            {
            lv_variable_0_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleBooleanVariable812); 

            			newLeafNode(lv_variable_0_0, grammarAccess.getBooleanVariableAccess().getVariableIDTerminalRuleCall_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getBooleanVariableRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"variable",
                    		lv_variable_0_0, 
                    		"ID");
            	    

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
    // $ANTLR end "ruleBooleanVariable"


    // $ANTLR start "entryRuleVariableCondition"
    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:444:1: entryRuleVariableCondition returns [EObject current=null] : iv_ruleVariableCondition= ruleVariableCondition EOF ;
    public final EObject entryRuleVariableCondition() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleVariableCondition = null;


        try {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:445:2: (iv_ruleVariableCondition= ruleVariableCondition EOF )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:446:2: iv_ruleVariableCondition= ruleVariableCondition EOF
            {
             newCompositeNode(grammarAccess.getVariableConditionRule()); 
            pushFollow(FOLLOW_ruleVariableCondition_in_entryRuleVariableCondition852);
            iv_ruleVariableCondition=ruleVariableCondition();

            state._fsp--;

             current =iv_ruleVariableCondition; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleVariableCondition862); 

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
    // $ANTLR end "entryRuleVariableCondition"


    // $ANTLR start "ruleVariableCondition"
    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:453:1: ruleVariableCondition returns [EObject current=null] : (otherlv_0= '{' ( (lv_variable_1_0= RULE_ID ) ) ( (lv_relation_2_0= RULE_RELATIONS ) ) ( (lv_value_3_0= RULE_INT ) ) otherlv_4= '}' ) ;
    public final EObject ruleVariableCondition() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token lv_variable_1_0=null;
        Token lv_relation_2_0=null;
        Token lv_value_3_0=null;
        Token otherlv_4=null;

         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:456:28: ( (otherlv_0= '{' ( (lv_variable_1_0= RULE_ID ) ) ( (lv_relation_2_0= RULE_RELATIONS ) ) ( (lv_value_3_0= RULE_INT ) ) otherlv_4= '}' ) )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:457:1: (otherlv_0= '{' ( (lv_variable_1_0= RULE_ID ) ) ( (lv_relation_2_0= RULE_RELATIONS ) ) ( (lv_value_3_0= RULE_INT ) ) otherlv_4= '}' )
            {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:457:1: (otherlv_0= '{' ( (lv_variable_1_0= RULE_ID ) ) ( (lv_relation_2_0= RULE_RELATIONS ) ) ( (lv_value_3_0= RULE_INT ) ) otherlv_4= '}' )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:457:3: otherlv_0= '{' ( (lv_variable_1_0= RULE_ID ) ) ( (lv_relation_2_0= RULE_RELATIONS ) ) ( (lv_value_3_0= RULE_INT ) ) otherlv_4= '}'
            {
            otherlv_0=(Token)match(input,17,FOLLOW_17_in_ruleVariableCondition899); 

                	newLeafNode(otherlv_0, grammarAccess.getVariableConditionAccess().getLeftCurlyBracketKeyword_0());
                
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:461:1: ( (lv_variable_1_0= RULE_ID ) )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:462:1: (lv_variable_1_0= RULE_ID )
            {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:462:1: (lv_variable_1_0= RULE_ID )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:463:3: lv_variable_1_0= RULE_ID
            {
            lv_variable_1_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleVariableCondition916); 

            			newLeafNode(lv_variable_1_0, grammarAccess.getVariableConditionAccess().getVariableIDTerminalRuleCall_1_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getVariableConditionRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"variable",
                    		lv_variable_1_0, 
                    		"ID");
            	    

            }


            }

            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:479:2: ( (lv_relation_2_0= RULE_RELATIONS ) )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:480:1: (lv_relation_2_0= RULE_RELATIONS )
            {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:480:1: (lv_relation_2_0= RULE_RELATIONS )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:481:3: lv_relation_2_0= RULE_RELATIONS
            {
            lv_relation_2_0=(Token)match(input,RULE_RELATIONS,FOLLOW_RULE_RELATIONS_in_ruleVariableCondition938); 

            			newLeafNode(lv_relation_2_0, grammarAccess.getVariableConditionAccess().getRelationRELATIONSTerminalRuleCall_2_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getVariableConditionRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"relation",
                    		lv_relation_2_0, 
                    		"RELATIONS");
            	    

            }


            }

            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:497:2: ( (lv_value_3_0= RULE_INT ) )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:498:1: (lv_value_3_0= RULE_INT )
            {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:498:1: (lv_value_3_0= RULE_INT )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:499:3: lv_value_3_0= RULE_INT
            {
            lv_value_3_0=(Token)match(input,RULE_INT,FOLLOW_RULE_INT_in_ruleVariableCondition960); 

            			newLeafNode(lv_value_3_0, grammarAccess.getVariableConditionAccess().getValueINTTerminalRuleCall_3_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getVariableConditionRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"value",
                    		lv_value_3_0, 
                    		"INT");
            	    

            }


            }

            otherlv_4=(Token)match(input,18,FOLLOW_18_in_ruleVariableCondition977); 

                	newLeafNode(otherlv_4, grammarAccess.getVariableConditionAccess().getRightCurlyBracketKeyword_4());
                

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
    // $ANTLR end "ruleVariableCondition"


    // $ANTLR start "entryRuleEvent"
    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:527:1: entryRuleEvent returns [EObject current=null] : iv_ruleEvent= ruleEvent EOF ;
    public final EObject entryRuleEvent() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleEvent = null;


        try {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:528:2: (iv_ruleEvent= ruleEvent EOF )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:529:2: iv_ruleEvent= ruleEvent EOF
            {
             newCompositeNode(grammarAccess.getEventRule()); 
            pushFollow(FOLLOW_ruleEvent_in_entryRuleEvent1013);
            iv_ruleEvent=ruleEvent();

            state._fsp--;

             current =iv_ruleEvent; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleEvent1023); 

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
    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:536:1: ruleEvent returns [EObject current=null] : ( ( ( (lv_eventName_0_0= RULE_ID ) ) otherlv_1= '.' ( (lv_eventExtension_2_0= ruleEventExtensions ) ) ) | ( (lv_nowEvent_3_0= 'now' ) ) ) ;
    public final EObject ruleEvent() throws RecognitionException {
        EObject current = null;

        Token lv_eventName_0_0=null;
        Token otherlv_1=null;
        Token lv_nowEvent_3_0=null;
        AntlrDatatypeRuleToken lv_eventExtension_2_0 = null;


         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:539:28: ( ( ( ( (lv_eventName_0_0= RULE_ID ) ) otherlv_1= '.' ( (lv_eventExtension_2_0= ruleEventExtensions ) ) ) | ( (lv_nowEvent_3_0= 'now' ) ) ) )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:540:1: ( ( ( (lv_eventName_0_0= RULE_ID ) ) otherlv_1= '.' ( (lv_eventExtension_2_0= ruleEventExtensions ) ) ) | ( (lv_nowEvent_3_0= 'now' ) ) )
            {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:540:1: ( ( ( (lv_eventName_0_0= RULE_ID ) ) otherlv_1= '.' ( (lv_eventExtension_2_0= ruleEventExtensions ) ) ) | ( (lv_nowEvent_3_0= 'now' ) ) )
            int alt3=2;
            int LA3_0 = input.LA(1);

            if ( (LA3_0==RULE_ID) ) {
                alt3=1;
            }
            else if ( (LA3_0==20) ) {
                alt3=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 3, 0, input);

                throw nvae;
            }
            switch (alt3) {
                case 1 :
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:540:2: ( ( (lv_eventName_0_0= RULE_ID ) ) otherlv_1= '.' ( (lv_eventExtension_2_0= ruleEventExtensions ) ) )
                    {
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:540:2: ( ( (lv_eventName_0_0= RULE_ID ) ) otherlv_1= '.' ( (lv_eventExtension_2_0= ruleEventExtensions ) ) )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:540:3: ( (lv_eventName_0_0= RULE_ID ) ) otherlv_1= '.' ( (lv_eventExtension_2_0= ruleEventExtensions ) )
                    {
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:540:3: ( (lv_eventName_0_0= RULE_ID ) )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:541:1: (lv_eventName_0_0= RULE_ID )
                    {
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:541:1: (lv_eventName_0_0= RULE_ID )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:542:3: lv_eventName_0_0= RULE_ID
                    {
                    lv_eventName_0_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleEvent1066); 

                    			newLeafNode(lv_eventName_0_0, grammarAccess.getEventAccess().getEventNameIDTerminalRuleCall_0_0_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getEventRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"eventName",
                            		lv_eventName_0_0, 
                            		"ID");
                    	    

                    }


                    }

                    otherlv_1=(Token)match(input,19,FOLLOW_19_in_ruleEvent1083); 

                        	newLeafNode(otherlv_1, grammarAccess.getEventAccess().getFullStopKeyword_0_1());
                        
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:562:1: ( (lv_eventExtension_2_0= ruleEventExtensions ) )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:563:1: (lv_eventExtension_2_0= ruleEventExtensions )
                    {
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:563:1: (lv_eventExtension_2_0= ruleEventExtensions )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:564:3: lv_eventExtension_2_0= ruleEventExtensions
                    {
                     
                    	        newCompositeNode(grammarAccess.getEventAccess().getEventExtensionEventExtensionsParserRuleCall_0_2_0()); 
                    	    
                    pushFollow(FOLLOW_ruleEventExtensions_in_ruleEvent1104);
                    lv_eventExtension_2_0=ruleEventExtensions();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getEventRule());
                    	        }
                           		set(
                           			current, 
                           			"eventExtension",
                            		lv_eventExtension_2_0, 
                            		"EventExtensions");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }


                    }
                    break;
                case 2 :
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:581:6: ( (lv_nowEvent_3_0= 'now' ) )
                    {
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:581:6: ( (lv_nowEvent_3_0= 'now' ) )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:582:1: (lv_nowEvent_3_0= 'now' )
                    {
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:582:1: (lv_nowEvent_3_0= 'now' )
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:583:3: lv_nowEvent_3_0= 'now'
                    {
                    lv_nowEvent_3_0=(Token)match(input,20,FOLLOW_20_in_ruleEvent1129); 

                            newLeafNode(lv_nowEvent_3_0, grammarAccess.getEventAccess().getNowEventNowKeyword_1_0());
                        

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getEventRule());
                    	        }
                           		setWithLastConsumed(current, "nowEvent", true, "now");
                    	    

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
    // $ANTLR end "ruleEvent"


    // $ANTLR start "entryRuleEventExtensions"
    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:604:1: entryRuleEventExtensions returns [String current=null] : iv_ruleEventExtensions= ruleEventExtensions EOF ;
    public final String entryRuleEventExtensions() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleEventExtensions = null;


        try {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:605:2: (iv_ruleEventExtensions= ruleEventExtensions EOF )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:606:2: iv_ruleEventExtensions= ruleEventExtensions EOF
            {
             newCompositeNode(grammarAccess.getEventExtensionsRule()); 
            pushFollow(FOLLOW_ruleEventExtensions_in_entryRuleEventExtensions1179);
            iv_ruleEventExtensions=ruleEventExtensions();

            state._fsp--;

             current =iv_ruleEventExtensions.getText(); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleEventExtensions1190); 

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
    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:613:1: ruleEventExtensions returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' | kw= 'send' | kw= 'receive' ) ;
    public final AntlrDatatypeRuleToken ruleEventExtensions() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token kw=null;

         enterRule(); 
            
        try {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:616:28: ( (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' | kw= 'send' | kw= 'receive' ) )
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:617:1: (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' | kw= 'send' | kw= 'receive' )
            {
            // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:617:1: (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' | kw= 'send' | kw= 'receive' )
            int alt4=9;
            switch ( input.LA(1) ) {
            case 21:
                {
                alt4=1;
                }
                break;
            case 22:
                {
                alt4=2;
                }
                break;
            case 23:
                {
                alt4=3;
                }
                break;
            case 24:
                {
                alt4=4;
                }
                break;
            case 25:
                {
                alt4=5;
                }
                break;
            case 26:
                {
                alt4=6;
                }
                break;
            case 27:
                {
                alt4=7;
                }
                break;
            case 28:
                {
                alt4=8;
                }
                break;
            case 29:
                {
                alt4=9;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 4, 0, input);

                throw nvae;
            }

            switch (alt4) {
                case 1 :
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:618:2: kw= 'exit'
                    {
                    kw=(Token)match(input,21,FOLLOW_21_in_ruleEventExtensions1228); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getExitKeyword_0()); 
                        

                    }
                    break;
                case 2 :
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:625:2: kw= 'enter'
                    {
                    kw=(Token)match(input,22,FOLLOW_22_in_ruleEventExtensions1247); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getEnterKeyword_1()); 
                        

                    }
                    break;
                case 3 :
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:632:2: kw= 'start'
                    {
                    kw=(Token)match(input,23,FOLLOW_23_in_ruleEventExtensions1266); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getStartKeyword_2()); 
                        

                    }
                    break;
                case 4 :
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:639:2: kw= 'end'
                    {
                    kw=(Token)match(input,24,FOLLOW_24_in_ruleEventExtensions1285); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getEndKeyword_3()); 
                        

                    }
                    break;
                case 5 :
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:646:2: kw= 'tick'
                    {
                    kw=(Token)match(input,25,FOLLOW_25_in_ruleEventExtensions1304); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getTickKeyword_4()); 
                        

                    }
                    break;
                case 6 :
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:653:2: kw= 'sig'
                    {
                    kw=(Token)match(input,26,FOLLOW_26_in_ruleEventExtensions1323); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getSigKeyword_5()); 
                        

                    }
                    break;
                case 7 :
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:660:2: kw= 'call'
                    {
                    kw=(Token)match(input,27,FOLLOW_27_in_ruleEventExtensions1342); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getCallKeyword_6()); 
                        

                    }
                    break;
                case 8 :
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:667:2: kw= 'send'
                    {
                    kw=(Token)match(input,28,FOLLOW_28_in_ruleEventExtensions1361); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getSendKeyword_7()); 
                        

                    }
                    break;
                case 9 :
                    // ../org.correttouml.grammars.booleanexpressions/src-gen/org/correttouml/grammars/parser/antlr/internal/InternalBooleanExpressions.g:674:2: kw= 'receive'
                    {
                    kw=(Token)match(input,29,FOLLOW_29_in_ruleEventExtensions1380); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getReceiveKeyword_8()); 
                        

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


    protected DFA1 dfa1 = new DFA1(this);
    static final String DFA1_eotS =
        "\50\uffff";
    static final String DFA1_eofS =
        "\3\uffff\1\10\27\uffff\1\10\13\uffff\1\10";
    static final String DFA1_minS =
        "\1\6\1\uffff\1\6\1\15\1\6\1\23\1\20\3\uffff\1\4\1\25\1\17\1\5\11"+
        "\20\1\6\1\22\1\23\1\4\1\15\1\25\1\5\11\4\1\15";
    static final String DFA1_maxS =
        "\1\21\1\uffff\1\24\1\16\1\6\1\23\1\20\3\uffff\1\4\1\35\1\17\1\5"+
        "\11\20\1\24\1\22\1\23\1\4\1\16\1\35\1\5\11\4\1\16";
    static final String DFA1_acceptS =
        "\1\uffff\1\1\5\uffff\1\2\1\4\1\3\36\uffff";
    static final String DFA1_specialS =
        "\50\uffff}>";
    static final String[] DFA1_transitionS = {
            "\1\3\5\uffff\1\1\2\uffff\1\2\1\uffff\1\4",
            "",
            "\1\5\15\uffff\1\6",
            "\1\7\1\11",
            "\1\12",
            "\1\13",
            "\1\14",
            "",
            "",
            "",
            "\1\15",
            "\1\16\1\17\1\20\1\21\1\22\1\23\1\24\1\25\1\26",
            "\1\27",
            "\1\30",
            "\1\14",
            "\1\14",
            "\1\14",
            "\1\14",
            "\1\14",
            "\1\14",
            "\1\14",
            "\1\14",
            "\1\14",
            "\1\31\15\uffff\1\32",
            "\1\33",
            "\1\34",
            "\1\35",
            "\1\7\1\11",
            "\1\36\1\37\1\40\1\41\1\42\1\43\1\44\1\45\1\46",
            "\1\47",
            "\1\35",
            "\1\35",
            "\1\35",
            "\1\35",
            "\1\35",
            "\1\35",
            "\1\35",
            "\1\35",
            "\1\35",
            "\1\7\1\11"
    };

    static final short[] DFA1_eot = DFA.unpackEncodedString(DFA1_eotS);
    static final short[] DFA1_eof = DFA.unpackEncodedString(DFA1_eofS);
    static final char[] DFA1_min = DFA.unpackEncodedStringToUnsignedChars(DFA1_minS);
    static final char[] DFA1_max = DFA.unpackEncodedStringToUnsignedChars(DFA1_maxS);
    static final short[] DFA1_accept = DFA.unpackEncodedString(DFA1_acceptS);
    static final short[] DFA1_special = DFA.unpackEncodedString(DFA1_specialS);
    static final short[][] DFA1_transition;

    static {
        int numStates = DFA1_transitionS.length;
        DFA1_transition = new short[numStates][];
        for (int i=0; i<numStates; i++) {
            DFA1_transition[i] = DFA.unpackEncodedString(DFA1_transitionS[i]);
        }
    }

    class DFA1 extends DFA {

        public DFA1(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 1;
            this.eot = DFA1_eot;
            this.eof = DFA1_eof;
            this.min = DFA1_min;
            this.max = DFA1_max;
            this.accept = DFA1_accept;
            this.special = DFA1_special;
            this.transition = DFA1_transition;
        }
        public String getDescription() {
            return "119:1: ( (otherlv_0= '!!' ( (lv_notExpression_1_0= rulebooleanExpression ) ) ) | ( ( (lv_orLeft_2_0= rulebooleanTerm ) ) otherlv_3= '||' ( (lv_orRight_4_0= rulebooleanTerm ) ) ) | ( ( (lv_andLeft_5_0= rulebooleanTerm ) ) otherlv_6= '&&' ( (lv_andRight_7_0= rulebooleanTerm ) ) ) | ( (lv_booleanTerm_8_0= rulebooleanTerm ) ) )";
        }
    }
 

    public static final BitSet FOLLOW_ruleModel_in_entryRuleModel75 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleModel85 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rulebooleanExpression_in_ruleModel130 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rulebooleanExpression_in_entryRulebooleanExpression165 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRulebooleanExpression175 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_12_in_rulebooleanExpression213 = new BitSet(new long[]{0x0000000000029040L});
    public static final BitSet FOLLOW_rulebooleanExpression_in_rulebooleanExpression234 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rulebooleanTerm_in_rulebooleanExpression263 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_13_in_rulebooleanExpression275 = new BitSet(new long[]{0x0000000000028040L});
    public static final BitSet FOLLOW_rulebooleanTerm_in_rulebooleanExpression296 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rulebooleanTerm_in_rulebooleanExpression325 = new BitSet(new long[]{0x0000000000004000L});
    public static final BitSet FOLLOW_14_in_rulebooleanExpression337 = new BitSet(new long[]{0x0000000000028040L});
    public static final BitSet FOLLOW_rulebooleanTerm_in_rulebooleanExpression358 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rulebooleanTerm_in_rulebooleanExpression386 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rulebooleanTerm_in_entryRulebooleanTerm422 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRulebooleanTerm432 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTimeConstraint_in_rulebooleanTerm479 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleBooleanVariable_in_rulebooleanTerm506 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleVariableCondition_in_rulebooleanTerm533 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTimeConstraint_in_entryRuleTimeConstraint568 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleTimeConstraint578 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_15_in_ruleTimeConstraint615 = new BitSet(new long[]{0x0000000000100040L});
    public static final BitSet FOLLOW_ruleEvent_in_ruleTimeConstraint636 = new BitSet(new long[]{0x0000000000010000L});
    public static final BitSet FOLLOW_16_in_ruleTimeConstraint648 = new BitSet(new long[]{0x0000000000008000L});
    public static final BitSet FOLLOW_15_in_ruleTimeConstraint660 = new BitSet(new long[]{0x0000000000100040L});
    public static final BitSet FOLLOW_ruleEvent_in_ruleTimeConstraint681 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_RELATIONS_in_ruleTimeConstraint698 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_RULE_INT_in_ruleTimeConstraint720 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleBooleanVariable_in_entryRuleBooleanVariable761 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleBooleanVariable771 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleBooleanVariable812 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleVariableCondition_in_entryRuleVariableCondition852 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleVariableCondition862 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_17_in_ruleVariableCondition899 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleVariableCondition916 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_RELATIONS_in_ruleVariableCondition938 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_RULE_INT_in_ruleVariableCondition960 = new BitSet(new long[]{0x0000000000040000L});
    public static final BitSet FOLLOW_18_in_ruleVariableCondition977 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEvent_in_entryRuleEvent1013 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleEvent1023 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleEvent1066 = new BitSet(new long[]{0x0000000000080000L});
    public static final BitSet FOLLOW_19_in_ruleEvent1083 = new BitSet(new long[]{0x000000003FE00000L});
    public static final BitSet FOLLOW_ruleEventExtensions_in_ruleEvent1104 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_20_in_ruleEvent1129 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEventExtensions_in_entryRuleEventExtensions1179 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleEventExtensions1190 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_21_in_ruleEventExtensions1228 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_22_in_ruleEventExtensions1247 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_23_in_ruleEventExtensions1266 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_24_in_ruleEventExtensions1285 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_25_in_ruleEventExtensions1304 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_26_in_ruleEventExtensions1323 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_27_in_ruleEventExtensions1342 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_28_in_ruleEventExtensions1361 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_29_in_ruleEventExtensions1380 = new BitSet(new long[]{0x0000000000000002L});

}