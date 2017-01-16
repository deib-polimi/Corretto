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
import org.correttouml.grammars.services.PropertyGrammarAccess;



import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class InternalPropertyParser extends AbstractInternalAntlrParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_EXECUTE", "RULE_ID", "RULE_TRIOOPF", "RULE_TRIOOPFF", "RULE_TRIOOPFN", "RULE_INT", "RULE_TRIOOP2", "RULE_ARITH_COMPARE_OP", "RULE_ARITH_OP", "RULE_FLOAT", "RULE_STRING", "RULE_ML_COMMENT", "RULE_SL_COMMENT", "RULE_WS", "RULE_ANY_OTHER", "'Corretto.'", "'verify('", "')'", "'='", "'.getState('", "','", "'.in('", "'()'", "'!('", "'Time.'", "'('", "'Futr('", "'Past('", "'.'", "'::'", "'.getParameter('"
    };
    public static final int RULE_TRIOOP2=10;
    public static final int RULE_STRING=14;
    public static final int RULE_TRIOOPFN=8;
    public static final int RULE_SL_COMMENT=16;
    public static final int T__19=19;
    public static final int RULE_ARITH_COMPARE_OP=11;
    public static final int RULE_TRIOOPFF=7;
    public static final int RULE_TRIOOPF=6;
    public static final int T__33=33;
    public static final int T__34=34;
    public static final int RULE_EXECUTE=4;
    public static final int EOF=-1;
    public static final int T__30=30;
    public static final int T__31=31;
    public static final int T__32=32;
    public static final int RULE_ID=5;
    public static final int RULE_WS=17;
    public static final int RULE_ANY_OTHER=18;
    public static final int T__26=26;
    public static final int T__27=27;
    public static final int T__28=28;
    public static final int RULE_INT=9;
    public static final int T__29=29;
    public static final int T__22=22;
    public static final int RULE_ML_COMMENT=15;
    public static final int T__23=23;
    public static final int RULE_FLOAT=13;
    public static final int T__24=24;
    public static final int T__25=25;
    public static final int T__20=20;
    public static final int T__21=21;
    public static final int RULE_ARITH_OP=12;

    // delegates
    // delegators


        public InternalPropertyParser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public InternalPropertyParser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        

    public String[] getTokenNames() { return InternalPropertyParser.tokenNames; }
    public String getGrammarFileName() { return "InternalProperty.g"; }



     	private PropertyGrammarAccess grammarAccess;
     	
        public InternalPropertyParser(TokenStream input, PropertyGrammarAccess grammarAccess) {
            this(input);
            this.grammarAccess = grammarAccess;
            registerRules(grammarAccess.getGrammar());
        }
        
        @Override
        protected String getFirstRuleName() {
        	return "Model";	
       	}
       	
       	@Override
       	protected PropertyGrammarAccess getGrammarAccess() {
       		return grammarAccess;
       	}



    // $ANTLR start "entryRuleModel"
    // InternalProperty.g:67:1: entryRuleModel returns [EObject current=null] : iv_ruleModel= ruleModel EOF ;
    public final EObject entryRuleModel() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleModel = null;


        try {
            // InternalProperty.g:68:2: (iv_ruleModel= ruleModel EOF )
            // InternalProperty.g:69:2: iv_ruleModel= ruleModel EOF
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
    // InternalProperty.g:76:1: ruleModel returns [EObject current=null] : ( ( (lv_declarations_0_0= ruleDeclaration ) )* ( (lv_correttoCommand_1_0= ruleCorretto ) ) ) ;
    public final EObject ruleModel() throws RecognitionException {
        EObject current = null;

        EObject lv_declarations_0_0 = null;

        EObject lv_correttoCommand_1_0 = null;


         enterRule(); 
            
        try {
            // InternalProperty.g:79:28: ( ( ( (lv_declarations_0_0= ruleDeclaration ) )* ( (lv_correttoCommand_1_0= ruleCorretto ) ) ) )
            // InternalProperty.g:80:1: ( ( (lv_declarations_0_0= ruleDeclaration ) )* ( (lv_correttoCommand_1_0= ruleCorretto ) ) )
            {
            // InternalProperty.g:80:1: ( ( (lv_declarations_0_0= ruleDeclaration ) )* ( (lv_correttoCommand_1_0= ruleCorretto ) ) )
            // InternalProperty.g:80:2: ( (lv_declarations_0_0= ruleDeclaration ) )* ( (lv_correttoCommand_1_0= ruleCorretto ) )
            {
            // InternalProperty.g:80:2: ( (lv_declarations_0_0= ruleDeclaration ) )*
            loop1:
            do {
                int alt1=2;
                int LA1_0 = input.LA(1);

                if ( (LA1_0==RULE_ID) ) {
                    alt1=1;
                }


                switch (alt1) {
            	case 1 :
            	    // InternalProperty.g:81:1: (lv_declarations_0_0= ruleDeclaration )
            	    {
            	    // InternalProperty.g:81:1: (lv_declarations_0_0= ruleDeclaration )
            	    // InternalProperty.g:82:3: lv_declarations_0_0= ruleDeclaration
            	    {
            	     
            	    	        newCompositeNode(grammarAccess.getModelAccess().getDeclarationsDeclarationParserRuleCall_0_0()); 
            	    	    
            	    pushFollow(FOLLOW_3);
            	    lv_declarations_0_0=ruleDeclaration();

            	    state._fsp--;


            	    	        if (current==null) {
            	    	            current = createModelElementForParent(grammarAccess.getModelRule());
            	    	        }
            	           		add(
            	           			current, 
            	           			"declarations",
            	            		lv_declarations_0_0, 
            	            		"org.correttouml.grammars.Property.Declaration");
            	    	        afterParserOrEnumRuleCall();
            	    	    

            	    }


            	    }
            	    break;

            	default :
            	    break loop1;
                }
            } while (true);

            // InternalProperty.g:98:3: ( (lv_correttoCommand_1_0= ruleCorretto ) )
            // InternalProperty.g:99:1: (lv_correttoCommand_1_0= ruleCorretto )
            {
            // InternalProperty.g:99:1: (lv_correttoCommand_1_0= ruleCorretto )
            // InternalProperty.g:100:3: lv_correttoCommand_1_0= ruleCorretto
            {
             
            	        newCompositeNode(grammarAccess.getModelAccess().getCorrettoCommandCorrettoParserRuleCall_1_0()); 
            	    
            pushFollow(FOLLOW_2);
            lv_correttoCommand_1_0=ruleCorretto();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getModelRule());
            	        }
                   		set(
                   			current, 
                   			"correttoCommand",
                    		lv_correttoCommand_1_0, 
                    		"org.correttouml.grammars.Property.Corretto");
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
    // $ANTLR end "ruleModel"


    // $ANTLR start "entryRuleCorretto"
    // InternalProperty.g:124:1: entryRuleCorretto returns [EObject current=null] : iv_ruleCorretto= ruleCorretto EOF ;
    public final EObject entryRuleCorretto() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleCorretto = null;


        try {
            // InternalProperty.g:125:2: (iv_ruleCorretto= ruleCorretto EOF )
            // InternalProperty.g:126:2: iv_ruleCorretto= ruleCorretto EOF
            {
             newCompositeNode(grammarAccess.getCorrettoRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleCorretto=ruleCorretto();

            state._fsp--;

             current =iv_ruleCorretto; 
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
    // $ANTLR end "entryRuleCorretto"


    // $ANTLR start "ruleCorretto"
    // InternalProperty.g:133:1: ruleCorretto returns [EObject current=null] : (otherlv_0= 'Corretto.' ( ( (lv_verify_1_0= ruleVerify ) ) | ( (lv_execute_2_0= RULE_EXECUTE ) ) ) ) ;
    public final EObject ruleCorretto() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token lv_execute_2_0=null;
        EObject lv_verify_1_0 = null;


         enterRule(); 
            
        try {
            // InternalProperty.g:136:28: ( (otherlv_0= 'Corretto.' ( ( (lv_verify_1_0= ruleVerify ) ) | ( (lv_execute_2_0= RULE_EXECUTE ) ) ) ) )
            // InternalProperty.g:137:1: (otherlv_0= 'Corretto.' ( ( (lv_verify_1_0= ruleVerify ) ) | ( (lv_execute_2_0= RULE_EXECUTE ) ) ) )
            {
            // InternalProperty.g:137:1: (otherlv_0= 'Corretto.' ( ( (lv_verify_1_0= ruleVerify ) ) | ( (lv_execute_2_0= RULE_EXECUTE ) ) ) )
            // InternalProperty.g:137:3: otherlv_0= 'Corretto.' ( ( (lv_verify_1_0= ruleVerify ) ) | ( (lv_execute_2_0= RULE_EXECUTE ) ) )
            {
            otherlv_0=(Token)match(input,19,FOLLOW_4); 

                	newLeafNode(otherlv_0, grammarAccess.getCorrettoAccess().getCorrettoKeyword_0());
                
            // InternalProperty.g:141:1: ( ( (lv_verify_1_0= ruleVerify ) ) | ( (lv_execute_2_0= RULE_EXECUTE ) ) )
            int alt2=2;
            int LA2_0 = input.LA(1);

            if ( (LA2_0==20) ) {
                alt2=1;
            }
            else if ( (LA2_0==RULE_EXECUTE) ) {
                alt2=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 2, 0, input);

                throw nvae;
            }
            switch (alt2) {
                case 1 :
                    // InternalProperty.g:141:2: ( (lv_verify_1_0= ruleVerify ) )
                    {
                    // InternalProperty.g:141:2: ( (lv_verify_1_0= ruleVerify ) )
                    // InternalProperty.g:142:1: (lv_verify_1_0= ruleVerify )
                    {
                    // InternalProperty.g:142:1: (lv_verify_1_0= ruleVerify )
                    // InternalProperty.g:143:3: lv_verify_1_0= ruleVerify
                    {
                     
                    	        newCompositeNode(grammarAccess.getCorrettoAccess().getVerifyVerifyParserRuleCall_1_0_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_verify_1_0=ruleVerify();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getCorrettoRule());
                    	        }
                           		set(
                           			current, 
                           			"verify",
                            		lv_verify_1_0, 
                            		"org.correttouml.grammars.Property.Verify");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }
                    break;
                case 2 :
                    // InternalProperty.g:160:6: ( (lv_execute_2_0= RULE_EXECUTE ) )
                    {
                    // InternalProperty.g:160:6: ( (lv_execute_2_0= RULE_EXECUTE ) )
                    // InternalProperty.g:161:1: (lv_execute_2_0= RULE_EXECUTE )
                    {
                    // InternalProperty.g:161:1: (lv_execute_2_0= RULE_EXECUTE )
                    // InternalProperty.g:162:3: lv_execute_2_0= RULE_EXECUTE
                    {
                    lv_execute_2_0=(Token)match(input,RULE_EXECUTE,FOLLOW_2); 

                    			newLeafNode(lv_execute_2_0, grammarAccess.getCorrettoAccess().getExecuteEXECUTETerminalRuleCall_1_1_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getCorrettoRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"execute",
                            		lv_execute_2_0, 
                            		"org.correttouml.grammars.Property.EXECUTE");
                    	    

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
    // $ANTLR end "ruleCorretto"


    // $ANTLR start "entryRuleVerify"
    // InternalProperty.g:186:1: entryRuleVerify returns [EObject current=null] : iv_ruleVerify= ruleVerify EOF ;
    public final EObject entryRuleVerify() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleVerify = null;


        try {
            // InternalProperty.g:187:2: (iv_ruleVerify= ruleVerify EOF )
            // InternalProperty.g:188:2: iv_ruleVerify= ruleVerify EOF
            {
             newCompositeNode(grammarAccess.getVerifyRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleVerify=ruleVerify();

            state._fsp--;

             current =iv_ruleVerify; 
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
    // $ANTLR end "entryRuleVerify"


    // $ANTLR start "ruleVerify"
    // InternalProperty.g:195:1: ruleVerify returns [EObject current=null] : (otherlv_0= 'verify(' ( (lv_trio_1_0= ruleTRIO ) ) otherlv_2= ')' ) ;
    public final EObject ruleVerify() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token otherlv_2=null;
        EObject lv_trio_1_0 = null;


         enterRule(); 
            
        try {
            // InternalProperty.g:198:28: ( (otherlv_0= 'verify(' ( (lv_trio_1_0= ruleTRIO ) ) otherlv_2= ')' ) )
            // InternalProperty.g:199:1: (otherlv_0= 'verify(' ( (lv_trio_1_0= ruleTRIO ) ) otherlv_2= ')' )
            {
            // InternalProperty.g:199:1: (otherlv_0= 'verify(' ( (lv_trio_1_0= ruleTRIO ) ) otherlv_2= ')' )
            // InternalProperty.g:199:3: otherlv_0= 'verify(' ( (lv_trio_1_0= ruleTRIO ) ) otherlv_2= ')'
            {
            otherlv_0=(Token)match(input,20,FOLLOW_5); 

                	newLeafNode(otherlv_0, grammarAccess.getVerifyAccess().getVerifyKeyword_0());
                
            // InternalProperty.g:203:1: ( (lv_trio_1_0= ruleTRIO ) )
            // InternalProperty.g:204:1: (lv_trio_1_0= ruleTRIO )
            {
            // InternalProperty.g:204:1: (lv_trio_1_0= ruleTRIO )
            // InternalProperty.g:205:3: lv_trio_1_0= ruleTRIO
            {
             
            	        newCompositeNode(grammarAccess.getVerifyAccess().getTrioTRIOParserRuleCall_1_0()); 
            	    
            pushFollow(FOLLOW_6);
            lv_trio_1_0=ruleTRIO();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getVerifyRule());
            	        }
                   		set(
                   			current, 
                   			"trio",
                    		lv_trio_1_0, 
                    		"org.correttouml.grammars.Property.TRIO");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            otherlv_2=(Token)match(input,21,FOLLOW_2); 

                	newLeafNode(otherlv_2, grammarAccess.getVerifyAccess().getRightParenthesisKeyword_2());
                

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
    // $ANTLR end "ruleVerify"


    // $ANTLR start "entryRuleDeclaration"
    // InternalProperty.g:233:1: entryRuleDeclaration returns [EObject current=null] : iv_ruleDeclaration= ruleDeclaration EOF ;
    public final EObject entryRuleDeclaration() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleDeclaration = null;


        try {
            // InternalProperty.g:234:2: (iv_ruleDeclaration= ruleDeclaration EOF )
            // InternalProperty.g:235:2: iv_ruleDeclaration= ruleDeclaration EOF
            {
             newCompositeNode(grammarAccess.getDeclarationRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleDeclaration=ruleDeclaration();

            state._fsp--;

             current =iv_ruleDeclaration; 
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
    // $ANTLR end "entryRuleDeclaration"


    // $ANTLR start "ruleDeclaration"
    // InternalProperty.g:242:1: ruleDeclaration returns [EObject current=null] : ( ( ( (lv_stateName_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_obj_2_0= RULE_ID ) ) otherlv_3= '.getState(' ( (lv_std_4_0= RULE_ID ) ) otherlv_5= ',' ( (lv_uMLStateName_6_0= RULE_ID ) ) otherlv_7= ')' ) | ( ( (lv_trioVar_8_0= RULE_ID ) ) otherlv_9= '=' ( ( (lv_trio_10_0= ruleTRIO ) ) | ( ( (lv_obj_11_0= RULE_ID ) ) otherlv_12= '.in(' ( (lv_stateName_13_0= RULE_ID ) ) otherlv_14= ')' ) ) ) ) ;
    public final EObject ruleDeclaration() throws RecognitionException {
        EObject current = null;

        Token lv_stateName_0_0=null;
        Token otherlv_1=null;
        Token lv_obj_2_0=null;
        Token otherlv_3=null;
        Token lv_std_4_0=null;
        Token otherlv_5=null;
        Token lv_uMLStateName_6_0=null;
        Token otherlv_7=null;
        Token lv_trioVar_8_0=null;
        Token otherlv_9=null;
        Token lv_obj_11_0=null;
        Token otherlv_12=null;
        Token lv_stateName_13_0=null;
        Token otherlv_14=null;
        EObject lv_trio_10_0 = null;


         enterRule(); 
            
        try {
            // InternalProperty.g:245:28: ( ( ( ( (lv_stateName_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_obj_2_0= RULE_ID ) ) otherlv_3= '.getState(' ( (lv_std_4_0= RULE_ID ) ) otherlv_5= ',' ( (lv_uMLStateName_6_0= RULE_ID ) ) otherlv_7= ')' ) | ( ( (lv_trioVar_8_0= RULE_ID ) ) otherlv_9= '=' ( ( (lv_trio_10_0= ruleTRIO ) ) | ( ( (lv_obj_11_0= RULE_ID ) ) otherlv_12= '.in(' ( (lv_stateName_13_0= RULE_ID ) ) otherlv_14= ')' ) ) ) ) )
            // InternalProperty.g:246:1: ( ( ( (lv_stateName_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_obj_2_0= RULE_ID ) ) otherlv_3= '.getState(' ( (lv_std_4_0= RULE_ID ) ) otherlv_5= ',' ( (lv_uMLStateName_6_0= RULE_ID ) ) otherlv_7= ')' ) | ( ( (lv_trioVar_8_0= RULE_ID ) ) otherlv_9= '=' ( ( (lv_trio_10_0= ruleTRIO ) ) | ( ( (lv_obj_11_0= RULE_ID ) ) otherlv_12= '.in(' ( (lv_stateName_13_0= RULE_ID ) ) otherlv_14= ')' ) ) ) )
            {
            // InternalProperty.g:246:1: ( ( ( (lv_stateName_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_obj_2_0= RULE_ID ) ) otherlv_3= '.getState(' ( (lv_std_4_0= RULE_ID ) ) otherlv_5= ',' ( (lv_uMLStateName_6_0= RULE_ID ) ) otherlv_7= ')' ) | ( ( (lv_trioVar_8_0= RULE_ID ) ) otherlv_9= '=' ( ( (lv_trio_10_0= ruleTRIO ) ) | ( ( (lv_obj_11_0= RULE_ID ) ) otherlv_12= '.in(' ( (lv_stateName_13_0= RULE_ID ) ) otherlv_14= ')' ) ) ) )
            int alt4=2;
            int LA4_0 = input.LA(1);

            if ( (LA4_0==RULE_ID) ) {
                int LA4_1 = input.LA(2);

                if ( (LA4_1==22) ) {
                    int LA4_2 = input.LA(3);

                    if ( (LA4_2==RULE_ID) ) {
                        int LA4_3 = input.LA(4);

                        if ( (LA4_3==EOF||LA4_3==RULE_ID||LA4_3==RULE_TRIOOP2||LA4_3==19||LA4_3==25||(LA4_3>=32 && LA4_3<=34)) ) {
                            alt4=2;
                        }
                        else if ( (LA4_3==23) ) {
                            alt4=1;
                        }
                        else {
                            NoViableAltException nvae =
                                new NoViableAltException("", 4, 3, input);

                            throw nvae;
                        }
                    }
                    else if ( (LA4_2==RULE_INT||(LA4_2>=27 && LA4_2<=31)) ) {
                        alt4=2;
                    }
                    else {
                        NoViableAltException nvae =
                            new NoViableAltException("", 4, 2, input);

                        throw nvae;
                    }
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 4, 1, input);

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
                    // InternalProperty.g:246:2: ( ( (lv_stateName_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_obj_2_0= RULE_ID ) ) otherlv_3= '.getState(' ( (lv_std_4_0= RULE_ID ) ) otherlv_5= ',' ( (lv_uMLStateName_6_0= RULE_ID ) ) otherlv_7= ')' )
                    {
                    // InternalProperty.g:246:2: ( ( (lv_stateName_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_obj_2_0= RULE_ID ) ) otherlv_3= '.getState(' ( (lv_std_4_0= RULE_ID ) ) otherlv_5= ',' ( (lv_uMLStateName_6_0= RULE_ID ) ) otherlv_7= ')' )
                    // InternalProperty.g:246:3: ( (lv_stateName_0_0= RULE_ID ) ) otherlv_1= '=' ( (lv_obj_2_0= RULE_ID ) ) otherlv_3= '.getState(' ( (lv_std_4_0= RULE_ID ) ) otherlv_5= ',' ( (lv_uMLStateName_6_0= RULE_ID ) ) otherlv_7= ')'
                    {
                    // InternalProperty.g:246:3: ( (lv_stateName_0_0= RULE_ID ) )
                    // InternalProperty.g:247:1: (lv_stateName_0_0= RULE_ID )
                    {
                    // InternalProperty.g:247:1: (lv_stateName_0_0= RULE_ID )
                    // InternalProperty.g:248:3: lv_stateName_0_0= RULE_ID
                    {
                    lv_stateName_0_0=(Token)match(input,RULE_ID,FOLLOW_7); 

                    			newLeafNode(lv_stateName_0_0, grammarAccess.getDeclarationAccess().getStateNameIDTerminalRuleCall_0_0_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getDeclarationRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"stateName",
                            		lv_stateName_0_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }

                    otherlv_1=(Token)match(input,22,FOLLOW_8); 

                        	newLeafNode(otherlv_1, grammarAccess.getDeclarationAccess().getEqualsSignKeyword_0_1());
                        
                    // InternalProperty.g:268:1: ( (lv_obj_2_0= RULE_ID ) )
                    // InternalProperty.g:269:1: (lv_obj_2_0= RULE_ID )
                    {
                    // InternalProperty.g:269:1: (lv_obj_2_0= RULE_ID )
                    // InternalProperty.g:270:3: lv_obj_2_0= RULE_ID
                    {
                    lv_obj_2_0=(Token)match(input,RULE_ID,FOLLOW_9); 

                    			newLeafNode(lv_obj_2_0, grammarAccess.getDeclarationAccess().getObjIDTerminalRuleCall_0_2_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getDeclarationRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"obj",
                            		lv_obj_2_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }

                    otherlv_3=(Token)match(input,23,FOLLOW_8); 

                        	newLeafNode(otherlv_3, grammarAccess.getDeclarationAccess().getGetStateKeyword_0_3());
                        
                    // InternalProperty.g:290:1: ( (lv_std_4_0= RULE_ID ) )
                    // InternalProperty.g:291:1: (lv_std_4_0= RULE_ID )
                    {
                    // InternalProperty.g:291:1: (lv_std_4_0= RULE_ID )
                    // InternalProperty.g:292:3: lv_std_4_0= RULE_ID
                    {
                    lv_std_4_0=(Token)match(input,RULE_ID,FOLLOW_10); 

                    			newLeafNode(lv_std_4_0, grammarAccess.getDeclarationAccess().getStdIDTerminalRuleCall_0_4_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getDeclarationRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"std",
                            		lv_std_4_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }

                    otherlv_5=(Token)match(input,24,FOLLOW_8); 

                        	newLeafNode(otherlv_5, grammarAccess.getDeclarationAccess().getCommaKeyword_0_5());
                        
                    // InternalProperty.g:312:1: ( (lv_uMLStateName_6_0= RULE_ID ) )
                    // InternalProperty.g:313:1: (lv_uMLStateName_6_0= RULE_ID )
                    {
                    // InternalProperty.g:313:1: (lv_uMLStateName_6_0= RULE_ID )
                    // InternalProperty.g:314:3: lv_uMLStateName_6_0= RULE_ID
                    {
                    lv_uMLStateName_6_0=(Token)match(input,RULE_ID,FOLLOW_6); 

                    			newLeafNode(lv_uMLStateName_6_0, grammarAccess.getDeclarationAccess().getUMLStateNameIDTerminalRuleCall_0_6_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getDeclarationRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"uMLStateName",
                            		lv_uMLStateName_6_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }

                    otherlv_7=(Token)match(input,21,FOLLOW_2); 

                        	newLeafNode(otherlv_7, grammarAccess.getDeclarationAccess().getRightParenthesisKeyword_0_7());
                        

                    }


                    }
                    break;
                case 2 :
                    // InternalProperty.g:335:6: ( ( (lv_trioVar_8_0= RULE_ID ) ) otherlv_9= '=' ( ( (lv_trio_10_0= ruleTRIO ) ) | ( ( (lv_obj_11_0= RULE_ID ) ) otherlv_12= '.in(' ( (lv_stateName_13_0= RULE_ID ) ) otherlv_14= ')' ) ) )
                    {
                    // InternalProperty.g:335:6: ( ( (lv_trioVar_8_0= RULE_ID ) ) otherlv_9= '=' ( ( (lv_trio_10_0= ruleTRIO ) ) | ( ( (lv_obj_11_0= RULE_ID ) ) otherlv_12= '.in(' ( (lv_stateName_13_0= RULE_ID ) ) otherlv_14= ')' ) ) )
                    // InternalProperty.g:335:7: ( (lv_trioVar_8_0= RULE_ID ) ) otherlv_9= '=' ( ( (lv_trio_10_0= ruleTRIO ) ) | ( ( (lv_obj_11_0= RULE_ID ) ) otherlv_12= '.in(' ( (lv_stateName_13_0= RULE_ID ) ) otherlv_14= ')' ) )
                    {
                    // InternalProperty.g:335:7: ( (lv_trioVar_8_0= RULE_ID ) )
                    // InternalProperty.g:336:1: (lv_trioVar_8_0= RULE_ID )
                    {
                    // InternalProperty.g:336:1: (lv_trioVar_8_0= RULE_ID )
                    // InternalProperty.g:337:3: lv_trioVar_8_0= RULE_ID
                    {
                    lv_trioVar_8_0=(Token)match(input,RULE_ID,FOLLOW_7); 

                    			newLeafNode(lv_trioVar_8_0, grammarAccess.getDeclarationAccess().getTrioVarIDTerminalRuleCall_1_0_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getDeclarationRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"trioVar",
                            		lv_trioVar_8_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }

                    otherlv_9=(Token)match(input,22,FOLLOW_5); 

                        	newLeafNode(otherlv_9, grammarAccess.getDeclarationAccess().getEqualsSignKeyword_1_1());
                        
                    // InternalProperty.g:357:1: ( ( (lv_trio_10_0= ruleTRIO ) ) | ( ( (lv_obj_11_0= RULE_ID ) ) otherlv_12= '.in(' ( (lv_stateName_13_0= RULE_ID ) ) otherlv_14= ')' ) )
                    int alt3=2;
                    int LA3_0 = input.LA(1);

                    if ( (LA3_0==RULE_ID) ) {
                        int LA3_1 = input.LA(2);

                        if ( (LA3_1==EOF||LA3_1==RULE_ID||LA3_1==RULE_TRIOOP2||LA3_1==19||(LA3_1>=32 && LA3_1<=34)) ) {
                            alt3=1;
                        }
                        else if ( (LA3_1==25) ) {
                            alt3=2;
                        }
                        else {
                            NoViableAltException nvae =
                                new NoViableAltException("", 3, 1, input);

                            throw nvae;
                        }
                    }
                    else if ( (LA3_0==RULE_INT||(LA3_0>=27 && LA3_0<=31)) ) {
                        alt3=1;
                    }
                    else {
                        NoViableAltException nvae =
                            new NoViableAltException("", 3, 0, input);

                        throw nvae;
                    }
                    switch (alt3) {
                        case 1 :
                            // InternalProperty.g:357:2: ( (lv_trio_10_0= ruleTRIO ) )
                            {
                            // InternalProperty.g:357:2: ( (lv_trio_10_0= ruleTRIO ) )
                            // InternalProperty.g:358:1: (lv_trio_10_0= ruleTRIO )
                            {
                            // InternalProperty.g:358:1: (lv_trio_10_0= ruleTRIO )
                            // InternalProperty.g:359:3: lv_trio_10_0= ruleTRIO
                            {
                             
                            	        newCompositeNode(grammarAccess.getDeclarationAccess().getTrioTRIOParserRuleCall_1_2_0_0()); 
                            	    
                            pushFollow(FOLLOW_2);
                            lv_trio_10_0=ruleTRIO();

                            state._fsp--;


                            	        if (current==null) {
                            	            current = createModelElementForParent(grammarAccess.getDeclarationRule());
                            	        }
                                   		set(
                                   			current, 
                                   			"trio",
                                    		lv_trio_10_0, 
                                    		"org.correttouml.grammars.Property.TRIO");
                            	        afterParserOrEnumRuleCall();
                            	    

                            }


                            }


                            }
                            break;
                        case 2 :
                            // InternalProperty.g:376:6: ( ( (lv_obj_11_0= RULE_ID ) ) otherlv_12= '.in(' ( (lv_stateName_13_0= RULE_ID ) ) otherlv_14= ')' )
                            {
                            // InternalProperty.g:376:6: ( ( (lv_obj_11_0= RULE_ID ) ) otherlv_12= '.in(' ( (lv_stateName_13_0= RULE_ID ) ) otherlv_14= ')' )
                            // InternalProperty.g:376:7: ( (lv_obj_11_0= RULE_ID ) ) otherlv_12= '.in(' ( (lv_stateName_13_0= RULE_ID ) ) otherlv_14= ')'
                            {
                            // InternalProperty.g:376:7: ( (lv_obj_11_0= RULE_ID ) )
                            // InternalProperty.g:377:1: (lv_obj_11_0= RULE_ID )
                            {
                            // InternalProperty.g:377:1: (lv_obj_11_0= RULE_ID )
                            // InternalProperty.g:378:3: lv_obj_11_0= RULE_ID
                            {
                            lv_obj_11_0=(Token)match(input,RULE_ID,FOLLOW_11); 

                            			newLeafNode(lv_obj_11_0, grammarAccess.getDeclarationAccess().getObjIDTerminalRuleCall_1_2_1_0_0()); 
                            		

                            	        if (current==null) {
                            	            current = createModelElement(grammarAccess.getDeclarationRule());
                            	        }
                                   		setWithLastConsumed(
                                   			current, 
                                   			"obj",
                                    		lv_obj_11_0, 
                                    		"org.eclipse.xtext.common.Terminals.ID");
                            	    

                            }


                            }

                            otherlv_12=(Token)match(input,25,FOLLOW_8); 

                                	newLeafNode(otherlv_12, grammarAccess.getDeclarationAccess().getInKeyword_1_2_1_1());
                                
                            // InternalProperty.g:398:1: ( (lv_stateName_13_0= RULE_ID ) )
                            // InternalProperty.g:399:1: (lv_stateName_13_0= RULE_ID )
                            {
                            // InternalProperty.g:399:1: (lv_stateName_13_0= RULE_ID )
                            // InternalProperty.g:400:3: lv_stateName_13_0= RULE_ID
                            {
                            lv_stateName_13_0=(Token)match(input,RULE_ID,FOLLOW_6); 

                            			newLeafNode(lv_stateName_13_0, grammarAccess.getDeclarationAccess().getStateNameIDTerminalRuleCall_1_2_1_2_0()); 
                            		

                            	        if (current==null) {
                            	            current = createModelElement(grammarAccess.getDeclarationRule());
                            	        }
                                   		setWithLastConsumed(
                                   			current, 
                                   			"stateName",
                                    		lv_stateName_13_0, 
                                    		"org.eclipse.xtext.common.Terminals.ID");
                            	    

                            }


                            }

                            otherlv_14=(Token)match(input,21,FOLLOW_2); 

                                	newLeafNode(otherlv_14, grammarAccess.getDeclarationAccess().getRightParenthesisKeyword_1_2_1_3());
                                

                            }


                            }
                            break;

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
    // $ANTLR end "ruleDeclaration"


    // $ANTLR start "entryRuleTRIO"
    // InternalProperty.g:428:1: entryRuleTRIO returns [EObject current=null] : iv_ruleTRIO= ruleTRIO EOF ;
    public final EObject entryRuleTRIO() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleTRIO = null;


        try {
            // InternalProperty.g:429:2: (iv_ruleTRIO= ruleTRIO EOF )
            // InternalProperty.g:430:2: iv_ruleTRIO= ruleTRIO EOF
            {
             newCompositeNode(grammarAccess.getTRIORule()); 
            pushFollow(FOLLOW_1);
            iv_ruleTRIO=ruleTRIO();

            state._fsp--;

             current =iv_ruleTRIO; 
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
    // $ANTLR end "entryRuleTRIO"


    // $ANTLR start "ruleTRIO"
    // InternalProperty.g:437:1: ruleTRIO returns [EObject current=null] : ( ( (lv_trioL_0_0= ruleTRIOL ) ) ( (lv_trioR_1_0= ruleTRIOR ) )? ) ;
    public final EObject ruleTRIO() throws RecognitionException {
        EObject current = null;

        EObject lv_trioL_0_0 = null;

        EObject lv_trioR_1_0 = null;


         enterRule(); 
            
        try {
            // InternalProperty.g:440:28: ( ( ( (lv_trioL_0_0= ruleTRIOL ) ) ( (lv_trioR_1_0= ruleTRIOR ) )? ) )
            // InternalProperty.g:441:1: ( ( (lv_trioL_0_0= ruleTRIOL ) ) ( (lv_trioR_1_0= ruleTRIOR ) )? )
            {
            // InternalProperty.g:441:1: ( ( (lv_trioL_0_0= ruleTRIOL ) ) ( (lv_trioR_1_0= ruleTRIOR ) )? )
            // InternalProperty.g:441:2: ( (lv_trioL_0_0= ruleTRIOL ) ) ( (lv_trioR_1_0= ruleTRIOR ) )?
            {
            // InternalProperty.g:441:2: ( (lv_trioL_0_0= ruleTRIOL ) )
            // InternalProperty.g:442:1: (lv_trioL_0_0= ruleTRIOL )
            {
            // InternalProperty.g:442:1: (lv_trioL_0_0= ruleTRIOL )
            // InternalProperty.g:443:3: lv_trioL_0_0= ruleTRIOL
            {
             
            	        newCompositeNode(grammarAccess.getTRIOAccess().getTrioLTRIOLParserRuleCall_0_0()); 
            	    
            pushFollow(FOLLOW_12);
            lv_trioL_0_0=ruleTRIOL();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getTRIORule());
            	        }
                   		set(
                   			current, 
                   			"trioL",
                    		lv_trioL_0_0, 
                    		"org.correttouml.grammars.Property.TRIOL");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            // InternalProperty.g:459:2: ( (lv_trioR_1_0= ruleTRIOR ) )?
            int alt5=2;
            int LA5_0 = input.LA(1);

            if ( (LA5_0==RULE_TRIOOP2) ) {
                alt5=1;
            }
            switch (alt5) {
                case 1 :
                    // InternalProperty.g:460:1: (lv_trioR_1_0= ruleTRIOR )
                    {
                    // InternalProperty.g:460:1: (lv_trioR_1_0= ruleTRIOR )
                    // InternalProperty.g:461:3: lv_trioR_1_0= ruleTRIOR
                    {
                     
                    	        newCompositeNode(grammarAccess.getTRIOAccess().getTrioRTRIORParserRuleCall_1_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_trioR_1_0=ruleTRIOR();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getTRIORule());
                    	        }
                           		set(
                           			current, 
                           			"trioR",
                            		lv_trioR_1_0, 
                            		"org.correttouml.grammars.Property.TRIOR");
                    	        afterParserOrEnumRuleCall();
                    	    

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
    // $ANTLR end "ruleTRIO"


    // $ANTLR start "entryRuleTRIOL"
    // InternalProperty.g:485:1: entryRuleTRIOL returns [EObject current=null] : iv_ruleTRIOL= ruleTRIOL EOF ;
    public final EObject entryRuleTRIOL() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleTRIOL = null;


        try {
            // InternalProperty.g:486:2: (iv_ruleTRIOL= ruleTRIOL EOF )
            // InternalProperty.g:487:2: iv_ruleTRIOL= ruleTRIOL EOF
            {
             newCompositeNode(grammarAccess.getTRIOLRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleTRIOL=ruleTRIOL();

            state._fsp--;

             current =iv_ruleTRIOL; 
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
    // $ANTLR end "entryRuleTRIOL"


    // $ANTLR start "ruleTRIOL"
    // InternalProperty.g:494:1: ruleTRIOL returns [EObject current=null] : ( ( ( (lv_trioVar_0_0= RULE_ID ) ) ( ( (lv_opName_1_0= RULE_ID ) ) otherlv_2= '()' )? ) | ( (lv_arithBool_3_0= ruleArithBool ) ) | (otherlv_4= '!(' ( (lv_trioNot_5_0= ruleTRIO ) ) otherlv_6= ')' ) | (otherlv_7= 'Time.' ( (lv_trioOpF_8_0= RULE_TRIOOPF ) ) otherlv_9= '(' ( (lv_trioOpF1_10_0= ruleTRIO ) ) otherlv_11= ')' ) | (otherlv_12= 'Time.' ( (lv_trioOpFF_13_0= RULE_TRIOOPFF ) ) otherlv_14= '(' ( (lv_trioOpFF1_15_0= ruleTRIO ) ) otherlv_16= ',' ( (lv_trioOpFF2_17_0= ruleTRIO ) ) otherlv_18= ')' ) | (otherlv_19= 'Time.' ( (lv_trioOpFN_20_0= RULE_TRIOOPFN ) ) otherlv_21= '(' ( (lv_trioOpFN1_22_0= ruleTRIO ) ) otherlv_23= ',' ( (lv_int_24_0= RULE_INT ) ) otherlv_25= ')' ) ) ;
    public final EObject ruleTRIOL() throws RecognitionException {
        EObject current = null;

        Token lv_trioVar_0_0=null;
        Token lv_opName_1_0=null;
        Token otherlv_2=null;
        Token otherlv_4=null;
        Token otherlv_6=null;
        Token otherlv_7=null;
        Token lv_trioOpF_8_0=null;
        Token otherlv_9=null;
        Token otherlv_11=null;
        Token otherlv_12=null;
        Token lv_trioOpFF_13_0=null;
        Token otherlv_14=null;
        Token otherlv_16=null;
        Token otherlv_18=null;
        Token otherlv_19=null;
        Token lv_trioOpFN_20_0=null;
        Token otherlv_21=null;
        Token otherlv_23=null;
        Token lv_int_24_0=null;
        Token otherlv_25=null;
        EObject lv_arithBool_3_0 = null;

        EObject lv_trioNot_5_0 = null;

        EObject lv_trioOpF1_10_0 = null;

        EObject lv_trioOpFF1_15_0 = null;

        EObject lv_trioOpFF2_17_0 = null;

        EObject lv_trioOpFN1_22_0 = null;


         enterRule(); 
            
        try {
            // InternalProperty.g:497:28: ( ( ( ( (lv_trioVar_0_0= RULE_ID ) ) ( ( (lv_opName_1_0= RULE_ID ) ) otherlv_2= '()' )? ) | ( (lv_arithBool_3_0= ruleArithBool ) ) | (otherlv_4= '!(' ( (lv_trioNot_5_0= ruleTRIO ) ) otherlv_6= ')' ) | (otherlv_7= 'Time.' ( (lv_trioOpF_8_0= RULE_TRIOOPF ) ) otherlv_9= '(' ( (lv_trioOpF1_10_0= ruleTRIO ) ) otherlv_11= ')' ) | (otherlv_12= 'Time.' ( (lv_trioOpFF_13_0= RULE_TRIOOPFF ) ) otherlv_14= '(' ( (lv_trioOpFF1_15_0= ruleTRIO ) ) otherlv_16= ',' ( (lv_trioOpFF2_17_0= ruleTRIO ) ) otherlv_18= ')' ) | (otherlv_19= 'Time.' ( (lv_trioOpFN_20_0= RULE_TRIOOPFN ) ) otherlv_21= '(' ( (lv_trioOpFN1_22_0= ruleTRIO ) ) otherlv_23= ',' ( (lv_int_24_0= RULE_INT ) ) otherlv_25= ')' ) ) )
            // InternalProperty.g:498:1: ( ( ( (lv_trioVar_0_0= RULE_ID ) ) ( ( (lv_opName_1_0= RULE_ID ) ) otherlv_2= '()' )? ) | ( (lv_arithBool_3_0= ruleArithBool ) ) | (otherlv_4= '!(' ( (lv_trioNot_5_0= ruleTRIO ) ) otherlv_6= ')' ) | (otherlv_7= 'Time.' ( (lv_trioOpF_8_0= RULE_TRIOOPF ) ) otherlv_9= '(' ( (lv_trioOpF1_10_0= ruleTRIO ) ) otherlv_11= ')' ) | (otherlv_12= 'Time.' ( (lv_trioOpFF_13_0= RULE_TRIOOPFF ) ) otherlv_14= '(' ( (lv_trioOpFF1_15_0= ruleTRIO ) ) otherlv_16= ',' ( (lv_trioOpFF2_17_0= ruleTRIO ) ) otherlv_18= ')' ) | (otherlv_19= 'Time.' ( (lv_trioOpFN_20_0= RULE_TRIOOPFN ) ) otherlv_21= '(' ( (lv_trioOpFN1_22_0= ruleTRIO ) ) otherlv_23= ',' ( (lv_int_24_0= RULE_INT ) ) otherlv_25= ')' ) )
            {
            // InternalProperty.g:498:1: ( ( ( (lv_trioVar_0_0= RULE_ID ) ) ( ( (lv_opName_1_0= RULE_ID ) ) otherlv_2= '()' )? ) | ( (lv_arithBool_3_0= ruleArithBool ) ) | (otherlv_4= '!(' ( (lv_trioNot_5_0= ruleTRIO ) ) otherlv_6= ')' ) | (otherlv_7= 'Time.' ( (lv_trioOpF_8_0= RULE_TRIOOPF ) ) otherlv_9= '(' ( (lv_trioOpF1_10_0= ruleTRIO ) ) otherlv_11= ')' ) | (otherlv_12= 'Time.' ( (lv_trioOpFF_13_0= RULE_TRIOOPFF ) ) otherlv_14= '(' ( (lv_trioOpFF1_15_0= ruleTRIO ) ) otherlv_16= ',' ( (lv_trioOpFF2_17_0= ruleTRIO ) ) otherlv_18= ')' ) | (otherlv_19= 'Time.' ( (lv_trioOpFN_20_0= RULE_TRIOOPFN ) ) otherlv_21= '(' ( (lv_trioOpFN1_22_0= ruleTRIO ) ) otherlv_23= ',' ( (lv_int_24_0= RULE_INT ) ) otherlv_25= ')' ) )
            int alt7=6;
            switch ( input.LA(1) ) {
            case RULE_ID:
                {
                int LA7_1 = input.LA(2);

                if ( ((LA7_1>=32 && LA7_1<=34)) ) {
                    alt7=2;
                }
                else if ( (LA7_1==EOF||LA7_1==RULE_ID||LA7_1==RULE_TRIOOP2||LA7_1==19||LA7_1==21||LA7_1==24) ) {
                    alt7=1;
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 7, 1, input);

                    throw nvae;
                }
                }
                break;
            case RULE_INT:
            case 29:
            case 30:
            case 31:
                {
                alt7=2;
                }
                break;
            case 27:
                {
                alt7=3;
                }
                break;
            case 28:
                {
                switch ( input.LA(2) ) {
                case RULE_TRIOOPFF:
                    {
                    alt7=5;
                    }
                    break;
                case RULE_TRIOOPF:
                    {
                    alt7=4;
                    }
                    break;
                case RULE_TRIOOPFN:
                    {
                    alt7=6;
                    }
                    break;
                default:
                    NoViableAltException nvae =
                        new NoViableAltException("", 7, 4, input);

                    throw nvae;
                }

                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 7, 0, input);

                throw nvae;
            }

            switch (alt7) {
                case 1 :
                    // InternalProperty.g:498:2: ( ( (lv_trioVar_0_0= RULE_ID ) ) ( ( (lv_opName_1_0= RULE_ID ) ) otherlv_2= '()' )? )
                    {
                    // InternalProperty.g:498:2: ( ( (lv_trioVar_0_0= RULE_ID ) ) ( ( (lv_opName_1_0= RULE_ID ) ) otherlv_2= '()' )? )
                    // InternalProperty.g:498:3: ( (lv_trioVar_0_0= RULE_ID ) ) ( ( (lv_opName_1_0= RULE_ID ) ) otherlv_2= '()' )?
                    {
                    // InternalProperty.g:498:3: ( (lv_trioVar_0_0= RULE_ID ) )
                    // InternalProperty.g:499:1: (lv_trioVar_0_0= RULE_ID )
                    {
                    // InternalProperty.g:499:1: (lv_trioVar_0_0= RULE_ID )
                    // InternalProperty.g:500:3: lv_trioVar_0_0= RULE_ID
                    {
                    lv_trioVar_0_0=(Token)match(input,RULE_ID,FOLLOW_13); 

                    			newLeafNode(lv_trioVar_0_0, grammarAccess.getTRIOLAccess().getTrioVarIDTerminalRuleCall_0_0_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getTRIOLRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"trioVar",
                            		lv_trioVar_0_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }

                    // InternalProperty.g:516:2: ( ( (lv_opName_1_0= RULE_ID ) ) otherlv_2= '()' )?
                    int alt6=2;
                    int LA6_0 = input.LA(1);

                    if ( (LA6_0==RULE_ID) ) {
                        int LA6_1 = input.LA(2);

                        if ( (LA6_1==26) ) {
                            alt6=1;
                        }
                    }
                    switch (alt6) {
                        case 1 :
                            // InternalProperty.g:516:3: ( (lv_opName_1_0= RULE_ID ) ) otherlv_2= '()'
                            {
                            // InternalProperty.g:516:3: ( (lv_opName_1_0= RULE_ID ) )
                            // InternalProperty.g:517:1: (lv_opName_1_0= RULE_ID )
                            {
                            // InternalProperty.g:517:1: (lv_opName_1_0= RULE_ID )
                            // InternalProperty.g:518:3: lv_opName_1_0= RULE_ID
                            {
                            lv_opName_1_0=(Token)match(input,RULE_ID,FOLLOW_14); 

                            			newLeafNode(lv_opName_1_0, grammarAccess.getTRIOLAccess().getOpNameIDTerminalRuleCall_0_1_0_0()); 
                            		

                            	        if (current==null) {
                            	            current = createModelElement(grammarAccess.getTRIOLRule());
                            	        }
                                   		setWithLastConsumed(
                                   			current, 
                                   			"opName",
                                    		lv_opName_1_0, 
                                    		"org.eclipse.xtext.common.Terminals.ID");
                            	    

                            }


                            }

                            otherlv_2=(Token)match(input,26,FOLLOW_2); 

                                	newLeafNode(otherlv_2, grammarAccess.getTRIOLAccess().getLeftParenthesisRightParenthesisKeyword_0_1_1());
                                

                            }
                            break;

                    }


                    }


                    }
                    break;
                case 2 :
                    // InternalProperty.g:539:6: ( (lv_arithBool_3_0= ruleArithBool ) )
                    {
                    // InternalProperty.g:539:6: ( (lv_arithBool_3_0= ruleArithBool ) )
                    // InternalProperty.g:540:1: (lv_arithBool_3_0= ruleArithBool )
                    {
                    // InternalProperty.g:540:1: (lv_arithBool_3_0= ruleArithBool )
                    // InternalProperty.g:541:3: lv_arithBool_3_0= ruleArithBool
                    {
                     
                    	        newCompositeNode(grammarAccess.getTRIOLAccess().getArithBoolArithBoolParserRuleCall_1_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_arithBool_3_0=ruleArithBool();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getTRIOLRule());
                    	        }
                           		set(
                           			current, 
                           			"arithBool",
                            		lv_arithBool_3_0, 
                            		"org.correttouml.grammars.Property.ArithBool");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }
                    break;
                case 3 :
                    // InternalProperty.g:558:6: (otherlv_4= '!(' ( (lv_trioNot_5_0= ruleTRIO ) ) otherlv_6= ')' )
                    {
                    // InternalProperty.g:558:6: (otherlv_4= '!(' ( (lv_trioNot_5_0= ruleTRIO ) ) otherlv_6= ')' )
                    // InternalProperty.g:558:8: otherlv_4= '!(' ( (lv_trioNot_5_0= ruleTRIO ) ) otherlv_6= ')'
                    {
                    otherlv_4=(Token)match(input,27,FOLLOW_5); 

                        	newLeafNode(otherlv_4, grammarAccess.getTRIOLAccess().getExclamationMarkLeftParenthesisKeyword_2_0());
                        
                    // InternalProperty.g:562:1: ( (lv_trioNot_5_0= ruleTRIO ) )
                    // InternalProperty.g:563:1: (lv_trioNot_5_0= ruleTRIO )
                    {
                    // InternalProperty.g:563:1: (lv_trioNot_5_0= ruleTRIO )
                    // InternalProperty.g:564:3: lv_trioNot_5_0= ruleTRIO
                    {
                     
                    	        newCompositeNode(grammarAccess.getTRIOLAccess().getTrioNotTRIOParserRuleCall_2_1_0()); 
                    	    
                    pushFollow(FOLLOW_6);
                    lv_trioNot_5_0=ruleTRIO();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getTRIOLRule());
                    	        }
                           		set(
                           			current, 
                           			"trioNot",
                            		lv_trioNot_5_0, 
                            		"org.correttouml.grammars.Property.TRIO");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }

                    otherlv_6=(Token)match(input,21,FOLLOW_2); 

                        	newLeafNode(otherlv_6, grammarAccess.getTRIOLAccess().getRightParenthesisKeyword_2_2());
                        

                    }


                    }
                    break;
                case 4 :
                    // InternalProperty.g:585:6: (otherlv_7= 'Time.' ( (lv_trioOpF_8_0= RULE_TRIOOPF ) ) otherlv_9= '(' ( (lv_trioOpF1_10_0= ruleTRIO ) ) otherlv_11= ')' )
                    {
                    // InternalProperty.g:585:6: (otherlv_7= 'Time.' ( (lv_trioOpF_8_0= RULE_TRIOOPF ) ) otherlv_9= '(' ( (lv_trioOpF1_10_0= ruleTRIO ) ) otherlv_11= ')' )
                    // InternalProperty.g:585:8: otherlv_7= 'Time.' ( (lv_trioOpF_8_0= RULE_TRIOOPF ) ) otherlv_9= '(' ( (lv_trioOpF1_10_0= ruleTRIO ) ) otherlv_11= ')'
                    {
                    otherlv_7=(Token)match(input,28,FOLLOW_15); 

                        	newLeafNode(otherlv_7, grammarAccess.getTRIOLAccess().getTimeKeyword_3_0());
                        
                    // InternalProperty.g:589:1: ( (lv_trioOpF_8_0= RULE_TRIOOPF ) )
                    // InternalProperty.g:590:1: (lv_trioOpF_8_0= RULE_TRIOOPF )
                    {
                    // InternalProperty.g:590:1: (lv_trioOpF_8_0= RULE_TRIOOPF )
                    // InternalProperty.g:591:3: lv_trioOpF_8_0= RULE_TRIOOPF
                    {
                    lv_trioOpF_8_0=(Token)match(input,RULE_TRIOOPF,FOLLOW_16); 

                    			newLeafNode(lv_trioOpF_8_0, grammarAccess.getTRIOLAccess().getTrioOpFTRIOOPFTerminalRuleCall_3_1_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getTRIOLRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"trioOpF",
                            		lv_trioOpF_8_0, 
                            		"org.correttouml.grammars.Property.TRIOOPF");
                    	    

                    }


                    }

                    otherlv_9=(Token)match(input,29,FOLLOW_5); 

                        	newLeafNode(otherlv_9, grammarAccess.getTRIOLAccess().getLeftParenthesisKeyword_3_2());
                        
                    // InternalProperty.g:611:1: ( (lv_trioOpF1_10_0= ruleTRIO ) )
                    // InternalProperty.g:612:1: (lv_trioOpF1_10_0= ruleTRIO )
                    {
                    // InternalProperty.g:612:1: (lv_trioOpF1_10_0= ruleTRIO )
                    // InternalProperty.g:613:3: lv_trioOpF1_10_0= ruleTRIO
                    {
                     
                    	        newCompositeNode(grammarAccess.getTRIOLAccess().getTrioOpF1TRIOParserRuleCall_3_3_0()); 
                    	    
                    pushFollow(FOLLOW_6);
                    lv_trioOpF1_10_0=ruleTRIO();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getTRIOLRule());
                    	        }
                           		set(
                           			current, 
                           			"trioOpF1",
                            		lv_trioOpF1_10_0, 
                            		"org.correttouml.grammars.Property.TRIO");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }

                    otherlv_11=(Token)match(input,21,FOLLOW_2); 

                        	newLeafNode(otherlv_11, grammarAccess.getTRIOLAccess().getRightParenthesisKeyword_3_4());
                        

                    }


                    }
                    break;
                case 5 :
                    // InternalProperty.g:634:6: (otherlv_12= 'Time.' ( (lv_trioOpFF_13_0= RULE_TRIOOPFF ) ) otherlv_14= '(' ( (lv_trioOpFF1_15_0= ruleTRIO ) ) otherlv_16= ',' ( (lv_trioOpFF2_17_0= ruleTRIO ) ) otherlv_18= ')' )
                    {
                    // InternalProperty.g:634:6: (otherlv_12= 'Time.' ( (lv_trioOpFF_13_0= RULE_TRIOOPFF ) ) otherlv_14= '(' ( (lv_trioOpFF1_15_0= ruleTRIO ) ) otherlv_16= ',' ( (lv_trioOpFF2_17_0= ruleTRIO ) ) otherlv_18= ')' )
                    // InternalProperty.g:634:8: otherlv_12= 'Time.' ( (lv_trioOpFF_13_0= RULE_TRIOOPFF ) ) otherlv_14= '(' ( (lv_trioOpFF1_15_0= ruleTRIO ) ) otherlv_16= ',' ( (lv_trioOpFF2_17_0= ruleTRIO ) ) otherlv_18= ')'
                    {
                    otherlv_12=(Token)match(input,28,FOLLOW_17); 

                        	newLeafNode(otherlv_12, grammarAccess.getTRIOLAccess().getTimeKeyword_4_0());
                        
                    // InternalProperty.g:638:1: ( (lv_trioOpFF_13_0= RULE_TRIOOPFF ) )
                    // InternalProperty.g:639:1: (lv_trioOpFF_13_0= RULE_TRIOOPFF )
                    {
                    // InternalProperty.g:639:1: (lv_trioOpFF_13_0= RULE_TRIOOPFF )
                    // InternalProperty.g:640:3: lv_trioOpFF_13_0= RULE_TRIOOPFF
                    {
                    lv_trioOpFF_13_0=(Token)match(input,RULE_TRIOOPFF,FOLLOW_16); 

                    			newLeafNode(lv_trioOpFF_13_0, grammarAccess.getTRIOLAccess().getTrioOpFFTRIOOPFFTerminalRuleCall_4_1_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getTRIOLRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"trioOpFF",
                            		lv_trioOpFF_13_0, 
                            		"org.correttouml.grammars.Property.TRIOOPFF");
                    	    

                    }


                    }

                    otherlv_14=(Token)match(input,29,FOLLOW_5); 

                        	newLeafNode(otherlv_14, grammarAccess.getTRIOLAccess().getLeftParenthesisKeyword_4_2());
                        
                    // InternalProperty.g:660:1: ( (lv_trioOpFF1_15_0= ruleTRIO ) )
                    // InternalProperty.g:661:1: (lv_trioOpFF1_15_0= ruleTRIO )
                    {
                    // InternalProperty.g:661:1: (lv_trioOpFF1_15_0= ruleTRIO )
                    // InternalProperty.g:662:3: lv_trioOpFF1_15_0= ruleTRIO
                    {
                     
                    	        newCompositeNode(grammarAccess.getTRIOLAccess().getTrioOpFF1TRIOParserRuleCall_4_3_0()); 
                    	    
                    pushFollow(FOLLOW_10);
                    lv_trioOpFF1_15_0=ruleTRIO();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getTRIOLRule());
                    	        }
                           		set(
                           			current, 
                           			"trioOpFF1",
                            		lv_trioOpFF1_15_0, 
                            		"org.correttouml.grammars.Property.TRIO");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }

                    otherlv_16=(Token)match(input,24,FOLLOW_5); 

                        	newLeafNode(otherlv_16, grammarAccess.getTRIOLAccess().getCommaKeyword_4_4());
                        
                    // InternalProperty.g:682:1: ( (lv_trioOpFF2_17_0= ruleTRIO ) )
                    // InternalProperty.g:683:1: (lv_trioOpFF2_17_0= ruleTRIO )
                    {
                    // InternalProperty.g:683:1: (lv_trioOpFF2_17_0= ruleTRIO )
                    // InternalProperty.g:684:3: lv_trioOpFF2_17_0= ruleTRIO
                    {
                     
                    	        newCompositeNode(grammarAccess.getTRIOLAccess().getTrioOpFF2TRIOParserRuleCall_4_5_0()); 
                    	    
                    pushFollow(FOLLOW_6);
                    lv_trioOpFF2_17_0=ruleTRIO();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getTRIOLRule());
                    	        }
                           		set(
                           			current, 
                           			"trioOpFF2",
                            		lv_trioOpFF2_17_0, 
                            		"org.correttouml.grammars.Property.TRIO");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }

                    otherlv_18=(Token)match(input,21,FOLLOW_2); 

                        	newLeafNode(otherlv_18, grammarAccess.getTRIOLAccess().getRightParenthesisKeyword_4_6());
                        

                    }


                    }
                    break;
                case 6 :
                    // InternalProperty.g:705:6: (otherlv_19= 'Time.' ( (lv_trioOpFN_20_0= RULE_TRIOOPFN ) ) otherlv_21= '(' ( (lv_trioOpFN1_22_0= ruleTRIO ) ) otherlv_23= ',' ( (lv_int_24_0= RULE_INT ) ) otherlv_25= ')' )
                    {
                    // InternalProperty.g:705:6: (otherlv_19= 'Time.' ( (lv_trioOpFN_20_0= RULE_TRIOOPFN ) ) otherlv_21= '(' ( (lv_trioOpFN1_22_0= ruleTRIO ) ) otherlv_23= ',' ( (lv_int_24_0= RULE_INT ) ) otherlv_25= ')' )
                    // InternalProperty.g:705:8: otherlv_19= 'Time.' ( (lv_trioOpFN_20_0= RULE_TRIOOPFN ) ) otherlv_21= '(' ( (lv_trioOpFN1_22_0= ruleTRIO ) ) otherlv_23= ',' ( (lv_int_24_0= RULE_INT ) ) otherlv_25= ')'
                    {
                    otherlv_19=(Token)match(input,28,FOLLOW_18); 

                        	newLeafNode(otherlv_19, grammarAccess.getTRIOLAccess().getTimeKeyword_5_0());
                        
                    // InternalProperty.g:709:1: ( (lv_trioOpFN_20_0= RULE_TRIOOPFN ) )
                    // InternalProperty.g:710:1: (lv_trioOpFN_20_0= RULE_TRIOOPFN )
                    {
                    // InternalProperty.g:710:1: (lv_trioOpFN_20_0= RULE_TRIOOPFN )
                    // InternalProperty.g:711:3: lv_trioOpFN_20_0= RULE_TRIOOPFN
                    {
                    lv_trioOpFN_20_0=(Token)match(input,RULE_TRIOOPFN,FOLLOW_16); 

                    			newLeafNode(lv_trioOpFN_20_0, grammarAccess.getTRIOLAccess().getTrioOpFNTRIOOPFNTerminalRuleCall_5_1_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getTRIOLRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"trioOpFN",
                            		lv_trioOpFN_20_0, 
                            		"org.correttouml.grammars.Property.TRIOOPFN");
                    	    

                    }


                    }

                    otherlv_21=(Token)match(input,29,FOLLOW_5); 

                        	newLeafNode(otherlv_21, grammarAccess.getTRIOLAccess().getLeftParenthesisKeyword_5_2());
                        
                    // InternalProperty.g:731:1: ( (lv_trioOpFN1_22_0= ruleTRIO ) )
                    // InternalProperty.g:732:1: (lv_trioOpFN1_22_0= ruleTRIO )
                    {
                    // InternalProperty.g:732:1: (lv_trioOpFN1_22_0= ruleTRIO )
                    // InternalProperty.g:733:3: lv_trioOpFN1_22_0= ruleTRIO
                    {
                     
                    	        newCompositeNode(grammarAccess.getTRIOLAccess().getTrioOpFN1TRIOParserRuleCall_5_3_0()); 
                    	    
                    pushFollow(FOLLOW_10);
                    lv_trioOpFN1_22_0=ruleTRIO();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getTRIOLRule());
                    	        }
                           		set(
                           			current, 
                           			"trioOpFN1",
                            		lv_trioOpFN1_22_0, 
                            		"org.correttouml.grammars.Property.TRIO");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }

                    otherlv_23=(Token)match(input,24,FOLLOW_19); 

                        	newLeafNode(otherlv_23, grammarAccess.getTRIOLAccess().getCommaKeyword_5_4());
                        
                    // InternalProperty.g:753:1: ( (lv_int_24_0= RULE_INT ) )
                    // InternalProperty.g:754:1: (lv_int_24_0= RULE_INT )
                    {
                    // InternalProperty.g:754:1: (lv_int_24_0= RULE_INT )
                    // InternalProperty.g:755:3: lv_int_24_0= RULE_INT
                    {
                    lv_int_24_0=(Token)match(input,RULE_INT,FOLLOW_6); 

                    			newLeafNode(lv_int_24_0, grammarAccess.getTRIOLAccess().getIntINTTerminalRuleCall_5_5_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getTRIOLRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"int",
                            		lv_int_24_0, 
                            		"org.eclipse.xtext.common.Terminals.INT");
                    	    

                    }


                    }

                    otherlv_25=(Token)match(input,21,FOLLOW_2); 

                        	newLeafNode(otherlv_25, grammarAccess.getTRIOLAccess().getRightParenthesisKeyword_5_6());
                        

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
    // $ANTLR end "ruleTRIOL"


    // $ANTLR start "entryRuleTRIOR"
    // InternalProperty.g:783:1: entryRuleTRIOR returns [EObject current=null] : iv_ruleTRIOR= ruleTRIOR EOF ;
    public final EObject entryRuleTRIOR() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleTRIOR = null;


        try {
            // InternalProperty.g:784:2: (iv_ruleTRIOR= ruleTRIOR EOF )
            // InternalProperty.g:785:2: iv_ruleTRIOR= ruleTRIOR EOF
            {
             newCompositeNode(grammarAccess.getTRIORRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleTRIOR=ruleTRIOR();

            state._fsp--;

             current =iv_ruleTRIOR; 
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
    // $ANTLR end "entryRuleTRIOR"


    // $ANTLR start "ruleTRIOR"
    // InternalProperty.g:792:1: ruleTRIOR returns [EObject current=null] : ( ( (lv_trioOP2_0_0= RULE_TRIOOP2 ) ) ( (lv_trio_1_0= ruleTRIO ) ) ) ;
    public final EObject ruleTRIOR() throws RecognitionException {
        EObject current = null;

        Token lv_trioOP2_0_0=null;
        EObject lv_trio_1_0 = null;


         enterRule(); 
            
        try {
            // InternalProperty.g:795:28: ( ( ( (lv_trioOP2_0_0= RULE_TRIOOP2 ) ) ( (lv_trio_1_0= ruleTRIO ) ) ) )
            // InternalProperty.g:796:1: ( ( (lv_trioOP2_0_0= RULE_TRIOOP2 ) ) ( (lv_trio_1_0= ruleTRIO ) ) )
            {
            // InternalProperty.g:796:1: ( ( (lv_trioOP2_0_0= RULE_TRIOOP2 ) ) ( (lv_trio_1_0= ruleTRIO ) ) )
            // InternalProperty.g:796:2: ( (lv_trioOP2_0_0= RULE_TRIOOP2 ) ) ( (lv_trio_1_0= ruleTRIO ) )
            {
            // InternalProperty.g:796:2: ( (lv_trioOP2_0_0= RULE_TRIOOP2 ) )
            // InternalProperty.g:797:1: (lv_trioOP2_0_0= RULE_TRIOOP2 )
            {
            // InternalProperty.g:797:1: (lv_trioOP2_0_0= RULE_TRIOOP2 )
            // InternalProperty.g:798:3: lv_trioOP2_0_0= RULE_TRIOOP2
            {
            lv_trioOP2_0_0=(Token)match(input,RULE_TRIOOP2,FOLLOW_5); 

            			newLeafNode(lv_trioOP2_0_0, grammarAccess.getTRIORAccess().getTrioOP2TRIOOP2TerminalRuleCall_0_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getTRIORRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"trioOP2",
                    		lv_trioOP2_0_0, 
                    		"org.correttouml.grammars.Property.TRIOOP2");
            	    

            }


            }

            // InternalProperty.g:814:2: ( (lv_trio_1_0= ruleTRIO ) )
            // InternalProperty.g:815:1: (lv_trio_1_0= ruleTRIO )
            {
            // InternalProperty.g:815:1: (lv_trio_1_0= ruleTRIO )
            // InternalProperty.g:816:3: lv_trio_1_0= ruleTRIO
            {
             
            	        newCompositeNode(grammarAccess.getTRIORAccess().getTrioTRIOParserRuleCall_1_0()); 
            	    
            pushFollow(FOLLOW_2);
            lv_trio_1_0=ruleTRIO();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getTRIORRule());
            	        }
                   		set(
                   			current, 
                   			"trio",
                    		lv_trio_1_0, 
                    		"org.correttouml.grammars.Property.TRIO");
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
    // $ANTLR end "ruleTRIOR"


    // $ANTLR start "entryRuleArithBool"
    // InternalProperty.g:840:1: entryRuleArithBool returns [EObject current=null] : iv_ruleArithBool= ruleArithBool EOF ;
    public final EObject entryRuleArithBool() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleArithBool = null;


        try {
            // InternalProperty.g:841:2: (iv_ruleArithBool= ruleArithBool EOF )
            // InternalProperty.g:842:2: iv_ruleArithBool= ruleArithBool EOF
            {
             newCompositeNode(grammarAccess.getArithBoolRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleArithBool=ruleArithBool();

            state._fsp--;

             current =iv_ruleArithBool; 
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
    // $ANTLR end "entryRuleArithBool"


    // $ANTLR start "ruleArithBool"
    // InternalProperty.g:849:1: ruleArithBool returns [EObject current=null] : ( ( (lv_arithTerm1_0_0= ruleArithTerm ) ) ( ( (lv_arithCOP_1_0= RULE_ARITH_COMPARE_OP ) ) ( (lv_arithTerm2_2_0= ruleArithTerm ) ) )? ) ;
    public final EObject ruleArithBool() throws RecognitionException {
        EObject current = null;

        Token lv_arithCOP_1_0=null;
        EObject lv_arithTerm1_0_0 = null;

        EObject lv_arithTerm2_2_0 = null;


         enterRule(); 
            
        try {
            // InternalProperty.g:852:28: ( ( ( (lv_arithTerm1_0_0= ruleArithTerm ) ) ( ( (lv_arithCOP_1_0= RULE_ARITH_COMPARE_OP ) ) ( (lv_arithTerm2_2_0= ruleArithTerm ) ) )? ) )
            // InternalProperty.g:853:1: ( ( (lv_arithTerm1_0_0= ruleArithTerm ) ) ( ( (lv_arithCOP_1_0= RULE_ARITH_COMPARE_OP ) ) ( (lv_arithTerm2_2_0= ruleArithTerm ) ) )? )
            {
            // InternalProperty.g:853:1: ( ( (lv_arithTerm1_0_0= ruleArithTerm ) ) ( ( (lv_arithCOP_1_0= RULE_ARITH_COMPARE_OP ) ) ( (lv_arithTerm2_2_0= ruleArithTerm ) ) )? )
            // InternalProperty.g:853:2: ( (lv_arithTerm1_0_0= ruleArithTerm ) ) ( ( (lv_arithCOP_1_0= RULE_ARITH_COMPARE_OP ) ) ( (lv_arithTerm2_2_0= ruleArithTerm ) ) )?
            {
            // InternalProperty.g:853:2: ( (lv_arithTerm1_0_0= ruleArithTerm ) )
            // InternalProperty.g:854:1: (lv_arithTerm1_0_0= ruleArithTerm )
            {
            // InternalProperty.g:854:1: (lv_arithTerm1_0_0= ruleArithTerm )
            // InternalProperty.g:855:3: lv_arithTerm1_0_0= ruleArithTerm
            {
             
            	        newCompositeNode(grammarAccess.getArithBoolAccess().getArithTerm1ArithTermParserRuleCall_0_0()); 
            	    
            pushFollow(FOLLOW_20);
            lv_arithTerm1_0_0=ruleArithTerm();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getArithBoolRule());
            	        }
                   		set(
                   			current, 
                   			"arithTerm1",
                    		lv_arithTerm1_0_0, 
                    		"org.correttouml.grammars.Property.ArithTerm");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            // InternalProperty.g:871:2: ( ( (lv_arithCOP_1_0= RULE_ARITH_COMPARE_OP ) ) ( (lv_arithTerm2_2_0= ruleArithTerm ) ) )?
            int alt8=2;
            int LA8_0 = input.LA(1);

            if ( (LA8_0==RULE_ARITH_COMPARE_OP) ) {
                alt8=1;
            }
            switch (alt8) {
                case 1 :
                    // InternalProperty.g:871:3: ( (lv_arithCOP_1_0= RULE_ARITH_COMPARE_OP ) ) ( (lv_arithTerm2_2_0= ruleArithTerm ) )
                    {
                    // InternalProperty.g:871:3: ( (lv_arithCOP_1_0= RULE_ARITH_COMPARE_OP ) )
                    // InternalProperty.g:872:1: (lv_arithCOP_1_0= RULE_ARITH_COMPARE_OP )
                    {
                    // InternalProperty.g:872:1: (lv_arithCOP_1_0= RULE_ARITH_COMPARE_OP )
                    // InternalProperty.g:873:3: lv_arithCOP_1_0= RULE_ARITH_COMPARE_OP
                    {
                    lv_arithCOP_1_0=(Token)match(input,RULE_ARITH_COMPARE_OP,FOLLOW_21); 

                    			newLeafNode(lv_arithCOP_1_0, grammarAccess.getArithBoolAccess().getArithCOPARITH_COMPARE_OPTerminalRuleCall_1_0_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getArithBoolRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"arithCOP",
                            		lv_arithCOP_1_0, 
                            		"org.correttouml.grammars.Property.ARITH_COMPARE_OP");
                    	    

                    }


                    }

                    // InternalProperty.g:889:2: ( (lv_arithTerm2_2_0= ruleArithTerm ) )
                    // InternalProperty.g:890:1: (lv_arithTerm2_2_0= ruleArithTerm )
                    {
                    // InternalProperty.g:890:1: (lv_arithTerm2_2_0= ruleArithTerm )
                    // InternalProperty.g:891:3: lv_arithTerm2_2_0= ruleArithTerm
                    {
                     
                    	        newCompositeNode(grammarAccess.getArithBoolAccess().getArithTerm2ArithTermParserRuleCall_1_1_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_arithTerm2_2_0=ruleArithTerm();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getArithBoolRule());
                    	        }
                           		set(
                           			current, 
                           			"arithTerm2",
                            		lv_arithTerm2_2_0, 
                            		"org.correttouml.grammars.Property.ArithTerm");
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
    // $ANTLR end "ruleArithBool"


    // $ANTLR start "entryRuleArithTerm"
    // InternalProperty.g:915:1: entryRuleArithTerm returns [EObject current=null] : iv_ruleArithTerm= ruleArithTerm EOF ;
    public final EObject entryRuleArithTerm() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleArithTerm = null;


        try {
            // InternalProperty.g:916:2: (iv_ruleArithTerm= ruleArithTerm EOF )
            // InternalProperty.g:917:2: iv_ruleArithTerm= ruleArithTerm EOF
            {
             newCompositeNode(grammarAccess.getArithTermRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleArithTerm=ruleArithTerm();

            state._fsp--;

             current =iv_ruleArithTerm; 
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
    // $ANTLR end "entryRuleArithTerm"


    // $ANTLR start "ruleArithTerm"
    // InternalProperty.g:924:1: ruleArithTerm returns [EObject current=null] : ( ( (lv_arithTermL_0_0= ruleArithTermL ) ) ( (lv_arithTermR_1_0= ruleArithTermR ) )? ) ;
    public final EObject ruleArithTerm() throws RecognitionException {
        EObject current = null;

        EObject lv_arithTermL_0_0 = null;

        EObject lv_arithTermR_1_0 = null;


         enterRule(); 
            
        try {
            // InternalProperty.g:927:28: ( ( ( (lv_arithTermL_0_0= ruleArithTermL ) ) ( (lv_arithTermR_1_0= ruleArithTermR ) )? ) )
            // InternalProperty.g:928:1: ( ( (lv_arithTermL_0_0= ruleArithTermL ) ) ( (lv_arithTermR_1_0= ruleArithTermR ) )? )
            {
            // InternalProperty.g:928:1: ( ( (lv_arithTermL_0_0= ruleArithTermL ) ) ( (lv_arithTermR_1_0= ruleArithTermR ) )? )
            // InternalProperty.g:928:2: ( (lv_arithTermL_0_0= ruleArithTermL ) ) ( (lv_arithTermR_1_0= ruleArithTermR ) )?
            {
            // InternalProperty.g:928:2: ( (lv_arithTermL_0_0= ruleArithTermL ) )
            // InternalProperty.g:929:1: (lv_arithTermL_0_0= ruleArithTermL )
            {
            // InternalProperty.g:929:1: (lv_arithTermL_0_0= ruleArithTermL )
            // InternalProperty.g:930:3: lv_arithTermL_0_0= ruleArithTermL
            {
             
            	        newCompositeNode(grammarAccess.getArithTermAccess().getArithTermLArithTermLParserRuleCall_0_0()); 
            	    
            pushFollow(FOLLOW_22);
            lv_arithTermL_0_0=ruleArithTermL();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getArithTermRule());
            	        }
                   		set(
                   			current, 
                   			"arithTermL",
                    		lv_arithTermL_0_0, 
                    		"org.correttouml.grammars.Property.ArithTermL");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            // InternalProperty.g:946:2: ( (lv_arithTermR_1_0= ruleArithTermR ) )?
            int alt9=2;
            int LA9_0 = input.LA(1);

            if ( (LA9_0==RULE_ARITH_OP) ) {
                alt9=1;
            }
            switch (alt9) {
                case 1 :
                    // InternalProperty.g:947:1: (lv_arithTermR_1_0= ruleArithTermR )
                    {
                    // InternalProperty.g:947:1: (lv_arithTermR_1_0= ruleArithTermR )
                    // InternalProperty.g:948:3: lv_arithTermR_1_0= ruleArithTermR
                    {
                     
                    	        newCompositeNode(grammarAccess.getArithTermAccess().getArithTermRArithTermRParserRuleCall_1_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_arithTermR_1_0=ruleArithTermR();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getArithTermRule());
                    	        }
                           		set(
                           			current, 
                           			"arithTermR",
                            		lv_arithTermR_1_0, 
                            		"org.correttouml.grammars.Property.ArithTermR");
                    	        afterParserOrEnumRuleCall();
                    	    

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
    // $ANTLR end "ruleArithTerm"


    // $ANTLR start "entryRuleArithTermL"
    // InternalProperty.g:972:1: entryRuleArithTermL returns [EObject current=null] : iv_ruleArithTermL= ruleArithTermL EOF ;
    public final EObject entryRuleArithTermL() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleArithTermL = null;


        try {
            // InternalProperty.g:973:2: (iv_ruleArithTermL= ruleArithTermL EOF )
            // InternalProperty.g:974:2: iv_ruleArithTermL= ruleArithTermL EOF
            {
             newCompositeNode(grammarAccess.getArithTermLRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleArithTermL=ruleArithTermL();

            state._fsp--;

             current =iv_ruleArithTermL; 
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
    // $ANTLR end "entryRuleArithTermL"


    // $ANTLR start "ruleArithTermL"
    // InternalProperty.g:981:1: ruleArithTermL returns [EObject current=null] : ( (otherlv_0= '(' ( (lv_trio_1_0= ruleTRIO ) ) otherlv_2= ')' ) | ( (lv_constant_3_0= ruleDataType ) ) | ( (lv_arithVar_4_0= ruleArithVar ) ) | (otherlv_5= 'Futr(' ( (lv_arithTermF_6_0= ruleArithTerm ) ) otherlv_7= ',' ( (lv_intF_8_0= RULE_INT ) ) otherlv_9= ')' ) | (otherlv_10= 'Past(' ( (lv_arithTermP_11_0= ruleArithTerm ) ) otherlv_12= ',' ( (lv_intP_13_0= RULE_INT ) ) otherlv_14= ')' ) ) ;
    public final EObject ruleArithTermL() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token otherlv_2=null;
        Token otherlv_5=null;
        Token otherlv_7=null;
        Token lv_intF_8_0=null;
        Token otherlv_9=null;
        Token otherlv_10=null;
        Token otherlv_12=null;
        Token lv_intP_13_0=null;
        Token otherlv_14=null;
        EObject lv_trio_1_0 = null;

        EObject lv_constant_3_0 = null;

        EObject lv_arithVar_4_0 = null;

        EObject lv_arithTermF_6_0 = null;

        EObject lv_arithTermP_11_0 = null;


         enterRule(); 
            
        try {
            // InternalProperty.g:984:28: ( ( (otherlv_0= '(' ( (lv_trio_1_0= ruleTRIO ) ) otherlv_2= ')' ) | ( (lv_constant_3_0= ruleDataType ) ) | ( (lv_arithVar_4_0= ruleArithVar ) ) | (otherlv_5= 'Futr(' ( (lv_arithTermF_6_0= ruleArithTerm ) ) otherlv_7= ',' ( (lv_intF_8_0= RULE_INT ) ) otherlv_9= ')' ) | (otherlv_10= 'Past(' ( (lv_arithTermP_11_0= ruleArithTerm ) ) otherlv_12= ',' ( (lv_intP_13_0= RULE_INT ) ) otherlv_14= ')' ) ) )
            // InternalProperty.g:985:1: ( (otherlv_0= '(' ( (lv_trio_1_0= ruleTRIO ) ) otherlv_2= ')' ) | ( (lv_constant_3_0= ruleDataType ) ) | ( (lv_arithVar_4_0= ruleArithVar ) ) | (otherlv_5= 'Futr(' ( (lv_arithTermF_6_0= ruleArithTerm ) ) otherlv_7= ',' ( (lv_intF_8_0= RULE_INT ) ) otherlv_9= ')' ) | (otherlv_10= 'Past(' ( (lv_arithTermP_11_0= ruleArithTerm ) ) otherlv_12= ',' ( (lv_intP_13_0= RULE_INT ) ) otherlv_14= ')' ) )
            {
            // InternalProperty.g:985:1: ( (otherlv_0= '(' ( (lv_trio_1_0= ruleTRIO ) ) otherlv_2= ')' ) | ( (lv_constant_3_0= ruleDataType ) ) | ( (lv_arithVar_4_0= ruleArithVar ) ) | (otherlv_5= 'Futr(' ( (lv_arithTermF_6_0= ruleArithTerm ) ) otherlv_7= ',' ( (lv_intF_8_0= RULE_INT ) ) otherlv_9= ')' ) | (otherlv_10= 'Past(' ( (lv_arithTermP_11_0= ruleArithTerm ) ) otherlv_12= ',' ( (lv_intP_13_0= RULE_INT ) ) otherlv_14= ')' ) )
            int alt10=5;
            switch ( input.LA(1) ) {
            case 29:
                {
                alt10=1;
                }
                break;
            case RULE_INT:
                {
                alt10=2;
                }
                break;
            case RULE_ID:
                {
                alt10=3;
                }
                break;
            case 30:
                {
                alt10=4;
                }
                break;
            case 31:
                {
                alt10=5;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 10, 0, input);

                throw nvae;
            }

            switch (alt10) {
                case 1 :
                    // InternalProperty.g:985:2: (otherlv_0= '(' ( (lv_trio_1_0= ruleTRIO ) ) otherlv_2= ')' )
                    {
                    // InternalProperty.g:985:2: (otherlv_0= '(' ( (lv_trio_1_0= ruleTRIO ) ) otherlv_2= ')' )
                    // InternalProperty.g:985:4: otherlv_0= '(' ( (lv_trio_1_0= ruleTRIO ) ) otherlv_2= ')'
                    {
                    otherlv_0=(Token)match(input,29,FOLLOW_5); 

                        	newLeafNode(otherlv_0, grammarAccess.getArithTermLAccess().getLeftParenthesisKeyword_0_0());
                        
                    // InternalProperty.g:989:1: ( (lv_trio_1_0= ruleTRIO ) )
                    // InternalProperty.g:990:1: (lv_trio_1_0= ruleTRIO )
                    {
                    // InternalProperty.g:990:1: (lv_trio_1_0= ruleTRIO )
                    // InternalProperty.g:991:3: lv_trio_1_0= ruleTRIO
                    {
                     
                    	        newCompositeNode(grammarAccess.getArithTermLAccess().getTrioTRIOParserRuleCall_0_1_0()); 
                    	    
                    pushFollow(FOLLOW_6);
                    lv_trio_1_0=ruleTRIO();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getArithTermLRule());
                    	        }
                           		set(
                           			current, 
                           			"trio",
                            		lv_trio_1_0, 
                            		"org.correttouml.grammars.Property.TRIO");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }

                    otherlv_2=(Token)match(input,21,FOLLOW_2); 

                        	newLeafNode(otherlv_2, grammarAccess.getArithTermLAccess().getRightParenthesisKeyword_0_2());
                        

                    }


                    }
                    break;
                case 2 :
                    // InternalProperty.g:1012:6: ( (lv_constant_3_0= ruleDataType ) )
                    {
                    // InternalProperty.g:1012:6: ( (lv_constant_3_0= ruleDataType ) )
                    // InternalProperty.g:1013:1: (lv_constant_3_0= ruleDataType )
                    {
                    // InternalProperty.g:1013:1: (lv_constant_3_0= ruleDataType )
                    // InternalProperty.g:1014:3: lv_constant_3_0= ruleDataType
                    {
                     
                    	        newCompositeNode(grammarAccess.getArithTermLAccess().getConstantDataTypeParserRuleCall_1_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_constant_3_0=ruleDataType();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getArithTermLRule());
                    	        }
                           		set(
                           			current, 
                           			"constant",
                            		lv_constant_3_0, 
                            		"org.correttouml.grammars.Property.DataType");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }
                    break;
                case 3 :
                    // InternalProperty.g:1031:6: ( (lv_arithVar_4_0= ruleArithVar ) )
                    {
                    // InternalProperty.g:1031:6: ( (lv_arithVar_4_0= ruleArithVar ) )
                    // InternalProperty.g:1032:1: (lv_arithVar_4_0= ruleArithVar )
                    {
                    // InternalProperty.g:1032:1: (lv_arithVar_4_0= ruleArithVar )
                    // InternalProperty.g:1033:3: lv_arithVar_4_0= ruleArithVar
                    {
                     
                    	        newCompositeNode(grammarAccess.getArithTermLAccess().getArithVarArithVarParserRuleCall_2_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_arithVar_4_0=ruleArithVar();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getArithTermLRule());
                    	        }
                           		set(
                           			current, 
                           			"arithVar",
                            		lv_arithVar_4_0, 
                            		"org.correttouml.grammars.Property.ArithVar");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }
                    break;
                case 4 :
                    // InternalProperty.g:1050:6: (otherlv_5= 'Futr(' ( (lv_arithTermF_6_0= ruleArithTerm ) ) otherlv_7= ',' ( (lv_intF_8_0= RULE_INT ) ) otherlv_9= ')' )
                    {
                    // InternalProperty.g:1050:6: (otherlv_5= 'Futr(' ( (lv_arithTermF_6_0= ruleArithTerm ) ) otherlv_7= ',' ( (lv_intF_8_0= RULE_INT ) ) otherlv_9= ')' )
                    // InternalProperty.g:1050:8: otherlv_5= 'Futr(' ( (lv_arithTermF_6_0= ruleArithTerm ) ) otherlv_7= ',' ( (lv_intF_8_0= RULE_INT ) ) otherlv_9= ')'
                    {
                    otherlv_5=(Token)match(input,30,FOLLOW_21); 

                        	newLeafNode(otherlv_5, grammarAccess.getArithTermLAccess().getFutrKeyword_3_0());
                        
                    // InternalProperty.g:1054:1: ( (lv_arithTermF_6_0= ruleArithTerm ) )
                    // InternalProperty.g:1055:1: (lv_arithTermF_6_0= ruleArithTerm )
                    {
                    // InternalProperty.g:1055:1: (lv_arithTermF_6_0= ruleArithTerm )
                    // InternalProperty.g:1056:3: lv_arithTermF_6_0= ruleArithTerm
                    {
                     
                    	        newCompositeNode(grammarAccess.getArithTermLAccess().getArithTermFArithTermParserRuleCall_3_1_0()); 
                    	    
                    pushFollow(FOLLOW_10);
                    lv_arithTermF_6_0=ruleArithTerm();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getArithTermLRule());
                    	        }
                           		set(
                           			current, 
                           			"arithTermF",
                            		lv_arithTermF_6_0, 
                            		"org.correttouml.grammars.Property.ArithTerm");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }

                    otherlv_7=(Token)match(input,24,FOLLOW_19); 

                        	newLeafNode(otherlv_7, grammarAccess.getArithTermLAccess().getCommaKeyword_3_2());
                        
                    // InternalProperty.g:1076:1: ( (lv_intF_8_0= RULE_INT ) )
                    // InternalProperty.g:1077:1: (lv_intF_8_0= RULE_INT )
                    {
                    // InternalProperty.g:1077:1: (lv_intF_8_0= RULE_INT )
                    // InternalProperty.g:1078:3: lv_intF_8_0= RULE_INT
                    {
                    lv_intF_8_0=(Token)match(input,RULE_INT,FOLLOW_6); 

                    			newLeafNode(lv_intF_8_0, grammarAccess.getArithTermLAccess().getIntFINTTerminalRuleCall_3_3_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getArithTermLRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"intF",
                            		lv_intF_8_0, 
                            		"org.eclipse.xtext.common.Terminals.INT");
                    	    

                    }


                    }

                    otherlv_9=(Token)match(input,21,FOLLOW_2); 

                        	newLeafNode(otherlv_9, grammarAccess.getArithTermLAccess().getRightParenthesisKeyword_3_4());
                        

                    }


                    }
                    break;
                case 5 :
                    // InternalProperty.g:1099:6: (otherlv_10= 'Past(' ( (lv_arithTermP_11_0= ruleArithTerm ) ) otherlv_12= ',' ( (lv_intP_13_0= RULE_INT ) ) otherlv_14= ')' )
                    {
                    // InternalProperty.g:1099:6: (otherlv_10= 'Past(' ( (lv_arithTermP_11_0= ruleArithTerm ) ) otherlv_12= ',' ( (lv_intP_13_0= RULE_INT ) ) otherlv_14= ')' )
                    // InternalProperty.g:1099:8: otherlv_10= 'Past(' ( (lv_arithTermP_11_0= ruleArithTerm ) ) otherlv_12= ',' ( (lv_intP_13_0= RULE_INT ) ) otherlv_14= ')'
                    {
                    otherlv_10=(Token)match(input,31,FOLLOW_21); 

                        	newLeafNode(otherlv_10, grammarAccess.getArithTermLAccess().getPastKeyword_4_0());
                        
                    // InternalProperty.g:1103:1: ( (lv_arithTermP_11_0= ruleArithTerm ) )
                    // InternalProperty.g:1104:1: (lv_arithTermP_11_0= ruleArithTerm )
                    {
                    // InternalProperty.g:1104:1: (lv_arithTermP_11_0= ruleArithTerm )
                    // InternalProperty.g:1105:3: lv_arithTermP_11_0= ruleArithTerm
                    {
                     
                    	        newCompositeNode(grammarAccess.getArithTermLAccess().getArithTermPArithTermParserRuleCall_4_1_0()); 
                    	    
                    pushFollow(FOLLOW_10);
                    lv_arithTermP_11_0=ruleArithTerm();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getArithTermLRule());
                    	        }
                           		set(
                           			current, 
                           			"arithTermP",
                            		lv_arithTermP_11_0, 
                            		"org.correttouml.grammars.Property.ArithTerm");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }

                    otherlv_12=(Token)match(input,24,FOLLOW_19); 

                        	newLeafNode(otherlv_12, grammarAccess.getArithTermLAccess().getCommaKeyword_4_2());
                        
                    // InternalProperty.g:1125:1: ( (lv_intP_13_0= RULE_INT ) )
                    // InternalProperty.g:1126:1: (lv_intP_13_0= RULE_INT )
                    {
                    // InternalProperty.g:1126:1: (lv_intP_13_0= RULE_INT )
                    // InternalProperty.g:1127:3: lv_intP_13_0= RULE_INT
                    {
                    lv_intP_13_0=(Token)match(input,RULE_INT,FOLLOW_6); 

                    			newLeafNode(lv_intP_13_0, grammarAccess.getArithTermLAccess().getIntPINTTerminalRuleCall_4_3_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getArithTermLRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"intP",
                            		lv_intP_13_0, 
                            		"org.eclipse.xtext.common.Terminals.INT");
                    	    

                    }


                    }

                    otherlv_14=(Token)match(input,21,FOLLOW_2); 

                        	newLeafNode(otherlv_14, grammarAccess.getArithTermLAccess().getRightParenthesisKeyword_4_4());
                        

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
    // $ANTLR end "ruleArithTermL"


    // $ANTLR start "entryRuleArithTermR"
    // InternalProperty.g:1155:1: entryRuleArithTermR returns [EObject current=null] : iv_ruleArithTermR= ruleArithTermR EOF ;
    public final EObject entryRuleArithTermR() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleArithTermR = null;


        try {
            // InternalProperty.g:1156:2: (iv_ruleArithTermR= ruleArithTermR EOF )
            // InternalProperty.g:1157:2: iv_ruleArithTermR= ruleArithTermR EOF
            {
             newCompositeNode(grammarAccess.getArithTermRRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleArithTermR=ruleArithTermR();

            state._fsp--;

             current =iv_ruleArithTermR; 
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
    // $ANTLR end "entryRuleArithTermR"


    // $ANTLR start "ruleArithTermR"
    // InternalProperty.g:1164:1: ruleArithTermR returns [EObject current=null] : ( ( (lv_arithOP_0_0= RULE_ARITH_OP ) ) ( (lv_arithTerm_1_0= ruleArithTerm ) ) ) ;
    public final EObject ruleArithTermR() throws RecognitionException {
        EObject current = null;

        Token lv_arithOP_0_0=null;
        EObject lv_arithTerm_1_0 = null;


         enterRule(); 
            
        try {
            // InternalProperty.g:1167:28: ( ( ( (lv_arithOP_0_0= RULE_ARITH_OP ) ) ( (lv_arithTerm_1_0= ruleArithTerm ) ) ) )
            // InternalProperty.g:1168:1: ( ( (lv_arithOP_0_0= RULE_ARITH_OP ) ) ( (lv_arithTerm_1_0= ruleArithTerm ) ) )
            {
            // InternalProperty.g:1168:1: ( ( (lv_arithOP_0_0= RULE_ARITH_OP ) ) ( (lv_arithTerm_1_0= ruleArithTerm ) ) )
            // InternalProperty.g:1168:2: ( (lv_arithOP_0_0= RULE_ARITH_OP ) ) ( (lv_arithTerm_1_0= ruleArithTerm ) )
            {
            // InternalProperty.g:1168:2: ( (lv_arithOP_0_0= RULE_ARITH_OP ) )
            // InternalProperty.g:1169:1: (lv_arithOP_0_0= RULE_ARITH_OP )
            {
            // InternalProperty.g:1169:1: (lv_arithOP_0_0= RULE_ARITH_OP )
            // InternalProperty.g:1170:3: lv_arithOP_0_0= RULE_ARITH_OP
            {
            lv_arithOP_0_0=(Token)match(input,RULE_ARITH_OP,FOLLOW_21); 

            			newLeafNode(lv_arithOP_0_0, grammarAccess.getArithTermRAccess().getArithOPARITH_OPTerminalRuleCall_0_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getArithTermRRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"arithOP",
                    		lv_arithOP_0_0, 
                    		"org.correttouml.grammars.Property.ARITH_OP");
            	    

            }


            }

            // InternalProperty.g:1186:2: ( (lv_arithTerm_1_0= ruleArithTerm ) )
            // InternalProperty.g:1187:1: (lv_arithTerm_1_0= ruleArithTerm )
            {
            // InternalProperty.g:1187:1: (lv_arithTerm_1_0= ruleArithTerm )
            // InternalProperty.g:1188:3: lv_arithTerm_1_0= ruleArithTerm
            {
             
            	        newCompositeNode(grammarAccess.getArithTermRAccess().getArithTermArithTermParserRuleCall_1_0()); 
            	    
            pushFollow(FOLLOW_2);
            lv_arithTerm_1_0=ruleArithTerm();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getArithTermRRule());
            	        }
                   		set(
                   			current, 
                   			"arithTerm",
                    		lv_arithTerm_1_0, 
                    		"org.correttouml.grammars.Property.ArithTerm");
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
    // $ANTLR end "ruleArithTermR"


    // $ANTLR start "entryRuleArithVar"
    // InternalProperty.g:1212:1: entryRuleArithVar returns [EObject current=null] : iv_ruleArithVar= ruleArithVar EOF ;
    public final EObject entryRuleArithVar() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleArithVar = null;


        try {
            // InternalProperty.g:1213:2: (iv_ruleArithVar= ruleArithVar EOF )
            // InternalProperty.g:1214:2: iv_ruleArithVar= ruleArithVar EOF
            {
             newCompositeNode(grammarAccess.getArithVarRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleArithVar=ruleArithVar();

            state._fsp--;

             current =iv_ruleArithVar; 
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
    // $ANTLR end "entryRuleArithVar"


    // $ANTLR start "ruleArithVar"
    // InternalProperty.g:1221:1: ruleArithVar returns [EObject current=null] : ( ( ( (lv_obj_0_0= RULE_ID ) ) otherlv_1= '.' ( (lv_atr_2_0= RULE_ID ) ) ) | ( ( (lv_obj_3_0= RULE_ID ) ) otherlv_4= '::' ( (lv_op_5_0= RULE_ID ) ) otherlv_6= '.' ( (lv_param_7_0= RULE_ID ) ) ) | ( ( (lv_sd_8_0= RULE_ID ) ) otherlv_9= '.getParameter(' ( (lv_param_10_0= RULE_ID ) ) otherlv_11= ')' ) ) ;
    public final EObject ruleArithVar() throws RecognitionException {
        EObject current = null;

        Token lv_obj_0_0=null;
        Token otherlv_1=null;
        Token lv_atr_2_0=null;
        Token lv_obj_3_0=null;
        Token otherlv_4=null;
        Token lv_op_5_0=null;
        Token otherlv_6=null;
        Token lv_param_7_0=null;
        Token lv_sd_8_0=null;
        Token otherlv_9=null;
        Token lv_param_10_0=null;
        Token otherlv_11=null;

         enterRule(); 
            
        try {
            // InternalProperty.g:1224:28: ( ( ( ( (lv_obj_0_0= RULE_ID ) ) otherlv_1= '.' ( (lv_atr_2_0= RULE_ID ) ) ) | ( ( (lv_obj_3_0= RULE_ID ) ) otherlv_4= '::' ( (lv_op_5_0= RULE_ID ) ) otherlv_6= '.' ( (lv_param_7_0= RULE_ID ) ) ) | ( ( (lv_sd_8_0= RULE_ID ) ) otherlv_9= '.getParameter(' ( (lv_param_10_0= RULE_ID ) ) otherlv_11= ')' ) ) )
            // InternalProperty.g:1225:1: ( ( ( (lv_obj_0_0= RULE_ID ) ) otherlv_1= '.' ( (lv_atr_2_0= RULE_ID ) ) ) | ( ( (lv_obj_3_0= RULE_ID ) ) otherlv_4= '::' ( (lv_op_5_0= RULE_ID ) ) otherlv_6= '.' ( (lv_param_7_0= RULE_ID ) ) ) | ( ( (lv_sd_8_0= RULE_ID ) ) otherlv_9= '.getParameter(' ( (lv_param_10_0= RULE_ID ) ) otherlv_11= ')' ) )
            {
            // InternalProperty.g:1225:1: ( ( ( (lv_obj_0_0= RULE_ID ) ) otherlv_1= '.' ( (lv_atr_2_0= RULE_ID ) ) ) | ( ( (lv_obj_3_0= RULE_ID ) ) otherlv_4= '::' ( (lv_op_5_0= RULE_ID ) ) otherlv_6= '.' ( (lv_param_7_0= RULE_ID ) ) ) | ( ( (lv_sd_8_0= RULE_ID ) ) otherlv_9= '.getParameter(' ( (lv_param_10_0= RULE_ID ) ) otherlv_11= ')' ) )
            int alt11=3;
            int LA11_0 = input.LA(1);

            if ( (LA11_0==RULE_ID) ) {
                switch ( input.LA(2) ) {
                case 32:
                    {
                    alt11=1;
                    }
                    break;
                case 33:
                    {
                    alt11=2;
                    }
                    break;
                case 34:
                    {
                    alt11=3;
                    }
                    break;
                default:
                    NoViableAltException nvae =
                        new NoViableAltException("", 11, 1, input);

                    throw nvae;
                }

            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 11, 0, input);

                throw nvae;
            }
            switch (alt11) {
                case 1 :
                    // InternalProperty.g:1225:2: ( ( (lv_obj_0_0= RULE_ID ) ) otherlv_1= '.' ( (lv_atr_2_0= RULE_ID ) ) )
                    {
                    // InternalProperty.g:1225:2: ( ( (lv_obj_0_0= RULE_ID ) ) otherlv_1= '.' ( (lv_atr_2_0= RULE_ID ) ) )
                    // InternalProperty.g:1225:3: ( (lv_obj_0_0= RULE_ID ) ) otherlv_1= '.' ( (lv_atr_2_0= RULE_ID ) )
                    {
                    // InternalProperty.g:1225:3: ( (lv_obj_0_0= RULE_ID ) )
                    // InternalProperty.g:1226:1: (lv_obj_0_0= RULE_ID )
                    {
                    // InternalProperty.g:1226:1: (lv_obj_0_0= RULE_ID )
                    // InternalProperty.g:1227:3: lv_obj_0_0= RULE_ID
                    {
                    lv_obj_0_0=(Token)match(input,RULE_ID,FOLLOW_23); 

                    			newLeafNode(lv_obj_0_0, grammarAccess.getArithVarAccess().getObjIDTerminalRuleCall_0_0_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getArithVarRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"obj",
                            		lv_obj_0_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }

                    otherlv_1=(Token)match(input,32,FOLLOW_8); 

                        	newLeafNode(otherlv_1, grammarAccess.getArithVarAccess().getFullStopKeyword_0_1());
                        
                    // InternalProperty.g:1247:1: ( (lv_atr_2_0= RULE_ID ) )
                    // InternalProperty.g:1248:1: (lv_atr_2_0= RULE_ID )
                    {
                    // InternalProperty.g:1248:1: (lv_atr_2_0= RULE_ID )
                    // InternalProperty.g:1249:3: lv_atr_2_0= RULE_ID
                    {
                    lv_atr_2_0=(Token)match(input,RULE_ID,FOLLOW_2); 

                    			newLeafNode(lv_atr_2_0, grammarAccess.getArithVarAccess().getAtrIDTerminalRuleCall_0_2_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getArithVarRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"atr",
                            		lv_atr_2_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }


                    }


                    }
                    break;
                case 2 :
                    // InternalProperty.g:1266:6: ( ( (lv_obj_3_0= RULE_ID ) ) otherlv_4= '::' ( (lv_op_5_0= RULE_ID ) ) otherlv_6= '.' ( (lv_param_7_0= RULE_ID ) ) )
                    {
                    // InternalProperty.g:1266:6: ( ( (lv_obj_3_0= RULE_ID ) ) otherlv_4= '::' ( (lv_op_5_0= RULE_ID ) ) otherlv_6= '.' ( (lv_param_7_0= RULE_ID ) ) )
                    // InternalProperty.g:1266:7: ( (lv_obj_3_0= RULE_ID ) ) otherlv_4= '::' ( (lv_op_5_0= RULE_ID ) ) otherlv_6= '.' ( (lv_param_7_0= RULE_ID ) )
                    {
                    // InternalProperty.g:1266:7: ( (lv_obj_3_0= RULE_ID ) )
                    // InternalProperty.g:1267:1: (lv_obj_3_0= RULE_ID )
                    {
                    // InternalProperty.g:1267:1: (lv_obj_3_0= RULE_ID )
                    // InternalProperty.g:1268:3: lv_obj_3_0= RULE_ID
                    {
                    lv_obj_3_0=(Token)match(input,RULE_ID,FOLLOW_24); 

                    			newLeafNode(lv_obj_3_0, grammarAccess.getArithVarAccess().getObjIDTerminalRuleCall_1_0_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getArithVarRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"obj",
                            		lv_obj_3_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }

                    otherlv_4=(Token)match(input,33,FOLLOW_8); 

                        	newLeafNode(otherlv_4, grammarAccess.getArithVarAccess().getColonColonKeyword_1_1());
                        
                    // InternalProperty.g:1288:1: ( (lv_op_5_0= RULE_ID ) )
                    // InternalProperty.g:1289:1: (lv_op_5_0= RULE_ID )
                    {
                    // InternalProperty.g:1289:1: (lv_op_5_0= RULE_ID )
                    // InternalProperty.g:1290:3: lv_op_5_0= RULE_ID
                    {
                    lv_op_5_0=(Token)match(input,RULE_ID,FOLLOW_23); 

                    			newLeafNode(lv_op_5_0, grammarAccess.getArithVarAccess().getOpIDTerminalRuleCall_1_2_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getArithVarRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"op",
                            		lv_op_5_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }

                    otherlv_6=(Token)match(input,32,FOLLOW_8); 

                        	newLeafNode(otherlv_6, grammarAccess.getArithVarAccess().getFullStopKeyword_1_3());
                        
                    // InternalProperty.g:1310:1: ( (lv_param_7_0= RULE_ID ) )
                    // InternalProperty.g:1311:1: (lv_param_7_0= RULE_ID )
                    {
                    // InternalProperty.g:1311:1: (lv_param_7_0= RULE_ID )
                    // InternalProperty.g:1312:3: lv_param_7_0= RULE_ID
                    {
                    lv_param_7_0=(Token)match(input,RULE_ID,FOLLOW_2); 

                    			newLeafNode(lv_param_7_0, grammarAccess.getArithVarAccess().getParamIDTerminalRuleCall_1_4_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getArithVarRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"param",
                            		lv_param_7_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }


                    }


                    }
                    break;
                case 3 :
                    // InternalProperty.g:1329:6: ( ( (lv_sd_8_0= RULE_ID ) ) otherlv_9= '.getParameter(' ( (lv_param_10_0= RULE_ID ) ) otherlv_11= ')' )
                    {
                    // InternalProperty.g:1329:6: ( ( (lv_sd_8_0= RULE_ID ) ) otherlv_9= '.getParameter(' ( (lv_param_10_0= RULE_ID ) ) otherlv_11= ')' )
                    // InternalProperty.g:1329:7: ( (lv_sd_8_0= RULE_ID ) ) otherlv_9= '.getParameter(' ( (lv_param_10_0= RULE_ID ) ) otherlv_11= ')'
                    {
                    // InternalProperty.g:1329:7: ( (lv_sd_8_0= RULE_ID ) )
                    // InternalProperty.g:1330:1: (lv_sd_8_0= RULE_ID )
                    {
                    // InternalProperty.g:1330:1: (lv_sd_8_0= RULE_ID )
                    // InternalProperty.g:1331:3: lv_sd_8_0= RULE_ID
                    {
                    lv_sd_8_0=(Token)match(input,RULE_ID,FOLLOW_25); 

                    			newLeafNode(lv_sd_8_0, grammarAccess.getArithVarAccess().getSdIDTerminalRuleCall_2_0_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getArithVarRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"sd",
                            		lv_sd_8_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }

                    otherlv_9=(Token)match(input,34,FOLLOW_8); 

                        	newLeafNode(otherlv_9, grammarAccess.getArithVarAccess().getGetParameterKeyword_2_1());
                        
                    // InternalProperty.g:1351:1: ( (lv_param_10_0= RULE_ID ) )
                    // InternalProperty.g:1352:1: (lv_param_10_0= RULE_ID )
                    {
                    // InternalProperty.g:1352:1: (lv_param_10_0= RULE_ID )
                    // InternalProperty.g:1353:3: lv_param_10_0= RULE_ID
                    {
                    lv_param_10_0=(Token)match(input,RULE_ID,FOLLOW_6); 

                    			newLeafNode(lv_param_10_0, grammarAccess.getArithVarAccess().getParamIDTerminalRuleCall_2_2_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getArithVarRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"param",
                            		lv_param_10_0, 
                            		"org.eclipse.xtext.common.Terminals.ID");
                    	    

                    }


                    }

                    otherlv_11=(Token)match(input,21,FOLLOW_2); 

                        	newLeafNode(otherlv_11, grammarAccess.getArithVarAccess().getRightParenthesisKeyword_2_3());
                        

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
    // $ANTLR end "ruleArithVar"


    // $ANTLR start "entryRuleDataType"
    // InternalProperty.g:1381:1: entryRuleDataType returns [EObject current=null] : iv_ruleDataType= ruleDataType EOF ;
    public final EObject entryRuleDataType() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleDataType = null;


        try {
            // InternalProperty.g:1382:2: (iv_ruleDataType= ruleDataType EOF )
            // InternalProperty.g:1383:2: iv_ruleDataType= ruleDataType EOF
            {
             newCompositeNode(grammarAccess.getDataTypeRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleDataType=ruleDataType();

            state._fsp--;

             current =iv_ruleDataType; 
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
    // $ANTLR end "entryRuleDataType"


    // $ANTLR start "ruleDataType"
    // InternalProperty.g:1390:1: ruleDataType returns [EObject current=null] : ( ( (lv_i_0_0= RULE_INT ) ) ( (lv_float_1_0= RULE_FLOAT ) )? ) ;
    public final EObject ruleDataType() throws RecognitionException {
        EObject current = null;

        Token lv_i_0_0=null;
        Token lv_float_1_0=null;

         enterRule(); 
            
        try {
            // InternalProperty.g:1393:28: ( ( ( (lv_i_0_0= RULE_INT ) ) ( (lv_float_1_0= RULE_FLOAT ) )? ) )
            // InternalProperty.g:1394:1: ( ( (lv_i_0_0= RULE_INT ) ) ( (lv_float_1_0= RULE_FLOAT ) )? )
            {
            // InternalProperty.g:1394:1: ( ( (lv_i_0_0= RULE_INT ) ) ( (lv_float_1_0= RULE_FLOAT ) )? )
            // InternalProperty.g:1394:2: ( (lv_i_0_0= RULE_INT ) ) ( (lv_float_1_0= RULE_FLOAT ) )?
            {
            // InternalProperty.g:1394:2: ( (lv_i_0_0= RULE_INT ) )
            // InternalProperty.g:1395:1: (lv_i_0_0= RULE_INT )
            {
            // InternalProperty.g:1395:1: (lv_i_0_0= RULE_INT )
            // InternalProperty.g:1396:3: lv_i_0_0= RULE_INT
            {
            lv_i_0_0=(Token)match(input,RULE_INT,FOLLOW_26); 

            			newLeafNode(lv_i_0_0, grammarAccess.getDataTypeAccess().getIINTTerminalRuleCall_0_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getDataTypeRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"i",
                    		lv_i_0_0, 
                    		"org.eclipse.xtext.common.Terminals.INT");
            	    

            }


            }

            // InternalProperty.g:1412:2: ( (lv_float_1_0= RULE_FLOAT ) )?
            int alt12=2;
            int LA12_0 = input.LA(1);

            if ( (LA12_0==RULE_FLOAT) ) {
                alt12=1;
            }
            switch (alt12) {
                case 1 :
                    // InternalProperty.g:1413:1: (lv_float_1_0= RULE_FLOAT )
                    {
                    // InternalProperty.g:1413:1: (lv_float_1_0= RULE_FLOAT )
                    // InternalProperty.g:1414:3: lv_float_1_0= RULE_FLOAT
                    {
                    lv_float_1_0=(Token)match(input,RULE_FLOAT,FOLLOW_2); 

                    			newLeafNode(lv_float_1_0, grammarAccess.getDataTypeAccess().getFloatFLOATTerminalRuleCall_1_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getDataTypeRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"float",
                            		lv_float_1_0, 
                            		"org.correttouml.grammars.Property.FLOAT");
                    	    

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
    // $ANTLR end "ruleDataType"

    // Delegated rules


 

    public static final BitSet FOLLOW_1 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_2 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_3 = new BitSet(new long[]{0x0000000000080020L});
    public static final BitSet FOLLOW_4 = new BitSet(new long[]{0x0000000000100010L});
    public static final BitSet FOLLOW_5 = new BitSet(new long[]{0x00000000F8000220L});
    public static final BitSet FOLLOW_6 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_7 = new BitSet(new long[]{0x0000000000400000L});
    public static final BitSet FOLLOW_8 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_9 = new BitSet(new long[]{0x0000000000800000L});
    public static final BitSet FOLLOW_10 = new BitSet(new long[]{0x0000000001000000L});
    public static final BitSet FOLLOW_11 = new BitSet(new long[]{0x0000000002000000L});
    public static final BitSet FOLLOW_12 = new BitSet(new long[]{0x0000000000000402L});
    public static final BitSet FOLLOW_13 = new BitSet(new long[]{0x0000000000000022L});
    public static final BitSet FOLLOW_14 = new BitSet(new long[]{0x0000000004000000L});
    public static final BitSet FOLLOW_15 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_16 = new BitSet(new long[]{0x0000000020000000L});
    public static final BitSet FOLLOW_17 = new BitSet(new long[]{0x0000000000000080L});
    public static final BitSet FOLLOW_18 = new BitSet(new long[]{0x0000000000000100L});
    public static final BitSet FOLLOW_19 = new BitSet(new long[]{0x0000000000000200L});
    public static final BitSet FOLLOW_20 = new BitSet(new long[]{0x0000000000000802L});
    public static final BitSet FOLLOW_21 = new BitSet(new long[]{0x00000000E0000220L});
    public static final BitSet FOLLOW_22 = new BitSet(new long[]{0x0000000000001002L});
    public static final BitSet FOLLOW_23 = new BitSet(new long[]{0x0000000100000000L});
    public static final BitSet FOLLOW_24 = new BitSet(new long[]{0x0000000200000000L});
    public static final BitSet FOLLOW_25 = new BitSet(new long[]{0x0000000400000000L});
    public static final BitSet FOLLOW_26 = new BitSet(new long[]{0x0000000000002002L});

}