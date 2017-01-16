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
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_OR", "RULE_AND", "RULE_NOT", "RULE_RELATIONS", "RULE_INT", "RULE_ID", "RULE_OPERATOR", "RULE_STRING", "RULE_ML_COMMENT", "RULE_SL_COMMENT", "RULE_WS", "RULE_ANY_OTHER", "'('", "')'", "'@'", "'-'", "'.'", "'now'", "'exit'", "'enter'", "'start'", "'end'", "'tick'", "'sig'", "'call'", "'send'", "'receive'", "'reply'", "'adstart'", "'adend'", "'iodstart'", "'iodend'"
    };
    public static final int RULE_RELATIONS=7;
    public static final int RULE_STRING=11;
    public static final int RULE_NOT=6;
    public static final int RULE_AND=5;
    public static final int RULE_SL_COMMENT=13;
    public static final int T__19=19;
    public static final int T__16=16;
    public static final int T__17=17;
    public static final int T__18=18;
    public static final int T__33=33;
    public static final int T__34=34;
    public static final int T__35=35;
    public static final int RULE_OR=4;
    public static final int EOF=-1;
    public static final int T__30=30;
    public static final int T__31=31;
    public static final int RULE_OPERATOR=10;
    public static final int T__32=32;
    public static final int RULE_ID=9;
    public static final int RULE_WS=14;
    public static final int RULE_ANY_OTHER=15;
    public static final int T__26=26;
    public static final int T__27=27;
    public static final int T__28=28;
    public static final int RULE_INT=8;
    public static final int T__29=29;
    public static final int T__22=22;
    public static final int RULE_ML_COMMENT=12;
    public static final int T__23=23;
    public static final int T__24=24;
    public static final int T__25=25;
    public static final int T__20=20;
    public static final int T__21=21;

    // delegates
    // delegators


        public InternalBooleanExpressionsParser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public InternalBooleanExpressionsParser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        

    public String[] getTokenNames() { return InternalBooleanExpressionsParser.tokenNames; }
    public String getGrammarFileName() { return "InternalBooleanExpressions.g"; }



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
    // InternalBooleanExpressions.g:67:1: entryRuleModel returns [EObject current=null] : iv_ruleModel= ruleModel EOF ;
    public final EObject entryRuleModel() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleModel = null;


        try {
            // InternalBooleanExpressions.g:68:2: (iv_ruleModel= ruleModel EOF )
            // InternalBooleanExpressions.g:69:2: iv_ruleModel= ruleModel EOF
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
    // InternalBooleanExpressions.g:76:1: ruleModel returns [EObject current=null] : ( (lv_expression_0_0= ruleOrExpression ) ) ;
    public final EObject ruleModel() throws RecognitionException {
        EObject current = null;

        EObject lv_expression_0_0 = null;


         enterRule(); 
            
        try {
            // InternalBooleanExpressions.g:79:28: ( ( (lv_expression_0_0= ruleOrExpression ) ) )
            // InternalBooleanExpressions.g:80:1: ( (lv_expression_0_0= ruleOrExpression ) )
            {
            // InternalBooleanExpressions.g:80:1: ( (lv_expression_0_0= ruleOrExpression ) )
            // InternalBooleanExpressions.g:81:1: (lv_expression_0_0= ruleOrExpression )
            {
            // InternalBooleanExpressions.g:81:1: (lv_expression_0_0= ruleOrExpression )
            // InternalBooleanExpressions.g:82:3: lv_expression_0_0= ruleOrExpression
            {
             
            	        newCompositeNode(grammarAccess.getModelAccess().getExpressionOrExpressionParserRuleCall_0()); 
            	    
            pushFollow(FOLLOW_2);
            lv_expression_0_0=ruleOrExpression();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getModelRule());
            	        }
                   		set(
                   			current, 
                   			"expression",
                    		lv_expression_0_0, 
                    		"org.correttouml.grammars.BooleanExpressions.OrExpression");
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


    // $ANTLR start "entryRuleOrExpression"
    // InternalBooleanExpressions.g:106:1: entryRuleOrExpression returns [EObject current=null] : iv_ruleOrExpression= ruleOrExpression EOF ;
    public final EObject entryRuleOrExpression() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleOrExpression = null;


        try {
            // InternalBooleanExpressions.g:107:2: (iv_ruleOrExpression= ruleOrExpression EOF )
            // InternalBooleanExpressions.g:108:2: iv_ruleOrExpression= ruleOrExpression EOF
            {
             newCompositeNode(grammarAccess.getOrExpressionRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleOrExpression=ruleOrExpression();

            state._fsp--;

             current =iv_ruleOrExpression; 
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
    // $ANTLR end "entryRuleOrExpression"


    // $ANTLR start "ruleOrExpression"
    // InternalBooleanExpressions.g:115:1: ruleOrExpression returns [EObject current=null] : ( ( (lv_leftExpression_0_0= ruleAndExpression ) ) ( ( (lv_or_1_0= RULE_OR ) ) ( (lv_rightExpression_2_0= ruleOrExpression ) ) )? ) ;
    public final EObject ruleOrExpression() throws RecognitionException {
        EObject current = null;

        Token lv_or_1_0=null;
        EObject lv_leftExpression_0_0 = null;

        EObject lv_rightExpression_2_0 = null;


         enterRule(); 
            
        try {
            // InternalBooleanExpressions.g:118:28: ( ( ( (lv_leftExpression_0_0= ruleAndExpression ) ) ( ( (lv_or_1_0= RULE_OR ) ) ( (lv_rightExpression_2_0= ruleOrExpression ) ) )? ) )
            // InternalBooleanExpressions.g:119:1: ( ( (lv_leftExpression_0_0= ruleAndExpression ) ) ( ( (lv_or_1_0= RULE_OR ) ) ( (lv_rightExpression_2_0= ruleOrExpression ) ) )? )
            {
            // InternalBooleanExpressions.g:119:1: ( ( (lv_leftExpression_0_0= ruleAndExpression ) ) ( ( (lv_or_1_0= RULE_OR ) ) ( (lv_rightExpression_2_0= ruleOrExpression ) ) )? )
            // InternalBooleanExpressions.g:119:2: ( (lv_leftExpression_0_0= ruleAndExpression ) ) ( ( (lv_or_1_0= RULE_OR ) ) ( (lv_rightExpression_2_0= ruleOrExpression ) ) )?
            {
            // InternalBooleanExpressions.g:119:2: ( (lv_leftExpression_0_0= ruleAndExpression ) )
            // InternalBooleanExpressions.g:120:1: (lv_leftExpression_0_0= ruleAndExpression )
            {
            // InternalBooleanExpressions.g:120:1: (lv_leftExpression_0_0= ruleAndExpression )
            // InternalBooleanExpressions.g:121:3: lv_leftExpression_0_0= ruleAndExpression
            {
             
            	        newCompositeNode(grammarAccess.getOrExpressionAccess().getLeftExpressionAndExpressionParserRuleCall_0_0()); 
            	    
            pushFollow(FOLLOW_3);
            lv_leftExpression_0_0=ruleAndExpression();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getOrExpressionRule());
            	        }
                   		set(
                   			current, 
                   			"leftExpression",
                    		lv_leftExpression_0_0, 
                    		"org.correttouml.grammars.BooleanExpressions.AndExpression");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            // InternalBooleanExpressions.g:137:2: ( ( (lv_or_1_0= RULE_OR ) ) ( (lv_rightExpression_2_0= ruleOrExpression ) ) )?
            int alt1=2;
            int LA1_0 = input.LA(1);

            if ( (LA1_0==RULE_OR) ) {
                alt1=1;
            }
            switch (alt1) {
                case 1 :
                    // InternalBooleanExpressions.g:137:3: ( (lv_or_1_0= RULE_OR ) ) ( (lv_rightExpression_2_0= ruleOrExpression ) )
                    {
                    // InternalBooleanExpressions.g:137:3: ( (lv_or_1_0= RULE_OR ) )
                    // InternalBooleanExpressions.g:138:1: (lv_or_1_0= RULE_OR )
                    {
                    // InternalBooleanExpressions.g:138:1: (lv_or_1_0= RULE_OR )
                    // InternalBooleanExpressions.g:139:3: lv_or_1_0= RULE_OR
                    {
                    lv_or_1_0=(Token)match(input,RULE_OR,FOLLOW_4); 

                    			newLeafNode(lv_or_1_0, grammarAccess.getOrExpressionAccess().getOrORTerminalRuleCall_1_0_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getOrExpressionRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"or",
                            		lv_or_1_0, 
                            		"org.correttouml.grammars.BooleanExpressions.OR");
                    	    

                    }


                    }

                    // InternalBooleanExpressions.g:155:2: ( (lv_rightExpression_2_0= ruleOrExpression ) )
                    // InternalBooleanExpressions.g:156:1: (lv_rightExpression_2_0= ruleOrExpression )
                    {
                    // InternalBooleanExpressions.g:156:1: (lv_rightExpression_2_0= ruleOrExpression )
                    // InternalBooleanExpressions.g:157:3: lv_rightExpression_2_0= ruleOrExpression
                    {
                     
                    	        newCompositeNode(grammarAccess.getOrExpressionAccess().getRightExpressionOrExpressionParserRuleCall_1_1_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_rightExpression_2_0=ruleOrExpression();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getOrExpressionRule());
                    	        }
                           		set(
                           			current, 
                           			"rightExpression",
                            		lv_rightExpression_2_0, 
                            		"org.correttouml.grammars.BooleanExpressions.OrExpression");
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
    // $ANTLR end "ruleOrExpression"


    // $ANTLR start "entryRuleAndExpression"
    // InternalBooleanExpressions.g:181:1: entryRuleAndExpression returns [EObject current=null] : iv_ruleAndExpression= ruleAndExpression EOF ;
    public final EObject entryRuleAndExpression() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleAndExpression = null;


        try {
            // InternalBooleanExpressions.g:182:2: (iv_ruleAndExpression= ruleAndExpression EOF )
            // InternalBooleanExpressions.g:183:2: iv_ruleAndExpression= ruleAndExpression EOF
            {
             newCompositeNode(grammarAccess.getAndExpressionRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleAndExpression=ruleAndExpression();

            state._fsp--;

             current =iv_ruleAndExpression; 
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
    // $ANTLR end "entryRuleAndExpression"


    // $ANTLR start "ruleAndExpression"
    // InternalBooleanExpressions.g:190:1: ruleAndExpression returns [EObject current=null] : ( ( (lv_leftExpression_0_0= ruleBaseExpression ) ) ( ( (lv_and_1_0= RULE_AND ) ) ( (lv_rightExpression_2_0= ruleAndExpression ) ) )? ) ;
    public final EObject ruleAndExpression() throws RecognitionException {
        EObject current = null;

        Token lv_and_1_0=null;
        EObject lv_leftExpression_0_0 = null;

        EObject lv_rightExpression_2_0 = null;


         enterRule(); 
            
        try {
            // InternalBooleanExpressions.g:193:28: ( ( ( (lv_leftExpression_0_0= ruleBaseExpression ) ) ( ( (lv_and_1_0= RULE_AND ) ) ( (lv_rightExpression_2_0= ruleAndExpression ) ) )? ) )
            // InternalBooleanExpressions.g:194:1: ( ( (lv_leftExpression_0_0= ruleBaseExpression ) ) ( ( (lv_and_1_0= RULE_AND ) ) ( (lv_rightExpression_2_0= ruleAndExpression ) ) )? )
            {
            // InternalBooleanExpressions.g:194:1: ( ( (lv_leftExpression_0_0= ruleBaseExpression ) ) ( ( (lv_and_1_0= RULE_AND ) ) ( (lv_rightExpression_2_0= ruleAndExpression ) ) )? )
            // InternalBooleanExpressions.g:194:2: ( (lv_leftExpression_0_0= ruleBaseExpression ) ) ( ( (lv_and_1_0= RULE_AND ) ) ( (lv_rightExpression_2_0= ruleAndExpression ) ) )?
            {
            // InternalBooleanExpressions.g:194:2: ( (lv_leftExpression_0_0= ruleBaseExpression ) )
            // InternalBooleanExpressions.g:195:1: (lv_leftExpression_0_0= ruleBaseExpression )
            {
            // InternalBooleanExpressions.g:195:1: (lv_leftExpression_0_0= ruleBaseExpression )
            // InternalBooleanExpressions.g:196:3: lv_leftExpression_0_0= ruleBaseExpression
            {
             
            	        newCompositeNode(grammarAccess.getAndExpressionAccess().getLeftExpressionBaseExpressionParserRuleCall_0_0()); 
            	    
            pushFollow(FOLLOW_5);
            lv_leftExpression_0_0=ruleBaseExpression();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getAndExpressionRule());
            	        }
                   		set(
                   			current, 
                   			"leftExpression",
                    		lv_leftExpression_0_0, 
                    		"org.correttouml.grammars.BooleanExpressions.BaseExpression");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            // InternalBooleanExpressions.g:212:2: ( ( (lv_and_1_0= RULE_AND ) ) ( (lv_rightExpression_2_0= ruleAndExpression ) ) )?
            int alt2=2;
            int LA2_0 = input.LA(1);

            if ( (LA2_0==RULE_AND) ) {
                alt2=1;
            }
            switch (alt2) {
                case 1 :
                    // InternalBooleanExpressions.g:212:3: ( (lv_and_1_0= RULE_AND ) ) ( (lv_rightExpression_2_0= ruleAndExpression ) )
                    {
                    // InternalBooleanExpressions.g:212:3: ( (lv_and_1_0= RULE_AND ) )
                    // InternalBooleanExpressions.g:213:1: (lv_and_1_0= RULE_AND )
                    {
                    // InternalBooleanExpressions.g:213:1: (lv_and_1_0= RULE_AND )
                    // InternalBooleanExpressions.g:214:3: lv_and_1_0= RULE_AND
                    {
                    lv_and_1_0=(Token)match(input,RULE_AND,FOLLOW_4); 

                    			newLeafNode(lv_and_1_0, grammarAccess.getAndExpressionAccess().getAndANDTerminalRuleCall_1_0_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getAndExpressionRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"and",
                            		lv_and_1_0, 
                            		"org.correttouml.grammars.BooleanExpressions.AND");
                    	    

                    }


                    }

                    // InternalBooleanExpressions.g:230:2: ( (lv_rightExpression_2_0= ruleAndExpression ) )
                    // InternalBooleanExpressions.g:231:1: (lv_rightExpression_2_0= ruleAndExpression )
                    {
                    // InternalBooleanExpressions.g:231:1: (lv_rightExpression_2_0= ruleAndExpression )
                    // InternalBooleanExpressions.g:232:3: lv_rightExpression_2_0= ruleAndExpression
                    {
                     
                    	        newCompositeNode(grammarAccess.getAndExpressionAccess().getRightExpressionAndExpressionParserRuleCall_1_1_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_rightExpression_2_0=ruleAndExpression();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getAndExpressionRule());
                    	        }
                           		set(
                           			current, 
                           			"rightExpression",
                            		lv_rightExpression_2_0, 
                            		"org.correttouml.grammars.BooleanExpressions.AndExpression");
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
    // $ANTLR end "ruleAndExpression"


    // $ANTLR start "entryRuleBaseExpression"
    // InternalBooleanExpressions.g:256:1: entryRuleBaseExpression returns [EObject current=null] : iv_ruleBaseExpression= ruleBaseExpression EOF ;
    public final EObject entryRuleBaseExpression() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleBaseExpression = null;


        try {
            // InternalBooleanExpressions.g:257:2: (iv_ruleBaseExpression= ruleBaseExpression EOF )
            // InternalBooleanExpressions.g:258:2: iv_ruleBaseExpression= ruleBaseExpression EOF
            {
             newCompositeNode(grammarAccess.getBaseExpressionRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleBaseExpression=ruleBaseExpression();

            state._fsp--;

             current =iv_ruleBaseExpression; 
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
    // $ANTLR end "entryRuleBaseExpression"


    // $ANTLR start "ruleBaseExpression"
    // InternalBooleanExpressions.g:265:1: ruleBaseExpression returns [EObject current=null] : ( ( (lv_not_0_0= RULE_NOT ) )? ( ( (lv_booleanTerm_1_0= rulebooleanTerm ) ) | (otherlv_2= '(' ( (lv_rootExpression_3_0= ruleOrExpression ) ) otherlv_4= ')' ) ) ) ;
    public final EObject ruleBaseExpression() throws RecognitionException {
        EObject current = null;

        Token lv_not_0_0=null;
        Token otherlv_2=null;
        Token otherlv_4=null;
        EObject lv_booleanTerm_1_0 = null;

        EObject lv_rootExpression_3_0 = null;


         enterRule(); 
            
        try {
            // InternalBooleanExpressions.g:268:28: ( ( ( (lv_not_0_0= RULE_NOT ) )? ( ( (lv_booleanTerm_1_0= rulebooleanTerm ) ) | (otherlv_2= '(' ( (lv_rootExpression_3_0= ruleOrExpression ) ) otherlv_4= ')' ) ) ) )
            // InternalBooleanExpressions.g:269:1: ( ( (lv_not_0_0= RULE_NOT ) )? ( ( (lv_booleanTerm_1_0= rulebooleanTerm ) ) | (otherlv_2= '(' ( (lv_rootExpression_3_0= ruleOrExpression ) ) otherlv_4= ')' ) ) )
            {
            // InternalBooleanExpressions.g:269:1: ( ( (lv_not_0_0= RULE_NOT ) )? ( ( (lv_booleanTerm_1_0= rulebooleanTerm ) ) | (otherlv_2= '(' ( (lv_rootExpression_3_0= ruleOrExpression ) ) otherlv_4= ')' ) ) )
            // InternalBooleanExpressions.g:269:2: ( (lv_not_0_0= RULE_NOT ) )? ( ( (lv_booleanTerm_1_0= rulebooleanTerm ) ) | (otherlv_2= '(' ( (lv_rootExpression_3_0= ruleOrExpression ) ) otherlv_4= ')' ) )
            {
            // InternalBooleanExpressions.g:269:2: ( (lv_not_0_0= RULE_NOT ) )?
            int alt3=2;
            int LA3_0 = input.LA(1);

            if ( (LA3_0==RULE_NOT) ) {
                alt3=1;
            }
            switch (alt3) {
                case 1 :
                    // InternalBooleanExpressions.g:270:1: (lv_not_0_0= RULE_NOT )
                    {
                    // InternalBooleanExpressions.g:270:1: (lv_not_0_0= RULE_NOT )
                    // InternalBooleanExpressions.g:271:3: lv_not_0_0= RULE_NOT
                    {
                    lv_not_0_0=(Token)match(input,RULE_NOT,FOLLOW_6); 

                    			newLeafNode(lv_not_0_0, grammarAccess.getBaseExpressionAccess().getNotNOTTerminalRuleCall_0_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getBaseExpressionRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"not",
                            		lv_not_0_0, 
                            		"org.correttouml.grammars.BooleanExpressions.NOT");
                    	    

                    }


                    }
                    break;

            }

            // InternalBooleanExpressions.g:287:3: ( ( (lv_booleanTerm_1_0= rulebooleanTerm ) ) | (otherlv_2= '(' ( (lv_rootExpression_3_0= ruleOrExpression ) ) otherlv_4= ')' ) )
            int alt4=2;
            int LA4_0 = input.LA(1);

            if ( (LA4_0==RULE_ID||LA4_0==18) ) {
                alt4=1;
            }
            else if ( (LA4_0==16) ) {
                switch ( input.LA(2) ) {
                case RULE_NOT:
                case 16:
                case 18:
                    {
                    alt4=2;
                    }
                    break;
                case RULE_ID:
                    {
                    int LA4_4 = input.LA(3);

                    if ( (LA4_4==RULE_RELATIONS||LA4_4==RULE_OPERATOR) ) {
                        alt4=1;
                    }
                    else if ( ((LA4_4>=RULE_OR && LA4_4<=RULE_AND)||LA4_4==17) ) {
                        alt4=2;
                    }
                    else {
                        NoViableAltException nvae =
                            new NoViableAltException("", 4, 4, input);

                        throw nvae;
                    }
                    }
                    break;
                case RULE_INT:
                    {
                    alt4=1;
                    }
                    break;
                default:
                    NoViableAltException nvae =
                        new NoViableAltException("", 4, 2, input);

                    throw nvae;
                }

            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 4, 0, input);

                throw nvae;
            }
            switch (alt4) {
                case 1 :
                    // InternalBooleanExpressions.g:287:4: ( (lv_booleanTerm_1_0= rulebooleanTerm ) )
                    {
                    // InternalBooleanExpressions.g:287:4: ( (lv_booleanTerm_1_0= rulebooleanTerm ) )
                    // InternalBooleanExpressions.g:288:1: (lv_booleanTerm_1_0= rulebooleanTerm )
                    {
                    // InternalBooleanExpressions.g:288:1: (lv_booleanTerm_1_0= rulebooleanTerm )
                    // InternalBooleanExpressions.g:289:3: lv_booleanTerm_1_0= rulebooleanTerm
                    {
                     
                    	        newCompositeNode(grammarAccess.getBaseExpressionAccess().getBooleanTermBooleanTermParserRuleCall_1_0_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_booleanTerm_1_0=rulebooleanTerm();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getBaseExpressionRule());
                    	        }
                           		set(
                           			current, 
                           			"booleanTerm",
                            		lv_booleanTerm_1_0, 
                            		"org.correttouml.grammars.BooleanExpressions.booleanTerm");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }
                    break;
                case 2 :
                    // InternalBooleanExpressions.g:306:6: (otherlv_2= '(' ( (lv_rootExpression_3_0= ruleOrExpression ) ) otherlv_4= ')' )
                    {
                    // InternalBooleanExpressions.g:306:6: (otherlv_2= '(' ( (lv_rootExpression_3_0= ruleOrExpression ) ) otherlv_4= ')' )
                    // InternalBooleanExpressions.g:306:8: otherlv_2= '(' ( (lv_rootExpression_3_0= ruleOrExpression ) ) otherlv_4= ')'
                    {
                    otherlv_2=(Token)match(input,16,FOLLOW_4); 

                        	newLeafNode(otherlv_2, grammarAccess.getBaseExpressionAccess().getLeftParenthesisKeyword_1_1_0());
                        
                    // InternalBooleanExpressions.g:310:1: ( (lv_rootExpression_3_0= ruleOrExpression ) )
                    // InternalBooleanExpressions.g:311:1: (lv_rootExpression_3_0= ruleOrExpression )
                    {
                    // InternalBooleanExpressions.g:311:1: (lv_rootExpression_3_0= ruleOrExpression )
                    // InternalBooleanExpressions.g:312:3: lv_rootExpression_3_0= ruleOrExpression
                    {
                     
                    	        newCompositeNode(grammarAccess.getBaseExpressionAccess().getRootExpressionOrExpressionParserRuleCall_1_1_1_0()); 
                    	    
                    pushFollow(FOLLOW_7);
                    lv_rootExpression_3_0=ruleOrExpression();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getBaseExpressionRule());
                    	        }
                           		set(
                           			current, 
                           			"rootExpression",
                            		lv_rootExpression_3_0, 
                            		"org.correttouml.grammars.BooleanExpressions.OrExpression");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }

                    otherlv_4=(Token)match(input,17,FOLLOW_2); 

                        	newLeafNode(otherlv_4, grammarAccess.getBaseExpressionAccess().getRightParenthesisKeyword_1_1_2());
                        

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
    // $ANTLR end "ruleBaseExpression"


    // $ANTLR start "entryRulebooleanTerm"
    // InternalBooleanExpressions.g:340:1: entryRulebooleanTerm returns [EObject current=null] : iv_rulebooleanTerm= rulebooleanTerm EOF ;
    public final EObject entryRulebooleanTerm() throws RecognitionException {
        EObject current = null;

        EObject iv_rulebooleanTerm = null;


        try {
            // InternalBooleanExpressions.g:341:2: (iv_rulebooleanTerm= rulebooleanTerm EOF )
            // InternalBooleanExpressions.g:342:2: iv_rulebooleanTerm= rulebooleanTerm EOF
            {
             newCompositeNode(grammarAccess.getBooleanTermRule()); 
            pushFollow(FOLLOW_1);
            iv_rulebooleanTerm=rulebooleanTerm();

            state._fsp--;

             current =iv_rulebooleanTerm; 
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
    // $ANTLR end "entryRulebooleanTerm"


    // $ANTLR start "rulebooleanTerm"
    // InternalBooleanExpressions.g:349:1: rulebooleanTerm returns [EObject current=null] : ( ( (lv_timeConstraint_0_0= ruleTimeConstraint ) ) | ( (lv_booleanVariable_1_0= ruleBooleanVariable ) ) | ( (lv_variableCondition_2_0= ruleVariableCondition ) ) ) ;
    public final EObject rulebooleanTerm() throws RecognitionException {
        EObject current = null;

        EObject lv_timeConstraint_0_0 = null;

        EObject lv_booleanVariable_1_0 = null;

        EObject lv_variableCondition_2_0 = null;


         enterRule(); 
            
        try {
            // InternalBooleanExpressions.g:352:28: ( ( ( (lv_timeConstraint_0_0= ruleTimeConstraint ) ) | ( (lv_booleanVariable_1_0= ruleBooleanVariable ) ) | ( (lv_variableCondition_2_0= ruleVariableCondition ) ) ) )
            // InternalBooleanExpressions.g:353:1: ( ( (lv_timeConstraint_0_0= ruleTimeConstraint ) ) | ( (lv_booleanVariable_1_0= ruleBooleanVariable ) ) | ( (lv_variableCondition_2_0= ruleVariableCondition ) ) )
            {
            // InternalBooleanExpressions.g:353:1: ( ( (lv_timeConstraint_0_0= ruleTimeConstraint ) ) | ( (lv_booleanVariable_1_0= ruleBooleanVariable ) ) | ( (lv_variableCondition_2_0= ruleVariableCondition ) ) )
            int alt5=3;
            switch ( input.LA(1) ) {
            case 18:
                {
                alt5=1;
                }
                break;
            case RULE_ID:
                {
                alt5=2;
                }
                break;
            case 16:
                {
                alt5=3;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 5, 0, input);

                throw nvae;
            }

            switch (alt5) {
                case 1 :
                    // InternalBooleanExpressions.g:353:2: ( (lv_timeConstraint_0_0= ruleTimeConstraint ) )
                    {
                    // InternalBooleanExpressions.g:353:2: ( (lv_timeConstraint_0_0= ruleTimeConstraint ) )
                    // InternalBooleanExpressions.g:354:1: (lv_timeConstraint_0_0= ruleTimeConstraint )
                    {
                    // InternalBooleanExpressions.g:354:1: (lv_timeConstraint_0_0= ruleTimeConstraint )
                    // InternalBooleanExpressions.g:355:3: lv_timeConstraint_0_0= ruleTimeConstraint
                    {
                     
                    	        newCompositeNode(grammarAccess.getBooleanTermAccess().getTimeConstraintTimeConstraintParserRuleCall_0_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_timeConstraint_0_0=ruleTimeConstraint();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getBooleanTermRule());
                    	        }
                           		set(
                           			current, 
                           			"timeConstraint",
                            		lv_timeConstraint_0_0, 
                            		"org.correttouml.grammars.BooleanExpressions.TimeConstraint");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }
                    break;
                case 2 :
                    // InternalBooleanExpressions.g:372:6: ( (lv_booleanVariable_1_0= ruleBooleanVariable ) )
                    {
                    // InternalBooleanExpressions.g:372:6: ( (lv_booleanVariable_1_0= ruleBooleanVariable ) )
                    // InternalBooleanExpressions.g:373:1: (lv_booleanVariable_1_0= ruleBooleanVariable )
                    {
                    // InternalBooleanExpressions.g:373:1: (lv_booleanVariable_1_0= ruleBooleanVariable )
                    // InternalBooleanExpressions.g:374:3: lv_booleanVariable_1_0= ruleBooleanVariable
                    {
                     
                    	        newCompositeNode(grammarAccess.getBooleanTermAccess().getBooleanVariableBooleanVariableParserRuleCall_1_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_booleanVariable_1_0=ruleBooleanVariable();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getBooleanTermRule());
                    	        }
                           		set(
                           			current, 
                           			"booleanVariable",
                            		lv_booleanVariable_1_0, 
                            		"org.correttouml.grammars.BooleanExpressions.BooleanVariable");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }
                    break;
                case 3 :
                    // InternalBooleanExpressions.g:391:6: ( (lv_variableCondition_2_0= ruleVariableCondition ) )
                    {
                    // InternalBooleanExpressions.g:391:6: ( (lv_variableCondition_2_0= ruleVariableCondition ) )
                    // InternalBooleanExpressions.g:392:1: (lv_variableCondition_2_0= ruleVariableCondition )
                    {
                    // InternalBooleanExpressions.g:392:1: (lv_variableCondition_2_0= ruleVariableCondition )
                    // InternalBooleanExpressions.g:393:3: lv_variableCondition_2_0= ruleVariableCondition
                    {
                     
                    	        newCompositeNode(grammarAccess.getBooleanTermAccess().getVariableConditionVariableConditionParserRuleCall_2_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_variableCondition_2_0=ruleVariableCondition();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getBooleanTermRule());
                    	        }
                           		set(
                           			current, 
                           			"variableCondition",
                            		lv_variableCondition_2_0, 
                            		"org.correttouml.grammars.BooleanExpressions.VariableCondition");
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
    // $ANTLR end "rulebooleanTerm"


    // $ANTLR start "entryRuleTimeConstraint"
    // InternalBooleanExpressions.g:417:1: entryRuleTimeConstraint returns [EObject current=null] : iv_ruleTimeConstraint= ruleTimeConstraint EOF ;
    public final EObject entryRuleTimeConstraint() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleTimeConstraint = null;


        try {
            // InternalBooleanExpressions.g:418:2: (iv_ruleTimeConstraint= ruleTimeConstraint EOF )
            // InternalBooleanExpressions.g:419:2: iv_ruleTimeConstraint= ruleTimeConstraint EOF
            {
             newCompositeNode(grammarAccess.getTimeConstraintRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleTimeConstraint=ruleTimeConstraint();

            state._fsp--;

             current =iv_ruleTimeConstraint; 
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
    // $ANTLR end "entryRuleTimeConstraint"


    // $ANTLR start "ruleTimeConstraint"
    // InternalBooleanExpressions.g:426:1: ruleTimeConstraint returns [EObject current=null] : (otherlv_0= '@' ( (lv_event2_1_0= ruleEvent ) ) otherlv_2= '-' otherlv_3= '@' ( (lv_event1_4_0= ruleEvent ) ) ( (lv_op_5_0= RULE_RELATIONS ) ) ( (lv_value_6_0= RULE_INT ) ) ) ;
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
            // InternalBooleanExpressions.g:429:28: ( (otherlv_0= '@' ( (lv_event2_1_0= ruleEvent ) ) otherlv_2= '-' otherlv_3= '@' ( (lv_event1_4_0= ruleEvent ) ) ( (lv_op_5_0= RULE_RELATIONS ) ) ( (lv_value_6_0= RULE_INT ) ) ) )
            // InternalBooleanExpressions.g:430:1: (otherlv_0= '@' ( (lv_event2_1_0= ruleEvent ) ) otherlv_2= '-' otherlv_3= '@' ( (lv_event1_4_0= ruleEvent ) ) ( (lv_op_5_0= RULE_RELATIONS ) ) ( (lv_value_6_0= RULE_INT ) ) )
            {
            // InternalBooleanExpressions.g:430:1: (otherlv_0= '@' ( (lv_event2_1_0= ruleEvent ) ) otherlv_2= '-' otherlv_3= '@' ( (lv_event1_4_0= ruleEvent ) ) ( (lv_op_5_0= RULE_RELATIONS ) ) ( (lv_value_6_0= RULE_INT ) ) )
            // InternalBooleanExpressions.g:430:3: otherlv_0= '@' ( (lv_event2_1_0= ruleEvent ) ) otherlv_2= '-' otherlv_3= '@' ( (lv_event1_4_0= ruleEvent ) ) ( (lv_op_5_0= RULE_RELATIONS ) ) ( (lv_value_6_0= RULE_INT ) )
            {
            otherlv_0=(Token)match(input,18,FOLLOW_8); 

                	newLeafNode(otherlv_0, grammarAccess.getTimeConstraintAccess().getCommercialAtKeyword_0());
                
            // InternalBooleanExpressions.g:434:1: ( (lv_event2_1_0= ruleEvent ) )
            // InternalBooleanExpressions.g:435:1: (lv_event2_1_0= ruleEvent )
            {
            // InternalBooleanExpressions.g:435:1: (lv_event2_1_0= ruleEvent )
            // InternalBooleanExpressions.g:436:3: lv_event2_1_0= ruleEvent
            {
             
            	        newCompositeNode(grammarAccess.getTimeConstraintAccess().getEvent2EventParserRuleCall_1_0()); 
            	    
            pushFollow(FOLLOW_9);
            lv_event2_1_0=ruleEvent();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getTimeConstraintRule());
            	        }
                   		set(
                   			current, 
                   			"event2",
                    		lv_event2_1_0, 
                    		"org.correttouml.grammars.BooleanExpressions.Event");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            otherlv_2=(Token)match(input,19,FOLLOW_10); 

                	newLeafNode(otherlv_2, grammarAccess.getTimeConstraintAccess().getHyphenMinusKeyword_2());
                
            otherlv_3=(Token)match(input,18,FOLLOW_8); 

                	newLeafNode(otherlv_3, grammarAccess.getTimeConstraintAccess().getCommercialAtKeyword_3());
                
            // InternalBooleanExpressions.g:460:1: ( (lv_event1_4_0= ruleEvent ) )
            // InternalBooleanExpressions.g:461:1: (lv_event1_4_0= ruleEvent )
            {
            // InternalBooleanExpressions.g:461:1: (lv_event1_4_0= ruleEvent )
            // InternalBooleanExpressions.g:462:3: lv_event1_4_0= ruleEvent
            {
             
            	        newCompositeNode(grammarAccess.getTimeConstraintAccess().getEvent1EventParserRuleCall_4_0()); 
            	    
            pushFollow(FOLLOW_11);
            lv_event1_4_0=ruleEvent();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getTimeConstraintRule());
            	        }
                   		set(
                   			current, 
                   			"event1",
                    		lv_event1_4_0, 
                    		"org.correttouml.grammars.BooleanExpressions.Event");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            // InternalBooleanExpressions.g:478:2: ( (lv_op_5_0= RULE_RELATIONS ) )
            // InternalBooleanExpressions.g:479:1: (lv_op_5_0= RULE_RELATIONS )
            {
            // InternalBooleanExpressions.g:479:1: (lv_op_5_0= RULE_RELATIONS )
            // InternalBooleanExpressions.g:480:3: lv_op_5_0= RULE_RELATIONS
            {
            lv_op_5_0=(Token)match(input,RULE_RELATIONS,FOLLOW_12); 

            			newLeafNode(lv_op_5_0, grammarAccess.getTimeConstraintAccess().getOpRELATIONSTerminalRuleCall_5_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getTimeConstraintRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"op",
                    		lv_op_5_0, 
                    		"org.correttouml.grammars.BooleanExpressions.RELATIONS");
            	    

            }


            }

            // InternalBooleanExpressions.g:496:2: ( (lv_value_6_0= RULE_INT ) )
            // InternalBooleanExpressions.g:497:1: (lv_value_6_0= RULE_INT )
            {
            // InternalBooleanExpressions.g:497:1: (lv_value_6_0= RULE_INT )
            // InternalBooleanExpressions.g:498:3: lv_value_6_0= RULE_INT
            {
            lv_value_6_0=(Token)match(input,RULE_INT,FOLLOW_2); 

            			newLeafNode(lv_value_6_0, grammarAccess.getTimeConstraintAccess().getValueINTTerminalRuleCall_6_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getTimeConstraintRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"value",
                    		lv_value_6_0, 
                    		"org.eclipse.xtext.common.Terminals.INT");
            	    

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
    // InternalBooleanExpressions.g:522:1: entryRuleBooleanVariable returns [EObject current=null] : iv_ruleBooleanVariable= ruleBooleanVariable EOF ;
    public final EObject entryRuleBooleanVariable() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleBooleanVariable = null;


        try {
            // InternalBooleanExpressions.g:523:2: (iv_ruleBooleanVariable= ruleBooleanVariable EOF )
            // InternalBooleanExpressions.g:524:2: iv_ruleBooleanVariable= ruleBooleanVariable EOF
            {
             newCompositeNode(grammarAccess.getBooleanVariableRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleBooleanVariable=ruleBooleanVariable();

            state._fsp--;

             current =iv_ruleBooleanVariable; 
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
    // $ANTLR end "entryRuleBooleanVariable"


    // $ANTLR start "ruleBooleanVariable"
    // InternalBooleanExpressions.g:531:1: ruleBooleanVariable returns [EObject current=null] : ( (lv_variable_0_0= RULE_ID ) ) ;
    public final EObject ruleBooleanVariable() throws RecognitionException {
        EObject current = null;

        Token lv_variable_0_0=null;

         enterRule(); 
            
        try {
            // InternalBooleanExpressions.g:534:28: ( ( (lv_variable_0_0= RULE_ID ) ) )
            // InternalBooleanExpressions.g:535:1: ( (lv_variable_0_0= RULE_ID ) )
            {
            // InternalBooleanExpressions.g:535:1: ( (lv_variable_0_0= RULE_ID ) )
            // InternalBooleanExpressions.g:536:1: (lv_variable_0_0= RULE_ID )
            {
            // InternalBooleanExpressions.g:536:1: (lv_variable_0_0= RULE_ID )
            // InternalBooleanExpressions.g:537:3: lv_variable_0_0= RULE_ID
            {
            lv_variable_0_0=(Token)match(input,RULE_ID,FOLLOW_2); 

            			newLeafNode(lv_variable_0_0, grammarAccess.getBooleanVariableAccess().getVariableIDTerminalRuleCall_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getBooleanVariableRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"variable",
                    		lv_variable_0_0, 
                    		"org.eclipse.xtext.common.Terminals.ID");
            	    

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
    // InternalBooleanExpressions.g:561:1: entryRuleVariableCondition returns [EObject current=null] : iv_ruleVariableCondition= ruleVariableCondition EOF ;
    public final EObject entryRuleVariableCondition() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleVariableCondition = null;


        try {
            // InternalBooleanExpressions.g:562:2: (iv_ruleVariableCondition= ruleVariableCondition EOF )
            // InternalBooleanExpressions.g:563:2: iv_ruleVariableCondition= ruleVariableCondition EOF
            {
             newCompositeNode(grammarAccess.getVariableConditionRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleVariableCondition=ruleVariableCondition();

            state._fsp--;

             current =iv_ruleVariableCondition; 
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
    // $ANTLR end "entryRuleVariableCondition"


    // $ANTLR start "ruleVariableCondition"
    // InternalBooleanExpressions.g:570:1: ruleVariableCondition returns [EObject current=null] : (otherlv_0= '(' ( (lv_expression_left_1_0= ruleEXPRESSION ) ) ( (lv_relation_2_0= RULE_RELATIONS ) ) ( (lv_expression_right_3_0= ruleEXPRESSION ) ) otherlv_4= ')' ) ;
    public final EObject ruleVariableCondition() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token lv_relation_2_0=null;
        Token otherlv_4=null;
        EObject lv_expression_left_1_0 = null;

        EObject lv_expression_right_3_0 = null;


         enterRule(); 
            
        try {
            // InternalBooleanExpressions.g:573:28: ( (otherlv_0= '(' ( (lv_expression_left_1_0= ruleEXPRESSION ) ) ( (lv_relation_2_0= RULE_RELATIONS ) ) ( (lv_expression_right_3_0= ruleEXPRESSION ) ) otherlv_4= ')' ) )
            // InternalBooleanExpressions.g:574:1: (otherlv_0= '(' ( (lv_expression_left_1_0= ruleEXPRESSION ) ) ( (lv_relation_2_0= RULE_RELATIONS ) ) ( (lv_expression_right_3_0= ruleEXPRESSION ) ) otherlv_4= ')' )
            {
            // InternalBooleanExpressions.g:574:1: (otherlv_0= '(' ( (lv_expression_left_1_0= ruleEXPRESSION ) ) ( (lv_relation_2_0= RULE_RELATIONS ) ) ( (lv_expression_right_3_0= ruleEXPRESSION ) ) otherlv_4= ')' )
            // InternalBooleanExpressions.g:574:3: otherlv_0= '(' ( (lv_expression_left_1_0= ruleEXPRESSION ) ) ( (lv_relation_2_0= RULE_RELATIONS ) ) ( (lv_expression_right_3_0= ruleEXPRESSION ) ) otherlv_4= ')'
            {
            otherlv_0=(Token)match(input,16,FOLLOW_13); 

                	newLeafNode(otherlv_0, grammarAccess.getVariableConditionAccess().getLeftParenthesisKeyword_0());
                
            // InternalBooleanExpressions.g:578:1: ( (lv_expression_left_1_0= ruleEXPRESSION ) )
            // InternalBooleanExpressions.g:579:1: (lv_expression_left_1_0= ruleEXPRESSION )
            {
            // InternalBooleanExpressions.g:579:1: (lv_expression_left_1_0= ruleEXPRESSION )
            // InternalBooleanExpressions.g:580:3: lv_expression_left_1_0= ruleEXPRESSION
            {
             
            	        newCompositeNode(grammarAccess.getVariableConditionAccess().getExpression_leftEXPRESSIONParserRuleCall_1_0()); 
            	    
            pushFollow(FOLLOW_11);
            lv_expression_left_1_0=ruleEXPRESSION();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getVariableConditionRule());
            	        }
                   		set(
                   			current, 
                   			"expression_left",
                    		lv_expression_left_1_0, 
                    		"org.correttouml.grammars.BooleanExpressions.EXPRESSION");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            // InternalBooleanExpressions.g:596:2: ( (lv_relation_2_0= RULE_RELATIONS ) )
            // InternalBooleanExpressions.g:597:1: (lv_relation_2_0= RULE_RELATIONS )
            {
            // InternalBooleanExpressions.g:597:1: (lv_relation_2_0= RULE_RELATIONS )
            // InternalBooleanExpressions.g:598:3: lv_relation_2_0= RULE_RELATIONS
            {
            lv_relation_2_0=(Token)match(input,RULE_RELATIONS,FOLLOW_13); 

            			newLeafNode(lv_relation_2_0, grammarAccess.getVariableConditionAccess().getRelationRELATIONSTerminalRuleCall_2_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getVariableConditionRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"relation",
                    		lv_relation_2_0, 
                    		"org.correttouml.grammars.BooleanExpressions.RELATIONS");
            	    

            }


            }

            // InternalBooleanExpressions.g:614:2: ( (lv_expression_right_3_0= ruleEXPRESSION ) )
            // InternalBooleanExpressions.g:615:1: (lv_expression_right_3_0= ruleEXPRESSION )
            {
            // InternalBooleanExpressions.g:615:1: (lv_expression_right_3_0= ruleEXPRESSION )
            // InternalBooleanExpressions.g:616:3: lv_expression_right_3_0= ruleEXPRESSION
            {
             
            	        newCompositeNode(grammarAccess.getVariableConditionAccess().getExpression_rightEXPRESSIONParserRuleCall_3_0()); 
            	    
            pushFollow(FOLLOW_7);
            lv_expression_right_3_0=ruleEXPRESSION();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getVariableConditionRule());
            	        }
                   		set(
                   			current, 
                   			"expression_right",
                    		lv_expression_right_3_0, 
                    		"org.correttouml.grammars.BooleanExpressions.EXPRESSION");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            otherlv_4=(Token)match(input,17,FOLLOW_2); 

                	newLeafNode(otherlv_4, grammarAccess.getVariableConditionAccess().getRightParenthesisKeyword_4());
                

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


    // $ANTLR start "entryRuleEXPRESSION"
    // InternalBooleanExpressions.g:644:1: entryRuleEXPRESSION returns [EObject current=null] : iv_ruleEXPRESSION= ruleEXPRESSION EOF ;
    public final EObject entryRuleEXPRESSION() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleEXPRESSION = null;


        try {
            // InternalBooleanExpressions.g:645:2: (iv_ruleEXPRESSION= ruleEXPRESSION EOF )
            // InternalBooleanExpressions.g:646:2: iv_ruleEXPRESSION= ruleEXPRESSION EOF
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
    // InternalBooleanExpressions.g:653:1: ruleEXPRESSION returns [EObject current=null] : ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) ) ;
    public final EObject ruleEXPRESSION() throws RecognitionException {
        EObject current = null;

        Token lv_operator_1_0=null;
        EObject lv_firstTerm_0_0 = null;

        EObject lv_secondTerm_2_0 = null;

        EObject lv_alone_3_0 = null;


         enterRule(); 
            
        try {
            // InternalBooleanExpressions.g:656:28: ( ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) ) )
            // InternalBooleanExpressions.g:657:1: ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) )
            {
            // InternalBooleanExpressions.g:657:1: ( ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) ) | ( (lv_alone_3_0= ruleTERM ) ) )
            int alt6=2;
            int LA6_0 = input.LA(1);

            if ( (LA6_0==RULE_ID) ) {
                int LA6_1 = input.LA(2);

                if ( (LA6_1==RULE_OPERATOR) ) {
                    alt6=1;
                }
                else if ( (LA6_1==EOF||LA6_1==RULE_RELATIONS||LA6_1==17) ) {
                    alt6=2;
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 6, 1, input);

                    throw nvae;
                }
            }
            else if ( (LA6_0==RULE_INT) ) {
                int LA6_2 = input.LA(2);

                if ( (LA6_2==EOF||LA6_2==RULE_RELATIONS||LA6_2==17) ) {
                    alt6=2;
                }
                else if ( (LA6_2==RULE_OPERATOR) ) {
                    alt6=1;
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 6, 2, input);

                    throw nvae;
                }
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 6, 0, input);

                throw nvae;
            }
            switch (alt6) {
                case 1 :
                    // InternalBooleanExpressions.g:657:2: ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) )
                    {
                    // InternalBooleanExpressions.g:657:2: ( ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) ) )
                    // InternalBooleanExpressions.g:657:3: ( (lv_firstTerm_0_0= ruleTERM ) ) ( (lv_operator_1_0= RULE_OPERATOR ) ) ( (lv_secondTerm_2_0= ruleTERM ) )
                    {
                    // InternalBooleanExpressions.g:657:3: ( (lv_firstTerm_0_0= ruleTERM ) )
                    // InternalBooleanExpressions.g:658:1: (lv_firstTerm_0_0= ruleTERM )
                    {
                    // InternalBooleanExpressions.g:658:1: (lv_firstTerm_0_0= ruleTERM )
                    // InternalBooleanExpressions.g:659:3: lv_firstTerm_0_0= ruleTERM
                    {
                     
                    	        newCompositeNode(grammarAccess.getEXPRESSIONAccess().getFirstTermTERMParserRuleCall_0_0_0()); 
                    	    
                    pushFollow(FOLLOW_14);
                    lv_firstTerm_0_0=ruleTERM();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getEXPRESSIONRule());
                    	        }
                           		set(
                           			current, 
                           			"firstTerm",
                            		lv_firstTerm_0_0, 
                            		"org.correttouml.grammars.BooleanExpressions.TERM");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }

                    // InternalBooleanExpressions.g:675:2: ( (lv_operator_1_0= RULE_OPERATOR ) )
                    // InternalBooleanExpressions.g:676:1: (lv_operator_1_0= RULE_OPERATOR )
                    {
                    // InternalBooleanExpressions.g:676:1: (lv_operator_1_0= RULE_OPERATOR )
                    // InternalBooleanExpressions.g:677:3: lv_operator_1_0= RULE_OPERATOR
                    {
                    lv_operator_1_0=(Token)match(input,RULE_OPERATOR,FOLLOW_13); 

                    			newLeafNode(lv_operator_1_0, grammarAccess.getEXPRESSIONAccess().getOperatorOPERATORTerminalRuleCall_0_1_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getEXPRESSIONRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"operator",
                            		lv_operator_1_0, 
                            		"org.correttouml.grammars.BooleanExpressions.OPERATOR");
                    	    

                    }


                    }

                    // InternalBooleanExpressions.g:693:2: ( (lv_secondTerm_2_0= ruleTERM ) )
                    // InternalBooleanExpressions.g:694:1: (lv_secondTerm_2_0= ruleTERM )
                    {
                    // InternalBooleanExpressions.g:694:1: (lv_secondTerm_2_0= ruleTERM )
                    // InternalBooleanExpressions.g:695:3: lv_secondTerm_2_0= ruleTERM
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
                            		"org.correttouml.grammars.BooleanExpressions.TERM");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }


                    }
                    break;
                case 2 :
                    // InternalBooleanExpressions.g:712:6: ( (lv_alone_3_0= ruleTERM ) )
                    {
                    // InternalBooleanExpressions.g:712:6: ( (lv_alone_3_0= ruleTERM ) )
                    // InternalBooleanExpressions.g:713:1: (lv_alone_3_0= ruleTERM )
                    {
                    // InternalBooleanExpressions.g:713:1: (lv_alone_3_0= ruleTERM )
                    // InternalBooleanExpressions.g:714:3: lv_alone_3_0= ruleTERM
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
                            		"org.correttouml.grammars.BooleanExpressions.TERM");
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
    // InternalBooleanExpressions.g:738:1: entryRuleTERM returns [EObject current=null] : iv_ruleTERM= ruleTERM EOF ;
    public final EObject entryRuleTERM() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleTERM = null;


        try {
            // InternalBooleanExpressions.g:739:2: (iv_ruleTERM= ruleTERM EOF )
            // InternalBooleanExpressions.g:740:2: iv_ruleTERM= ruleTERM EOF
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
    // InternalBooleanExpressions.g:747:1: ruleTERM returns [EObject current=null] : ( ( (lv_variable_0_0= RULE_ID ) ) | ( (lv_constant_1_0= RULE_INT ) ) ) ;
    public final EObject ruleTERM() throws RecognitionException {
        EObject current = null;

        Token lv_variable_0_0=null;
        Token lv_constant_1_0=null;

         enterRule(); 
            
        try {
            // InternalBooleanExpressions.g:750:28: ( ( ( (lv_variable_0_0= RULE_ID ) ) | ( (lv_constant_1_0= RULE_INT ) ) ) )
            // InternalBooleanExpressions.g:751:1: ( ( (lv_variable_0_0= RULE_ID ) ) | ( (lv_constant_1_0= RULE_INT ) ) )
            {
            // InternalBooleanExpressions.g:751:1: ( ( (lv_variable_0_0= RULE_ID ) ) | ( (lv_constant_1_0= RULE_INT ) ) )
            int alt7=2;
            int LA7_0 = input.LA(1);

            if ( (LA7_0==RULE_ID) ) {
                alt7=1;
            }
            else if ( (LA7_0==RULE_INT) ) {
                alt7=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 7, 0, input);

                throw nvae;
            }
            switch (alt7) {
                case 1 :
                    // InternalBooleanExpressions.g:751:2: ( (lv_variable_0_0= RULE_ID ) )
                    {
                    // InternalBooleanExpressions.g:751:2: ( (lv_variable_0_0= RULE_ID ) )
                    // InternalBooleanExpressions.g:752:1: (lv_variable_0_0= RULE_ID )
                    {
                    // InternalBooleanExpressions.g:752:1: (lv_variable_0_0= RULE_ID )
                    // InternalBooleanExpressions.g:753:3: lv_variable_0_0= RULE_ID
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
                    // InternalBooleanExpressions.g:770:6: ( (lv_constant_1_0= RULE_INT ) )
                    {
                    // InternalBooleanExpressions.g:770:6: ( (lv_constant_1_0= RULE_INT ) )
                    // InternalBooleanExpressions.g:771:1: (lv_constant_1_0= RULE_INT )
                    {
                    // InternalBooleanExpressions.g:771:1: (lv_constant_1_0= RULE_INT )
                    // InternalBooleanExpressions.g:772:3: lv_constant_1_0= RULE_INT
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


    // $ANTLR start "entryRuleEvent"
    // InternalBooleanExpressions.g:796:1: entryRuleEvent returns [EObject current=null] : iv_ruleEvent= ruleEvent EOF ;
    public final EObject entryRuleEvent() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleEvent = null;


        try {
            // InternalBooleanExpressions.g:797:2: (iv_ruleEvent= ruleEvent EOF )
            // InternalBooleanExpressions.g:798:2: iv_ruleEvent= ruleEvent EOF
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
    // InternalBooleanExpressions.g:805:1: ruleEvent returns [EObject current=null] : ( ( ( ( (lv_objName_0_0= RULE_ID ) ) otherlv_1= '.' )? ( ( (lv_eventName_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_eventExtension_4_0= ruleEventExtensions ) ) ) ) | ( (lv_nowEvent_5_0= 'now' ) ) ) ;
    public final EObject ruleEvent() throws RecognitionException {
        EObject current = null;

        Token lv_objName_0_0=null;
        Token otherlv_1=null;
        Token lv_eventName_2_0=null;
        Token otherlv_3=null;
        Token lv_nowEvent_5_0=null;
        AntlrDatatypeRuleToken lv_eventExtension_4_0 = null;


         enterRule(); 
            
        try {
            // InternalBooleanExpressions.g:808:28: ( ( ( ( ( (lv_objName_0_0= RULE_ID ) ) otherlv_1= '.' )? ( ( (lv_eventName_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_eventExtension_4_0= ruleEventExtensions ) ) ) ) | ( (lv_nowEvent_5_0= 'now' ) ) ) )
            // InternalBooleanExpressions.g:809:1: ( ( ( ( (lv_objName_0_0= RULE_ID ) ) otherlv_1= '.' )? ( ( (lv_eventName_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_eventExtension_4_0= ruleEventExtensions ) ) ) ) | ( (lv_nowEvent_5_0= 'now' ) ) )
            {
            // InternalBooleanExpressions.g:809:1: ( ( ( ( (lv_objName_0_0= RULE_ID ) ) otherlv_1= '.' )? ( ( (lv_eventName_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_eventExtension_4_0= ruleEventExtensions ) ) ) ) | ( (lv_nowEvent_5_0= 'now' ) ) )
            int alt9=2;
            int LA9_0 = input.LA(1);

            if ( (LA9_0==RULE_ID) ) {
                alt9=1;
            }
            else if ( (LA9_0==21) ) {
                alt9=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 9, 0, input);

                throw nvae;
            }
            switch (alt9) {
                case 1 :
                    // InternalBooleanExpressions.g:809:2: ( ( ( (lv_objName_0_0= RULE_ID ) ) otherlv_1= '.' )? ( ( (lv_eventName_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_eventExtension_4_0= ruleEventExtensions ) ) ) )
                    {
                    // InternalBooleanExpressions.g:809:2: ( ( ( (lv_objName_0_0= RULE_ID ) ) otherlv_1= '.' )? ( ( (lv_eventName_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_eventExtension_4_0= ruleEventExtensions ) ) ) )
                    // InternalBooleanExpressions.g:809:3: ( ( (lv_objName_0_0= RULE_ID ) ) otherlv_1= '.' )? ( ( (lv_eventName_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_eventExtension_4_0= ruleEventExtensions ) ) )
                    {
                    // InternalBooleanExpressions.g:809:3: ( ( (lv_objName_0_0= RULE_ID ) ) otherlv_1= '.' )?
                    int alt8=2;
                    int LA8_0 = input.LA(1);

                    if ( (LA8_0==RULE_ID) ) {
                        int LA8_1 = input.LA(2);

                        if ( (LA8_1==20) ) {
                            int LA8_2 = input.LA(3);

                            if ( (LA8_2==RULE_ID) ) {
                                alt8=1;
                            }
                        }
                    }
                    switch (alt8) {
                        case 1 :
                            // InternalBooleanExpressions.g:809:4: ( (lv_objName_0_0= RULE_ID ) ) otherlv_1= '.'
                            {
                            // InternalBooleanExpressions.g:809:4: ( (lv_objName_0_0= RULE_ID ) )
                            // InternalBooleanExpressions.g:810:1: (lv_objName_0_0= RULE_ID )
                            {
                            // InternalBooleanExpressions.g:810:1: (lv_objName_0_0= RULE_ID )
                            // InternalBooleanExpressions.g:811:3: lv_objName_0_0= RULE_ID
                            {
                            lv_objName_0_0=(Token)match(input,RULE_ID,FOLLOW_15); 

                            			newLeafNode(lv_objName_0_0, grammarAccess.getEventAccess().getObjNameIDTerminalRuleCall_0_0_0_0()); 
                            		

                            	        if (current==null) {
                            	            current = createModelElement(grammarAccess.getEventRule());
                            	        }
                                   		setWithLastConsumed(
                                   			current, 
                                   			"objName",
                                    		lv_objName_0_0, 
                                    		"org.eclipse.xtext.common.Terminals.ID");
                            	    

                            }


                            }

                            otherlv_1=(Token)match(input,20,FOLLOW_16); 

                                	newLeafNode(otherlv_1, grammarAccess.getEventAccess().getFullStopKeyword_0_0_1());
                                

                            }
                            break;

                    }

                    // InternalBooleanExpressions.g:831:3: ( ( (lv_eventName_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_eventExtension_4_0= ruleEventExtensions ) ) )
                    // InternalBooleanExpressions.g:831:4: ( (lv_eventName_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_eventExtension_4_0= ruleEventExtensions ) )
                    {
                    // InternalBooleanExpressions.g:831:4: ( (lv_eventName_2_0= RULE_ID ) )
                    // InternalBooleanExpressions.g:832:1: (lv_eventName_2_0= RULE_ID )
                    {
                    // InternalBooleanExpressions.g:832:1: (lv_eventName_2_0= RULE_ID )
                    // InternalBooleanExpressions.g:833:3: lv_eventName_2_0= RULE_ID
                    {
                    lv_eventName_2_0=(Token)match(input,RULE_ID,FOLLOW_15); 

                    			newLeafNode(lv_eventName_2_0, grammarAccess.getEventAccess().getEventNameIDTerminalRuleCall_0_1_0_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getEventRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"eventName",
                            		lv_eventName_2_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }

                    otherlv_3=(Token)match(input,20,FOLLOW_17); 

                        	newLeafNode(otherlv_3, grammarAccess.getEventAccess().getFullStopKeyword_0_1_1());
                        
                    // InternalBooleanExpressions.g:853:1: ( (lv_eventExtension_4_0= ruleEventExtensions ) )
                    // InternalBooleanExpressions.g:854:1: (lv_eventExtension_4_0= ruleEventExtensions )
                    {
                    // InternalBooleanExpressions.g:854:1: (lv_eventExtension_4_0= ruleEventExtensions )
                    // InternalBooleanExpressions.g:855:3: lv_eventExtension_4_0= ruleEventExtensions
                    {
                     
                    	        newCompositeNode(grammarAccess.getEventAccess().getEventExtensionEventExtensionsParserRuleCall_0_1_2_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_eventExtension_4_0=ruleEventExtensions();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getEventRule());
                    	        }
                           		set(
                           			current, 
                           			"eventExtension",
                            		lv_eventExtension_4_0, 
                            		"org.correttouml.grammars.BooleanExpressions.EventExtensions");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }


                    }


                    }
                    break;
                case 2 :
                    // InternalBooleanExpressions.g:872:6: ( (lv_nowEvent_5_0= 'now' ) )
                    {
                    // InternalBooleanExpressions.g:872:6: ( (lv_nowEvent_5_0= 'now' ) )
                    // InternalBooleanExpressions.g:873:1: (lv_nowEvent_5_0= 'now' )
                    {
                    // InternalBooleanExpressions.g:873:1: (lv_nowEvent_5_0= 'now' )
                    // InternalBooleanExpressions.g:874:3: lv_nowEvent_5_0= 'now'
                    {
                    lv_nowEvent_5_0=(Token)match(input,21,FOLLOW_2); 

                            newLeafNode(lv_nowEvent_5_0, grammarAccess.getEventAccess().getNowEventNowKeyword_1_0());
                        

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
    // InternalBooleanExpressions.g:895:1: entryRuleEventExtensions returns [String current=null] : iv_ruleEventExtensions= ruleEventExtensions EOF ;
    public final String entryRuleEventExtensions() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleEventExtensions = null;


        try {
            // InternalBooleanExpressions.g:896:2: (iv_ruleEventExtensions= ruleEventExtensions EOF )
            // InternalBooleanExpressions.g:897:2: iv_ruleEventExtensions= ruleEventExtensions EOF
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
    // InternalBooleanExpressions.g:904:1: ruleEventExtensions returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' | kw= 'send' | kw= 'receive' | kw= 'reply' | kw= 'adstart' | kw= 'adend' | kw= 'iodstart' | kw= 'iodend' ) ;
    public final AntlrDatatypeRuleToken ruleEventExtensions() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token kw=null;

         enterRule(); 
            
        try {
            // InternalBooleanExpressions.g:907:28: ( (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' | kw= 'send' | kw= 'receive' | kw= 'reply' | kw= 'adstart' | kw= 'adend' | kw= 'iodstart' | kw= 'iodend' ) )
            // InternalBooleanExpressions.g:908:1: (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' | kw= 'send' | kw= 'receive' | kw= 'reply' | kw= 'adstart' | kw= 'adend' | kw= 'iodstart' | kw= 'iodend' )
            {
            // InternalBooleanExpressions.g:908:1: (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' | kw= 'send' | kw= 'receive' | kw= 'reply' | kw= 'adstart' | kw= 'adend' | kw= 'iodstart' | kw= 'iodend' )
            int alt10=14;
            switch ( input.LA(1) ) {
            case 22:
                {
                alt10=1;
                }
                break;
            case 23:
                {
                alt10=2;
                }
                break;
            case 24:
                {
                alt10=3;
                }
                break;
            case 25:
                {
                alt10=4;
                }
                break;
            case 26:
                {
                alt10=5;
                }
                break;
            case 27:
                {
                alt10=6;
                }
                break;
            case 28:
                {
                alt10=7;
                }
                break;
            case 29:
                {
                alt10=8;
                }
                break;
            case 30:
                {
                alt10=9;
                }
                break;
            case 31:
                {
                alt10=10;
                }
                break;
            case 32:
                {
                alt10=11;
                }
                break;
            case 33:
                {
                alt10=12;
                }
                break;
            case 34:
                {
                alt10=13;
                }
                break;
            case 35:
                {
                alt10=14;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 10, 0, input);

                throw nvae;
            }

            switch (alt10) {
                case 1 :
                    // InternalBooleanExpressions.g:909:2: kw= 'exit'
                    {
                    kw=(Token)match(input,22,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getExitKeyword_0()); 
                        

                    }
                    break;
                case 2 :
                    // InternalBooleanExpressions.g:916:2: kw= 'enter'
                    {
                    kw=(Token)match(input,23,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getEnterKeyword_1()); 
                        

                    }
                    break;
                case 3 :
                    // InternalBooleanExpressions.g:923:2: kw= 'start'
                    {
                    kw=(Token)match(input,24,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getStartKeyword_2()); 
                        

                    }
                    break;
                case 4 :
                    // InternalBooleanExpressions.g:930:2: kw= 'end'
                    {
                    kw=(Token)match(input,25,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getEndKeyword_3()); 
                        

                    }
                    break;
                case 5 :
                    // InternalBooleanExpressions.g:937:2: kw= 'tick'
                    {
                    kw=(Token)match(input,26,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getTickKeyword_4()); 
                        

                    }
                    break;
                case 6 :
                    // InternalBooleanExpressions.g:944:2: kw= 'sig'
                    {
                    kw=(Token)match(input,27,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getSigKeyword_5()); 
                        

                    }
                    break;
                case 7 :
                    // InternalBooleanExpressions.g:951:2: kw= 'call'
                    {
                    kw=(Token)match(input,28,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getCallKeyword_6()); 
                        

                    }
                    break;
                case 8 :
                    // InternalBooleanExpressions.g:958:2: kw= 'send'
                    {
                    kw=(Token)match(input,29,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getSendKeyword_7()); 
                        

                    }
                    break;
                case 9 :
                    // InternalBooleanExpressions.g:965:2: kw= 'receive'
                    {
                    kw=(Token)match(input,30,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getReceiveKeyword_8()); 
                        

                    }
                    break;
                case 10 :
                    // InternalBooleanExpressions.g:972:2: kw= 'reply'
                    {
                    kw=(Token)match(input,31,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getReplyKeyword_9()); 
                        

                    }
                    break;
                case 11 :
                    // InternalBooleanExpressions.g:979:2: kw= 'adstart'
                    {
                    kw=(Token)match(input,32,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getAdstartKeyword_10()); 
                        

                    }
                    break;
                case 12 :
                    // InternalBooleanExpressions.g:986:2: kw= 'adend'
                    {
                    kw=(Token)match(input,33,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getAdendKeyword_11()); 
                        

                    }
                    break;
                case 13 :
                    // InternalBooleanExpressions.g:993:2: kw= 'iodstart'
                    {
                    kw=(Token)match(input,34,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getIodstartKeyword_12()); 
                        

                    }
                    break;
                case 14 :
                    // InternalBooleanExpressions.g:1000:2: kw= 'iodend'
                    {
                    kw=(Token)match(input,35,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getIodendKeyword_13()); 
                        

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
    public static final BitSet FOLLOW_3 = new BitSet(new long[]{0x0000000000000012L});
    public static final BitSet FOLLOW_4 = new BitSet(new long[]{0x0000000000050240L});
    public static final BitSet FOLLOW_5 = new BitSet(new long[]{0x0000000000000022L});
    public static final BitSet FOLLOW_6 = new BitSet(new long[]{0x0000000000050200L});
    public static final BitSet FOLLOW_7 = new BitSet(new long[]{0x0000000000020000L});
    public static final BitSet FOLLOW_8 = new BitSet(new long[]{0x0000000000200200L});
    public static final BitSet FOLLOW_9 = new BitSet(new long[]{0x0000000000080000L});
    public static final BitSet FOLLOW_10 = new BitSet(new long[]{0x0000000000040000L});
    public static final BitSet FOLLOW_11 = new BitSet(new long[]{0x0000000000000080L});
    public static final BitSet FOLLOW_12 = new BitSet(new long[]{0x0000000000000100L});
    public static final BitSet FOLLOW_13 = new BitSet(new long[]{0x0000000000000300L});
    public static final BitSet FOLLOW_14 = new BitSet(new long[]{0x0000000000000400L});
    public static final BitSet FOLLOW_15 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_16 = new BitSet(new long[]{0x0000000000000200L});
    public static final BitSet FOLLOW_17 = new BitSet(new long[]{0x0000000FFFC00000L});

}