package org.correttouml.grammars.ui.contentassist.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.DFA;
import org.correttouml.grammars.services.PropertyGrammarAccess;



import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class InternalPropertyParser extends AbstractInternalContentAssistParser {
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
     	
        public void setGrammarAccess(PropertyGrammarAccess grammarAccess) {
        	this.grammarAccess = grammarAccess;
        }
        
        @Override
        protected Grammar getGrammar() {
        	return grammarAccess.getGrammar();
        }
        
        @Override
        protected String getValueForTokenName(String tokenName) {
        	return tokenName;
        }




    // $ANTLR start "entryRuleModel"
    // InternalProperty.g:60:1: entryRuleModel : ruleModel EOF ;
    public final void entryRuleModel() throws RecognitionException {
        try {
            // InternalProperty.g:61:1: ( ruleModel EOF )
            // InternalProperty.g:62:1: ruleModel EOF
            {
             before(grammarAccess.getModelRule()); 
            pushFollow(FOLLOW_1);
            ruleModel();

            state._fsp--;

             after(grammarAccess.getModelRule()); 
            match(input,EOF,FOLLOW_2); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleModel"


    // $ANTLR start "ruleModel"
    // InternalProperty.g:69:1: ruleModel : ( ( rule__Model__Group__0 ) ) ;
    public final void ruleModel() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:73:2: ( ( ( rule__Model__Group__0 ) ) )
            // InternalProperty.g:74:1: ( ( rule__Model__Group__0 ) )
            {
            // InternalProperty.g:74:1: ( ( rule__Model__Group__0 ) )
            // InternalProperty.g:75:1: ( rule__Model__Group__0 )
            {
             before(grammarAccess.getModelAccess().getGroup()); 
            // InternalProperty.g:76:1: ( rule__Model__Group__0 )
            // InternalProperty.g:76:2: rule__Model__Group__0
            {
            pushFollow(FOLLOW_2);
            rule__Model__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getModelAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleModel"


    // $ANTLR start "entryRuleCorretto"
    // InternalProperty.g:88:1: entryRuleCorretto : ruleCorretto EOF ;
    public final void entryRuleCorretto() throws RecognitionException {
        try {
            // InternalProperty.g:89:1: ( ruleCorretto EOF )
            // InternalProperty.g:90:1: ruleCorretto EOF
            {
             before(grammarAccess.getCorrettoRule()); 
            pushFollow(FOLLOW_1);
            ruleCorretto();

            state._fsp--;

             after(grammarAccess.getCorrettoRule()); 
            match(input,EOF,FOLLOW_2); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleCorretto"


    // $ANTLR start "ruleCorretto"
    // InternalProperty.g:97:1: ruleCorretto : ( ( rule__Corretto__Group__0 ) ) ;
    public final void ruleCorretto() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:101:2: ( ( ( rule__Corretto__Group__0 ) ) )
            // InternalProperty.g:102:1: ( ( rule__Corretto__Group__0 ) )
            {
            // InternalProperty.g:102:1: ( ( rule__Corretto__Group__0 ) )
            // InternalProperty.g:103:1: ( rule__Corretto__Group__0 )
            {
             before(grammarAccess.getCorrettoAccess().getGroup()); 
            // InternalProperty.g:104:1: ( rule__Corretto__Group__0 )
            // InternalProperty.g:104:2: rule__Corretto__Group__0
            {
            pushFollow(FOLLOW_2);
            rule__Corretto__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getCorrettoAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleCorretto"


    // $ANTLR start "entryRuleVerify"
    // InternalProperty.g:116:1: entryRuleVerify : ruleVerify EOF ;
    public final void entryRuleVerify() throws RecognitionException {
        try {
            // InternalProperty.g:117:1: ( ruleVerify EOF )
            // InternalProperty.g:118:1: ruleVerify EOF
            {
             before(grammarAccess.getVerifyRule()); 
            pushFollow(FOLLOW_1);
            ruleVerify();

            state._fsp--;

             after(grammarAccess.getVerifyRule()); 
            match(input,EOF,FOLLOW_2); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleVerify"


    // $ANTLR start "ruleVerify"
    // InternalProperty.g:125:1: ruleVerify : ( ( rule__Verify__Group__0 ) ) ;
    public final void ruleVerify() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:129:2: ( ( ( rule__Verify__Group__0 ) ) )
            // InternalProperty.g:130:1: ( ( rule__Verify__Group__0 ) )
            {
            // InternalProperty.g:130:1: ( ( rule__Verify__Group__0 ) )
            // InternalProperty.g:131:1: ( rule__Verify__Group__0 )
            {
             before(grammarAccess.getVerifyAccess().getGroup()); 
            // InternalProperty.g:132:1: ( rule__Verify__Group__0 )
            // InternalProperty.g:132:2: rule__Verify__Group__0
            {
            pushFollow(FOLLOW_2);
            rule__Verify__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getVerifyAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleVerify"


    // $ANTLR start "entryRuleDeclaration"
    // InternalProperty.g:144:1: entryRuleDeclaration : ruleDeclaration EOF ;
    public final void entryRuleDeclaration() throws RecognitionException {
        try {
            // InternalProperty.g:145:1: ( ruleDeclaration EOF )
            // InternalProperty.g:146:1: ruleDeclaration EOF
            {
             before(grammarAccess.getDeclarationRule()); 
            pushFollow(FOLLOW_1);
            ruleDeclaration();

            state._fsp--;

             after(grammarAccess.getDeclarationRule()); 
            match(input,EOF,FOLLOW_2); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleDeclaration"


    // $ANTLR start "ruleDeclaration"
    // InternalProperty.g:153:1: ruleDeclaration : ( ( rule__Declaration__Alternatives ) ) ;
    public final void ruleDeclaration() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:157:2: ( ( ( rule__Declaration__Alternatives ) ) )
            // InternalProperty.g:158:1: ( ( rule__Declaration__Alternatives ) )
            {
            // InternalProperty.g:158:1: ( ( rule__Declaration__Alternatives ) )
            // InternalProperty.g:159:1: ( rule__Declaration__Alternatives )
            {
             before(grammarAccess.getDeclarationAccess().getAlternatives()); 
            // InternalProperty.g:160:1: ( rule__Declaration__Alternatives )
            // InternalProperty.g:160:2: rule__Declaration__Alternatives
            {
            pushFollow(FOLLOW_2);
            rule__Declaration__Alternatives();

            state._fsp--;


            }

             after(grammarAccess.getDeclarationAccess().getAlternatives()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleDeclaration"


    // $ANTLR start "entryRuleTRIO"
    // InternalProperty.g:172:1: entryRuleTRIO : ruleTRIO EOF ;
    public final void entryRuleTRIO() throws RecognitionException {
        try {
            // InternalProperty.g:173:1: ( ruleTRIO EOF )
            // InternalProperty.g:174:1: ruleTRIO EOF
            {
             before(grammarAccess.getTRIORule()); 
            pushFollow(FOLLOW_1);
            ruleTRIO();

            state._fsp--;

             after(grammarAccess.getTRIORule()); 
            match(input,EOF,FOLLOW_2); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleTRIO"


    // $ANTLR start "ruleTRIO"
    // InternalProperty.g:181:1: ruleTRIO : ( ( rule__TRIO__Group__0 ) ) ;
    public final void ruleTRIO() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:185:2: ( ( ( rule__TRIO__Group__0 ) ) )
            // InternalProperty.g:186:1: ( ( rule__TRIO__Group__0 ) )
            {
            // InternalProperty.g:186:1: ( ( rule__TRIO__Group__0 ) )
            // InternalProperty.g:187:1: ( rule__TRIO__Group__0 )
            {
             before(grammarAccess.getTRIOAccess().getGroup()); 
            // InternalProperty.g:188:1: ( rule__TRIO__Group__0 )
            // InternalProperty.g:188:2: rule__TRIO__Group__0
            {
            pushFollow(FOLLOW_2);
            rule__TRIO__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getTRIOAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleTRIO"


    // $ANTLR start "entryRuleTRIOL"
    // InternalProperty.g:200:1: entryRuleTRIOL : ruleTRIOL EOF ;
    public final void entryRuleTRIOL() throws RecognitionException {
        try {
            // InternalProperty.g:201:1: ( ruleTRIOL EOF )
            // InternalProperty.g:202:1: ruleTRIOL EOF
            {
             before(grammarAccess.getTRIOLRule()); 
            pushFollow(FOLLOW_1);
            ruleTRIOL();

            state._fsp--;

             after(grammarAccess.getTRIOLRule()); 
            match(input,EOF,FOLLOW_2); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleTRIOL"


    // $ANTLR start "ruleTRIOL"
    // InternalProperty.g:209:1: ruleTRIOL : ( ( rule__TRIOL__Alternatives ) ) ;
    public final void ruleTRIOL() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:213:2: ( ( ( rule__TRIOL__Alternatives ) ) )
            // InternalProperty.g:214:1: ( ( rule__TRIOL__Alternatives ) )
            {
            // InternalProperty.g:214:1: ( ( rule__TRIOL__Alternatives ) )
            // InternalProperty.g:215:1: ( rule__TRIOL__Alternatives )
            {
             before(grammarAccess.getTRIOLAccess().getAlternatives()); 
            // InternalProperty.g:216:1: ( rule__TRIOL__Alternatives )
            // InternalProperty.g:216:2: rule__TRIOL__Alternatives
            {
            pushFollow(FOLLOW_2);
            rule__TRIOL__Alternatives();

            state._fsp--;


            }

             after(grammarAccess.getTRIOLAccess().getAlternatives()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleTRIOL"


    // $ANTLR start "entryRuleTRIOR"
    // InternalProperty.g:228:1: entryRuleTRIOR : ruleTRIOR EOF ;
    public final void entryRuleTRIOR() throws RecognitionException {
        try {
            // InternalProperty.g:229:1: ( ruleTRIOR EOF )
            // InternalProperty.g:230:1: ruleTRIOR EOF
            {
             before(grammarAccess.getTRIORRule()); 
            pushFollow(FOLLOW_1);
            ruleTRIOR();

            state._fsp--;

             after(grammarAccess.getTRIORRule()); 
            match(input,EOF,FOLLOW_2); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleTRIOR"


    // $ANTLR start "ruleTRIOR"
    // InternalProperty.g:237:1: ruleTRIOR : ( ( rule__TRIOR__Group__0 ) ) ;
    public final void ruleTRIOR() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:241:2: ( ( ( rule__TRIOR__Group__0 ) ) )
            // InternalProperty.g:242:1: ( ( rule__TRIOR__Group__0 ) )
            {
            // InternalProperty.g:242:1: ( ( rule__TRIOR__Group__0 ) )
            // InternalProperty.g:243:1: ( rule__TRIOR__Group__0 )
            {
             before(grammarAccess.getTRIORAccess().getGroup()); 
            // InternalProperty.g:244:1: ( rule__TRIOR__Group__0 )
            // InternalProperty.g:244:2: rule__TRIOR__Group__0
            {
            pushFollow(FOLLOW_2);
            rule__TRIOR__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getTRIORAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleTRIOR"


    // $ANTLR start "entryRuleArithBool"
    // InternalProperty.g:256:1: entryRuleArithBool : ruleArithBool EOF ;
    public final void entryRuleArithBool() throws RecognitionException {
        try {
            // InternalProperty.g:257:1: ( ruleArithBool EOF )
            // InternalProperty.g:258:1: ruleArithBool EOF
            {
             before(grammarAccess.getArithBoolRule()); 
            pushFollow(FOLLOW_1);
            ruleArithBool();

            state._fsp--;

             after(grammarAccess.getArithBoolRule()); 
            match(input,EOF,FOLLOW_2); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleArithBool"


    // $ANTLR start "ruleArithBool"
    // InternalProperty.g:265:1: ruleArithBool : ( ( rule__ArithBool__Group__0 ) ) ;
    public final void ruleArithBool() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:269:2: ( ( ( rule__ArithBool__Group__0 ) ) )
            // InternalProperty.g:270:1: ( ( rule__ArithBool__Group__0 ) )
            {
            // InternalProperty.g:270:1: ( ( rule__ArithBool__Group__0 ) )
            // InternalProperty.g:271:1: ( rule__ArithBool__Group__0 )
            {
             before(grammarAccess.getArithBoolAccess().getGroup()); 
            // InternalProperty.g:272:1: ( rule__ArithBool__Group__0 )
            // InternalProperty.g:272:2: rule__ArithBool__Group__0
            {
            pushFollow(FOLLOW_2);
            rule__ArithBool__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getArithBoolAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleArithBool"


    // $ANTLR start "entryRuleArithTerm"
    // InternalProperty.g:284:1: entryRuleArithTerm : ruleArithTerm EOF ;
    public final void entryRuleArithTerm() throws RecognitionException {
        try {
            // InternalProperty.g:285:1: ( ruleArithTerm EOF )
            // InternalProperty.g:286:1: ruleArithTerm EOF
            {
             before(grammarAccess.getArithTermRule()); 
            pushFollow(FOLLOW_1);
            ruleArithTerm();

            state._fsp--;

             after(grammarAccess.getArithTermRule()); 
            match(input,EOF,FOLLOW_2); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleArithTerm"


    // $ANTLR start "ruleArithTerm"
    // InternalProperty.g:293:1: ruleArithTerm : ( ( rule__ArithTerm__Group__0 ) ) ;
    public final void ruleArithTerm() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:297:2: ( ( ( rule__ArithTerm__Group__0 ) ) )
            // InternalProperty.g:298:1: ( ( rule__ArithTerm__Group__0 ) )
            {
            // InternalProperty.g:298:1: ( ( rule__ArithTerm__Group__0 ) )
            // InternalProperty.g:299:1: ( rule__ArithTerm__Group__0 )
            {
             before(grammarAccess.getArithTermAccess().getGroup()); 
            // InternalProperty.g:300:1: ( rule__ArithTerm__Group__0 )
            // InternalProperty.g:300:2: rule__ArithTerm__Group__0
            {
            pushFollow(FOLLOW_2);
            rule__ArithTerm__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getArithTermAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleArithTerm"


    // $ANTLR start "entryRuleArithTermL"
    // InternalProperty.g:312:1: entryRuleArithTermL : ruleArithTermL EOF ;
    public final void entryRuleArithTermL() throws RecognitionException {
        try {
            // InternalProperty.g:313:1: ( ruleArithTermL EOF )
            // InternalProperty.g:314:1: ruleArithTermL EOF
            {
             before(grammarAccess.getArithTermLRule()); 
            pushFollow(FOLLOW_1);
            ruleArithTermL();

            state._fsp--;

             after(grammarAccess.getArithTermLRule()); 
            match(input,EOF,FOLLOW_2); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleArithTermL"


    // $ANTLR start "ruleArithTermL"
    // InternalProperty.g:321:1: ruleArithTermL : ( ( rule__ArithTermL__Alternatives ) ) ;
    public final void ruleArithTermL() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:325:2: ( ( ( rule__ArithTermL__Alternatives ) ) )
            // InternalProperty.g:326:1: ( ( rule__ArithTermL__Alternatives ) )
            {
            // InternalProperty.g:326:1: ( ( rule__ArithTermL__Alternatives ) )
            // InternalProperty.g:327:1: ( rule__ArithTermL__Alternatives )
            {
             before(grammarAccess.getArithTermLAccess().getAlternatives()); 
            // InternalProperty.g:328:1: ( rule__ArithTermL__Alternatives )
            // InternalProperty.g:328:2: rule__ArithTermL__Alternatives
            {
            pushFollow(FOLLOW_2);
            rule__ArithTermL__Alternatives();

            state._fsp--;


            }

             after(grammarAccess.getArithTermLAccess().getAlternatives()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleArithTermL"


    // $ANTLR start "entryRuleArithTermR"
    // InternalProperty.g:340:1: entryRuleArithTermR : ruleArithTermR EOF ;
    public final void entryRuleArithTermR() throws RecognitionException {
        try {
            // InternalProperty.g:341:1: ( ruleArithTermR EOF )
            // InternalProperty.g:342:1: ruleArithTermR EOF
            {
             before(grammarAccess.getArithTermRRule()); 
            pushFollow(FOLLOW_1);
            ruleArithTermR();

            state._fsp--;

             after(grammarAccess.getArithTermRRule()); 
            match(input,EOF,FOLLOW_2); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleArithTermR"


    // $ANTLR start "ruleArithTermR"
    // InternalProperty.g:349:1: ruleArithTermR : ( ( rule__ArithTermR__Group__0 ) ) ;
    public final void ruleArithTermR() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:353:2: ( ( ( rule__ArithTermR__Group__0 ) ) )
            // InternalProperty.g:354:1: ( ( rule__ArithTermR__Group__0 ) )
            {
            // InternalProperty.g:354:1: ( ( rule__ArithTermR__Group__0 ) )
            // InternalProperty.g:355:1: ( rule__ArithTermR__Group__0 )
            {
             before(grammarAccess.getArithTermRAccess().getGroup()); 
            // InternalProperty.g:356:1: ( rule__ArithTermR__Group__0 )
            // InternalProperty.g:356:2: rule__ArithTermR__Group__0
            {
            pushFollow(FOLLOW_2);
            rule__ArithTermR__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getArithTermRAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleArithTermR"


    // $ANTLR start "entryRuleArithVar"
    // InternalProperty.g:368:1: entryRuleArithVar : ruleArithVar EOF ;
    public final void entryRuleArithVar() throws RecognitionException {
        try {
            // InternalProperty.g:369:1: ( ruleArithVar EOF )
            // InternalProperty.g:370:1: ruleArithVar EOF
            {
             before(grammarAccess.getArithVarRule()); 
            pushFollow(FOLLOW_1);
            ruleArithVar();

            state._fsp--;

             after(grammarAccess.getArithVarRule()); 
            match(input,EOF,FOLLOW_2); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleArithVar"


    // $ANTLR start "ruleArithVar"
    // InternalProperty.g:377:1: ruleArithVar : ( ( rule__ArithVar__Alternatives ) ) ;
    public final void ruleArithVar() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:381:2: ( ( ( rule__ArithVar__Alternatives ) ) )
            // InternalProperty.g:382:1: ( ( rule__ArithVar__Alternatives ) )
            {
            // InternalProperty.g:382:1: ( ( rule__ArithVar__Alternatives ) )
            // InternalProperty.g:383:1: ( rule__ArithVar__Alternatives )
            {
             before(grammarAccess.getArithVarAccess().getAlternatives()); 
            // InternalProperty.g:384:1: ( rule__ArithVar__Alternatives )
            // InternalProperty.g:384:2: rule__ArithVar__Alternatives
            {
            pushFollow(FOLLOW_2);
            rule__ArithVar__Alternatives();

            state._fsp--;


            }

             after(grammarAccess.getArithVarAccess().getAlternatives()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleArithVar"


    // $ANTLR start "entryRuleDataType"
    // InternalProperty.g:396:1: entryRuleDataType : ruleDataType EOF ;
    public final void entryRuleDataType() throws RecognitionException {
        try {
            // InternalProperty.g:397:1: ( ruleDataType EOF )
            // InternalProperty.g:398:1: ruleDataType EOF
            {
             before(grammarAccess.getDataTypeRule()); 
            pushFollow(FOLLOW_1);
            ruleDataType();

            state._fsp--;

             after(grammarAccess.getDataTypeRule()); 
            match(input,EOF,FOLLOW_2); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleDataType"


    // $ANTLR start "ruleDataType"
    // InternalProperty.g:405:1: ruleDataType : ( ( rule__DataType__Group__0 ) ) ;
    public final void ruleDataType() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:409:2: ( ( ( rule__DataType__Group__0 ) ) )
            // InternalProperty.g:410:1: ( ( rule__DataType__Group__0 ) )
            {
            // InternalProperty.g:410:1: ( ( rule__DataType__Group__0 ) )
            // InternalProperty.g:411:1: ( rule__DataType__Group__0 )
            {
             before(grammarAccess.getDataTypeAccess().getGroup()); 
            // InternalProperty.g:412:1: ( rule__DataType__Group__0 )
            // InternalProperty.g:412:2: rule__DataType__Group__0
            {
            pushFollow(FOLLOW_2);
            rule__DataType__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getDataTypeAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleDataType"


    // $ANTLR start "rule__Corretto__Alternatives_1"
    // InternalProperty.g:424:1: rule__Corretto__Alternatives_1 : ( ( ( rule__Corretto__VerifyAssignment_1_0 ) ) | ( ( rule__Corretto__ExecuteAssignment_1_1 ) ) );
    public final void rule__Corretto__Alternatives_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:428:1: ( ( ( rule__Corretto__VerifyAssignment_1_0 ) ) | ( ( rule__Corretto__ExecuteAssignment_1_1 ) ) )
            int alt1=2;
            int LA1_0 = input.LA(1);

            if ( (LA1_0==20) ) {
                alt1=1;
            }
            else if ( (LA1_0==RULE_EXECUTE) ) {
                alt1=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 1, 0, input);

                throw nvae;
            }
            switch (alt1) {
                case 1 :
                    // InternalProperty.g:429:1: ( ( rule__Corretto__VerifyAssignment_1_0 ) )
                    {
                    // InternalProperty.g:429:1: ( ( rule__Corretto__VerifyAssignment_1_0 ) )
                    // InternalProperty.g:430:1: ( rule__Corretto__VerifyAssignment_1_0 )
                    {
                     before(grammarAccess.getCorrettoAccess().getVerifyAssignment_1_0()); 
                    // InternalProperty.g:431:1: ( rule__Corretto__VerifyAssignment_1_0 )
                    // InternalProperty.g:431:2: rule__Corretto__VerifyAssignment_1_0
                    {
                    pushFollow(FOLLOW_2);
                    rule__Corretto__VerifyAssignment_1_0();

                    state._fsp--;


                    }

                     after(grammarAccess.getCorrettoAccess().getVerifyAssignment_1_0()); 

                    }


                    }
                    break;
                case 2 :
                    // InternalProperty.g:435:6: ( ( rule__Corretto__ExecuteAssignment_1_1 ) )
                    {
                    // InternalProperty.g:435:6: ( ( rule__Corretto__ExecuteAssignment_1_1 ) )
                    // InternalProperty.g:436:1: ( rule__Corretto__ExecuteAssignment_1_1 )
                    {
                     before(grammarAccess.getCorrettoAccess().getExecuteAssignment_1_1()); 
                    // InternalProperty.g:437:1: ( rule__Corretto__ExecuteAssignment_1_1 )
                    // InternalProperty.g:437:2: rule__Corretto__ExecuteAssignment_1_1
                    {
                    pushFollow(FOLLOW_2);
                    rule__Corretto__ExecuteAssignment_1_1();

                    state._fsp--;


                    }

                     after(grammarAccess.getCorrettoAccess().getExecuteAssignment_1_1()); 

                    }


                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Corretto__Alternatives_1"


    // $ANTLR start "rule__Declaration__Alternatives"
    // InternalProperty.g:446:1: rule__Declaration__Alternatives : ( ( ( rule__Declaration__Group_0__0 ) ) | ( ( rule__Declaration__Group_1__0 ) ) );
    public final void rule__Declaration__Alternatives() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:450:1: ( ( ( rule__Declaration__Group_0__0 ) ) | ( ( rule__Declaration__Group_1__0 ) ) )
            int alt2=2;
            int LA2_0 = input.LA(1);

            if ( (LA2_0==RULE_ID) ) {
                int LA2_1 = input.LA(2);

                if ( (LA2_1==22) ) {
                    int LA2_2 = input.LA(3);

                    if ( (LA2_2==RULE_ID) ) {
                        int LA2_3 = input.LA(4);

                        if ( (LA2_3==EOF||LA2_3==RULE_ID||LA2_3==RULE_TRIOOP2||LA2_3==19||LA2_3==25||(LA2_3>=32 && LA2_3<=34)) ) {
                            alt2=2;
                        }
                        else if ( (LA2_3==23) ) {
                            alt2=1;
                        }
                        else {
                            NoViableAltException nvae =
                                new NoViableAltException("", 2, 3, input);

                            throw nvae;
                        }
                    }
                    else if ( (LA2_2==RULE_INT||(LA2_2>=27 && LA2_2<=31)) ) {
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
                        new NoViableAltException("", 2, 1, input);

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
                    // InternalProperty.g:451:1: ( ( rule__Declaration__Group_0__0 ) )
                    {
                    // InternalProperty.g:451:1: ( ( rule__Declaration__Group_0__0 ) )
                    // InternalProperty.g:452:1: ( rule__Declaration__Group_0__0 )
                    {
                     before(grammarAccess.getDeclarationAccess().getGroup_0()); 
                    // InternalProperty.g:453:1: ( rule__Declaration__Group_0__0 )
                    // InternalProperty.g:453:2: rule__Declaration__Group_0__0
                    {
                    pushFollow(FOLLOW_2);
                    rule__Declaration__Group_0__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getDeclarationAccess().getGroup_0()); 

                    }


                    }
                    break;
                case 2 :
                    // InternalProperty.g:457:6: ( ( rule__Declaration__Group_1__0 ) )
                    {
                    // InternalProperty.g:457:6: ( ( rule__Declaration__Group_1__0 ) )
                    // InternalProperty.g:458:1: ( rule__Declaration__Group_1__0 )
                    {
                     before(grammarAccess.getDeclarationAccess().getGroup_1()); 
                    // InternalProperty.g:459:1: ( rule__Declaration__Group_1__0 )
                    // InternalProperty.g:459:2: rule__Declaration__Group_1__0
                    {
                    pushFollow(FOLLOW_2);
                    rule__Declaration__Group_1__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getDeclarationAccess().getGroup_1()); 

                    }


                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Alternatives"


    // $ANTLR start "rule__Declaration__Alternatives_1_2"
    // InternalProperty.g:468:1: rule__Declaration__Alternatives_1_2 : ( ( ( rule__Declaration__TrioAssignment_1_2_0 ) ) | ( ( rule__Declaration__Group_1_2_1__0 ) ) );
    public final void rule__Declaration__Alternatives_1_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:472:1: ( ( ( rule__Declaration__TrioAssignment_1_2_0 ) ) | ( ( rule__Declaration__Group_1_2_1__0 ) ) )
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
                    // InternalProperty.g:473:1: ( ( rule__Declaration__TrioAssignment_1_2_0 ) )
                    {
                    // InternalProperty.g:473:1: ( ( rule__Declaration__TrioAssignment_1_2_0 ) )
                    // InternalProperty.g:474:1: ( rule__Declaration__TrioAssignment_1_2_0 )
                    {
                     before(grammarAccess.getDeclarationAccess().getTrioAssignment_1_2_0()); 
                    // InternalProperty.g:475:1: ( rule__Declaration__TrioAssignment_1_2_0 )
                    // InternalProperty.g:475:2: rule__Declaration__TrioAssignment_1_2_0
                    {
                    pushFollow(FOLLOW_2);
                    rule__Declaration__TrioAssignment_1_2_0();

                    state._fsp--;


                    }

                     after(grammarAccess.getDeclarationAccess().getTrioAssignment_1_2_0()); 

                    }


                    }
                    break;
                case 2 :
                    // InternalProperty.g:479:6: ( ( rule__Declaration__Group_1_2_1__0 ) )
                    {
                    // InternalProperty.g:479:6: ( ( rule__Declaration__Group_1_2_1__0 ) )
                    // InternalProperty.g:480:1: ( rule__Declaration__Group_1_2_1__0 )
                    {
                     before(grammarAccess.getDeclarationAccess().getGroup_1_2_1()); 
                    // InternalProperty.g:481:1: ( rule__Declaration__Group_1_2_1__0 )
                    // InternalProperty.g:481:2: rule__Declaration__Group_1_2_1__0
                    {
                    pushFollow(FOLLOW_2);
                    rule__Declaration__Group_1_2_1__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getDeclarationAccess().getGroup_1_2_1()); 

                    }


                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Alternatives_1_2"


    // $ANTLR start "rule__TRIOL__Alternatives"
    // InternalProperty.g:490:1: rule__TRIOL__Alternatives : ( ( ( rule__TRIOL__Group_0__0 ) ) | ( ( rule__TRIOL__ArithBoolAssignment_1 ) ) | ( ( rule__TRIOL__Group_2__0 ) ) | ( ( rule__TRIOL__Group_3__0 ) ) | ( ( rule__TRIOL__Group_4__0 ) ) | ( ( rule__TRIOL__Group_5__0 ) ) );
    public final void rule__TRIOL__Alternatives() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:494:1: ( ( ( rule__TRIOL__Group_0__0 ) ) | ( ( rule__TRIOL__ArithBoolAssignment_1 ) ) | ( ( rule__TRIOL__Group_2__0 ) ) | ( ( rule__TRIOL__Group_3__0 ) ) | ( ( rule__TRIOL__Group_4__0 ) ) | ( ( rule__TRIOL__Group_5__0 ) ) )
            int alt4=6;
            switch ( input.LA(1) ) {
            case RULE_ID:
                {
                int LA4_1 = input.LA(2);

                if ( ((LA4_1>=32 && LA4_1<=34)) ) {
                    alt4=2;
                }
                else if ( (LA4_1==EOF||LA4_1==RULE_ID||LA4_1==RULE_TRIOOP2||LA4_1==19||LA4_1==21||LA4_1==24) ) {
                    alt4=1;
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 4, 1, input);

                    throw nvae;
                }
                }
                break;
            case RULE_INT:
            case 29:
            case 30:
            case 31:
                {
                alt4=2;
                }
                break;
            case 27:
                {
                alt4=3;
                }
                break;
            case 28:
                {
                switch ( input.LA(2) ) {
                case RULE_TRIOOPFF:
                    {
                    alt4=5;
                    }
                    break;
                case RULE_TRIOOPFN:
                    {
                    alt4=6;
                    }
                    break;
                case RULE_TRIOOPF:
                    {
                    alt4=4;
                    }
                    break;
                default:
                    NoViableAltException nvae =
                        new NoViableAltException("", 4, 4, input);

                    throw nvae;
                }

                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 4, 0, input);

                throw nvae;
            }

            switch (alt4) {
                case 1 :
                    // InternalProperty.g:495:1: ( ( rule__TRIOL__Group_0__0 ) )
                    {
                    // InternalProperty.g:495:1: ( ( rule__TRIOL__Group_0__0 ) )
                    // InternalProperty.g:496:1: ( rule__TRIOL__Group_0__0 )
                    {
                     before(grammarAccess.getTRIOLAccess().getGroup_0()); 
                    // InternalProperty.g:497:1: ( rule__TRIOL__Group_0__0 )
                    // InternalProperty.g:497:2: rule__TRIOL__Group_0__0
                    {
                    pushFollow(FOLLOW_2);
                    rule__TRIOL__Group_0__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getTRIOLAccess().getGroup_0()); 

                    }


                    }
                    break;
                case 2 :
                    // InternalProperty.g:501:6: ( ( rule__TRIOL__ArithBoolAssignment_1 ) )
                    {
                    // InternalProperty.g:501:6: ( ( rule__TRIOL__ArithBoolAssignment_1 ) )
                    // InternalProperty.g:502:1: ( rule__TRIOL__ArithBoolAssignment_1 )
                    {
                     before(grammarAccess.getTRIOLAccess().getArithBoolAssignment_1()); 
                    // InternalProperty.g:503:1: ( rule__TRIOL__ArithBoolAssignment_1 )
                    // InternalProperty.g:503:2: rule__TRIOL__ArithBoolAssignment_1
                    {
                    pushFollow(FOLLOW_2);
                    rule__TRIOL__ArithBoolAssignment_1();

                    state._fsp--;


                    }

                     after(grammarAccess.getTRIOLAccess().getArithBoolAssignment_1()); 

                    }


                    }
                    break;
                case 3 :
                    // InternalProperty.g:507:6: ( ( rule__TRIOL__Group_2__0 ) )
                    {
                    // InternalProperty.g:507:6: ( ( rule__TRIOL__Group_2__0 ) )
                    // InternalProperty.g:508:1: ( rule__TRIOL__Group_2__0 )
                    {
                     before(grammarAccess.getTRIOLAccess().getGroup_2()); 
                    // InternalProperty.g:509:1: ( rule__TRIOL__Group_2__0 )
                    // InternalProperty.g:509:2: rule__TRIOL__Group_2__0
                    {
                    pushFollow(FOLLOW_2);
                    rule__TRIOL__Group_2__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getTRIOLAccess().getGroup_2()); 

                    }


                    }
                    break;
                case 4 :
                    // InternalProperty.g:513:6: ( ( rule__TRIOL__Group_3__0 ) )
                    {
                    // InternalProperty.g:513:6: ( ( rule__TRIOL__Group_3__0 ) )
                    // InternalProperty.g:514:1: ( rule__TRIOL__Group_3__0 )
                    {
                     before(grammarAccess.getTRIOLAccess().getGroup_3()); 
                    // InternalProperty.g:515:1: ( rule__TRIOL__Group_3__0 )
                    // InternalProperty.g:515:2: rule__TRIOL__Group_3__0
                    {
                    pushFollow(FOLLOW_2);
                    rule__TRIOL__Group_3__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getTRIOLAccess().getGroup_3()); 

                    }


                    }
                    break;
                case 5 :
                    // InternalProperty.g:519:6: ( ( rule__TRIOL__Group_4__0 ) )
                    {
                    // InternalProperty.g:519:6: ( ( rule__TRIOL__Group_4__0 ) )
                    // InternalProperty.g:520:1: ( rule__TRIOL__Group_4__0 )
                    {
                     before(grammarAccess.getTRIOLAccess().getGroup_4()); 
                    // InternalProperty.g:521:1: ( rule__TRIOL__Group_4__0 )
                    // InternalProperty.g:521:2: rule__TRIOL__Group_4__0
                    {
                    pushFollow(FOLLOW_2);
                    rule__TRIOL__Group_4__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getTRIOLAccess().getGroup_4()); 

                    }


                    }
                    break;
                case 6 :
                    // InternalProperty.g:525:6: ( ( rule__TRIOL__Group_5__0 ) )
                    {
                    // InternalProperty.g:525:6: ( ( rule__TRIOL__Group_5__0 ) )
                    // InternalProperty.g:526:1: ( rule__TRIOL__Group_5__0 )
                    {
                     before(grammarAccess.getTRIOLAccess().getGroup_5()); 
                    // InternalProperty.g:527:1: ( rule__TRIOL__Group_5__0 )
                    // InternalProperty.g:527:2: rule__TRIOL__Group_5__0
                    {
                    pushFollow(FOLLOW_2);
                    rule__TRIOL__Group_5__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getTRIOLAccess().getGroup_5()); 

                    }


                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Alternatives"


    // $ANTLR start "rule__ArithTermL__Alternatives"
    // InternalProperty.g:536:1: rule__ArithTermL__Alternatives : ( ( ( rule__ArithTermL__Group_0__0 ) ) | ( ( rule__ArithTermL__ConstantAssignment_1 ) ) | ( ( rule__ArithTermL__ArithVarAssignment_2 ) ) | ( ( rule__ArithTermL__Group_3__0 ) ) | ( ( rule__ArithTermL__Group_4__0 ) ) );
    public final void rule__ArithTermL__Alternatives() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:540:1: ( ( ( rule__ArithTermL__Group_0__0 ) ) | ( ( rule__ArithTermL__ConstantAssignment_1 ) ) | ( ( rule__ArithTermL__ArithVarAssignment_2 ) ) | ( ( rule__ArithTermL__Group_3__0 ) ) | ( ( rule__ArithTermL__Group_4__0 ) ) )
            int alt5=5;
            switch ( input.LA(1) ) {
            case 29:
                {
                alt5=1;
                }
                break;
            case RULE_INT:
                {
                alt5=2;
                }
                break;
            case RULE_ID:
                {
                alt5=3;
                }
                break;
            case 30:
                {
                alt5=4;
                }
                break;
            case 31:
                {
                alt5=5;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 5, 0, input);

                throw nvae;
            }

            switch (alt5) {
                case 1 :
                    // InternalProperty.g:541:1: ( ( rule__ArithTermL__Group_0__0 ) )
                    {
                    // InternalProperty.g:541:1: ( ( rule__ArithTermL__Group_0__0 ) )
                    // InternalProperty.g:542:1: ( rule__ArithTermL__Group_0__0 )
                    {
                     before(grammarAccess.getArithTermLAccess().getGroup_0()); 
                    // InternalProperty.g:543:1: ( rule__ArithTermL__Group_0__0 )
                    // InternalProperty.g:543:2: rule__ArithTermL__Group_0__0
                    {
                    pushFollow(FOLLOW_2);
                    rule__ArithTermL__Group_0__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getArithTermLAccess().getGroup_0()); 

                    }


                    }
                    break;
                case 2 :
                    // InternalProperty.g:547:6: ( ( rule__ArithTermL__ConstantAssignment_1 ) )
                    {
                    // InternalProperty.g:547:6: ( ( rule__ArithTermL__ConstantAssignment_1 ) )
                    // InternalProperty.g:548:1: ( rule__ArithTermL__ConstantAssignment_1 )
                    {
                     before(grammarAccess.getArithTermLAccess().getConstantAssignment_1()); 
                    // InternalProperty.g:549:1: ( rule__ArithTermL__ConstantAssignment_1 )
                    // InternalProperty.g:549:2: rule__ArithTermL__ConstantAssignment_1
                    {
                    pushFollow(FOLLOW_2);
                    rule__ArithTermL__ConstantAssignment_1();

                    state._fsp--;


                    }

                     after(grammarAccess.getArithTermLAccess().getConstantAssignment_1()); 

                    }


                    }
                    break;
                case 3 :
                    // InternalProperty.g:553:6: ( ( rule__ArithTermL__ArithVarAssignment_2 ) )
                    {
                    // InternalProperty.g:553:6: ( ( rule__ArithTermL__ArithVarAssignment_2 ) )
                    // InternalProperty.g:554:1: ( rule__ArithTermL__ArithVarAssignment_2 )
                    {
                     before(grammarAccess.getArithTermLAccess().getArithVarAssignment_2()); 
                    // InternalProperty.g:555:1: ( rule__ArithTermL__ArithVarAssignment_2 )
                    // InternalProperty.g:555:2: rule__ArithTermL__ArithVarAssignment_2
                    {
                    pushFollow(FOLLOW_2);
                    rule__ArithTermL__ArithVarAssignment_2();

                    state._fsp--;


                    }

                     after(grammarAccess.getArithTermLAccess().getArithVarAssignment_2()); 

                    }


                    }
                    break;
                case 4 :
                    // InternalProperty.g:559:6: ( ( rule__ArithTermL__Group_3__0 ) )
                    {
                    // InternalProperty.g:559:6: ( ( rule__ArithTermL__Group_3__0 ) )
                    // InternalProperty.g:560:1: ( rule__ArithTermL__Group_3__0 )
                    {
                     before(grammarAccess.getArithTermLAccess().getGroup_3()); 
                    // InternalProperty.g:561:1: ( rule__ArithTermL__Group_3__0 )
                    // InternalProperty.g:561:2: rule__ArithTermL__Group_3__0
                    {
                    pushFollow(FOLLOW_2);
                    rule__ArithTermL__Group_3__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getArithTermLAccess().getGroup_3()); 

                    }


                    }
                    break;
                case 5 :
                    // InternalProperty.g:565:6: ( ( rule__ArithTermL__Group_4__0 ) )
                    {
                    // InternalProperty.g:565:6: ( ( rule__ArithTermL__Group_4__0 ) )
                    // InternalProperty.g:566:1: ( rule__ArithTermL__Group_4__0 )
                    {
                     before(grammarAccess.getArithTermLAccess().getGroup_4()); 
                    // InternalProperty.g:567:1: ( rule__ArithTermL__Group_4__0 )
                    // InternalProperty.g:567:2: rule__ArithTermL__Group_4__0
                    {
                    pushFollow(FOLLOW_2);
                    rule__ArithTermL__Group_4__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getArithTermLAccess().getGroup_4()); 

                    }


                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Alternatives"


    // $ANTLR start "rule__ArithVar__Alternatives"
    // InternalProperty.g:576:1: rule__ArithVar__Alternatives : ( ( ( rule__ArithVar__Group_0__0 ) ) | ( ( rule__ArithVar__Group_1__0 ) ) | ( ( rule__ArithVar__Group_2__0 ) ) );
    public final void rule__ArithVar__Alternatives() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:580:1: ( ( ( rule__ArithVar__Group_0__0 ) ) | ( ( rule__ArithVar__Group_1__0 ) ) | ( ( rule__ArithVar__Group_2__0 ) ) )
            int alt6=3;
            int LA6_0 = input.LA(1);

            if ( (LA6_0==RULE_ID) ) {
                switch ( input.LA(2) ) {
                case 34:
                    {
                    alt6=3;
                    }
                    break;
                case 32:
                    {
                    alt6=1;
                    }
                    break;
                case 33:
                    {
                    alt6=2;
                    }
                    break;
                default:
                    NoViableAltException nvae =
                        new NoViableAltException("", 6, 1, input);

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
                    // InternalProperty.g:581:1: ( ( rule__ArithVar__Group_0__0 ) )
                    {
                    // InternalProperty.g:581:1: ( ( rule__ArithVar__Group_0__0 ) )
                    // InternalProperty.g:582:1: ( rule__ArithVar__Group_0__0 )
                    {
                     before(grammarAccess.getArithVarAccess().getGroup_0()); 
                    // InternalProperty.g:583:1: ( rule__ArithVar__Group_0__0 )
                    // InternalProperty.g:583:2: rule__ArithVar__Group_0__0
                    {
                    pushFollow(FOLLOW_2);
                    rule__ArithVar__Group_0__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getArithVarAccess().getGroup_0()); 

                    }


                    }
                    break;
                case 2 :
                    // InternalProperty.g:587:6: ( ( rule__ArithVar__Group_1__0 ) )
                    {
                    // InternalProperty.g:587:6: ( ( rule__ArithVar__Group_1__0 ) )
                    // InternalProperty.g:588:1: ( rule__ArithVar__Group_1__0 )
                    {
                     before(grammarAccess.getArithVarAccess().getGroup_1()); 
                    // InternalProperty.g:589:1: ( rule__ArithVar__Group_1__0 )
                    // InternalProperty.g:589:2: rule__ArithVar__Group_1__0
                    {
                    pushFollow(FOLLOW_2);
                    rule__ArithVar__Group_1__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getArithVarAccess().getGroup_1()); 

                    }


                    }
                    break;
                case 3 :
                    // InternalProperty.g:593:6: ( ( rule__ArithVar__Group_2__0 ) )
                    {
                    // InternalProperty.g:593:6: ( ( rule__ArithVar__Group_2__0 ) )
                    // InternalProperty.g:594:1: ( rule__ArithVar__Group_2__0 )
                    {
                     before(grammarAccess.getArithVarAccess().getGroup_2()); 
                    // InternalProperty.g:595:1: ( rule__ArithVar__Group_2__0 )
                    // InternalProperty.g:595:2: rule__ArithVar__Group_2__0
                    {
                    pushFollow(FOLLOW_2);
                    rule__ArithVar__Group_2__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getArithVarAccess().getGroup_2()); 

                    }


                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Alternatives"


    // $ANTLR start "rule__Model__Group__0"
    // InternalProperty.g:606:1: rule__Model__Group__0 : rule__Model__Group__0__Impl rule__Model__Group__1 ;
    public final void rule__Model__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:610:1: ( rule__Model__Group__0__Impl rule__Model__Group__1 )
            // InternalProperty.g:611:2: rule__Model__Group__0__Impl rule__Model__Group__1
            {
            pushFollow(FOLLOW_3);
            rule__Model__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__Model__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Model__Group__0"


    // $ANTLR start "rule__Model__Group__0__Impl"
    // InternalProperty.g:618:1: rule__Model__Group__0__Impl : ( ( rule__Model__DeclarationsAssignment_0 )* ) ;
    public final void rule__Model__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:622:1: ( ( ( rule__Model__DeclarationsAssignment_0 )* ) )
            // InternalProperty.g:623:1: ( ( rule__Model__DeclarationsAssignment_0 )* )
            {
            // InternalProperty.g:623:1: ( ( rule__Model__DeclarationsAssignment_0 )* )
            // InternalProperty.g:624:1: ( rule__Model__DeclarationsAssignment_0 )*
            {
             before(grammarAccess.getModelAccess().getDeclarationsAssignment_0()); 
            // InternalProperty.g:625:1: ( rule__Model__DeclarationsAssignment_0 )*
            loop7:
            do {
                int alt7=2;
                int LA7_0 = input.LA(1);

                if ( (LA7_0==RULE_ID) ) {
                    alt7=1;
                }


                switch (alt7) {
            	case 1 :
            	    // InternalProperty.g:625:2: rule__Model__DeclarationsAssignment_0
            	    {
            	    pushFollow(FOLLOW_4);
            	    rule__Model__DeclarationsAssignment_0();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop7;
                }
            } while (true);

             after(grammarAccess.getModelAccess().getDeclarationsAssignment_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Model__Group__0__Impl"


    // $ANTLR start "rule__Model__Group__1"
    // InternalProperty.g:635:1: rule__Model__Group__1 : rule__Model__Group__1__Impl ;
    public final void rule__Model__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:639:1: ( rule__Model__Group__1__Impl )
            // InternalProperty.g:640:2: rule__Model__Group__1__Impl
            {
            pushFollow(FOLLOW_2);
            rule__Model__Group__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Model__Group__1"


    // $ANTLR start "rule__Model__Group__1__Impl"
    // InternalProperty.g:646:1: rule__Model__Group__1__Impl : ( ( rule__Model__CorrettoCommandAssignment_1 ) ) ;
    public final void rule__Model__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:650:1: ( ( ( rule__Model__CorrettoCommandAssignment_1 ) ) )
            // InternalProperty.g:651:1: ( ( rule__Model__CorrettoCommandAssignment_1 ) )
            {
            // InternalProperty.g:651:1: ( ( rule__Model__CorrettoCommandAssignment_1 ) )
            // InternalProperty.g:652:1: ( rule__Model__CorrettoCommandAssignment_1 )
            {
             before(grammarAccess.getModelAccess().getCorrettoCommandAssignment_1()); 
            // InternalProperty.g:653:1: ( rule__Model__CorrettoCommandAssignment_1 )
            // InternalProperty.g:653:2: rule__Model__CorrettoCommandAssignment_1
            {
            pushFollow(FOLLOW_2);
            rule__Model__CorrettoCommandAssignment_1();

            state._fsp--;


            }

             after(grammarAccess.getModelAccess().getCorrettoCommandAssignment_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Model__Group__1__Impl"


    // $ANTLR start "rule__Corretto__Group__0"
    // InternalProperty.g:667:1: rule__Corretto__Group__0 : rule__Corretto__Group__0__Impl rule__Corretto__Group__1 ;
    public final void rule__Corretto__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:671:1: ( rule__Corretto__Group__0__Impl rule__Corretto__Group__1 )
            // InternalProperty.g:672:2: rule__Corretto__Group__0__Impl rule__Corretto__Group__1
            {
            pushFollow(FOLLOW_5);
            rule__Corretto__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__Corretto__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Corretto__Group__0"


    // $ANTLR start "rule__Corretto__Group__0__Impl"
    // InternalProperty.g:679:1: rule__Corretto__Group__0__Impl : ( 'Corretto.' ) ;
    public final void rule__Corretto__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:683:1: ( ( 'Corretto.' ) )
            // InternalProperty.g:684:1: ( 'Corretto.' )
            {
            // InternalProperty.g:684:1: ( 'Corretto.' )
            // InternalProperty.g:685:1: 'Corretto.'
            {
             before(grammarAccess.getCorrettoAccess().getCorrettoKeyword_0()); 
            match(input,19,FOLLOW_2); 
             after(grammarAccess.getCorrettoAccess().getCorrettoKeyword_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Corretto__Group__0__Impl"


    // $ANTLR start "rule__Corretto__Group__1"
    // InternalProperty.g:698:1: rule__Corretto__Group__1 : rule__Corretto__Group__1__Impl ;
    public final void rule__Corretto__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:702:1: ( rule__Corretto__Group__1__Impl )
            // InternalProperty.g:703:2: rule__Corretto__Group__1__Impl
            {
            pushFollow(FOLLOW_2);
            rule__Corretto__Group__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Corretto__Group__1"


    // $ANTLR start "rule__Corretto__Group__1__Impl"
    // InternalProperty.g:709:1: rule__Corretto__Group__1__Impl : ( ( rule__Corretto__Alternatives_1 ) ) ;
    public final void rule__Corretto__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:713:1: ( ( ( rule__Corretto__Alternatives_1 ) ) )
            // InternalProperty.g:714:1: ( ( rule__Corretto__Alternatives_1 ) )
            {
            // InternalProperty.g:714:1: ( ( rule__Corretto__Alternatives_1 ) )
            // InternalProperty.g:715:1: ( rule__Corretto__Alternatives_1 )
            {
             before(grammarAccess.getCorrettoAccess().getAlternatives_1()); 
            // InternalProperty.g:716:1: ( rule__Corretto__Alternatives_1 )
            // InternalProperty.g:716:2: rule__Corretto__Alternatives_1
            {
            pushFollow(FOLLOW_2);
            rule__Corretto__Alternatives_1();

            state._fsp--;


            }

             after(grammarAccess.getCorrettoAccess().getAlternatives_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Corretto__Group__1__Impl"


    // $ANTLR start "rule__Verify__Group__0"
    // InternalProperty.g:730:1: rule__Verify__Group__0 : rule__Verify__Group__0__Impl rule__Verify__Group__1 ;
    public final void rule__Verify__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:734:1: ( rule__Verify__Group__0__Impl rule__Verify__Group__1 )
            // InternalProperty.g:735:2: rule__Verify__Group__0__Impl rule__Verify__Group__1
            {
            pushFollow(FOLLOW_6);
            rule__Verify__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__Verify__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Verify__Group__0"


    // $ANTLR start "rule__Verify__Group__0__Impl"
    // InternalProperty.g:742:1: rule__Verify__Group__0__Impl : ( 'verify(' ) ;
    public final void rule__Verify__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:746:1: ( ( 'verify(' ) )
            // InternalProperty.g:747:1: ( 'verify(' )
            {
            // InternalProperty.g:747:1: ( 'verify(' )
            // InternalProperty.g:748:1: 'verify('
            {
             before(grammarAccess.getVerifyAccess().getVerifyKeyword_0()); 
            match(input,20,FOLLOW_2); 
             after(grammarAccess.getVerifyAccess().getVerifyKeyword_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Verify__Group__0__Impl"


    // $ANTLR start "rule__Verify__Group__1"
    // InternalProperty.g:761:1: rule__Verify__Group__1 : rule__Verify__Group__1__Impl rule__Verify__Group__2 ;
    public final void rule__Verify__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:765:1: ( rule__Verify__Group__1__Impl rule__Verify__Group__2 )
            // InternalProperty.g:766:2: rule__Verify__Group__1__Impl rule__Verify__Group__2
            {
            pushFollow(FOLLOW_7);
            rule__Verify__Group__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__Verify__Group__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Verify__Group__1"


    // $ANTLR start "rule__Verify__Group__1__Impl"
    // InternalProperty.g:773:1: rule__Verify__Group__1__Impl : ( ( rule__Verify__TrioAssignment_1 ) ) ;
    public final void rule__Verify__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:777:1: ( ( ( rule__Verify__TrioAssignment_1 ) ) )
            // InternalProperty.g:778:1: ( ( rule__Verify__TrioAssignment_1 ) )
            {
            // InternalProperty.g:778:1: ( ( rule__Verify__TrioAssignment_1 ) )
            // InternalProperty.g:779:1: ( rule__Verify__TrioAssignment_1 )
            {
             before(grammarAccess.getVerifyAccess().getTrioAssignment_1()); 
            // InternalProperty.g:780:1: ( rule__Verify__TrioAssignment_1 )
            // InternalProperty.g:780:2: rule__Verify__TrioAssignment_1
            {
            pushFollow(FOLLOW_2);
            rule__Verify__TrioAssignment_1();

            state._fsp--;


            }

             after(grammarAccess.getVerifyAccess().getTrioAssignment_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Verify__Group__1__Impl"


    // $ANTLR start "rule__Verify__Group__2"
    // InternalProperty.g:790:1: rule__Verify__Group__2 : rule__Verify__Group__2__Impl ;
    public final void rule__Verify__Group__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:794:1: ( rule__Verify__Group__2__Impl )
            // InternalProperty.g:795:2: rule__Verify__Group__2__Impl
            {
            pushFollow(FOLLOW_2);
            rule__Verify__Group__2__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Verify__Group__2"


    // $ANTLR start "rule__Verify__Group__2__Impl"
    // InternalProperty.g:801:1: rule__Verify__Group__2__Impl : ( ')' ) ;
    public final void rule__Verify__Group__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:805:1: ( ( ')' ) )
            // InternalProperty.g:806:1: ( ')' )
            {
            // InternalProperty.g:806:1: ( ')' )
            // InternalProperty.g:807:1: ')'
            {
             before(grammarAccess.getVerifyAccess().getRightParenthesisKeyword_2()); 
            match(input,21,FOLLOW_2); 
             after(grammarAccess.getVerifyAccess().getRightParenthesisKeyword_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Verify__Group__2__Impl"


    // $ANTLR start "rule__Declaration__Group_0__0"
    // InternalProperty.g:826:1: rule__Declaration__Group_0__0 : rule__Declaration__Group_0__0__Impl rule__Declaration__Group_0__1 ;
    public final void rule__Declaration__Group_0__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:830:1: ( rule__Declaration__Group_0__0__Impl rule__Declaration__Group_0__1 )
            // InternalProperty.g:831:2: rule__Declaration__Group_0__0__Impl rule__Declaration__Group_0__1
            {
            pushFollow(FOLLOW_8);
            rule__Declaration__Group_0__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__Declaration__Group_0__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_0__0"


    // $ANTLR start "rule__Declaration__Group_0__0__Impl"
    // InternalProperty.g:838:1: rule__Declaration__Group_0__0__Impl : ( ( rule__Declaration__StateNameAssignment_0_0 ) ) ;
    public final void rule__Declaration__Group_0__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:842:1: ( ( ( rule__Declaration__StateNameAssignment_0_0 ) ) )
            // InternalProperty.g:843:1: ( ( rule__Declaration__StateNameAssignment_0_0 ) )
            {
            // InternalProperty.g:843:1: ( ( rule__Declaration__StateNameAssignment_0_0 ) )
            // InternalProperty.g:844:1: ( rule__Declaration__StateNameAssignment_0_0 )
            {
             before(grammarAccess.getDeclarationAccess().getStateNameAssignment_0_0()); 
            // InternalProperty.g:845:1: ( rule__Declaration__StateNameAssignment_0_0 )
            // InternalProperty.g:845:2: rule__Declaration__StateNameAssignment_0_0
            {
            pushFollow(FOLLOW_2);
            rule__Declaration__StateNameAssignment_0_0();

            state._fsp--;


            }

             after(grammarAccess.getDeclarationAccess().getStateNameAssignment_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_0__0__Impl"


    // $ANTLR start "rule__Declaration__Group_0__1"
    // InternalProperty.g:855:1: rule__Declaration__Group_0__1 : rule__Declaration__Group_0__1__Impl rule__Declaration__Group_0__2 ;
    public final void rule__Declaration__Group_0__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:859:1: ( rule__Declaration__Group_0__1__Impl rule__Declaration__Group_0__2 )
            // InternalProperty.g:860:2: rule__Declaration__Group_0__1__Impl rule__Declaration__Group_0__2
            {
            pushFollow(FOLLOW_9);
            rule__Declaration__Group_0__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__Declaration__Group_0__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_0__1"


    // $ANTLR start "rule__Declaration__Group_0__1__Impl"
    // InternalProperty.g:867:1: rule__Declaration__Group_0__1__Impl : ( '=' ) ;
    public final void rule__Declaration__Group_0__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:871:1: ( ( '=' ) )
            // InternalProperty.g:872:1: ( '=' )
            {
            // InternalProperty.g:872:1: ( '=' )
            // InternalProperty.g:873:1: '='
            {
             before(grammarAccess.getDeclarationAccess().getEqualsSignKeyword_0_1()); 
            match(input,22,FOLLOW_2); 
             after(grammarAccess.getDeclarationAccess().getEqualsSignKeyword_0_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_0__1__Impl"


    // $ANTLR start "rule__Declaration__Group_0__2"
    // InternalProperty.g:886:1: rule__Declaration__Group_0__2 : rule__Declaration__Group_0__2__Impl rule__Declaration__Group_0__3 ;
    public final void rule__Declaration__Group_0__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:890:1: ( rule__Declaration__Group_0__2__Impl rule__Declaration__Group_0__3 )
            // InternalProperty.g:891:2: rule__Declaration__Group_0__2__Impl rule__Declaration__Group_0__3
            {
            pushFollow(FOLLOW_10);
            rule__Declaration__Group_0__2__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__Declaration__Group_0__3();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_0__2"


    // $ANTLR start "rule__Declaration__Group_0__2__Impl"
    // InternalProperty.g:898:1: rule__Declaration__Group_0__2__Impl : ( ( rule__Declaration__ObjAssignment_0_2 ) ) ;
    public final void rule__Declaration__Group_0__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:902:1: ( ( ( rule__Declaration__ObjAssignment_0_2 ) ) )
            // InternalProperty.g:903:1: ( ( rule__Declaration__ObjAssignment_0_2 ) )
            {
            // InternalProperty.g:903:1: ( ( rule__Declaration__ObjAssignment_0_2 ) )
            // InternalProperty.g:904:1: ( rule__Declaration__ObjAssignment_0_2 )
            {
             before(grammarAccess.getDeclarationAccess().getObjAssignment_0_2()); 
            // InternalProperty.g:905:1: ( rule__Declaration__ObjAssignment_0_2 )
            // InternalProperty.g:905:2: rule__Declaration__ObjAssignment_0_2
            {
            pushFollow(FOLLOW_2);
            rule__Declaration__ObjAssignment_0_2();

            state._fsp--;


            }

             after(grammarAccess.getDeclarationAccess().getObjAssignment_0_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_0__2__Impl"


    // $ANTLR start "rule__Declaration__Group_0__3"
    // InternalProperty.g:915:1: rule__Declaration__Group_0__3 : rule__Declaration__Group_0__3__Impl rule__Declaration__Group_0__4 ;
    public final void rule__Declaration__Group_0__3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:919:1: ( rule__Declaration__Group_0__3__Impl rule__Declaration__Group_0__4 )
            // InternalProperty.g:920:2: rule__Declaration__Group_0__3__Impl rule__Declaration__Group_0__4
            {
            pushFollow(FOLLOW_9);
            rule__Declaration__Group_0__3__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__Declaration__Group_0__4();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_0__3"


    // $ANTLR start "rule__Declaration__Group_0__3__Impl"
    // InternalProperty.g:927:1: rule__Declaration__Group_0__3__Impl : ( '.getState(' ) ;
    public final void rule__Declaration__Group_0__3__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:931:1: ( ( '.getState(' ) )
            // InternalProperty.g:932:1: ( '.getState(' )
            {
            // InternalProperty.g:932:1: ( '.getState(' )
            // InternalProperty.g:933:1: '.getState('
            {
             before(grammarAccess.getDeclarationAccess().getGetStateKeyword_0_3()); 
            match(input,23,FOLLOW_2); 
             after(grammarAccess.getDeclarationAccess().getGetStateKeyword_0_3()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_0__3__Impl"


    // $ANTLR start "rule__Declaration__Group_0__4"
    // InternalProperty.g:946:1: rule__Declaration__Group_0__4 : rule__Declaration__Group_0__4__Impl rule__Declaration__Group_0__5 ;
    public final void rule__Declaration__Group_0__4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:950:1: ( rule__Declaration__Group_0__4__Impl rule__Declaration__Group_0__5 )
            // InternalProperty.g:951:2: rule__Declaration__Group_0__4__Impl rule__Declaration__Group_0__5
            {
            pushFollow(FOLLOW_11);
            rule__Declaration__Group_0__4__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__Declaration__Group_0__5();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_0__4"


    // $ANTLR start "rule__Declaration__Group_0__4__Impl"
    // InternalProperty.g:958:1: rule__Declaration__Group_0__4__Impl : ( ( rule__Declaration__StdAssignment_0_4 ) ) ;
    public final void rule__Declaration__Group_0__4__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:962:1: ( ( ( rule__Declaration__StdAssignment_0_4 ) ) )
            // InternalProperty.g:963:1: ( ( rule__Declaration__StdAssignment_0_4 ) )
            {
            // InternalProperty.g:963:1: ( ( rule__Declaration__StdAssignment_0_4 ) )
            // InternalProperty.g:964:1: ( rule__Declaration__StdAssignment_0_4 )
            {
             before(grammarAccess.getDeclarationAccess().getStdAssignment_0_4()); 
            // InternalProperty.g:965:1: ( rule__Declaration__StdAssignment_0_4 )
            // InternalProperty.g:965:2: rule__Declaration__StdAssignment_0_4
            {
            pushFollow(FOLLOW_2);
            rule__Declaration__StdAssignment_0_4();

            state._fsp--;


            }

             after(grammarAccess.getDeclarationAccess().getStdAssignment_0_4()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_0__4__Impl"


    // $ANTLR start "rule__Declaration__Group_0__5"
    // InternalProperty.g:975:1: rule__Declaration__Group_0__5 : rule__Declaration__Group_0__5__Impl rule__Declaration__Group_0__6 ;
    public final void rule__Declaration__Group_0__5() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:979:1: ( rule__Declaration__Group_0__5__Impl rule__Declaration__Group_0__6 )
            // InternalProperty.g:980:2: rule__Declaration__Group_0__5__Impl rule__Declaration__Group_0__6
            {
            pushFollow(FOLLOW_9);
            rule__Declaration__Group_0__5__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__Declaration__Group_0__6();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_0__5"


    // $ANTLR start "rule__Declaration__Group_0__5__Impl"
    // InternalProperty.g:987:1: rule__Declaration__Group_0__5__Impl : ( ',' ) ;
    public final void rule__Declaration__Group_0__5__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:991:1: ( ( ',' ) )
            // InternalProperty.g:992:1: ( ',' )
            {
            // InternalProperty.g:992:1: ( ',' )
            // InternalProperty.g:993:1: ','
            {
             before(grammarAccess.getDeclarationAccess().getCommaKeyword_0_5()); 
            match(input,24,FOLLOW_2); 
             after(grammarAccess.getDeclarationAccess().getCommaKeyword_0_5()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_0__5__Impl"


    // $ANTLR start "rule__Declaration__Group_0__6"
    // InternalProperty.g:1006:1: rule__Declaration__Group_0__6 : rule__Declaration__Group_0__6__Impl rule__Declaration__Group_0__7 ;
    public final void rule__Declaration__Group_0__6() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1010:1: ( rule__Declaration__Group_0__6__Impl rule__Declaration__Group_0__7 )
            // InternalProperty.g:1011:2: rule__Declaration__Group_0__6__Impl rule__Declaration__Group_0__7
            {
            pushFollow(FOLLOW_7);
            rule__Declaration__Group_0__6__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__Declaration__Group_0__7();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_0__6"


    // $ANTLR start "rule__Declaration__Group_0__6__Impl"
    // InternalProperty.g:1018:1: rule__Declaration__Group_0__6__Impl : ( ( rule__Declaration__UMLStateNameAssignment_0_6 ) ) ;
    public final void rule__Declaration__Group_0__6__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1022:1: ( ( ( rule__Declaration__UMLStateNameAssignment_0_6 ) ) )
            // InternalProperty.g:1023:1: ( ( rule__Declaration__UMLStateNameAssignment_0_6 ) )
            {
            // InternalProperty.g:1023:1: ( ( rule__Declaration__UMLStateNameAssignment_0_6 ) )
            // InternalProperty.g:1024:1: ( rule__Declaration__UMLStateNameAssignment_0_6 )
            {
             before(grammarAccess.getDeclarationAccess().getUMLStateNameAssignment_0_6()); 
            // InternalProperty.g:1025:1: ( rule__Declaration__UMLStateNameAssignment_0_6 )
            // InternalProperty.g:1025:2: rule__Declaration__UMLStateNameAssignment_0_6
            {
            pushFollow(FOLLOW_2);
            rule__Declaration__UMLStateNameAssignment_0_6();

            state._fsp--;


            }

             after(grammarAccess.getDeclarationAccess().getUMLStateNameAssignment_0_6()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_0__6__Impl"


    // $ANTLR start "rule__Declaration__Group_0__7"
    // InternalProperty.g:1035:1: rule__Declaration__Group_0__7 : rule__Declaration__Group_0__7__Impl ;
    public final void rule__Declaration__Group_0__7() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1039:1: ( rule__Declaration__Group_0__7__Impl )
            // InternalProperty.g:1040:2: rule__Declaration__Group_0__7__Impl
            {
            pushFollow(FOLLOW_2);
            rule__Declaration__Group_0__7__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_0__7"


    // $ANTLR start "rule__Declaration__Group_0__7__Impl"
    // InternalProperty.g:1046:1: rule__Declaration__Group_0__7__Impl : ( ')' ) ;
    public final void rule__Declaration__Group_0__7__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1050:1: ( ( ')' ) )
            // InternalProperty.g:1051:1: ( ')' )
            {
            // InternalProperty.g:1051:1: ( ')' )
            // InternalProperty.g:1052:1: ')'
            {
             before(grammarAccess.getDeclarationAccess().getRightParenthesisKeyword_0_7()); 
            match(input,21,FOLLOW_2); 
             after(grammarAccess.getDeclarationAccess().getRightParenthesisKeyword_0_7()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_0__7__Impl"


    // $ANTLR start "rule__Declaration__Group_1__0"
    // InternalProperty.g:1081:1: rule__Declaration__Group_1__0 : rule__Declaration__Group_1__0__Impl rule__Declaration__Group_1__1 ;
    public final void rule__Declaration__Group_1__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1085:1: ( rule__Declaration__Group_1__0__Impl rule__Declaration__Group_1__1 )
            // InternalProperty.g:1086:2: rule__Declaration__Group_1__0__Impl rule__Declaration__Group_1__1
            {
            pushFollow(FOLLOW_8);
            rule__Declaration__Group_1__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__Declaration__Group_1__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_1__0"


    // $ANTLR start "rule__Declaration__Group_1__0__Impl"
    // InternalProperty.g:1093:1: rule__Declaration__Group_1__0__Impl : ( ( rule__Declaration__TrioVarAssignment_1_0 ) ) ;
    public final void rule__Declaration__Group_1__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1097:1: ( ( ( rule__Declaration__TrioVarAssignment_1_0 ) ) )
            // InternalProperty.g:1098:1: ( ( rule__Declaration__TrioVarAssignment_1_0 ) )
            {
            // InternalProperty.g:1098:1: ( ( rule__Declaration__TrioVarAssignment_1_0 ) )
            // InternalProperty.g:1099:1: ( rule__Declaration__TrioVarAssignment_1_0 )
            {
             before(grammarAccess.getDeclarationAccess().getTrioVarAssignment_1_0()); 
            // InternalProperty.g:1100:1: ( rule__Declaration__TrioVarAssignment_1_0 )
            // InternalProperty.g:1100:2: rule__Declaration__TrioVarAssignment_1_0
            {
            pushFollow(FOLLOW_2);
            rule__Declaration__TrioVarAssignment_1_0();

            state._fsp--;


            }

             after(grammarAccess.getDeclarationAccess().getTrioVarAssignment_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_1__0__Impl"


    // $ANTLR start "rule__Declaration__Group_1__1"
    // InternalProperty.g:1110:1: rule__Declaration__Group_1__1 : rule__Declaration__Group_1__1__Impl rule__Declaration__Group_1__2 ;
    public final void rule__Declaration__Group_1__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1114:1: ( rule__Declaration__Group_1__1__Impl rule__Declaration__Group_1__2 )
            // InternalProperty.g:1115:2: rule__Declaration__Group_1__1__Impl rule__Declaration__Group_1__2
            {
            pushFollow(FOLLOW_6);
            rule__Declaration__Group_1__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__Declaration__Group_1__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_1__1"


    // $ANTLR start "rule__Declaration__Group_1__1__Impl"
    // InternalProperty.g:1122:1: rule__Declaration__Group_1__1__Impl : ( '=' ) ;
    public final void rule__Declaration__Group_1__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1126:1: ( ( '=' ) )
            // InternalProperty.g:1127:1: ( '=' )
            {
            // InternalProperty.g:1127:1: ( '=' )
            // InternalProperty.g:1128:1: '='
            {
             before(grammarAccess.getDeclarationAccess().getEqualsSignKeyword_1_1()); 
            match(input,22,FOLLOW_2); 
             after(grammarAccess.getDeclarationAccess().getEqualsSignKeyword_1_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_1__1__Impl"


    // $ANTLR start "rule__Declaration__Group_1__2"
    // InternalProperty.g:1141:1: rule__Declaration__Group_1__2 : rule__Declaration__Group_1__2__Impl ;
    public final void rule__Declaration__Group_1__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1145:1: ( rule__Declaration__Group_1__2__Impl )
            // InternalProperty.g:1146:2: rule__Declaration__Group_1__2__Impl
            {
            pushFollow(FOLLOW_2);
            rule__Declaration__Group_1__2__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_1__2"


    // $ANTLR start "rule__Declaration__Group_1__2__Impl"
    // InternalProperty.g:1152:1: rule__Declaration__Group_1__2__Impl : ( ( rule__Declaration__Alternatives_1_2 ) ) ;
    public final void rule__Declaration__Group_1__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1156:1: ( ( ( rule__Declaration__Alternatives_1_2 ) ) )
            // InternalProperty.g:1157:1: ( ( rule__Declaration__Alternatives_1_2 ) )
            {
            // InternalProperty.g:1157:1: ( ( rule__Declaration__Alternatives_1_2 ) )
            // InternalProperty.g:1158:1: ( rule__Declaration__Alternatives_1_2 )
            {
             before(grammarAccess.getDeclarationAccess().getAlternatives_1_2()); 
            // InternalProperty.g:1159:1: ( rule__Declaration__Alternatives_1_2 )
            // InternalProperty.g:1159:2: rule__Declaration__Alternatives_1_2
            {
            pushFollow(FOLLOW_2);
            rule__Declaration__Alternatives_1_2();

            state._fsp--;


            }

             after(grammarAccess.getDeclarationAccess().getAlternatives_1_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_1__2__Impl"


    // $ANTLR start "rule__Declaration__Group_1_2_1__0"
    // InternalProperty.g:1175:1: rule__Declaration__Group_1_2_1__0 : rule__Declaration__Group_1_2_1__0__Impl rule__Declaration__Group_1_2_1__1 ;
    public final void rule__Declaration__Group_1_2_1__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1179:1: ( rule__Declaration__Group_1_2_1__0__Impl rule__Declaration__Group_1_2_1__1 )
            // InternalProperty.g:1180:2: rule__Declaration__Group_1_2_1__0__Impl rule__Declaration__Group_1_2_1__1
            {
            pushFollow(FOLLOW_12);
            rule__Declaration__Group_1_2_1__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__Declaration__Group_1_2_1__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_1_2_1__0"


    // $ANTLR start "rule__Declaration__Group_1_2_1__0__Impl"
    // InternalProperty.g:1187:1: rule__Declaration__Group_1_2_1__0__Impl : ( ( rule__Declaration__ObjAssignment_1_2_1_0 ) ) ;
    public final void rule__Declaration__Group_1_2_1__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1191:1: ( ( ( rule__Declaration__ObjAssignment_1_2_1_0 ) ) )
            // InternalProperty.g:1192:1: ( ( rule__Declaration__ObjAssignment_1_2_1_0 ) )
            {
            // InternalProperty.g:1192:1: ( ( rule__Declaration__ObjAssignment_1_2_1_0 ) )
            // InternalProperty.g:1193:1: ( rule__Declaration__ObjAssignment_1_2_1_0 )
            {
             before(grammarAccess.getDeclarationAccess().getObjAssignment_1_2_1_0()); 
            // InternalProperty.g:1194:1: ( rule__Declaration__ObjAssignment_1_2_1_0 )
            // InternalProperty.g:1194:2: rule__Declaration__ObjAssignment_1_2_1_0
            {
            pushFollow(FOLLOW_2);
            rule__Declaration__ObjAssignment_1_2_1_0();

            state._fsp--;


            }

             after(grammarAccess.getDeclarationAccess().getObjAssignment_1_2_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_1_2_1__0__Impl"


    // $ANTLR start "rule__Declaration__Group_1_2_1__1"
    // InternalProperty.g:1204:1: rule__Declaration__Group_1_2_1__1 : rule__Declaration__Group_1_2_1__1__Impl rule__Declaration__Group_1_2_1__2 ;
    public final void rule__Declaration__Group_1_2_1__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1208:1: ( rule__Declaration__Group_1_2_1__1__Impl rule__Declaration__Group_1_2_1__2 )
            // InternalProperty.g:1209:2: rule__Declaration__Group_1_2_1__1__Impl rule__Declaration__Group_1_2_1__2
            {
            pushFollow(FOLLOW_9);
            rule__Declaration__Group_1_2_1__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__Declaration__Group_1_2_1__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_1_2_1__1"


    // $ANTLR start "rule__Declaration__Group_1_2_1__1__Impl"
    // InternalProperty.g:1216:1: rule__Declaration__Group_1_2_1__1__Impl : ( '.in(' ) ;
    public final void rule__Declaration__Group_1_2_1__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1220:1: ( ( '.in(' ) )
            // InternalProperty.g:1221:1: ( '.in(' )
            {
            // InternalProperty.g:1221:1: ( '.in(' )
            // InternalProperty.g:1222:1: '.in('
            {
             before(grammarAccess.getDeclarationAccess().getInKeyword_1_2_1_1()); 
            match(input,25,FOLLOW_2); 
             after(grammarAccess.getDeclarationAccess().getInKeyword_1_2_1_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_1_2_1__1__Impl"


    // $ANTLR start "rule__Declaration__Group_1_2_1__2"
    // InternalProperty.g:1235:1: rule__Declaration__Group_1_2_1__2 : rule__Declaration__Group_1_2_1__2__Impl rule__Declaration__Group_1_2_1__3 ;
    public final void rule__Declaration__Group_1_2_1__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1239:1: ( rule__Declaration__Group_1_2_1__2__Impl rule__Declaration__Group_1_2_1__3 )
            // InternalProperty.g:1240:2: rule__Declaration__Group_1_2_1__2__Impl rule__Declaration__Group_1_2_1__3
            {
            pushFollow(FOLLOW_7);
            rule__Declaration__Group_1_2_1__2__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__Declaration__Group_1_2_1__3();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_1_2_1__2"


    // $ANTLR start "rule__Declaration__Group_1_2_1__2__Impl"
    // InternalProperty.g:1247:1: rule__Declaration__Group_1_2_1__2__Impl : ( ( rule__Declaration__StateNameAssignment_1_2_1_2 ) ) ;
    public final void rule__Declaration__Group_1_2_1__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1251:1: ( ( ( rule__Declaration__StateNameAssignment_1_2_1_2 ) ) )
            // InternalProperty.g:1252:1: ( ( rule__Declaration__StateNameAssignment_1_2_1_2 ) )
            {
            // InternalProperty.g:1252:1: ( ( rule__Declaration__StateNameAssignment_1_2_1_2 ) )
            // InternalProperty.g:1253:1: ( rule__Declaration__StateNameAssignment_1_2_1_2 )
            {
             before(grammarAccess.getDeclarationAccess().getStateNameAssignment_1_2_1_2()); 
            // InternalProperty.g:1254:1: ( rule__Declaration__StateNameAssignment_1_2_1_2 )
            // InternalProperty.g:1254:2: rule__Declaration__StateNameAssignment_1_2_1_2
            {
            pushFollow(FOLLOW_2);
            rule__Declaration__StateNameAssignment_1_2_1_2();

            state._fsp--;


            }

             after(grammarAccess.getDeclarationAccess().getStateNameAssignment_1_2_1_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_1_2_1__2__Impl"


    // $ANTLR start "rule__Declaration__Group_1_2_1__3"
    // InternalProperty.g:1264:1: rule__Declaration__Group_1_2_1__3 : rule__Declaration__Group_1_2_1__3__Impl ;
    public final void rule__Declaration__Group_1_2_1__3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1268:1: ( rule__Declaration__Group_1_2_1__3__Impl )
            // InternalProperty.g:1269:2: rule__Declaration__Group_1_2_1__3__Impl
            {
            pushFollow(FOLLOW_2);
            rule__Declaration__Group_1_2_1__3__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_1_2_1__3"


    // $ANTLR start "rule__Declaration__Group_1_2_1__3__Impl"
    // InternalProperty.g:1275:1: rule__Declaration__Group_1_2_1__3__Impl : ( ')' ) ;
    public final void rule__Declaration__Group_1_2_1__3__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1279:1: ( ( ')' ) )
            // InternalProperty.g:1280:1: ( ')' )
            {
            // InternalProperty.g:1280:1: ( ')' )
            // InternalProperty.g:1281:1: ')'
            {
             before(grammarAccess.getDeclarationAccess().getRightParenthesisKeyword_1_2_1_3()); 
            match(input,21,FOLLOW_2); 
             after(grammarAccess.getDeclarationAccess().getRightParenthesisKeyword_1_2_1_3()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__Group_1_2_1__3__Impl"


    // $ANTLR start "rule__TRIO__Group__0"
    // InternalProperty.g:1302:1: rule__TRIO__Group__0 : rule__TRIO__Group__0__Impl rule__TRIO__Group__1 ;
    public final void rule__TRIO__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1306:1: ( rule__TRIO__Group__0__Impl rule__TRIO__Group__1 )
            // InternalProperty.g:1307:2: rule__TRIO__Group__0__Impl rule__TRIO__Group__1
            {
            pushFollow(FOLLOW_13);
            rule__TRIO__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIO__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIO__Group__0"


    // $ANTLR start "rule__TRIO__Group__0__Impl"
    // InternalProperty.g:1314:1: rule__TRIO__Group__0__Impl : ( ( rule__TRIO__TrioLAssignment_0 ) ) ;
    public final void rule__TRIO__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1318:1: ( ( ( rule__TRIO__TrioLAssignment_0 ) ) )
            // InternalProperty.g:1319:1: ( ( rule__TRIO__TrioLAssignment_0 ) )
            {
            // InternalProperty.g:1319:1: ( ( rule__TRIO__TrioLAssignment_0 ) )
            // InternalProperty.g:1320:1: ( rule__TRIO__TrioLAssignment_0 )
            {
             before(grammarAccess.getTRIOAccess().getTrioLAssignment_0()); 
            // InternalProperty.g:1321:1: ( rule__TRIO__TrioLAssignment_0 )
            // InternalProperty.g:1321:2: rule__TRIO__TrioLAssignment_0
            {
            pushFollow(FOLLOW_2);
            rule__TRIO__TrioLAssignment_0();

            state._fsp--;


            }

             after(grammarAccess.getTRIOAccess().getTrioLAssignment_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIO__Group__0__Impl"


    // $ANTLR start "rule__TRIO__Group__1"
    // InternalProperty.g:1331:1: rule__TRIO__Group__1 : rule__TRIO__Group__1__Impl ;
    public final void rule__TRIO__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1335:1: ( rule__TRIO__Group__1__Impl )
            // InternalProperty.g:1336:2: rule__TRIO__Group__1__Impl
            {
            pushFollow(FOLLOW_2);
            rule__TRIO__Group__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIO__Group__1"


    // $ANTLR start "rule__TRIO__Group__1__Impl"
    // InternalProperty.g:1342:1: rule__TRIO__Group__1__Impl : ( ( rule__TRIO__TrioRAssignment_1 )? ) ;
    public final void rule__TRIO__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1346:1: ( ( ( rule__TRIO__TrioRAssignment_1 )? ) )
            // InternalProperty.g:1347:1: ( ( rule__TRIO__TrioRAssignment_1 )? )
            {
            // InternalProperty.g:1347:1: ( ( rule__TRIO__TrioRAssignment_1 )? )
            // InternalProperty.g:1348:1: ( rule__TRIO__TrioRAssignment_1 )?
            {
             before(grammarAccess.getTRIOAccess().getTrioRAssignment_1()); 
            // InternalProperty.g:1349:1: ( rule__TRIO__TrioRAssignment_1 )?
            int alt8=2;
            int LA8_0 = input.LA(1);

            if ( (LA8_0==RULE_TRIOOP2) ) {
                alt8=1;
            }
            switch (alt8) {
                case 1 :
                    // InternalProperty.g:1349:2: rule__TRIO__TrioRAssignment_1
                    {
                    pushFollow(FOLLOW_2);
                    rule__TRIO__TrioRAssignment_1();

                    state._fsp--;


                    }
                    break;

            }

             after(grammarAccess.getTRIOAccess().getTrioRAssignment_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIO__Group__1__Impl"


    // $ANTLR start "rule__TRIOL__Group_0__0"
    // InternalProperty.g:1363:1: rule__TRIOL__Group_0__0 : rule__TRIOL__Group_0__0__Impl rule__TRIOL__Group_0__1 ;
    public final void rule__TRIOL__Group_0__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1367:1: ( rule__TRIOL__Group_0__0__Impl rule__TRIOL__Group_0__1 )
            // InternalProperty.g:1368:2: rule__TRIOL__Group_0__0__Impl rule__TRIOL__Group_0__1
            {
            pushFollow(FOLLOW_9);
            rule__TRIOL__Group_0__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_0__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_0__0"


    // $ANTLR start "rule__TRIOL__Group_0__0__Impl"
    // InternalProperty.g:1375:1: rule__TRIOL__Group_0__0__Impl : ( ( rule__TRIOL__TrioVarAssignment_0_0 ) ) ;
    public final void rule__TRIOL__Group_0__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1379:1: ( ( ( rule__TRIOL__TrioVarAssignment_0_0 ) ) )
            // InternalProperty.g:1380:1: ( ( rule__TRIOL__TrioVarAssignment_0_0 ) )
            {
            // InternalProperty.g:1380:1: ( ( rule__TRIOL__TrioVarAssignment_0_0 ) )
            // InternalProperty.g:1381:1: ( rule__TRIOL__TrioVarAssignment_0_0 )
            {
             before(grammarAccess.getTRIOLAccess().getTrioVarAssignment_0_0()); 
            // InternalProperty.g:1382:1: ( rule__TRIOL__TrioVarAssignment_0_0 )
            // InternalProperty.g:1382:2: rule__TRIOL__TrioVarAssignment_0_0
            {
            pushFollow(FOLLOW_2);
            rule__TRIOL__TrioVarAssignment_0_0();

            state._fsp--;


            }

             after(grammarAccess.getTRIOLAccess().getTrioVarAssignment_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_0__0__Impl"


    // $ANTLR start "rule__TRIOL__Group_0__1"
    // InternalProperty.g:1392:1: rule__TRIOL__Group_0__1 : rule__TRIOL__Group_0__1__Impl ;
    public final void rule__TRIOL__Group_0__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1396:1: ( rule__TRIOL__Group_0__1__Impl )
            // InternalProperty.g:1397:2: rule__TRIOL__Group_0__1__Impl
            {
            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_0__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_0__1"


    // $ANTLR start "rule__TRIOL__Group_0__1__Impl"
    // InternalProperty.g:1403:1: rule__TRIOL__Group_0__1__Impl : ( ( rule__TRIOL__Group_0_1__0 )? ) ;
    public final void rule__TRIOL__Group_0__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1407:1: ( ( ( rule__TRIOL__Group_0_1__0 )? ) )
            // InternalProperty.g:1408:1: ( ( rule__TRIOL__Group_0_1__0 )? )
            {
            // InternalProperty.g:1408:1: ( ( rule__TRIOL__Group_0_1__0 )? )
            // InternalProperty.g:1409:1: ( rule__TRIOL__Group_0_1__0 )?
            {
             before(grammarAccess.getTRIOLAccess().getGroup_0_1()); 
            // InternalProperty.g:1410:1: ( rule__TRIOL__Group_0_1__0 )?
            int alt9=2;
            int LA9_0 = input.LA(1);

            if ( (LA9_0==RULE_ID) ) {
                int LA9_1 = input.LA(2);

                if ( (LA9_1==26) ) {
                    alt9=1;
                }
            }
            switch (alt9) {
                case 1 :
                    // InternalProperty.g:1410:2: rule__TRIOL__Group_0_1__0
                    {
                    pushFollow(FOLLOW_2);
                    rule__TRIOL__Group_0_1__0();

                    state._fsp--;


                    }
                    break;

            }

             after(grammarAccess.getTRIOLAccess().getGroup_0_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_0__1__Impl"


    // $ANTLR start "rule__TRIOL__Group_0_1__0"
    // InternalProperty.g:1424:1: rule__TRIOL__Group_0_1__0 : rule__TRIOL__Group_0_1__0__Impl rule__TRIOL__Group_0_1__1 ;
    public final void rule__TRIOL__Group_0_1__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1428:1: ( rule__TRIOL__Group_0_1__0__Impl rule__TRIOL__Group_0_1__1 )
            // InternalProperty.g:1429:2: rule__TRIOL__Group_0_1__0__Impl rule__TRIOL__Group_0_1__1
            {
            pushFollow(FOLLOW_14);
            rule__TRIOL__Group_0_1__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_0_1__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_0_1__0"


    // $ANTLR start "rule__TRIOL__Group_0_1__0__Impl"
    // InternalProperty.g:1436:1: rule__TRIOL__Group_0_1__0__Impl : ( ( rule__TRIOL__OpNameAssignment_0_1_0 ) ) ;
    public final void rule__TRIOL__Group_0_1__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1440:1: ( ( ( rule__TRIOL__OpNameAssignment_0_1_0 ) ) )
            // InternalProperty.g:1441:1: ( ( rule__TRIOL__OpNameAssignment_0_1_0 ) )
            {
            // InternalProperty.g:1441:1: ( ( rule__TRIOL__OpNameAssignment_0_1_0 ) )
            // InternalProperty.g:1442:1: ( rule__TRIOL__OpNameAssignment_0_1_0 )
            {
             before(grammarAccess.getTRIOLAccess().getOpNameAssignment_0_1_0()); 
            // InternalProperty.g:1443:1: ( rule__TRIOL__OpNameAssignment_0_1_0 )
            // InternalProperty.g:1443:2: rule__TRIOL__OpNameAssignment_0_1_0
            {
            pushFollow(FOLLOW_2);
            rule__TRIOL__OpNameAssignment_0_1_0();

            state._fsp--;


            }

             after(grammarAccess.getTRIOLAccess().getOpNameAssignment_0_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_0_1__0__Impl"


    // $ANTLR start "rule__TRIOL__Group_0_1__1"
    // InternalProperty.g:1453:1: rule__TRIOL__Group_0_1__1 : rule__TRIOL__Group_0_1__1__Impl ;
    public final void rule__TRIOL__Group_0_1__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1457:1: ( rule__TRIOL__Group_0_1__1__Impl )
            // InternalProperty.g:1458:2: rule__TRIOL__Group_0_1__1__Impl
            {
            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_0_1__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_0_1__1"


    // $ANTLR start "rule__TRIOL__Group_0_1__1__Impl"
    // InternalProperty.g:1464:1: rule__TRIOL__Group_0_1__1__Impl : ( '()' ) ;
    public final void rule__TRIOL__Group_0_1__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1468:1: ( ( '()' ) )
            // InternalProperty.g:1469:1: ( '()' )
            {
            // InternalProperty.g:1469:1: ( '()' )
            // InternalProperty.g:1470:1: '()'
            {
             before(grammarAccess.getTRIOLAccess().getLeftParenthesisRightParenthesisKeyword_0_1_1()); 
            match(input,26,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getLeftParenthesisRightParenthesisKeyword_0_1_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_0_1__1__Impl"


    // $ANTLR start "rule__TRIOL__Group_2__0"
    // InternalProperty.g:1487:1: rule__TRIOL__Group_2__0 : rule__TRIOL__Group_2__0__Impl rule__TRIOL__Group_2__1 ;
    public final void rule__TRIOL__Group_2__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1491:1: ( rule__TRIOL__Group_2__0__Impl rule__TRIOL__Group_2__1 )
            // InternalProperty.g:1492:2: rule__TRIOL__Group_2__0__Impl rule__TRIOL__Group_2__1
            {
            pushFollow(FOLLOW_6);
            rule__TRIOL__Group_2__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_2__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_2__0"


    // $ANTLR start "rule__TRIOL__Group_2__0__Impl"
    // InternalProperty.g:1499:1: rule__TRIOL__Group_2__0__Impl : ( '!(' ) ;
    public final void rule__TRIOL__Group_2__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1503:1: ( ( '!(' ) )
            // InternalProperty.g:1504:1: ( '!(' )
            {
            // InternalProperty.g:1504:1: ( '!(' )
            // InternalProperty.g:1505:1: '!('
            {
             before(grammarAccess.getTRIOLAccess().getExclamationMarkLeftParenthesisKeyword_2_0()); 
            match(input,27,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getExclamationMarkLeftParenthesisKeyword_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_2__0__Impl"


    // $ANTLR start "rule__TRIOL__Group_2__1"
    // InternalProperty.g:1518:1: rule__TRIOL__Group_2__1 : rule__TRIOL__Group_2__1__Impl rule__TRIOL__Group_2__2 ;
    public final void rule__TRIOL__Group_2__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1522:1: ( rule__TRIOL__Group_2__1__Impl rule__TRIOL__Group_2__2 )
            // InternalProperty.g:1523:2: rule__TRIOL__Group_2__1__Impl rule__TRIOL__Group_2__2
            {
            pushFollow(FOLLOW_7);
            rule__TRIOL__Group_2__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_2__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_2__1"


    // $ANTLR start "rule__TRIOL__Group_2__1__Impl"
    // InternalProperty.g:1530:1: rule__TRIOL__Group_2__1__Impl : ( ( rule__TRIOL__TrioNotAssignment_2_1 ) ) ;
    public final void rule__TRIOL__Group_2__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1534:1: ( ( ( rule__TRIOL__TrioNotAssignment_2_1 ) ) )
            // InternalProperty.g:1535:1: ( ( rule__TRIOL__TrioNotAssignment_2_1 ) )
            {
            // InternalProperty.g:1535:1: ( ( rule__TRIOL__TrioNotAssignment_2_1 ) )
            // InternalProperty.g:1536:1: ( rule__TRIOL__TrioNotAssignment_2_1 )
            {
             before(grammarAccess.getTRIOLAccess().getTrioNotAssignment_2_1()); 
            // InternalProperty.g:1537:1: ( rule__TRIOL__TrioNotAssignment_2_1 )
            // InternalProperty.g:1537:2: rule__TRIOL__TrioNotAssignment_2_1
            {
            pushFollow(FOLLOW_2);
            rule__TRIOL__TrioNotAssignment_2_1();

            state._fsp--;


            }

             after(grammarAccess.getTRIOLAccess().getTrioNotAssignment_2_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_2__1__Impl"


    // $ANTLR start "rule__TRIOL__Group_2__2"
    // InternalProperty.g:1547:1: rule__TRIOL__Group_2__2 : rule__TRIOL__Group_2__2__Impl ;
    public final void rule__TRIOL__Group_2__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1551:1: ( rule__TRIOL__Group_2__2__Impl )
            // InternalProperty.g:1552:2: rule__TRIOL__Group_2__2__Impl
            {
            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_2__2__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_2__2"


    // $ANTLR start "rule__TRIOL__Group_2__2__Impl"
    // InternalProperty.g:1558:1: rule__TRIOL__Group_2__2__Impl : ( ')' ) ;
    public final void rule__TRIOL__Group_2__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1562:1: ( ( ')' ) )
            // InternalProperty.g:1563:1: ( ')' )
            {
            // InternalProperty.g:1563:1: ( ')' )
            // InternalProperty.g:1564:1: ')'
            {
             before(grammarAccess.getTRIOLAccess().getRightParenthesisKeyword_2_2()); 
            match(input,21,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getRightParenthesisKeyword_2_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_2__2__Impl"


    // $ANTLR start "rule__TRIOL__Group_3__0"
    // InternalProperty.g:1583:1: rule__TRIOL__Group_3__0 : rule__TRIOL__Group_3__0__Impl rule__TRIOL__Group_3__1 ;
    public final void rule__TRIOL__Group_3__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1587:1: ( rule__TRIOL__Group_3__0__Impl rule__TRIOL__Group_3__1 )
            // InternalProperty.g:1588:2: rule__TRIOL__Group_3__0__Impl rule__TRIOL__Group_3__1
            {
            pushFollow(FOLLOW_15);
            rule__TRIOL__Group_3__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_3__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_3__0"


    // $ANTLR start "rule__TRIOL__Group_3__0__Impl"
    // InternalProperty.g:1595:1: rule__TRIOL__Group_3__0__Impl : ( 'Time.' ) ;
    public final void rule__TRIOL__Group_3__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1599:1: ( ( 'Time.' ) )
            // InternalProperty.g:1600:1: ( 'Time.' )
            {
            // InternalProperty.g:1600:1: ( 'Time.' )
            // InternalProperty.g:1601:1: 'Time.'
            {
             before(grammarAccess.getTRIOLAccess().getTimeKeyword_3_0()); 
            match(input,28,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getTimeKeyword_3_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_3__0__Impl"


    // $ANTLR start "rule__TRIOL__Group_3__1"
    // InternalProperty.g:1614:1: rule__TRIOL__Group_3__1 : rule__TRIOL__Group_3__1__Impl rule__TRIOL__Group_3__2 ;
    public final void rule__TRIOL__Group_3__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1618:1: ( rule__TRIOL__Group_3__1__Impl rule__TRIOL__Group_3__2 )
            // InternalProperty.g:1619:2: rule__TRIOL__Group_3__1__Impl rule__TRIOL__Group_3__2
            {
            pushFollow(FOLLOW_16);
            rule__TRIOL__Group_3__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_3__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_3__1"


    // $ANTLR start "rule__TRIOL__Group_3__1__Impl"
    // InternalProperty.g:1626:1: rule__TRIOL__Group_3__1__Impl : ( ( rule__TRIOL__TrioOpFAssignment_3_1 ) ) ;
    public final void rule__TRIOL__Group_3__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1630:1: ( ( ( rule__TRIOL__TrioOpFAssignment_3_1 ) ) )
            // InternalProperty.g:1631:1: ( ( rule__TRIOL__TrioOpFAssignment_3_1 ) )
            {
            // InternalProperty.g:1631:1: ( ( rule__TRIOL__TrioOpFAssignment_3_1 ) )
            // InternalProperty.g:1632:1: ( rule__TRIOL__TrioOpFAssignment_3_1 )
            {
             before(grammarAccess.getTRIOLAccess().getTrioOpFAssignment_3_1()); 
            // InternalProperty.g:1633:1: ( rule__TRIOL__TrioOpFAssignment_3_1 )
            // InternalProperty.g:1633:2: rule__TRIOL__TrioOpFAssignment_3_1
            {
            pushFollow(FOLLOW_2);
            rule__TRIOL__TrioOpFAssignment_3_1();

            state._fsp--;


            }

             after(grammarAccess.getTRIOLAccess().getTrioOpFAssignment_3_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_3__1__Impl"


    // $ANTLR start "rule__TRIOL__Group_3__2"
    // InternalProperty.g:1643:1: rule__TRIOL__Group_3__2 : rule__TRIOL__Group_3__2__Impl rule__TRIOL__Group_3__3 ;
    public final void rule__TRIOL__Group_3__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1647:1: ( rule__TRIOL__Group_3__2__Impl rule__TRIOL__Group_3__3 )
            // InternalProperty.g:1648:2: rule__TRIOL__Group_3__2__Impl rule__TRIOL__Group_3__3
            {
            pushFollow(FOLLOW_6);
            rule__TRIOL__Group_3__2__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_3__3();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_3__2"


    // $ANTLR start "rule__TRIOL__Group_3__2__Impl"
    // InternalProperty.g:1655:1: rule__TRIOL__Group_3__2__Impl : ( '(' ) ;
    public final void rule__TRIOL__Group_3__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1659:1: ( ( '(' ) )
            // InternalProperty.g:1660:1: ( '(' )
            {
            // InternalProperty.g:1660:1: ( '(' )
            // InternalProperty.g:1661:1: '('
            {
             before(grammarAccess.getTRIOLAccess().getLeftParenthesisKeyword_3_2()); 
            match(input,29,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getLeftParenthesisKeyword_3_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_3__2__Impl"


    // $ANTLR start "rule__TRIOL__Group_3__3"
    // InternalProperty.g:1674:1: rule__TRIOL__Group_3__3 : rule__TRIOL__Group_3__3__Impl rule__TRIOL__Group_3__4 ;
    public final void rule__TRIOL__Group_3__3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1678:1: ( rule__TRIOL__Group_3__3__Impl rule__TRIOL__Group_3__4 )
            // InternalProperty.g:1679:2: rule__TRIOL__Group_3__3__Impl rule__TRIOL__Group_3__4
            {
            pushFollow(FOLLOW_7);
            rule__TRIOL__Group_3__3__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_3__4();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_3__3"


    // $ANTLR start "rule__TRIOL__Group_3__3__Impl"
    // InternalProperty.g:1686:1: rule__TRIOL__Group_3__3__Impl : ( ( rule__TRIOL__TrioOpF1Assignment_3_3 ) ) ;
    public final void rule__TRIOL__Group_3__3__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1690:1: ( ( ( rule__TRIOL__TrioOpF1Assignment_3_3 ) ) )
            // InternalProperty.g:1691:1: ( ( rule__TRIOL__TrioOpF1Assignment_3_3 ) )
            {
            // InternalProperty.g:1691:1: ( ( rule__TRIOL__TrioOpF1Assignment_3_3 ) )
            // InternalProperty.g:1692:1: ( rule__TRIOL__TrioOpF1Assignment_3_3 )
            {
             before(grammarAccess.getTRIOLAccess().getTrioOpF1Assignment_3_3()); 
            // InternalProperty.g:1693:1: ( rule__TRIOL__TrioOpF1Assignment_3_3 )
            // InternalProperty.g:1693:2: rule__TRIOL__TrioOpF1Assignment_3_3
            {
            pushFollow(FOLLOW_2);
            rule__TRIOL__TrioOpF1Assignment_3_3();

            state._fsp--;


            }

             after(grammarAccess.getTRIOLAccess().getTrioOpF1Assignment_3_3()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_3__3__Impl"


    // $ANTLR start "rule__TRIOL__Group_3__4"
    // InternalProperty.g:1703:1: rule__TRIOL__Group_3__4 : rule__TRIOL__Group_3__4__Impl ;
    public final void rule__TRIOL__Group_3__4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1707:1: ( rule__TRIOL__Group_3__4__Impl )
            // InternalProperty.g:1708:2: rule__TRIOL__Group_3__4__Impl
            {
            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_3__4__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_3__4"


    // $ANTLR start "rule__TRIOL__Group_3__4__Impl"
    // InternalProperty.g:1714:1: rule__TRIOL__Group_3__4__Impl : ( ')' ) ;
    public final void rule__TRIOL__Group_3__4__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1718:1: ( ( ')' ) )
            // InternalProperty.g:1719:1: ( ')' )
            {
            // InternalProperty.g:1719:1: ( ')' )
            // InternalProperty.g:1720:1: ')'
            {
             before(grammarAccess.getTRIOLAccess().getRightParenthesisKeyword_3_4()); 
            match(input,21,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getRightParenthesisKeyword_3_4()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_3__4__Impl"


    // $ANTLR start "rule__TRIOL__Group_4__0"
    // InternalProperty.g:1743:1: rule__TRIOL__Group_4__0 : rule__TRIOL__Group_4__0__Impl rule__TRIOL__Group_4__1 ;
    public final void rule__TRIOL__Group_4__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1747:1: ( rule__TRIOL__Group_4__0__Impl rule__TRIOL__Group_4__1 )
            // InternalProperty.g:1748:2: rule__TRIOL__Group_4__0__Impl rule__TRIOL__Group_4__1
            {
            pushFollow(FOLLOW_17);
            rule__TRIOL__Group_4__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_4__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_4__0"


    // $ANTLR start "rule__TRIOL__Group_4__0__Impl"
    // InternalProperty.g:1755:1: rule__TRIOL__Group_4__0__Impl : ( 'Time.' ) ;
    public final void rule__TRIOL__Group_4__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1759:1: ( ( 'Time.' ) )
            // InternalProperty.g:1760:1: ( 'Time.' )
            {
            // InternalProperty.g:1760:1: ( 'Time.' )
            // InternalProperty.g:1761:1: 'Time.'
            {
             before(grammarAccess.getTRIOLAccess().getTimeKeyword_4_0()); 
            match(input,28,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getTimeKeyword_4_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_4__0__Impl"


    // $ANTLR start "rule__TRIOL__Group_4__1"
    // InternalProperty.g:1774:1: rule__TRIOL__Group_4__1 : rule__TRIOL__Group_4__1__Impl rule__TRIOL__Group_4__2 ;
    public final void rule__TRIOL__Group_4__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1778:1: ( rule__TRIOL__Group_4__1__Impl rule__TRIOL__Group_4__2 )
            // InternalProperty.g:1779:2: rule__TRIOL__Group_4__1__Impl rule__TRIOL__Group_4__2
            {
            pushFollow(FOLLOW_16);
            rule__TRIOL__Group_4__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_4__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_4__1"


    // $ANTLR start "rule__TRIOL__Group_4__1__Impl"
    // InternalProperty.g:1786:1: rule__TRIOL__Group_4__1__Impl : ( ( rule__TRIOL__TrioOpFFAssignment_4_1 ) ) ;
    public final void rule__TRIOL__Group_4__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1790:1: ( ( ( rule__TRIOL__TrioOpFFAssignment_4_1 ) ) )
            // InternalProperty.g:1791:1: ( ( rule__TRIOL__TrioOpFFAssignment_4_1 ) )
            {
            // InternalProperty.g:1791:1: ( ( rule__TRIOL__TrioOpFFAssignment_4_1 ) )
            // InternalProperty.g:1792:1: ( rule__TRIOL__TrioOpFFAssignment_4_1 )
            {
             before(grammarAccess.getTRIOLAccess().getTrioOpFFAssignment_4_1()); 
            // InternalProperty.g:1793:1: ( rule__TRIOL__TrioOpFFAssignment_4_1 )
            // InternalProperty.g:1793:2: rule__TRIOL__TrioOpFFAssignment_4_1
            {
            pushFollow(FOLLOW_2);
            rule__TRIOL__TrioOpFFAssignment_4_1();

            state._fsp--;


            }

             after(grammarAccess.getTRIOLAccess().getTrioOpFFAssignment_4_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_4__1__Impl"


    // $ANTLR start "rule__TRIOL__Group_4__2"
    // InternalProperty.g:1803:1: rule__TRIOL__Group_4__2 : rule__TRIOL__Group_4__2__Impl rule__TRIOL__Group_4__3 ;
    public final void rule__TRIOL__Group_4__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1807:1: ( rule__TRIOL__Group_4__2__Impl rule__TRIOL__Group_4__3 )
            // InternalProperty.g:1808:2: rule__TRIOL__Group_4__2__Impl rule__TRIOL__Group_4__3
            {
            pushFollow(FOLLOW_6);
            rule__TRIOL__Group_4__2__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_4__3();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_4__2"


    // $ANTLR start "rule__TRIOL__Group_4__2__Impl"
    // InternalProperty.g:1815:1: rule__TRIOL__Group_4__2__Impl : ( '(' ) ;
    public final void rule__TRIOL__Group_4__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1819:1: ( ( '(' ) )
            // InternalProperty.g:1820:1: ( '(' )
            {
            // InternalProperty.g:1820:1: ( '(' )
            // InternalProperty.g:1821:1: '('
            {
             before(grammarAccess.getTRIOLAccess().getLeftParenthesisKeyword_4_2()); 
            match(input,29,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getLeftParenthesisKeyword_4_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_4__2__Impl"


    // $ANTLR start "rule__TRIOL__Group_4__3"
    // InternalProperty.g:1834:1: rule__TRIOL__Group_4__3 : rule__TRIOL__Group_4__3__Impl rule__TRIOL__Group_4__4 ;
    public final void rule__TRIOL__Group_4__3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1838:1: ( rule__TRIOL__Group_4__3__Impl rule__TRIOL__Group_4__4 )
            // InternalProperty.g:1839:2: rule__TRIOL__Group_4__3__Impl rule__TRIOL__Group_4__4
            {
            pushFollow(FOLLOW_11);
            rule__TRIOL__Group_4__3__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_4__4();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_4__3"


    // $ANTLR start "rule__TRIOL__Group_4__3__Impl"
    // InternalProperty.g:1846:1: rule__TRIOL__Group_4__3__Impl : ( ( rule__TRIOL__TrioOpFF1Assignment_4_3 ) ) ;
    public final void rule__TRIOL__Group_4__3__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1850:1: ( ( ( rule__TRIOL__TrioOpFF1Assignment_4_3 ) ) )
            // InternalProperty.g:1851:1: ( ( rule__TRIOL__TrioOpFF1Assignment_4_3 ) )
            {
            // InternalProperty.g:1851:1: ( ( rule__TRIOL__TrioOpFF1Assignment_4_3 ) )
            // InternalProperty.g:1852:1: ( rule__TRIOL__TrioOpFF1Assignment_4_3 )
            {
             before(grammarAccess.getTRIOLAccess().getTrioOpFF1Assignment_4_3()); 
            // InternalProperty.g:1853:1: ( rule__TRIOL__TrioOpFF1Assignment_4_3 )
            // InternalProperty.g:1853:2: rule__TRIOL__TrioOpFF1Assignment_4_3
            {
            pushFollow(FOLLOW_2);
            rule__TRIOL__TrioOpFF1Assignment_4_3();

            state._fsp--;


            }

             after(grammarAccess.getTRIOLAccess().getTrioOpFF1Assignment_4_3()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_4__3__Impl"


    // $ANTLR start "rule__TRIOL__Group_4__4"
    // InternalProperty.g:1863:1: rule__TRIOL__Group_4__4 : rule__TRIOL__Group_4__4__Impl rule__TRIOL__Group_4__5 ;
    public final void rule__TRIOL__Group_4__4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1867:1: ( rule__TRIOL__Group_4__4__Impl rule__TRIOL__Group_4__5 )
            // InternalProperty.g:1868:2: rule__TRIOL__Group_4__4__Impl rule__TRIOL__Group_4__5
            {
            pushFollow(FOLLOW_6);
            rule__TRIOL__Group_4__4__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_4__5();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_4__4"


    // $ANTLR start "rule__TRIOL__Group_4__4__Impl"
    // InternalProperty.g:1875:1: rule__TRIOL__Group_4__4__Impl : ( ',' ) ;
    public final void rule__TRIOL__Group_4__4__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1879:1: ( ( ',' ) )
            // InternalProperty.g:1880:1: ( ',' )
            {
            // InternalProperty.g:1880:1: ( ',' )
            // InternalProperty.g:1881:1: ','
            {
             before(grammarAccess.getTRIOLAccess().getCommaKeyword_4_4()); 
            match(input,24,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getCommaKeyword_4_4()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_4__4__Impl"


    // $ANTLR start "rule__TRIOL__Group_4__5"
    // InternalProperty.g:1894:1: rule__TRIOL__Group_4__5 : rule__TRIOL__Group_4__5__Impl rule__TRIOL__Group_4__6 ;
    public final void rule__TRIOL__Group_4__5() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1898:1: ( rule__TRIOL__Group_4__5__Impl rule__TRIOL__Group_4__6 )
            // InternalProperty.g:1899:2: rule__TRIOL__Group_4__5__Impl rule__TRIOL__Group_4__6
            {
            pushFollow(FOLLOW_7);
            rule__TRIOL__Group_4__5__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_4__6();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_4__5"


    // $ANTLR start "rule__TRIOL__Group_4__5__Impl"
    // InternalProperty.g:1906:1: rule__TRIOL__Group_4__5__Impl : ( ( rule__TRIOL__TrioOpFF2Assignment_4_5 ) ) ;
    public final void rule__TRIOL__Group_4__5__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1910:1: ( ( ( rule__TRIOL__TrioOpFF2Assignment_4_5 ) ) )
            // InternalProperty.g:1911:1: ( ( rule__TRIOL__TrioOpFF2Assignment_4_5 ) )
            {
            // InternalProperty.g:1911:1: ( ( rule__TRIOL__TrioOpFF2Assignment_4_5 ) )
            // InternalProperty.g:1912:1: ( rule__TRIOL__TrioOpFF2Assignment_4_5 )
            {
             before(grammarAccess.getTRIOLAccess().getTrioOpFF2Assignment_4_5()); 
            // InternalProperty.g:1913:1: ( rule__TRIOL__TrioOpFF2Assignment_4_5 )
            // InternalProperty.g:1913:2: rule__TRIOL__TrioOpFF2Assignment_4_5
            {
            pushFollow(FOLLOW_2);
            rule__TRIOL__TrioOpFF2Assignment_4_5();

            state._fsp--;


            }

             after(grammarAccess.getTRIOLAccess().getTrioOpFF2Assignment_4_5()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_4__5__Impl"


    // $ANTLR start "rule__TRIOL__Group_4__6"
    // InternalProperty.g:1923:1: rule__TRIOL__Group_4__6 : rule__TRIOL__Group_4__6__Impl ;
    public final void rule__TRIOL__Group_4__6() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1927:1: ( rule__TRIOL__Group_4__6__Impl )
            // InternalProperty.g:1928:2: rule__TRIOL__Group_4__6__Impl
            {
            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_4__6__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_4__6"


    // $ANTLR start "rule__TRIOL__Group_4__6__Impl"
    // InternalProperty.g:1934:1: rule__TRIOL__Group_4__6__Impl : ( ')' ) ;
    public final void rule__TRIOL__Group_4__6__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1938:1: ( ( ')' ) )
            // InternalProperty.g:1939:1: ( ')' )
            {
            // InternalProperty.g:1939:1: ( ')' )
            // InternalProperty.g:1940:1: ')'
            {
             before(grammarAccess.getTRIOLAccess().getRightParenthesisKeyword_4_6()); 
            match(input,21,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getRightParenthesisKeyword_4_6()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_4__6__Impl"


    // $ANTLR start "rule__TRIOL__Group_5__0"
    // InternalProperty.g:1967:1: rule__TRIOL__Group_5__0 : rule__TRIOL__Group_5__0__Impl rule__TRIOL__Group_5__1 ;
    public final void rule__TRIOL__Group_5__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1971:1: ( rule__TRIOL__Group_5__0__Impl rule__TRIOL__Group_5__1 )
            // InternalProperty.g:1972:2: rule__TRIOL__Group_5__0__Impl rule__TRIOL__Group_5__1
            {
            pushFollow(FOLLOW_18);
            rule__TRIOL__Group_5__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_5__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_5__0"


    // $ANTLR start "rule__TRIOL__Group_5__0__Impl"
    // InternalProperty.g:1979:1: rule__TRIOL__Group_5__0__Impl : ( 'Time.' ) ;
    public final void rule__TRIOL__Group_5__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:1983:1: ( ( 'Time.' ) )
            // InternalProperty.g:1984:1: ( 'Time.' )
            {
            // InternalProperty.g:1984:1: ( 'Time.' )
            // InternalProperty.g:1985:1: 'Time.'
            {
             before(grammarAccess.getTRIOLAccess().getTimeKeyword_5_0()); 
            match(input,28,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getTimeKeyword_5_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_5__0__Impl"


    // $ANTLR start "rule__TRIOL__Group_5__1"
    // InternalProperty.g:1998:1: rule__TRIOL__Group_5__1 : rule__TRIOL__Group_5__1__Impl rule__TRIOL__Group_5__2 ;
    public final void rule__TRIOL__Group_5__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2002:1: ( rule__TRIOL__Group_5__1__Impl rule__TRIOL__Group_5__2 )
            // InternalProperty.g:2003:2: rule__TRIOL__Group_5__1__Impl rule__TRIOL__Group_5__2
            {
            pushFollow(FOLLOW_16);
            rule__TRIOL__Group_5__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_5__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_5__1"


    // $ANTLR start "rule__TRIOL__Group_5__1__Impl"
    // InternalProperty.g:2010:1: rule__TRIOL__Group_5__1__Impl : ( ( rule__TRIOL__TrioOpFNAssignment_5_1 ) ) ;
    public final void rule__TRIOL__Group_5__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2014:1: ( ( ( rule__TRIOL__TrioOpFNAssignment_5_1 ) ) )
            // InternalProperty.g:2015:1: ( ( rule__TRIOL__TrioOpFNAssignment_5_1 ) )
            {
            // InternalProperty.g:2015:1: ( ( rule__TRIOL__TrioOpFNAssignment_5_1 ) )
            // InternalProperty.g:2016:1: ( rule__TRIOL__TrioOpFNAssignment_5_1 )
            {
             before(grammarAccess.getTRIOLAccess().getTrioOpFNAssignment_5_1()); 
            // InternalProperty.g:2017:1: ( rule__TRIOL__TrioOpFNAssignment_5_1 )
            // InternalProperty.g:2017:2: rule__TRIOL__TrioOpFNAssignment_5_1
            {
            pushFollow(FOLLOW_2);
            rule__TRIOL__TrioOpFNAssignment_5_1();

            state._fsp--;


            }

             after(grammarAccess.getTRIOLAccess().getTrioOpFNAssignment_5_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_5__1__Impl"


    // $ANTLR start "rule__TRIOL__Group_5__2"
    // InternalProperty.g:2027:1: rule__TRIOL__Group_5__2 : rule__TRIOL__Group_5__2__Impl rule__TRIOL__Group_5__3 ;
    public final void rule__TRIOL__Group_5__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2031:1: ( rule__TRIOL__Group_5__2__Impl rule__TRIOL__Group_5__3 )
            // InternalProperty.g:2032:2: rule__TRIOL__Group_5__2__Impl rule__TRIOL__Group_5__3
            {
            pushFollow(FOLLOW_6);
            rule__TRIOL__Group_5__2__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_5__3();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_5__2"


    // $ANTLR start "rule__TRIOL__Group_5__2__Impl"
    // InternalProperty.g:2039:1: rule__TRIOL__Group_5__2__Impl : ( '(' ) ;
    public final void rule__TRIOL__Group_5__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2043:1: ( ( '(' ) )
            // InternalProperty.g:2044:1: ( '(' )
            {
            // InternalProperty.g:2044:1: ( '(' )
            // InternalProperty.g:2045:1: '('
            {
             before(grammarAccess.getTRIOLAccess().getLeftParenthesisKeyword_5_2()); 
            match(input,29,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getLeftParenthesisKeyword_5_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_5__2__Impl"


    // $ANTLR start "rule__TRIOL__Group_5__3"
    // InternalProperty.g:2058:1: rule__TRIOL__Group_5__3 : rule__TRIOL__Group_5__3__Impl rule__TRIOL__Group_5__4 ;
    public final void rule__TRIOL__Group_5__3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2062:1: ( rule__TRIOL__Group_5__3__Impl rule__TRIOL__Group_5__4 )
            // InternalProperty.g:2063:2: rule__TRIOL__Group_5__3__Impl rule__TRIOL__Group_5__4
            {
            pushFollow(FOLLOW_11);
            rule__TRIOL__Group_5__3__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_5__4();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_5__3"


    // $ANTLR start "rule__TRIOL__Group_5__3__Impl"
    // InternalProperty.g:2070:1: rule__TRIOL__Group_5__3__Impl : ( ( rule__TRIOL__TrioOpFN1Assignment_5_3 ) ) ;
    public final void rule__TRIOL__Group_5__3__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2074:1: ( ( ( rule__TRIOL__TrioOpFN1Assignment_5_3 ) ) )
            // InternalProperty.g:2075:1: ( ( rule__TRIOL__TrioOpFN1Assignment_5_3 ) )
            {
            // InternalProperty.g:2075:1: ( ( rule__TRIOL__TrioOpFN1Assignment_5_3 ) )
            // InternalProperty.g:2076:1: ( rule__TRIOL__TrioOpFN1Assignment_5_3 )
            {
             before(grammarAccess.getTRIOLAccess().getTrioOpFN1Assignment_5_3()); 
            // InternalProperty.g:2077:1: ( rule__TRIOL__TrioOpFN1Assignment_5_3 )
            // InternalProperty.g:2077:2: rule__TRIOL__TrioOpFN1Assignment_5_3
            {
            pushFollow(FOLLOW_2);
            rule__TRIOL__TrioOpFN1Assignment_5_3();

            state._fsp--;


            }

             after(grammarAccess.getTRIOLAccess().getTrioOpFN1Assignment_5_3()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_5__3__Impl"


    // $ANTLR start "rule__TRIOL__Group_5__4"
    // InternalProperty.g:2087:1: rule__TRIOL__Group_5__4 : rule__TRIOL__Group_5__4__Impl rule__TRIOL__Group_5__5 ;
    public final void rule__TRIOL__Group_5__4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2091:1: ( rule__TRIOL__Group_5__4__Impl rule__TRIOL__Group_5__5 )
            // InternalProperty.g:2092:2: rule__TRIOL__Group_5__4__Impl rule__TRIOL__Group_5__5
            {
            pushFollow(FOLLOW_19);
            rule__TRIOL__Group_5__4__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_5__5();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_5__4"


    // $ANTLR start "rule__TRIOL__Group_5__4__Impl"
    // InternalProperty.g:2099:1: rule__TRIOL__Group_5__4__Impl : ( ',' ) ;
    public final void rule__TRIOL__Group_5__4__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2103:1: ( ( ',' ) )
            // InternalProperty.g:2104:1: ( ',' )
            {
            // InternalProperty.g:2104:1: ( ',' )
            // InternalProperty.g:2105:1: ','
            {
             before(grammarAccess.getTRIOLAccess().getCommaKeyword_5_4()); 
            match(input,24,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getCommaKeyword_5_4()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_5__4__Impl"


    // $ANTLR start "rule__TRIOL__Group_5__5"
    // InternalProperty.g:2118:1: rule__TRIOL__Group_5__5 : rule__TRIOL__Group_5__5__Impl rule__TRIOL__Group_5__6 ;
    public final void rule__TRIOL__Group_5__5() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2122:1: ( rule__TRIOL__Group_5__5__Impl rule__TRIOL__Group_5__6 )
            // InternalProperty.g:2123:2: rule__TRIOL__Group_5__5__Impl rule__TRIOL__Group_5__6
            {
            pushFollow(FOLLOW_7);
            rule__TRIOL__Group_5__5__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_5__6();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_5__5"


    // $ANTLR start "rule__TRIOL__Group_5__5__Impl"
    // InternalProperty.g:2130:1: rule__TRIOL__Group_5__5__Impl : ( ( rule__TRIOL__IntAssignment_5_5 ) ) ;
    public final void rule__TRIOL__Group_5__5__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2134:1: ( ( ( rule__TRIOL__IntAssignment_5_5 ) ) )
            // InternalProperty.g:2135:1: ( ( rule__TRIOL__IntAssignment_5_5 ) )
            {
            // InternalProperty.g:2135:1: ( ( rule__TRIOL__IntAssignment_5_5 ) )
            // InternalProperty.g:2136:1: ( rule__TRIOL__IntAssignment_5_5 )
            {
             before(grammarAccess.getTRIOLAccess().getIntAssignment_5_5()); 
            // InternalProperty.g:2137:1: ( rule__TRIOL__IntAssignment_5_5 )
            // InternalProperty.g:2137:2: rule__TRIOL__IntAssignment_5_5
            {
            pushFollow(FOLLOW_2);
            rule__TRIOL__IntAssignment_5_5();

            state._fsp--;


            }

             after(grammarAccess.getTRIOLAccess().getIntAssignment_5_5()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_5__5__Impl"


    // $ANTLR start "rule__TRIOL__Group_5__6"
    // InternalProperty.g:2147:1: rule__TRIOL__Group_5__6 : rule__TRIOL__Group_5__6__Impl ;
    public final void rule__TRIOL__Group_5__6() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2151:1: ( rule__TRIOL__Group_5__6__Impl )
            // InternalProperty.g:2152:2: rule__TRIOL__Group_5__6__Impl
            {
            pushFollow(FOLLOW_2);
            rule__TRIOL__Group_5__6__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_5__6"


    // $ANTLR start "rule__TRIOL__Group_5__6__Impl"
    // InternalProperty.g:2158:1: rule__TRIOL__Group_5__6__Impl : ( ')' ) ;
    public final void rule__TRIOL__Group_5__6__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2162:1: ( ( ')' ) )
            // InternalProperty.g:2163:1: ( ')' )
            {
            // InternalProperty.g:2163:1: ( ')' )
            // InternalProperty.g:2164:1: ')'
            {
             before(grammarAccess.getTRIOLAccess().getRightParenthesisKeyword_5_6()); 
            match(input,21,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getRightParenthesisKeyword_5_6()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__Group_5__6__Impl"


    // $ANTLR start "rule__TRIOR__Group__0"
    // InternalProperty.g:2191:1: rule__TRIOR__Group__0 : rule__TRIOR__Group__0__Impl rule__TRIOR__Group__1 ;
    public final void rule__TRIOR__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2195:1: ( rule__TRIOR__Group__0__Impl rule__TRIOR__Group__1 )
            // InternalProperty.g:2196:2: rule__TRIOR__Group__0__Impl rule__TRIOR__Group__1
            {
            pushFollow(FOLLOW_6);
            rule__TRIOR__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__TRIOR__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOR__Group__0"


    // $ANTLR start "rule__TRIOR__Group__0__Impl"
    // InternalProperty.g:2203:1: rule__TRIOR__Group__0__Impl : ( ( rule__TRIOR__TrioOP2Assignment_0 ) ) ;
    public final void rule__TRIOR__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2207:1: ( ( ( rule__TRIOR__TrioOP2Assignment_0 ) ) )
            // InternalProperty.g:2208:1: ( ( rule__TRIOR__TrioOP2Assignment_0 ) )
            {
            // InternalProperty.g:2208:1: ( ( rule__TRIOR__TrioOP2Assignment_0 ) )
            // InternalProperty.g:2209:1: ( rule__TRIOR__TrioOP2Assignment_0 )
            {
             before(grammarAccess.getTRIORAccess().getTrioOP2Assignment_0()); 
            // InternalProperty.g:2210:1: ( rule__TRIOR__TrioOP2Assignment_0 )
            // InternalProperty.g:2210:2: rule__TRIOR__TrioOP2Assignment_0
            {
            pushFollow(FOLLOW_2);
            rule__TRIOR__TrioOP2Assignment_0();

            state._fsp--;


            }

             after(grammarAccess.getTRIORAccess().getTrioOP2Assignment_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOR__Group__0__Impl"


    // $ANTLR start "rule__TRIOR__Group__1"
    // InternalProperty.g:2220:1: rule__TRIOR__Group__1 : rule__TRIOR__Group__1__Impl ;
    public final void rule__TRIOR__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2224:1: ( rule__TRIOR__Group__1__Impl )
            // InternalProperty.g:2225:2: rule__TRIOR__Group__1__Impl
            {
            pushFollow(FOLLOW_2);
            rule__TRIOR__Group__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOR__Group__1"


    // $ANTLR start "rule__TRIOR__Group__1__Impl"
    // InternalProperty.g:2231:1: rule__TRIOR__Group__1__Impl : ( ( rule__TRIOR__TrioAssignment_1 ) ) ;
    public final void rule__TRIOR__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2235:1: ( ( ( rule__TRIOR__TrioAssignment_1 ) ) )
            // InternalProperty.g:2236:1: ( ( rule__TRIOR__TrioAssignment_1 ) )
            {
            // InternalProperty.g:2236:1: ( ( rule__TRIOR__TrioAssignment_1 ) )
            // InternalProperty.g:2237:1: ( rule__TRIOR__TrioAssignment_1 )
            {
             before(grammarAccess.getTRIORAccess().getTrioAssignment_1()); 
            // InternalProperty.g:2238:1: ( rule__TRIOR__TrioAssignment_1 )
            // InternalProperty.g:2238:2: rule__TRIOR__TrioAssignment_1
            {
            pushFollow(FOLLOW_2);
            rule__TRIOR__TrioAssignment_1();

            state._fsp--;


            }

             after(grammarAccess.getTRIORAccess().getTrioAssignment_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOR__Group__1__Impl"


    // $ANTLR start "rule__ArithBool__Group__0"
    // InternalProperty.g:2252:1: rule__ArithBool__Group__0 : rule__ArithBool__Group__0__Impl rule__ArithBool__Group__1 ;
    public final void rule__ArithBool__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2256:1: ( rule__ArithBool__Group__0__Impl rule__ArithBool__Group__1 )
            // InternalProperty.g:2257:2: rule__ArithBool__Group__0__Impl rule__ArithBool__Group__1
            {
            pushFollow(FOLLOW_20);
            rule__ArithBool__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithBool__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithBool__Group__0"


    // $ANTLR start "rule__ArithBool__Group__0__Impl"
    // InternalProperty.g:2264:1: rule__ArithBool__Group__0__Impl : ( ( rule__ArithBool__ArithTerm1Assignment_0 ) ) ;
    public final void rule__ArithBool__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2268:1: ( ( ( rule__ArithBool__ArithTerm1Assignment_0 ) ) )
            // InternalProperty.g:2269:1: ( ( rule__ArithBool__ArithTerm1Assignment_0 ) )
            {
            // InternalProperty.g:2269:1: ( ( rule__ArithBool__ArithTerm1Assignment_0 ) )
            // InternalProperty.g:2270:1: ( rule__ArithBool__ArithTerm1Assignment_0 )
            {
             before(grammarAccess.getArithBoolAccess().getArithTerm1Assignment_0()); 
            // InternalProperty.g:2271:1: ( rule__ArithBool__ArithTerm1Assignment_0 )
            // InternalProperty.g:2271:2: rule__ArithBool__ArithTerm1Assignment_0
            {
            pushFollow(FOLLOW_2);
            rule__ArithBool__ArithTerm1Assignment_0();

            state._fsp--;


            }

             after(grammarAccess.getArithBoolAccess().getArithTerm1Assignment_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithBool__Group__0__Impl"


    // $ANTLR start "rule__ArithBool__Group__1"
    // InternalProperty.g:2281:1: rule__ArithBool__Group__1 : rule__ArithBool__Group__1__Impl ;
    public final void rule__ArithBool__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2285:1: ( rule__ArithBool__Group__1__Impl )
            // InternalProperty.g:2286:2: rule__ArithBool__Group__1__Impl
            {
            pushFollow(FOLLOW_2);
            rule__ArithBool__Group__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithBool__Group__1"


    // $ANTLR start "rule__ArithBool__Group__1__Impl"
    // InternalProperty.g:2292:1: rule__ArithBool__Group__1__Impl : ( ( rule__ArithBool__Group_1__0 )? ) ;
    public final void rule__ArithBool__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2296:1: ( ( ( rule__ArithBool__Group_1__0 )? ) )
            // InternalProperty.g:2297:1: ( ( rule__ArithBool__Group_1__0 )? )
            {
            // InternalProperty.g:2297:1: ( ( rule__ArithBool__Group_1__0 )? )
            // InternalProperty.g:2298:1: ( rule__ArithBool__Group_1__0 )?
            {
             before(grammarAccess.getArithBoolAccess().getGroup_1()); 
            // InternalProperty.g:2299:1: ( rule__ArithBool__Group_1__0 )?
            int alt10=2;
            int LA10_0 = input.LA(1);

            if ( (LA10_0==RULE_ARITH_COMPARE_OP) ) {
                alt10=1;
            }
            switch (alt10) {
                case 1 :
                    // InternalProperty.g:2299:2: rule__ArithBool__Group_1__0
                    {
                    pushFollow(FOLLOW_2);
                    rule__ArithBool__Group_1__0();

                    state._fsp--;


                    }
                    break;

            }

             after(grammarAccess.getArithBoolAccess().getGroup_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithBool__Group__1__Impl"


    // $ANTLR start "rule__ArithBool__Group_1__0"
    // InternalProperty.g:2313:1: rule__ArithBool__Group_1__0 : rule__ArithBool__Group_1__0__Impl rule__ArithBool__Group_1__1 ;
    public final void rule__ArithBool__Group_1__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2317:1: ( rule__ArithBool__Group_1__0__Impl rule__ArithBool__Group_1__1 )
            // InternalProperty.g:2318:2: rule__ArithBool__Group_1__0__Impl rule__ArithBool__Group_1__1
            {
            pushFollow(FOLLOW_21);
            rule__ArithBool__Group_1__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithBool__Group_1__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithBool__Group_1__0"


    // $ANTLR start "rule__ArithBool__Group_1__0__Impl"
    // InternalProperty.g:2325:1: rule__ArithBool__Group_1__0__Impl : ( ( rule__ArithBool__ArithCOPAssignment_1_0 ) ) ;
    public final void rule__ArithBool__Group_1__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2329:1: ( ( ( rule__ArithBool__ArithCOPAssignment_1_0 ) ) )
            // InternalProperty.g:2330:1: ( ( rule__ArithBool__ArithCOPAssignment_1_0 ) )
            {
            // InternalProperty.g:2330:1: ( ( rule__ArithBool__ArithCOPAssignment_1_0 ) )
            // InternalProperty.g:2331:1: ( rule__ArithBool__ArithCOPAssignment_1_0 )
            {
             before(grammarAccess.getArithBoolAccess().getArithCOPAssignment_1_0()); 
            // InternalProperty.g:2332:1: ( rule__ArithBool__ArithCOPAssignment_1_0 )
            // InternalProperty.g:2332:2: rule__ArithBool__ArithCOPAssignment_1_0
            {
            pushFollow(FOLLOW_2);
            rule__ArithBool__ArithCOPAssignment_1_0();

            state._fsp--;


            }

             after(grammarAccess.getArithBoolAccess().getArithCOPAssignment_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithBool__Group_1__0__Impl"


    // $ANTLR start "rule__ArithBool__Group_1__1"
    // InternalProperty.g:2342:1: rule__ArithBool__Group_1__1 : rule__ArithBool__Group_1__1__Impl ;
    public final void rule__ArithBool__Group_1__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2346:1: ( rule__ArithBool__Group_1__1__Impl )
            // InternalProperty.g:2347:2: rule__ArithBool__Group_1__1__Impl
            {
            pushFollow(FOLLOW_2);
            rule__ArithBool__Group_1__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithBool__Group_1__1"


    // $ANTLR start "rule__ArithBool__Group_1__1__Impl"
    // InternalProperty.g:2353:1: rule__ArithBool__Group_1__1__Impl : ( ( rule__ArithBool__ArithTerm2Assignment_1_1 ) ) ;
    public final void rule__ArithBool__Group_1__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2357:1: ( ( ( rule__ArithBool__ArithTerm2Assignment_1_1 ) ) )
            // InternalProperty.g:2358:1: ( ( rule__ArithBool__ArithTerm2Assignment_1_1 ) )
            {
            // InternalProperty.g:2358:1: ( ( rule__ArithBool__ArithTerm2Assignment_1_1 ) )
            // InternalProperty.g:2359:1: ( rule__ArithBool__ArithTerm2Assignment_1_1 )
            {
             before(grammarAccess.getArithBoolAccess().getArithTerm2Assignment_1_1()); 
            // InternalProperty.g:2360:1: ( rule__ArithBool__ArithTerm2Assignment_1_1 )
            // InternalProperty.g:2360:2: rule__ArithBool__ArithTerm2Assignment_1_1
            {
            pushFollow(FOLLOW_2);
            rule__ArithBool__ArithTerm2Assignment_1_1();

            state._fsp--;


            }

             after(grammarAccess.getArithBoolAccess().getArithTerm2Assignment_1_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithBool__Group_1__1__Impl"


    // $ANTLR start "rule__ArithTerm__Group__0"
    // InternalProperty.g:2374:1: rule__ArithTerm__Group__0 : rule__ArithTerm__Group__0__Impl rule__ArithTerm__Group__1 ;
    public final void rule__ArithTerm__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2378:1: ( rule__ArithTerm__Group__0__Impl rule__ArithTerm__Group__1 )
            // InternalProperty.g:2379:2: rule__ArithTerm__Group__0__Impl rule__ArithTerm__Group__1
            {
            pushFollow(FOLLOW_22);
            rule__ArithTerm__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithTerm__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTerm__Group__0"


    // $ANTLR start "rule__ArithTerm__Group__0__Impl"
    // InternalProperty.g:2386:1: rule__ArithTerm__Group__0__Impl : ( ( rule__ArithTerm__ArithTermLAssignment_0 ) ) ;
    public final void rule__ArithTerm__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2390:1: ( ( ( rule__ArithTerm__ArithTermLAssignment_0 ) ) )
            // InternalProperty.g:2391:1: ( ( rule__ArithTerm__ArithTermLAssignment_0 ) )
            {
            // InternalProperty.g:2391:1: ( ( rule__ArithTerm__ArithTermLAssignment_0 ) )
            // InternalProperty.g:2392:1: ( rule__ArithTerm__ArithTermLAssignment_0 )
            {
             before(grammarAccess.getArithTermAccess().getArithTermLAssignment_0()); 
            // InternalProperty.g:2393:1: ( rule__ArithTerm__ArithTermLAssignment_0 )
            // InternalProperty.g:2393:2: rule__ArithTerm__ArithTermLAssignment_0
            {
            pushFollow(FOLLOW_2);
            rule__ArithTerm__ArithTermLAssignment_0();

            state._fsp--;


            }

             after(grammarAccess.getArithTermAccess().getArithTermLAssignment_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTerm__Group__0__Impl"


    // $ANTLR start "rule__ArithTerm__Group__1"
    // InternalProperty.g:2403:1: rule__ArithTerm__Group__1 : rule__ArithTerm__Group__1__Impl ;
    public final void rule__ArithTerm__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2407:1: ( rule__ArithTerm__Group__1__Impl )
            // InternalProperty.g:2408:2: rule__ArithTerm__Group__1__Impl
            {
            pushFollow(FOLLOW_2);
            rule__ArithTerm__Group__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTerm__Group__1"


    // $ANTLR start "rule__ArithTerm__Group__1__Impl"
    // InternalProperty.g:2414:1: rule__ArithTerm__Group__1__Impl : ( ( rule__ArithTerm__ArithTermRAssignment_1 )? ) ;
    public final void rule__ArithTerm__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2418:1: ( ( ( rule__ArithTerm__ArithTermRAssignment_1 )? ) )
            // InternalProperty.g:2419:1: ( ( rule__ArithTerm__ArithTermRAssignment_1 )? )
            {
            // InternalProperty.g:2419:1: ( ( rule__ArithTerm__ArithTermRAssignment_1 )? )
            // InternalProperty.g:2420:1: ( rule__ArithTerm__ArithTermRAssignment_1 )?
            {
             before(grammarAccess.getArithTermAccess().getArithTermRAssignment_1()); 
            // InternalProperty.g:2421:1: ( rule__ArithTerm__ArithTermRAssignment_1 )?
            int alt11=2;
            int LA11_0 = input.LA(1);

            if ( (LA11_0==RULE_ARITH_OP) ) {
                alt11=1;
            }
            switch (alt11) {
                case 1 :
                    // InternalProperty.g:2421:2: rule__ArithTerm__ArithTermRAssignment_1
                    {
                    pushFollow(FOLLOW_2);
                    rule__ArithTerm__ArithTermRAssignment_1();

                    state._fsp--;


                    }
                    break;

            }

             after(grammarAccess.getArithTermAccess().getArithTermRAssignment_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTerm__Group__1__Impl"


    // $ANTLR start "rule__ArithTermL__Group_0__0"
    // InternalProperty.g:2435:1: rule__ArithTermL__Group_0__0 : rule__ArithTermL__Group_0__0__Impl rule__ArithTermL__Group_0__1 ;
    public final void rule__ArithTermL__Group_0__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2439:1: ( rule__ArithTermL__Group_0__0__Impl rule__ArithTermL__Group_0__1 )
            // InternalProperty.g:2440:2: rule__ArithTermL__Group_0__0__Impl rule__ArithTermL__Group_0__1
            {
            pushFollow(FOLLOW_6);
            rule__ArithTermL__Group_0__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithTermL__Group_0__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_0__0"


    // $ANTLR start "rule__ArithTermL__Group_0__0__Impl"
    // InternalProperty.g:2447:1: rule__ArithTermL__Group_0__0__Impl : ( '(' ) ;
    public final void rule__ArithTermL__Group_0__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2451:1: ( ( '(' ) )
            // InternalProperty.g:2452:1: ( '(' )
            {
            // InternalProperty.g:2452:1: ( '(' )
            // InternalProperty.g:2453:1: '('
            {
             before(grammarAccess.getArithTermLAccess().getLeftParenthesisKeyword_0_0()); 
            match(input,29,FOLLOW_2); 
             after(grammarAccess.getArithTermLAccess().getLeftParenthesisKeyword_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_0__0__Impl"


    // $ANTLR start "rule__ArithTermL__Group_0__1"
    // InternalProperty.g:2466:1: rule__ArithTermL__Group_0__1 : rule__ArithTermL__Group_0__1__Impl rule__ArithTermL__Group_0__2 ;
    public final void rule__ArithTermL__Group_0__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2470:1: ( rule__ArithTermL__Group_0__1__Impl rule__ArithTermL__Group_0__2 )
            // InternalProperty.g:2471:2: rule__ArithTermL__Group_0__1__Impl rule__ArithTermL__Group_0__2
            {
            pushFollow(FOLLOW_7);
            rule__ArithTermL__Group_0__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithTermL__Group_0__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_0__1"


    // $ANTLR start "rule__ArithTermL__Group_0__1__Impl"
    // InternalProperty.g:2478:1: rule__ArithTermL__Group_0__1__Impl : ( ( rule__ArithTermL__TrioAssignment_0_1 ) ) ;
    public final void rule__ArithTermL__Group_0__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2482:1: ( ( ( rule__ArithTermL__TrioAssignment_0_1 ) ) )
            // InternalProperty.g:2483:1: ( ( rule__ArithTermL__TrioAssignment_0_1 ) )
            {
            // InternalProperty.g:2483:1: ( ( rule__ArithTermL__TrioAssignment_0_1 ) )
            // InternalProperty.g:2484:1: ( rule__ArithTermL__TrioAssignment_0_1 )
            {
             before(grammarAccess.getArithTermLAccess().getTrioAssignment_0_1()); 
            // InternalProperty.g:2485:1: ( rule__ArithTermL__TrioAssignment_0_1 )
            // InternalProperty.g:2485:2: rule__ArithTermL__TrioAssignment_0_1
            {
            pushFollow(FOLLOW_2);
            rule__ArithTermL__TrioAssignment_0_1();

            state._fsp--;


            }

             after(grammarAccess.getArithTermLAccess().getTrioAssignment_0_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_0__1__Impl"


    // $ANTLR start "rule__ArithTermL__Group_0__2"
    // InternalProperty.g:2495:1: rule__ArithTermL__Group_0__2 : rule__ArithTermL__Group_0__2__Impl ;
    public final void rule__ArithTermL__Group_0__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2499:1: ( rule__ArithTermL__Group_0__2__Impl )
            // InternalProperty.g:2500:2: rule__ArithTermL__Group_0__2__Impl
            {
            pushFollow(FOLLOW_2);
            rule__ArithTermL__Group_0__2__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_0__2"


    // $ANTLR start "rule__ArithTermL__Group_0__2__Impl"
    // InternalProperty.g:2506:1: rule__ArithTermL__Group_0__2__Impl : ( ')' ) ;
    public final void rule__ArithTermL__Group_0__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2510:1: ( ( ')' ) )
            // InternalProperty.g:2511:1: ( ')' )
            {
            // InternalProperty.g:2511:1: ( ')' )
            // InternalProperty.g:2512:1: ')'
            {
             before(grammarAccess.getArithTermLAccess().getRightParenthesisKeyword_0_2()); 
            match(input,21,FOLLOW_2); 
             after(grammarAccess.getArithTermLAccess().getRightParenthesisKeyword_0_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_0__2__Impl"


    // $ANTLR start "rule__ArithTermL__Group_3__0"
    // InternalProperty.g:2531:1: rule__ArithTermL__Group_3__0 : rule__ArithTermL__Group_3__0__Impl rule__ArithTermL__Group_3__1 ;
    public final void rule__ArithTermL__Group_3__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2535:1: ( rule__ArithTermL__Group_3__0__Impl rule__ArithTermL__Group_3__1 )
            // InternalProperty.g:2536:2: rule__ArithTermL__Group_3__0__Impl rule__ArithTermL__Group_3__1
            {
            pushFollow(FOLLOW_21);
            rule__ArithTermL__Group_3__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithTermL__Group_3__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_3__0"


    // $ANTLR start "rule__ArithTermL__Group_3__0__Impl"
    // InternalProperty.g:2543:1: rule__ArithTermL__Group_3__0__Impl : ( 'Futr(' ) ;
    public final void rule__ArithTermL__Group_3__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2547:1: ( ( 'Futr(' ) )
            // InternalProperty.g:2548:1: ( 'Futr(' )
            {
            // InternalProperty.g:2548:1: ( 'Futr(' )
            // InternalProperty.g:2549:1: 'Futr('
            {
             before(grammarAccess.getArithTermLAccess().getFutrKeyword_3_0()); 
            match(input,30,FOLLOW_2); 
             after(grammarAccess.getArithTermLAccess().getFutrKeyword_3_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_3__0__Impl"


    // $ANTLR start "rule__ArithTermL__Group_3__1"
    // InternalProperty.g:2562:1: rule__ArithTermL__Group_3__1 : rule__ArithTermL__Group_3__1__Impl rule__ArithTermL__Group_3__2 ;
    public final void rule__ArithTermL__Group_3__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2566:1: ( rule__ArithTermL__Group_3__1__Impl rule__ArithTermL__Group_3__2 )
            // InternalProperty.g:2567:2: rule__ArithTermL__Group_3__1__Impl rule__ArithTermL__Group_3__2
            {
            pushFollow(FOLLOW_11);
            rule__ArithTermL__Group_3__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithTermL__Group_3__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_3__1"


    // $ANTLR start "rule__ArithTermL__Group_3__1__Impl"
    // InternalProperty.g:2574:1: rule__ArithTermL__Group_3__1__Impl : ( ( rule__ArithTermL__ArithTermFAssignment_3_1 ) ) ;
    public final void rule__ArithTermL__Group_3__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2578:1: ( ( ( rule__ArithTermL__ArithTermFAssignment_3_1 ) ) )
            // InternalProperty.g:2579:1: ( ( rule__ArithTermL__ArithTermFAssignment_3_1 ) )
            {
            // InternalProperty.g:2579:1: ( ( rule__ArithTermL__ArithTermFAssignment_3_1 ) )
            // InternalProperty.g:2580:1: ( rule__ArithTermL__ArithTermFAssignment_3_1 )
            {
             before(grammarAccess.getArithTermLAccess().getArithTermFAssignment_3_1()); 
            // InternalProperty.g:2581:1: ( rule__ArithTermL__ArithTermFAssignment_3_1 )
            // InternalProperty.g:2581:2: rule__ArithTermL__ArithTermFAssignment_3_1
            {
            pushFollow(FOLLOW_2);
            rule__ArithTermL__ArithTermFAssignment_3_1();

            state._fsp--;


            }

             after(grammarAccess.getArithTermLAccess().getArithTermFAssignment_3_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_3__1__Impl"


    // $ANTLR start "rule__ArithTermL__Group_3__2"
    // InternalProperty.g:2591:1: rule__ArithTermL__Group_3__2 : rule__ArithTermL__Group_3__2__Impl rule__ArithTermL__Group_3__3 ;
    public final void rule__ArithTermL__Group_3__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2595:1: ( rule__ArithTermL__Group_3__2__Impl rule__ArithTermL__Group_3__3 )
            // InternalProperty.g:2596:2: rule__ArithTermL__Group_3__2__Impl rule__ArithTermL__Group_3__3
            {
            pushFollow(FOLLOW_19);
            rule__ArithTermL__Group_3__2__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithTermL__Group_3__3();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_3__2"


    // $ANTLR start "rule__ArithTermL__Group_3__2__Impl"
    // InternalProperty.g:2603:1: rule__ArithTermL__Group_3__2__Impl : ( ',' ) ;
    public final void rule__ArithTermL__Group_3__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2607:1: ( ( ',' ) )
            // InternalProperty.g:2608:1: ( ',' )
            {
            // InternalProperty.g:2608:1: ( ',' )
            // InternalProperty.g:2609:1: ','
            {
             before(grammarAccess.getArithTermLAccess().getCommaKeyword_3_2()); 
            match(input,24,FOLLOW_2); 
             after(grammarAccess.getArithTermLAccess().getCommaKeyword_3_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_3__2__Impl"


    // $ANTLR start "rule__ArithTermL__Group_3__3"
    // InternalProperty.g:2622:1: rule__ArithTermL__Group_3__3 : rule__ArithTermL__Group_3__3__Impl rule__ArithTermL__Group_3__4 ;
    public final void rule__ArithTermL__Group_3__3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2626:1: ( rule__ArithTermL__Group_3__3__Impl rule__ArithTermL__Group_3__4 )
            // InternalProperty.g:2627:2: rule__ArithTermL__Group_3__3__Impl rule__ArithTermL__Group_3__4
            {
            pushFollow(FOLLOW_7);
            rule__ArithTermL__Group_3__3__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithTermL__Group_3__4();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_3__3"


    // $ANTLR start "rule__ArithTermL__Group_3__3__Impl"
    // InternalProperty.g:2634:1: rule__ArithTermL__Group_3__3__Impl : ( ( rule__ArithTermL__IntFAssignment_3_3 ) ) ;
    public final void rule__ArithTermL__Group_3__3__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2638:1: ( ( ( rule__ArithTermL__IntFAssignment_3_3 ) ) )
            // InternalProperty.g:2639:1: ( ( rule__ArithTermL__IntFAssignment_3_3 ) )
            {
            // InternalProperty.g:2639:1: ( ( rule__ArithTermL__IntFAssignment_3_3 ) )
            // InternalProperty.g:2640:1: ( rule__ArithTermL__IntFAssignment_3_3 )
            {
             before(grammarAccess.getArithTermLAccess().getIntFAssignment_3_3()); 
            // InternalProperty.g:2641:1: ( rule__ArithTermL__IntFAssignment_3_3 )
            // InternalProperty.g:2641:2: rule__ArithTermL__IntFAssignment_3_3
            {
            pushFollow(FOLLOW_2);
            rule__ArithTermL__IntFAssignment_3_3();

            state._fsp--;


            }

             after(grammarAccess.getArithTermLAccess().getIntFAssignment_3_3()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_3__3__Impl"


    // $ANTLR start "rule__ArithTermL__Group_3__4"
    // InternalProperty.g:2651:1: rule__ArithTermL__Group_3__4 : rule__ArithTermL__Group_3__4__Impl ;
    public final void rule__ArithTermL__Group_3__4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2655:1: ( rule__ArithTermL__Group_3__4__Impl )
            // InternalProperty.g:2656:2: rule__ArithTermL__Group_3__4__Impl
            {
            pushFollow(FOLLOW_2);
            rule__ArithTermL__Group_3__4__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_3__4"


    // $ANTLR start "rule__ArithTermL__Group_3__4__Impl"
    // InternalProperty.g:2662:1: rule__ArithTermL__Group_3__4__Impl : ( ')' ) ;
    public final void rule__ArithTermL__Group_3__4__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2666:1: ( ( ')' ) )
            // InternalProperty.g:2667:1: ( ')' )
            {
            // InternalProperty.g:2667:1: ( ')' )
            // InternalProperty.g:2668:1: ')'
            {
             before(grammarAccess.getArithTermLAccess().getRightParenthesisKeyword_3_4()); 
            match(input,21,FOLLOW_2); 
             after(grammarAccess.getArithTermLAccess().getRightParenthesisKeyword_3_4()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_3__4__Impl"


    // $ANTLR start "rule__ArithTermL__Group_4__0"
    // InternalProperty.g:2691:1: rule__ArithTermL__Group_4__0 : rule__ArithTermL__Group_4__0__Impl rule__ArithTermL__Group_4__1 ;
    public final void rule__ArithTermL__Group_4__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2695:1: ( rule__ArithTermL__Group_4__0__Impl rule__ArithTermL__Group_4__1 )
            // InternalProperty.g:2696:2: rule__ArithTermL__Group_4__0__Impl rule__ArithTermL__Group_4__1
            {
            pushFollow(FOLLOW_21);
            rule__ArithTermL__Group_4__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithTermL__Group_4__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_4__0"


    // $ANTLR start "rule__ArithTermL__Group_4__0__Impl"
    // InternalProperty.g:2703:1: rule__ArithTermL__Group_4__0__Impl : ( 'Past(' ) ;
    public final void rule__ArithTermL__Group_4__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2707:1: ( ( 'Past(' ) )
            // InternalProperty.g:2708:1: ( 'Past(' )
            {
            // InternalProperty.g:2708:1: ( 'Past(' )
            // InternalProperty.g:2709:1: 'Past('
            {
             before(grammarAccess.getArithTermLAccess().getPastKeyword_4_0()); 
            match(input,31,FOLLOW_2); 
             after(grammarAccess.getArithTermLAccess().getPastKeyword_4_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_4__0__Impl"


    // $ANTLR start "rule__ArithTermL__Group_4__1"
    // InternalProperty.g:2722:1: rule__ArithTermL__Group_4__1 : rule__ArithTermL__Group_4__1__Impl rule__ArithTermL__Group_4__2 ;
    public final void rule__ArithTermL__Group_4__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2726:1: ( rule__ArithTermL__Group_4__1__Impl rule__ArithTermL__Group_4__2 )
            // InternalProperty.g:2727:2: rule__ArithTermL__Group_4__1__Impl rule__ArithTermL__Group_4__2
            {
            pushFollow(FOLLOW_11);
            rule__ArithTermL__Group_4__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithTermL__Group_4__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_4__1"


    // $ANTLR start "rule__ArithTermL__Group_4__1__Impl"
    // InternalProperty.g:2734:1: rule__ArithTermL__Group_4__1__Impl : ( ( rule__ArithTermL__ArithTermPAssignment_4_1 ) ) ;
    public final void rule__ArithTermL__Group_4__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2738:1: ( ( ( rule__ArithTermL__ArithTermPAssignment_4_1 ) ) )
            // InternalProperty.g:2739:1: ( ( rule__ArithTermL__ArithTermPAssignment_4_1 ) )
            {
            // InternalProperty.g:2739:1: ( ( rule__ArithTermL__ArithTermPAssignment_4_1 ) )
            // InternalProperty.g:2740:1: ( rule__ArithTermL__ArithTermPAssignment_4_1 )
            {
             before(grammarAccess.getArithTermLAccess().getArithTermPAssignment_4_1()); 
            // InternalProperty.g:2741:1: ( rule__ArithTermL__ArithTermPAssignment_4_1 )
            // InternalProperty.g:2741:2: rule__ArithTermL__ArithTermPAssignment_4_1
            {
            pushFollow(FOLLOW_2);
            rule__ArithTermL__ArithTermPAssignment_4_1();

            state._fsp--;


            }

             after(grammarAccess.getArithTermLAccess().getArithTermPAssignment_4_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_4__1__Impl"


    // $ANTLR start "rule__ArithTermL__Group_4__2"
    // InternalProperty.g:2751:1: rule__ArithTermL__Group_4__2 : rule__ArithTermL__Group_4__2__Impl rule__ArithTermL__Group_4__3 ;
    public final void rule__ArithTermL__Group_4__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2755:1: ( rule__ArithTermL__Group_4__2__Impl rule__ArithTermL__Group_4__3 )
            // InternalProperty.g:2756:2: rule__ArithTermL__Group_4__2__Impl rule__ArithTermL__Group_4__3
            {
            pushFollow(FOLLOW_19);
            rule__ArithTermL__Group_4__2__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithTermL__Group_4__3();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_4__2"


    // $ANTLR start "rule__ArithTermL__Group_4__2__Impl"
    // InternalProperty.g:2763:1: rule__ArithTermL__Group_4__2__Impl : ( ',' ) ;
    public final void rule__ArithTermL__Group_4__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2767:1: ( ( ',' ) )
            // InternalProperty.g:2768:1: ( ',' )
            {
            // InternalProperty.g:2768:1: ( ',' )
            // InternalProperty.g:2769:1: ','
            {
             before(grammarAccess.getArithTermLAccess().getCommaKeyword_4_2()); 
            match(input,24,FOLLOW_2); 
             after(grammarAccess.getArithTermLAccess().getCommaKeyword_4_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_4__2__Impl"


    // $ANTLR start "rule__ArithTermL__Group_4__3"
    // InternalProperty.g:2782:1: rule__ArithTermL__Group_4__3 : rule__ArithTermL__Group_4__3__Impl rule__ArithTermL__Group_4__4 ;
    public final void rule__ArithTermL__Group_4__3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2786:1: ( rule__ArithTermL__Group_4__3__Impl rule__ArithTermL__Group_4__4 )
            // InternalProperty.g:2787:2: rule__ArithTermL__Group_4__3__Impl rule__ArithTermL__Group_4__4
            {
            pushFollow(FOLLOW_7);
            rule__ArithTermL__Group_4__3__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithTermL__Group_4__4();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_4__3"


    // $ANTLR start "rule__ArithTermL__Group_4__3__Impl"
    // InternalProperty.g:2794:1: rule__ArithTermL__Group_4__3__Impl : ( ( rule__ArithTermL__IntPAssignment_4_3 ) ) ;
    public final void rule__ArithTermL__Group_4__3__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2798:1: ( ( ( rule__ArithTermL__IntPAssignment_4_3 ) ) )
            // InternalProperty.g:2799:1: ( ( rule__ArithTermL__IntPAssignment_4_3 ) )
            {
            // InternalProperty.g:2799:1: ( ( rule__ArithTermL__IntPAssignment_4_3 ) )
            // InternalProperty.g:2800:1: ( rule__ArithTermL__IntPAssignment_4_3 )
            {
             before(grammarAccess.getArithTermLAccess().getIntPAssignment_4_3()); 
            // InternalProperty.g:2801:1: ( rule__ArithTermL__IntPAssignment_4_3 )
            // InternalProperty.g:2801:2: rule__ArithTermL__IntPAssignment_4_3
            {
            pushFollow(FOLLOW_2);
            rule__ArithTermL__IntPAssignment_4_3();

            state._fsp--;


            }

             after(grammarAccess.getArithTermLAccess().getIntPAssignment_4_3()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_4__3__Impl"


    // $ANTLR start "rule__ArithTermL__Group_4__4"
    // InternalProperty.g:2811:1: rule__ArithTermL__Group_4__4 : rule__ArithTermL__Group_4__4__Impl ;
    public final void rule__ArithTermL__Group_4__4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2815:1: ( rule__ArithTermL__Group_4__4__Impl )
            // InternalProperty.g:2816:2: rule__ArithTermL__Group_4__4__Impl
            {
            pushFollow(FOLLOW_2);
            rule__ArithTermL__Group_4__4__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_4__4"


    // $ANTLR start "rule__ArithTermL__Group_4__4__Impl"
    // InternalProperty.g:2822:1: rule__ArithTermL__Group_4__4__Impl : ( ')' ) ;
    public final void rule__ArithTermL__Group_4__4__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2826:1: ( ( ')' ) )
            // InternalProperty.g:2827:1: ( ')' )
            {
            // InternalProperty.g:2827:1: ( ')' )
            // InternalProperty.g:2828:1: ')'
            {
             before(grammarAccess.getArithTermLAccess().getRightParenthesisKeyword_4_4()); 
            match(input,21,FOLLOW_2); 
             after(grammarAccess.getArithTermLAccess().getRightParenthesisKeyword_4_4()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__Group_4__4__Impl"


    // $ANTLR start "rule__ArithTermR__Group__0"
    // InternalProperty.g:2851:1: rule__ArithTermR__Group__0 : rule__ArithTermR__Group__0__Impl rule__ArithTermR__Group__1 ;
    public final void rule__ArithTermR__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2855:1: ( rule__ArithTermR__Group__0__Impl rule__ArithTermR__Group__1 )
            // InternalProperty.g:2856:2: rule__ArithTermR__Group__0__Impl rule__ArithTermR__Group__1
            {
            pushFollow(FOLLOW_21);
            rule__ArithTermR__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithTermR__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermR__Group__0"


    // $ANTLR start "rule__ArithTermR__Group__0__Impl"
    // InternalProperty.g:2863:1: rule__ArithTermR__Group__0__Impl : ( ( rule__ArithTermR__ArithOPAssignment_0 ) ) ;
    public final void rule__ArithTermR__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2867:1: ( ( ( rule__ArithTermR__ArithOPAssignment_0 ) ) )
            // InternalProperty.g:2868:1: ( ( rule__ArithTermR__ArithOPAssignment_0 ) )
            {
            // InternalProperty.g:2868:1: ( ( rule__ArithTermR__ArithOPAssignment_0 ) )
            // InternalProperty.g:2869:1: ( rule__ArithTermR__ArithOPAssignment_0 )
            {
             before(grammarAccess.getArithTermRAccess().getArithOPAssignment_0()); 
            // InternalProperty.g:2870:1: ( rule__ArithTermR__ArithOPAssignment_0 )
            // InternalProperty.g:2870:2: rule__ArithTermR__ArithOPAssignment_0
            {
            pushFollow(FOLLOW_2);
            rule__ArithTermR__ArithOPAssignment_0();

            state._fsp--;


            }

             after(grammarAccess.getArithTermRAccess().getArithOPAssignment_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermR__Group__0__Impl"


    // $ANTLR start "rule__ArithTermR__Group__1"
    // InternalProperty.g:2880:1: rule__ArithTermR__Group__1 : rule__ArithTermR__Group__1__Impl ;
    public final void rule__ArithTermR__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2884:1: ( rule__ArithTermR__Group__1__Impl )
            // InternalProperty.g:2885:2: rule__ArithTermR__Group__1__Impl
            {
            pushFollow(FOLLOW_2);
            rule__ArithTermR__Group__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermR__Group__1"


    // $ANTLR start "rule__ArithTermR__Group__1__Impl"
    // InternalProperty.g:2891:1: rule__ArithTermR__Group__1__Impl : ( ( rule__ArithTermR__ArithTermAssignment_1 ) ) ;
    public final void rule__ArithTermR__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2895:1: ( ( ( rule__ArithTermR__ArithTermAssignment_1 ) ) )
            // InternalProperty.g:2896:1: ( ( rule__ArithTermR__ArithTermAssignment_1 ) )
            {
            // InternalProperty.g:2896:1: ( ( rule__ArithTermR__ArithTermAssignment_1 ) )
            // InternalProperty.g:2897:1: ( rule__ArithTermR__ArithTermAssignment_1 )
            {
             before(grammarAccess.getArithTermRAccess().getArithTermAssignment_1()); 
            // InternalProperty.g:2898:1: ( rule__ArithTermR__ArithTermAssignment_1 )
            // InternalProperty.g:2898:2: rule__ArithTermR__ArithTermAssignment_1
            {
            pushFollow(FOLLOW_2);
            rule__ArithTermR__ArithTermAssignment_1();

            state._fsp--;


            }

             after(grammarAccess.getArithTermRAccess().getArithTermAssignment_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermR__Group__1__Impl"


    // $ANTLR start "rule__ArithVar__Group_0__0"
    // InternalProperty.g:2912:1: rule__ArithVar__Group_0__0 : rule__ArithVar__Group_0__0__Impl rule__ArithVar__Group_0__1 ;
    public final void rule__ArithVar__Group_0__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2916:1: ( rule__ArithVar__Group_0__0__Impl rule__ArithVar__Group_0__1 )
            // InternalProperty.g:2917:2: rule__ArithVar__Group_0__0__Impl rule__ArithVar__Group_0__1
            {
            pushFollow(FOLLOW_23);
            rule__ArithVar__Group_0__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithVar__Group_0__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_0__0"


    // $ANTLR start "rule__ArithVar__Group_0__0__Impl"
    // InternalProperty.g:2924:1: rule__ArithVar__Group_0__0__Impl : ( ( rule__ArithVar__ObjAssignment_0_0 ) ) ;
    public final void rule__ArithVar__Group_0__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2928:1: ( ( ( rule__ArithVar__ObjAssignment_0_0 ) ) )
            // InternalProperty.g:2929:1: ( ( rule__ArithVar__ObjAssignment_0_0 ) )
            {
            // InternalProperty.g:2929:1: ( ( rule__ArithVar__ObjAssignment_0_0 ) )
            // InternalProperty.g:2930:1: ( rule__ArithVar__ObjAssignment_0_0 )
            {
             before(grammarAccess.getArithVarAccess().getObjAssignment_0_0()); 
            // InternalProperty.g:2931:1: ( rule__ArithVar__ObjAssignment_0_0 )
            // InternalProperty.g:2931:2: rule__ArithVar__ObjAssignment_0_0
            {
            pushFollow(FOLLOW_2);
            rule__ArithVar__ObjAssignment_0_0();

            state._fsp--;


            }

             after(grammarAccess.getArithVarAccess().getObjAssignment_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_0__0__Impl"


    // $ANTLR start "rule__ArithVar__Group_0__1"
    // InternalProperty.g:2941:1: rule__ArithVar__Group_0__1 : rule__ArithVar__Group_0__1__Impl rule__ArithVar__Group_0__2 ;
    public final void rule__ArithVar__Group_0__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2945:1: ( rule__ArithVar__Group_0__1__Impl rule__ArithVar__Group_0__2 )
            // InternalProperty.g:2946:2: rule__ArithVar__Group_0__1__Impl rule__ArithVar__Group_0__2
            {
            pushFollow(FOLLOW_9);
            rule__ArithVar__Group_0__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithVar__Group_0__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_0__1"


    // $ANTLR start "rule__ArithVar__Group_0__1__Impl"
    // InternalProperty.g:2953:1: rule__ArithVar__Group_0__1__Impl : ( '.' ) ;
    public final void rule__ArithVar__Group_0__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2957:1: ( ( '.' ) )
            // InternalProperty.g:2958:1: ( '.' )
            {
            // InternalProperty.g:2958:1: ( '.' )
            // InternalProperty.g:2959:1: '.'
            {
             before(grammarAccess.getArithVarAccess().getFullStopKeyword_0_1()); 
            match(input,32,FOLLOW_2); 
             after(grammarAccess.getArithVarAccess().getFullStopKeyword_0_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_0__1__Impl"


    // $ANTLR start "rule__ArithVar__Group_0__2"
    // InternalProperty.g:2972:1: rule__ArithVar__Group_0__2 : rule__ArithVar__Group_0__2__Impl ;
    public final void rule__ArithVar__Group_0__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2976:1: ( rule__ArithVar__Group_0__2__Impl )
            // InternalProperty.g:2977:2: rule__ArithVar__Group_0__2__Impl
            {
            pushFollow(FOLLOW_2);
            rule__ArithVar__Group_0__2__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_0__2"


    // $ANTLR start "rule__ArithVar__Group_0__2__Impl"
    // InternalProperty.g:2983:1: rule__ArithVar__Group_0__2__Impl : ( ( rule__ArithVar__AtrAssignment_0_2 ) ) ;
    public final void rule__ArithVar__Group_0__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:2987:1: ( ( ( rule__ArithVar__AtrAssignment_0_2 ) ) )
            // InternalProperty.g:2988:1: ( ( rule__ArithVar__AtrAssignment_0_2 ) )
            {
            // InternalProperty.g:2988:1: ( ( rule__ArithVar__AtrAssignment_0_2 ) )
            // InternalProperty.g:2989:1: ( rule__ArithVar__AtrAssignment_0_2 )
            {
             before(grammarAccess.getArithVarAccess().getAtrAssignment_0_2()); 
            // InternalProperty.g:2990:1: ( rule__ArithVar__AtrAssignment_0_2 )
            // InternalProperty.g:2990:2: rule__ArithVar__AtrAssignment_0_2
            {
            pushFollow(FOLLOW_2);
            rule__ArithVar__AtrAssignment_0_2();

            state._fsp--;


            }

             after(grammarAccess.getArithVarAccess().getAtrAssignment_0_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_0__2__Impl"


    // $ANTLR start "rule__ArithVar__Group_1__0"
    // InternalProperty.g:3006:1: rule__ArithVar__Group_1__0 : rule__ArithVar__Group_1__0__Impl rule__ArithVar__Group_1__1 ;
    public final void rule__ArithVar__Group_1__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3010:1: ( rule__ArithVar__Group_1__0__Impl rule__ArithVar__Group_1__1 )
            // InternalProperty.g:3011:2: rule__ArithVar__Group_1__0__Impl rule__ArithVar__Group_1__1
            {
            pushFollow(FOLLOW_24);
            rule__ArithVar__Group_1__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithVar__Group_1__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_1__0"


    // $ANTLR start "rule__ArithVar__Group_1__0__Impl"
    // InternalProperty.g:3018:1: rule__ArithVar__Group_1__0__Impl : ( ( rule__ArithVar__ObjAssignment_1_0 ) ) ;
    public final void rule__ArithVar__Group_1__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3022:1: ( ( ( rule__ArithVar__ObjAssignment_1_0 ) ) )
            // InternalProperty.g:3023:1: ( ( rule__ArithVar__ObjAssignment_1_0 ) )
            {
            // InternalProperty.g:3023:1: ( ( rule__ArithVar__ObjAssignment_1_0 ) )
            // InternalProperty.g:3024:1: ( rule__ArithVar__ObjAssignment_1_0 )
            {
             before(grammarAccess.getArithVarAccess().getObjAssignment_1_0()); 
            // InternalProperty.g:3025:1: ( rule__ArithVar__ObjAssignment_1_0 )
            // InternalProperty.g:3025:2: rule__ArithVar__ObjAssignment_1_0
            {
            pushFollow(FOLLOW_2);
            rule__ArithVar__ObjAssignment_1_0();

            state._fsp--;


            }

             after(grammarAccess.getArithVarAccess().getObjAssignment_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_1__0__Impl"


    // $ANTLR start "rule__ArithVar__Group_1__1"
    // InternalProperty.g:3035:1: rule__ArithVar__Group_1__1 : rule__ArithVar__Group_1__1__Impl rule__ArithVar__Group_1__2 ;
    public final void rule__ArithVar__Group_1__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3039:1: ( rule__ArithVar__Group_1__1__Impl rule__ArithVar__Group_1__2 )
            // InternalProperty.g:3040:2: rule__ArithVar__Group_1__1__Impl rule__ArithVar__Group_1__2
            {
            pushFollow(FOLLOW_9);
            rule__ArithVar__Group_1__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithVar__Group_1__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_1__1"


    // $ANTLR start "rule__ArithVar__Group_1__1__Impl"
    // InternalProperty.g:3047:1: rule__ArithVar__Group_1__1__Impl : ( '::' ) ;
    public final void rule__ArithVar__Group_1__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3051:1: ( ( '::' ) )
            // InternalProperty.g:3052:1: ( '::' )
            {
            // InternalProperty.g:3052:1: ( '::' )
            // InternalProperty.g:3053:1: '::'
            {
             before(grammarAccess.getArithVarAccess().getColonColonKeyword_1_1()); 
            match(input,33,FOLLOW_2); 
             after(grammarAccess.getArithVarAccess().getColonColonKeyword_1_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_1__1__Impl"


    // $ANTLR start "rule__ArithVar__Group_1__2"
    // InternalProperty.g:3066:1: rule__ArithVar__Group_1__2 : rule__ArithVar__Group_1__2__Impl rule__ArithVar__Group_1__3 ;
    public final void rule__ArithVar__Group_1__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3070:1: ( rule__ArithVar__Group_1__2__Impl rule__ArithVar__Group_1__3 )
            // InternalProperty.g:3071:2: rule__ArithVar__Group_1__2__Impl rule__ArithVar__Group_1__3
            {
            pushFollow(FOLLOW_23);
            rule__ArithVar__Group_1__2__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithVar__Group_1__3();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_1__2"


    // $ANTLR start "rule__ArithVar__Group_1__2__Impl"
    // InternalProperty.g:3078:1: rule__ArithVar__Group_1__2__Impl : ( ( rule__ArithVar__OpAssignment_1_2 ) ) ;
    public final void rule__ArithVar__Group_1__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3082:1: ( ( ( rule__ArithVar__OpAssignment_1_2 ) ) )
            // InternalProperty.g:3083:1: ( ( rule__ArithVar__OpAssignment_1_2 ) )
            {
            // InternalProperty.g:3083:1: ( ( rule__ArithVar__OpAssignment_1_2 ) )
            // InternalProperty.g:3084:1: ( rule__ArithVar__OpAssignment_1_2 )
            {
             before(grammarAccess.getArithVarAccess().getOpAssignment_1_2()); 
            // InternalProperty.g:3085:1: ( rule__ArithVar__OpAssignment_1_2 )
            // InternalProperty.g:3085:2: rule__ArithVar__OpAssignment_1_2
            {
            pushFollow(FOLLOW_2);
            rule__ArithVar__OpAssignment_1_2();

            state._fsp--;


            }

             after(grammarAccess.getArithVarAccess().getOpAssignment_1_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_1__2__Impl"


    // $ANTLR start "rule__ArithVar__Group_1__3"
    // InternalProperty.g:3095:1: rule__ArithVar__Group_1__3 : rule__ArithVar__Group_1__3__Impl rule__ArithVar__Group_1__4 ;
    public final void rule__ArithVar__Group_1__3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3099:1: ( rule__ArithVar__Group_1__3__Impl rule__ArithVar__Group_1__4 )
            // InternalProperty.g:3100:2: rule__ArithVar__Group_1__3__Impl rule__ArithVar__Group_1__4
            {
            pushFollow(FOLLOW_9);
            rule__ArithVar__Group_1__3__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithVar__Group_1__4();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_1__3"


    // $ANTLR start "rule__ArithVar__Group_1__3__Impl"
    // InternalProperty.g:3107:1: rule__ArithVar__Group_1__3__Impl : ( '.' ) ;
    public final void rule__ArithVar__Group_1__3__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3111:1: ( ( '.' ) )
            // InternalProperty.g:3112:1: ( '.' )
            {
            // InternalProperty.g:3112:1: ( '.' )
            // InternalProperty.g:3113:1: '.'
            {
             before(grammarAccess.getArithVarAccess().getFullStopKeyword_1_3()); 
            match(input,32,FOLLOW_2); 
             after(grammarAccess.getArithVarAccess().getFullStopKeyword_1_3()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_1__3__Impl"


    // $ANTLR start "rule__ArithVar__Group_1__4"
    // InternalProperty.g:3126:1: rule__ArithVar__Group_1__4 : rule__ArithVar__Group_1__4__Impl ;
    public final void rule__ArithVar__Group_1__4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3130:1: ( rule__ArithVar__Group_1__4__Impl )
            // InternalProperty.g:3131:2: rule__ArithVar__Group_1__4__Impl
            {
            pushFollow(FOLLOW_2);
            rule__ArithVar__Group_1__4__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_1__4"


    // $ANTLR start "rule__ArithVar__Group_1__4__Impl"
    // InternalProperty.g:3137:1: rule__ArithVar__Group_1__4__Impl : ( ( rule__ArithVar__ParamAssignment_1_4 ) ) ;
    public final void rule__ArithVar__Group_1__4__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3141:1: ( ( ( rule__ArithVar__ParamAssignment_1_4 ) ) )
            // InternalProperty.g:3142:1: ( ( rule__ArithVar__ParamAssignment_1_4 ) )
            {
            // InternalProperty.g:3142:1: ( ( rule__ArithVar__ParamAssignment_1_4 ) )
            // InternalProperty.g:3143:1: ( rule__ArithVar__ParamAssignment_1_4 )
            {
             before(grammarAccess.getArithVarAccess().getParamAssignment_1_4()); 
            // InternalProperty.g:3144:1: ( rule__ArithVar__ParamAssignment_1_4 )
            // InternalProperty.g:3144:2: rule__ArithVar__ParamAssignment_1_4
            {
            pushFollow(FOLLOW_2);
            rule__ArithVar__ParamAssignment_1_4();

            state._fsp--;


            }

             after(grammarAccess.getArithVarAccess().getParamAssignment_1_4()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_1__4__Impl"


    // $ANTLR start "rule__ArithVar__Group_2__0"
    // InternalProperty.g:3164:1: rule__ArithVar__Group_2__0 : rule__ArithVar__Group_2__0__Impl rule__ArithVar__Group_2__1 ;
    public final void rule__ArithVar__Group_2__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3168:1: ( rule__ArithVar__Group_2__0__Impl rule__ArithVar__Group_2__1 )
            // InternalProperty.g:3169:2: rule__ArithVar__Group_2__0__Impl rule__ArithVar__Group_2__1
            {
            pushFollow(FOLLOW_25);
            rule__ArithVar__Group_2__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithVar__Group_2__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_2__0"


    // $ANTLR start "rule__ArithVar__Group_2__0__Impl"
    // InternalProperty.g:3176:1: rule__ArithVar__Group_2__0__Impl : ( ( rule__ArithVar__SdAssignment_2_0 ) ) ;
    public final void rule__ArithVar__Group_2__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3180:1: ( ( ( rule__ArithVar__SdAssignment_2_0 ) ) )
            // InternalProperty.g:3181:1: ( ( rule__ArithVar__SdAssignment_2_0 ) )
            {
            // InternalProperty.g:3181:1: ( ( rule__ArithVar__SdAssignment_2_0 ) )
            // InternalProperty.g:3182:1: ( rule__ArithVar__SdAssignment_2_0 )
            {
             before(grammarAccess.getArithVarAccess().getSdAssignment_2_0()); 
            // InternalProperty.g:3183:1: ( rule__ArithVar__SdAssignment_2_0 )
            // InternalProperty.g:3183:2: rule__ArithVar__SdAssignment_2_0
            {
            pushFollow(FOLLOW_2);
            rule__ArithVar__SdAssignment_2_0();

            state._fsp--;


            }

             after(grammarAccess.getArithVarAccess().getSdAssignment_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_2__0__Impl"


    // $ANTLR start "rule__ArithVar__Group_2__1"
    // InternalProperty.g:3193:1: rule__ArithVar__Group_2__1 : rule__ArithVar__Group_2__1__Impl rule__ArithVar__Group_2__2 ;
    public final void rule__ArithVar__Group_2__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3197:1: ( rule__ArithVar__Group_2__1__Impl rule__ArithVar__Group_2__2 )
            // InternalProperty.g:3198:2: rule__ArithVar__Group_2__1__Impl rule__ArithVar__Group_2__2
            {
            pushFollow(FOLLOW_9);
            rule__ArithVar__Group_2__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithVar__Group_2__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_2__1"


    // $ANTLR start "rule__ArithVar__Group_2__1__Impl"
    // InternalProperty.g:3205:1: rule__ArithVar__Group_2__1__Impl : ( '.getParameter(' ) ;
    public final void rule__ArithVar__Group_2__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3209:1: ( ( '.getParameter(' ) )
            // InternalProperty.g:3210:1: ( '.getParameter(' )
            {
            // InternalProperty.g:3210:1: ( '.getParameter(' )
            // InternalProperty.g:3211:1: '.getParameter('
            {
             before(grammarAccess.getArithVarAccess().getGetParameterKeyword_2_1()); 
            match(input,34,FOLLOW_2); 
             after(grammarAccess.getArithVarAccess().getGetParameterKeyword_2_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_2__1__Impl"


    // $ANTLR start "rule__ArithVar__Group_2__2"
    // InternalProperty.g:3224:1: rule__ArithVar__Group_2__2 : rule__ArithVar__Group_2__2__Impl rule__ArithVar__Group_2__3 ;
    public final void rule__ArithVar__Group_2__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3228:1: ( rule__ArithVar__Group_2__2__Impl rule__ArithVar__Group_2__3 )
            // InternalProperty.g:3229:2: rule__ArithVar__Group_2__2__Impl rule__ArithVar__Group_2__3
            {
            pushFollow(FOLLOW_7);
            rule__ArithVar__Group_2__2__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__ArithVar__Group_2__3();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_2__2"


    // $ANTLR start "rule__ArithVar__Group_2__2__Impl"
    // InternalProperty.g:3236:1: rule__ArithVar__Group_2__2__Impl : ( ( rule__ArithVar__ParamAssignment_2_2 ) ) ;
    public final void rule__ArithVar__Group_2__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3240:1: ( ( ( rule__ArithVar__ParamAssignment_2_2 ) ) )
            // InternalProperty.g:3241:1: ( ( rule__ArithVar__ParamAssignment_2_2 ) )
            {
            // InternalProperty.g:3241:1: ( ( rule__ArithVar__ParamAssignment_2_2 ) )
            // InternalProperty.g:3242:1: ( rule__ArithVar__ParamAssignment_2_2 )
            {
             before(grammarAccess.getArithVarAccess().getParamAssignment_2_2()); 
            // InternalProperty.g:3243:1: ( rule__ArithVar__ParamAssignment_2_2 )
            // InternalProperty.g:3243:2: rule__ArithVar__ParamAssignment_2_2
            {
            pushFollow(FOLLOW_2);
            rule__ArithVar__ParamAssignment_2_2();

            state._fsp--;


            }

             after(grammarAccess.getArithVarAccess().getParamAssignment_2_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_2__2__Impl"


    // $ANTLR start "rule__ArithVar__Group_2__3"
    // InternalProperty.g:3253:1: rule__ArithVar__Group_2__3 : rule__ArithVar__Group_2__3__Impl ;
    public final void rule__ArithVar__Group_2__3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3257:1: ( rule__ArithVar__Group_2__3__Impl )
            // InternalProperty.g:3258:2: rule__ArithVar__Group_2__3__Impl
            {
            pushFollow(FOLLOW_2);
            rule__ArithVar__Group_2__3__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_2__3"


    // $ANTLR start "rule__ArithVar__Group_2__3__Impl"
    // InternalProperty.g:3264:1: rule__ArithVar__Group_2__3__Impl : ( ')' ) ;
    public final void rule__ArithVar__Group_2__3__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3268:1: ( ( ')' ) )
            // InternalProperty.g:3269:1: ( ')' )
            {
            // InternalProperty.g:3269:1: ( ')' )
            // InternalProperty.g:3270:1: ')'
            {
             before(grammarAccess.getArithVarAccess().getRightParenthesisKeyword_2_3()); 
            match(input,21,FOLLOW_2); 
             after(grammarAccess.getArithVarAccess().getRightParenthesisKeyword_2_3()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__Group_2__3__Impl"


    // $ANTLR start "rule__DataType__Group__0"
    // InternalProperty.g:3291:1: rule__DataType__Group__0 : rule__DataType__Group__0__Impl rule__DataType__Group__1 ;
    public final void rule__DataType__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3295:1: ( rule__DataType__Group__0__Impl rule__DataType__Group__1 )
            // InternalProperty.g:3296:2: rule__DataType__Group__0__Impl rule__DataType__Group__1
            {
            pushFollow(FOLLOW_26);
            rule__DataType__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_2);
            rule__DataType__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__DataType__Group__0"


    // $ANTLR start "rule__DataType__Group__0__Impl"
    // InternalProperty.g:3303:1: rule__DataType__Group__0__Impl : ( ( rule__DataType__IAssignment_0 ) ) ;
    public final void rule__DataType__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3307:1: ( ( ( rule__DataType__IAssignment_0 ) ) )
            // InternalProperty.g:3308:1: ( ( rule__DataType__IAssignment_0 ) )
            {
            // InternalProperty.g:3308:1: ( ( rule__DataType__IAssignment_0 ) )
            // InternalProperty.g:3309:1: ( rule__DataType__IAssignment_0 )
            {
             before(grammarAccess.getDataTypeAccess().getIAssignment_0()); 
            // InternalProperty.g:3310:1: ( rule__DataType__IAssignment_0 )
            // InternalProperty.g:3310:2: rule__DataType__IAssignment_0
            {
            pushFollow(FOLLOW_2);
            rule__DataType__IAssignment_0();

            state._fsp--;


            }

             after(grammarAccess.getDataTypeAccess().getIAssignment_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__DataType__Group__0__Impl"


    // $ANTLR start "rule__DataType__Group__1"
    // InternalProperty.g:3320:1: rule__DataType__Group__1 : rule__DataType__Group__1__Impl ;
    public final void rule__DataType__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3324:1: ( rule__DataType__Group__1__Impl )
            // InternalProperty.g:3325:2: rule__DataType__Group__1__Impl
            {
            pushFollow(FOLLOW_2);
            rule__DataType__Group__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__DataType__Group__1"


    // $ANTLR start "rule__DataType__Group__1__Impl"
    // InternalProperty.g:3331:1: rule__DataType__Group__1__Impl : ( ( rule__DataType__FloatAssignment_1 )? ) ;
    public final void rule__DataType__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3335:1: ( ( ( rule__DataType__FloatAssignment_1 )? ) )
            // InternalProperty.g:3336:1: ( ( rule__DataType__FloatAssignment_1 )? )
            {
            // InternalProperty.g:3336:1: ( ( rule__DataType__FloatAssignment_1 )? )
            // InternalProperty.g:3337:1: ( rule__DataType__FloatAssignment_1 )?
            {
             before(grammarAccess.getDataTypeAccess().getFloatAssignment_1()); 
            // InternalProperty.g:3338:1: ( rule__DataType__FloatAssignment_1 )?
            int alt12=2;
            int LA12_0 = input.LA(1);

            if ( (LA12_0==RULE_FLOAT) ) {
                alt12=1;
            }
            switch (alt12) {
                case 1 :
                    // InternalProperty.g:3338:2: rule__DataType__FloatAssignment_1
                    {
                    pushFollow(FOLLOW_2);
                    rule__DataType__FloatAssignment_1();

                    state._fsp--;


                    }
                    break;

            }

             after(grammarAccess.getDataTypeAccess().getFloatAssignment_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__DataType__Group__1__Impl"


    // $ANTLR start "rule__Model__DeclarationsAssignment_0"
    // InternalProperty.g:3353:1: rule__Model__DeclarationsAssignment_0 : ( ruleDeclaration ) ;
    public final void rule__Model__DeclarationsAssignment_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3357:1: ( ( ruleDeclaration ) )
            // InternalProperty.g:3358:1: ( ruleDeclaration )
            {
            // InternalProperty.g:3358:1: ( ruleDeclaration )
            // InternalProperty.g:3359:1: ruleDeclaration
            {
             before(grammarAccess.getModelAccess().getDeclarationsDeclarationParserRuleCall_0_0()); 
            pushFollow(FOLLOW_2);
            ruleDeclaration();

            state._fsp--;

             after(grammarAccess.getModelAccess().getDeclarationsDeclarationParserRuleCall_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Model__DeclarationsAssignment_0"


    // $ANTLR start "rule__Model__CorrettoCommandAssignment_1"
    // InternalProperty.g:3368:1: rule__Model__CorrettoCommandAssignment_1 : ( ruleCorretto ) ;
    public final void rule__Model__CorrettoCommandAssignment_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3372:1: ( ( ruleCorretto ) )
            // InternalProperty.g:3373:1: ( ruleCorretto )
            {
            // InternalProperty.g:3373:1: ( ruleCorretto )
            // InternalProperty.g:3374:1: ruleCorretto
            {
             before(grammarAccess.getModelAccess().getCorrettoCommandCorrettoParserRuleCall_1_0()); 
            pushFollow(FOLLOW_2);
            ruleCorretto();

            state._fsp--;

             after(grammarAccess.getModelAccess().getCorrettoCommandCorrettoParserRuleCall_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Model__CorrettoCommandAssignment_1"


    // $ANTLR start "rule__Corretto__VerifyAssignment_1_0"
    // InternalProperty.g:3383:1: rule__Corretto__VerifyAssignment_1_0 : ( ruleVerify ) ;
    public final void rule__Corretto__VerifyAssignment_1_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3387:1: ( ( ruleVerify ) )
            // InternalProperty.g:3388:1: ( ruleVerify )
            {
            // InternalProperty.g:3388:1: ( ruleVerify )
            // InternalProperty.g:3389:1: ruleVerify
            {
             before(grammarAccess.getCorrettoAccess().getVerifyVerifyParserRuleCall_1_0_0()); 
            pushFollow(FOLLOW_2);
            ruleVerify();

            state._fsp--;

             after(grammarAccess.getCorrettoAccess().getVerifyVerifyParserRuleCall_1_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Corretto__VerifyAssignment_1_0"


    // $ANTLR start "rule__Corretto__ExecuteAssignment_1_1"
    // InternalProperty.g:3398:1: rule__Corretto__ExecuteAssignment_1_1 : ( RULE_EXECUTE ) ;
    public final void rule__Corretto__ExecuteAssignment_1_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3402:1: ( ( RULE_EXECUTE ) )
            // InternalProperty.g:3403:1: ( RULE_EXECUTE )
            {
            // InternalProperty.g:3403:1: ( RULE_EXECUTE )
            // InternalProperty.g:3404:1: RULE_EXECUTE
            {
             before(grammarAccess.getCorrettoAccess().getExecuteEXECUTETerminalRuleCall_1_1_0()); 
            match(input,RULE_EXECUTE,FOLLOW_2); 
             after(grammarAccess.getCorrettoAccess().getExecuteEXECUTETerminalRuleCall_1_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Corretto__ExecuteAssignment_1_1"


    // $ANTLR start "rule__Verify__TrioAssignment_1"
    // InternalProperty.g:3413:1: rule__Verify__TrioAssignment_1 : ( ruleTRIO ) ;
    public final void rule__Verify__TrioAssignment_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3417:1: ( ( ruleTRIO ) )
            // InternalProperty.g:3418:1: ( ruleTRIO )
            {
            // InternalProperty.g:3418:1: ( ruleTRIO )
            // InternalProperty.g:3419:1: ruleTRIO
            {
             before(grammarAccess.getVerifyAccess().getTrioTRIOParserRuleCall_1_0()); 
            pushFollow(FOLLOW_2);
            ruleTRIO();

            state._fsp--;

             after(grammarAccess.getVerifyAccess().getTrioTRIOParserRuleCall_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Verify__TrioAssignment_1"


    // $ANTLR start "rule__Declaration__StateNameAssignment_0_0"
    // InternalProperty.g:3428:1: rule__Declaration__StateNameAssignment_0_0 : ( RULE_ID ) ;
    public final void rule__Declaration__StateNameAssignment_0_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3432:1: ( ( RULE_ID ) )
            // InternalProperty.g:3433:1: ( RULE_ID )
            {
            // InternalProperty.g:3433:1: ( RULE_ID )
            // InternalProperty.g:3434:1: RULE_ID
            {
             before(grammarAccess.getDeclarationAccess().getStateNameIDTerminalRuleCall_0_0_0()); 
            match(input,RULE_ID,FOLLOW_2); 
             after(grammarAccess.getDeclarationAccess().getStateNameIDTerminalRuleCall_0_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__StateNameAssignment_0_0"


    // $ANTLR start "rule__Declaration__ObjAssignment_0_2"
    // InternalProperty.g:3443:1: rule__Declaration__ObjAssignment_0_2 : ( RULE_ID ) ;
    public final void rule__Declaration__ObjAssignment_0_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3447:1: ( ( RULE_ID ) )
            // InternalProperty.g:3448:1: ( RULE_ID )
            {
            // InternalProperty.g:3448:1: ( RULE_ID )
            // InternalProperty.g:3449:1: RULE_ID
            {
             before(grammarAccess.getDeclarationAccess().getObjIDTerminalRuleCall_0_2_0()); 
            match(input,RULE_ID,FOLLOW_2); 
             after(grammarAccess.getDeclarationAccess().getObjIDTerminalRuleCall_0_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__ObjAssignment_0_2"


    // $ANTLR start "rule__Declaration__StdAssignment_0_4"
    // InternalProperty.g:3458:1: rule__Declaration__StdAssignment_0_4 : ( RULE_ID ) ;
    public final void rule__Declaration__StdAssignment_0_4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3462:1: ( ( RULE_ID ) )
            // InternalProperty.g:3463:1: ( RULE_ID )
            {
            // InternalProperty.g:3463:1: ( RULE_ID )
            // InternalProperty.g:3464:1: RULE_ID
            {
             before(grammarAccess.getDeclarationAccess().getStdIDTerminalRuleCall_0_4_0()); 
            match(input,RULE_ID,FOLLOW_2); 
             after(grammarAccess.getDeclarationAccess().getStdIDTerminalRuleCall_0_4_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__StdAssignment_0_4"


    // $ANTLR start "rule__Declaration__UMLStateNameAssignment_0_6"
    // InternalProperty.g:3473:1: rule__Declaration__UMLStateNameAssignment_0_6 : ( RULE_ID ) ;
    public final void rule__Declaration__UMLStateNameAssignment_0_6() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3477:1: ( ( RULE_ID ) )
            // InternalProperty.g:3478:1: ( RULE_ID )
            {
            // InternalProperty.g:3478:1: ( RULE_ID )
            // InternalProperty.g:3479:1: RULE_ID
            {
             before(grammarAccess.getDeclarationAccess().getUMLStateNameIDTerminalRuleCall_0_6_0()); 
            match(input,RULE_ID,FOLLOW_2); 
             after(grammarAccess.getDeclarationAccess().getUMLStateNameIDTerminalRuleCall_0_6_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__UMLStateNameAssignment_0_6"


    // $ANTLR start "rule__Declaration__TrioVarAssignment_1_0"
    // InternalProperty.g:3488:1: rule__Declaration__TrioVarAssignment_1_0 : ( RULE_ID ) ;
    public final void rule__Declaration__TrioVarAssignment_1_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3492:1: ( ( RULE_ID ) )
            // InternalProperty.g:3493:1: ( RULE_ID )
            {
            // InternalProperty.g:3493:1: ( RULE_ID )
            // InternalProperty.g:3494:1: RULE_ID
            {
             before(grammarAccess.getDeclarationAccess().getTrioVarIDTerminalRuleCall_1_0_0()); 
            match(input,RULE_ID,FOLLOW_2); 
             after(grammarAccess.getDeclarationAccess().getTrioVarIDTerminalRuleCall_1_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__TrioVarAssignment_1_0"


    // $ANTLR start "rule__Declaration__TrioAssignment_1_2_0"
    // InternalProperty.g:3503:1: rule__Declaration__TrioAssignment_1_2_0 : ( ruleTRIO ) ;
    public final void rule__Declaration__TrioAssignment_1_2_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3507:1: ( ( ruleTRIO ) )
            // InternalProperty.g:3508:1: ( ruleTRIO )
            {
            // InternalProperty.g:3508:1: ( ruleTRIO )
            // InternalProperty.g:3509:1: ruleTRIO
            {
             before(grammarAccess.getDeclarationAccess().getTrioTRIOParserRuleCall_1_2_0_0()); 
            pushFollow(FOLLOW_2);
            ruleTRIO();

            state._fsp--;

             after(grammarAccess.getDeclarationAccess().getTrioTRIOParserRuleCall_1_2_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__TrioAssignment_1_2_0"


    // $ANTLR start "rule__Declaration__ObjAssignment_1_2_1_0"
    // InternalProperty.g:3518:1: rule__Declaration__ObjAssignment_1_2_1_0 : ( RULE_ID ) ;
    public final void rule__Declaration__ObjAssignment_1_2_1_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3522:1: ( ( RULE_ID ) )
            // InternalProperty.g:3523:1: ( RULE_ID )
            {
            // InternalProperty.g:3523:1: ( RULE_ID )
            // InternalProperty.g:3524:1: RULE_ID
            {
             before(grammarAccess.getDeclarationAccess().getObjIDTerminalRuleCall_1_2_1_0_0()); 
            match(input,RULE_ID,FOLLOW_2); 
             after(grammarAccess.getDeclarationAccess().getObjIDTerminalRuleCall_1_2_1_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__ObjAssignment_1_2_1_0"


    // $ANTLR start "rule__Declaration__StateNameAssignment_1_2_1_2"
    // InternalProperty.g:3533:1: rule__Declaration__StateNameAssignment_1_2_1_2 : ( RULE_ID ) ;
    public final void rule__Declaration__StateNameAssignment_1_2_1_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3537:1: ( ( RULE_ID ) )
            // InternalProperty.g:3538:1: ( RULE_ID )
            {
            // InternalProperty.g:3538:1: ( RULE_ID )
            // InternalProperty.g:3539:1: RULE_ID
            {
             before(grammarAccess.getDeclarationAccess().getStateNameIDTerminalRuleCall_1_2_1_2_0()); 
            match(input,RULE_ID,FOLLOW_2); 
             after(grammarAccess.getDeclarationAccess().getStateNameIDTerminalRuleCall_1_2_1_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Declaration__StateNameAssignment_1_2_1_2"


    // $ANTLR start "rule__TRIO__TrioLAssignment_0"
    // InternalProperty.g:3548:1: rule__TRIO__TrioLAssignment_0 : ( ruleTRIOL ) ;
    public final void rule__TRIO__TrioLAssignment_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3552:1: ( ( ruleTRIOL ) )
            // InternalProperty.g:3553:1: ( ruleTRIOL )
            {
            // InternalProperty.g:3553:1: ( ruleTRIOL )
            // InternalProperty.g:3554:1: ruleTRIOL
            {
             before(grammarAccess.getTRIOAccess().getTrioLTRIOLParserRuleCall_0_0()); 
            pushFollow(FOLLOW_2);
            ruleTRIOL();

            state._fsp--;

             after(grammarAccess.getTRIOAccess().getTrioLTRIOLParserRuleCall_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIO__TrioLAssignment_0"


    // $ANTLR start "rule__TRIO__TrioRAssignment_1"
    // InternalProperty.g:3563:1: rule__TRIO__TrioRAssignment_1 : ( ruleTRIOR ) ;
    public final void rule__TRIO__TrioRAssignment_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3567:1: ( ( ruleTRIOR ) )
            // InternalProperty.g:3568:1: ( ruleTRIOR )
            {
            // InternalProperty.g:3568:1: ( ruleTRIOR )
            // InternalProperty.g:3569:1: ruleTRIOR
            {
             before(grammarAccess.getTRIOAccess().getTrioRTRIORParserRuleCall_1_0()); 
            pushFollow(FOLLOW_2);
            ruleTRIOR();

            state._fsp--;

             after(grammarAccess.getTRIOAccess().getTrioRTRIORParserRuleCall_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIO__TrioRAssignment_1"


    // $ANTLR start "rule__TRIOL__TrioVarAssignment_0_0"
    // InternalProperty.g:3578:1: rule__TRIOL__TrioVarAssignment_0_0 : ( RULE_ID ) ;
    public final void rule__TRIOL__TrioVarAssignment_0_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3582:1: ( ( RULE_ID ) )
            // InternalProperty.g:3583:1: ( RULE_ID )
            {
            // InternalProperty.g:3583:1: ( RULE_ID )
            // InternalProperty.g:3584:1: RULE_ID
            {
             before(grammarAccess.getTRIOLAccess().getTrioVarIDTerminalRuleCall_0_0_0()); 
            match(input,RULE_ID,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getTrioVarIDTerminalRuleCall_0_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__TrioVarAssignment_0_0"


    // $ANTLR start "rule__TRIOL__OpNameAssignment_0_1_0"
    // InternalProperty.g:3593:1: rule__TRIOL__OpNameAssignment_0_1_0 : ( RULE_ID ) ;
    public final void rule__TRIOL__OpNameAssignment_0_1_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3597:1: ( ( RULE_ID ) )
            // InternalProperty.g:3598:1: ( RULE_ID )
            {
            // InternalProperty.g:3598:1: ( RULE_ID )
            // InternalProperty.g:3599:1: RULE_ID
            {
             before(grammarAccess.getTRIOLAccess().getOpNameIDTerminalRuleCall_0_1_0_0()); 
            match(input,RULE_ID,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getOpNameIDTerminalRuleCall_0_1_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__OpNameAssignment_0_1_0"


    // $ANTLR start "rule__TRIOL__ArithBoolAssignment_1"
    // InternalProperty.g:3608:1: rule__TRIOL__ArithBoolAssignment_1 : ( ruleArithBool ) ;
    public final void rule__TRIOL__ArithBoolAssignment_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3612:1: ( ( ruleArithBool ) )
            // InternalProperty.g:3613:1: ( ruleArithBool )
            {
            // InternalProperty.g:3613:1: ( ruleArithBool )
            // InternalProperty.g:3614:1: ruleArithBool
            {
             before(grammarAccess.getTRIOLAccess().getArithBoolArithBoolParserRuleCall_1_0()); 
            pushFollow(FOLLOW_2);
            ruleArithBool();

            state._fsp--;

             after(grammarAccess.getTRIOLAccess().getArithBoolArithBoolParserRuleCall_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__ArithBoolAssignment_1"


    // $ANTLR start "rule__TRIOL__TrioNotAssignment_2_1"
    // InternalProperty.g:3623:1: rule__TRIOL__TrioNotAssignment_2_1 : ( ruleTRIO ) ;
    public final void rule__TRIOL__TrioNotAssignment_2_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3627:1: ( ( ruleTRIO ) )
            // InternalProperty.g:3628:1: ( ruleTRIO )
            {
            // InternalProperty.g:3628:1: ( ruleTRIO )
            // InternalProperty.g:3629:1: ruleTRIO
            {
             before(grammarAccess.getTRIOLAccess().getTrioNotTRIOParserRuleCall_2_1_0()); 
            pushFollow(FOLLOW_2);
            ruleTRIO();

            state._fsp--;

             after(grammarAccess.getTRIOLAccess().getTrioNotTRIOParserRuleCall_2_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__TrioNotAssignment_2_1"


    // $ANTLR start "rule__TRIOL__TrioOpFAssignment_3_1"
    // InternalProperty.g:3638:1: rule__TRIOL__TrioOpFAssignment_3_1 : ( RULE_TRIOOPF ) ;
    public final void rule__TRIOL__TrioOpFAssignment_3_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3642:1: ( ( RULE_TRIOOPF ) )
            // InternalProperty.g:3643:1: ( RULE_TRIOOPF )
            {
            // InternalProperty.g:3643:1: ( RULE_TRIOOPF )
            // InternalProperty.g:3644:1: RULE_TRIOOPF
            {
             before(grammarAccess.getTRIOLAccess().getTrioOpFTRIOOPFTerminalRuleCall_3_1_0()); 
            match(input,RULE_TRIOOPF,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getTrioOpFTRIOOPFTerminalRuleCall_3_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__TrioOpFAssignment_3_1"


    // $ANTLR start "rule__TRIOL__TrioOpF1Assignment_3_3"
    // InternalProperty.g:3653:1: rule__TRIOL__TrioOpF1Assignment_3_3 : ( ruleTRIO ) ;
    public final void rule__TRIOL__TrioOpF1Assignment_3_3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3657:1: ( ( ruleTRIO ) )
            // InternalProperty.g:3658:1: ( ruleTRIO )
            {
            // InternalProperty.g:3658:1: ( ruleTRIO )
            // InternalProperty.g:3659:1: ruleTRIO
            {
             before(grammarAccess.getTRIOLAccess().getTrioOpF1TRIOParserRuleCall_3_3_0()); 
            pushFollow(FOLLOW_2);
            ruleTRIO();

            state._fsp--;

             after(grammarAccess.getTRIOLAccess().getTrioOpF1TRIOParserRuleCall_3_3_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__TrioOpF1Assignment_3_3"


    // $ANTLR start "rule__TRIOL__TrioOpFFAssignment_4_1"
    // InternalProperty.g:3668:1: rule__TRIOL__TrioOpFFAssignment_4_1 : ( RULE_TRIOOPFF ) ;
    public final void rule__TRIOL__TrioOpFFAssignment_4_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3672:1: ( ( RULE_TRIOOPFF ) )
            // InternalProperty.g:3673:1: ( RULE_TRIOOPFF )
            {
            // InternalProperty.g:3673:1: ( RULE_TRIOOPFF )
            // InternalProperty.g:3674:1: RULE_TRIOOPFF
            {
             before(grammarAccess.getTRIOLAccess().getTrioOpFFTRIOOPFFTerminalRuleCall_4_1_0()); 
            match(input,RULE_TRIOOPFF,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getTrioOpFFTRIOOPFFTerminalRuleCall_4_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__TrioOpFFAssignment_4_1"


    // $ANTLR start "rule__TRIOL__TrioOpFF1Assignment_4_3"
    // InternalProperty.g:3683:1: rule__TRIOL__TrioOpFF1Assignment_4_3 : ( ruleTRIO ) ;
    public final void rule__TRIOL__TrioOpFF1Assignment_4_3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3687:1: ( ( ruleTRIO ) )
            // InternalProperty.g:3688:1: ( ruleTRIO )
            {
            // InternalProperty.g:3688:1: ( ruleTRIO )
            // InternalProperty.g:3689:1: ruleTRIO
            {
             before(grammarAccess.getTRIOLAccess().getTrioOpFF1TRIOParserRuleCall_4_3_0()); 
            pushFollow(FOLLOW_2);
            ruleTRIO();

            state._fsp--;

             after(grammarAccess.getTRIOLAccess().getTrioOpFF1TRIOParserRuleCall_4_3_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__TrioOpFF1Assignment_4_3"


    // $ANTLR start "rule__TRIOL__TrioOpFF2Assignment_4_5"
    // InternalProperty.g:3698:1: rule__TRIOL__TrioOpFF2Assignment_4_5 : ( ruleTRIO ) ;
    public final void rule__TRIOL__TrioOpFF2Assignment_4_5() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3702:1: ( ( ruleTRIO ) )
            // InternalProperty.g:3703:1: ( ruleTRIO )
            {
            // InternalProperty.g:3703:1: ( ruleTRIO )
            // InternalProperty.g:3704:1: ruleTRIO
            {
             before(grammarAccess.getTRIOLAccess().getTrioOpFF2TRIOParserRuleCall_4_5_0()); 
            pushFollow(FOLLOW_2);
            ruleTRIO();

            state._fsp--;

             after(grammarAccess.getTRIOLAccess().getTrioOpFF2TRIOParserRuleCall_4_5_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__TrioOpFF2Assignment_4_5"


    // $ANTLR start "rule__TRIOL__TrioOpFNAssignment_5_1"
    // InternalProperty.g:3713:1: rule__TRIOL__TrioOpFNAssignment_5_1 : ( RULE_TRIOOPFN ) ;
    public final void rule__TRIOL__TrioOpFNAssignment_5_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3717:1: ( ( RULE_TRIOOPFN ) )
            // InternalProperty.g:3718:1: ( RULE_TRIOOPFN )
            {
            // InternalProperty.g:3718:1: ( RULE_TRIOOPFN )
            // InternalProperty.g:3719:1: RULE_TRIOOPFN
            {
             before(grammarAccess.getTRIOLAccess().getTrioOpFNTRIOOPFNTerminalRuleCall_5_1_0()); 
            match(input,RULE_TRIOOPFN,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getTrioOpFNTRIOOPFNTerminalRuleCall_5_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__TrioOpFNAssignment_5_1"


    // $ANTLR start "rule__TRIOL__TrioOpFN1Assignment_5_3"
    // InternalProperty.g:3728:1: rule__TRIOL__TrioOpFN1Assignment_5_3 : ( ruleTRIO ) ;
    public final void rule__TRIOL__TrioOpFN1Assignment_5_3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3732:1: ( ( ruleTRIO ) )
            // InternalProperty.g:3733:1: ( ruleTRIO )
            {
            // InternalProperty.g:3733:1: ( ruleTRIO )
            // InternalProperty.g:3734:1: ruleTRIO
            {
             before(grammarAccess.getTRIOLAccess().getTrioOpFN1TRIOParserRuleCall_5_3_0()); 
            pushFollow(FOLLOW_2);
            ruleTRIO();

            state._fsp--;

             after(grammarAccess.getTRIOLAccess().getTrioOpFN1TRIOParserRuleCall_5_3_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__TrioOpFN1Assignment_5_3"


    // $ANTLR start "rule__TRIOL__IntAssignment_5_5"
    // InternalProperty.g:3743:1: rule__TRIOL__IntAssignment_5_5 : ( RULE_INT ) ;
    public final void rule__TRIOL__IntAssignment_5_5() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3747:1: ( ( RULE_INT ) )
            // InternalProperty.g:3748:1: ( RULE_INT )
            {
            // InternalProperty.g:3748:1: ( RULE_INT )
            // InternalProperty.g:3749:1: RULE_INT
            {
             before(grammarAccess.getTRIOLAccess().getIntINTTerminalRuleCall_5_5_0()); 
            match(input,RULE_INT,FOLLOW_2); 
             after(grammarAccess.getTRIOLAccess().getIntINTTerminalRuleCall_5_5_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOL__IntAssignment_5_5"


    // $ANTLR start "rule__TRIOR__TrioOP2Assignment_0"
    // InternalProperty.g:3758:1: rule__TRIOR__TrioOP2Assignment_0 : ( RULE_TRIOOP2 ) ;
    public final void rule__TRIOR__TrioOP2Assignment_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3762:1: ( ( RULE_TRIOOP2 ) )
            // InternalProperty.g:3763:1: ( RULE_TRIOOP2 )
            {
            // InternalProperty.g:3763:1: ( RULE_TRIOOP2 )
            // InternalProperty.g:3764:1: RULE_TRIOOP2
            {
             before(grammarAccess.getTRIORAccess().getTrioOP2TRIOOP2TerminalRuleCall_0_0()); 
            match(input,RULE_TRIOOP2,FOLLOW_2); 
             after(grammarAccess.getTRIORAccess().getTrioOP2TRIOOP2TerminalRuleCall_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOR__TrioOP2Assignment_0"


    // $ANTLR start "rule__TRIOR__TrioAssignment_1"
    // InternalProperty.g:3773:1: rule__TRIOR__TrioAssignment_1 : ( ruleTRIO ) ;
    public final void rule__TRIOR__TrioAssignment_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3777:1: ( ( ruleTRIO ) )
            // InternalProperty.g:3778:1: ( ruleTRIO )
            {
            // InternalProperty.g:3778:1: ( ruleTRIO )
            // InternalProperty.g:3779:1: ruleTRIO
            {
             before(grammarAccess.getTRIORAccess().getTrioTRIOParserRuleCall_1_0()); 
            pushFollow(FOLLOW_2);
            ruleTRIO();

            state._fsp--;

             after(grammarAccess.getTRIORAccess().getTrioTRIOParserRuleCall_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__TRIOR__TrioAssignment_1"


    // $ANTLR start "rule__ArithBool__ArithTerm1Assignment_0"
    // InternalProperty.g:3788:1: rule__ArithBool__ArithTerm1Assignment_0 : ( ruleArithTerm ) ;
    public final void rule__ArithBool__ArithTerm1Assignment_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3792:1: ( ( ruleArithTerm ) )
            // InternalProperty.g:3793:1: ( ruleArithTerm )
            {
            // InternalProperty.g:3793:1: ( ruleArithTerm )
            // InternalProperty.g:3794:1: ruleArithTerm
            {
             before(grammarAccess.getArithBoolAccess().getArithTerm1ArithTermParserRuleCall_0_0()); 
            pushFollow(FOLLOW_2);
            ruleArithTerm();

            state._fsp--;

             after(grammarAccess.getArithBoolAccess().getArithTerm1ArithTermParserRuleCall_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithBool__ArithTerm1Assignment_0"


    // $ANTLR start "rule__ArithBool__ArithCOPAssignment_1_0"
    // InternalProperty.g:3803:1: rule__ArithBool__ArithCOPAssignment_1_0 : ( RULE_ARITH_COMPARE_OP ) ;
    public final void rule__ArithBool__ArithCOPAssignment_1_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3807:1: ( ( RULE_ARITH_COMPARE_OP ) )
            // InternalProperty.g:3808:1: ( RULE_ARITH_COMPARE_OP )
            {
            // InternalProperty.g:3808:1: ( RULE_ARITH_COMPARE_OP )
            // InternalProperty.g:3809:1: RULE_ARITH_COMPARE_OP
            {
             before(grammarAccess.getArithBoolAccess().getArithCOPARITH_COMPARE_OPTerminalRuleCall_1_0_0()); 
            match(input,RULE_ARITH_COMPARE_OP,FOLLOW_2); 
             after(grammarAccess.getArithBoolAccess().getArithCOPARITH_COMPARE_OPTerminalRuleCall_1_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithBool__ArithCOPAssignment_1_0"


    // $ANTLR start "rule__ArithBool__ArithTerm2Assignment_1_1"
    // InternalProperty.g:3818:1: rule__ArithBool__ArithTerm2Assignment_1_1 : ( ruleArithTerm ) ;
    public final void rule__ArithBool__ArithTerm2Assignment_1_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3822:1: ( ( ruleArithTerm ) )
            // InternalProperty.g:3823:1: ( ruleArithTerm )
            {
            // InternalProperty.g:3823:1: ( ruleArithTerm )
            // InternalProperty.g:3824:1: ruleArithTerm
            {
             before(grammarAccess.getArithBoolAccess().getArithTerm2ArithTermParserRuleCall_1_1_0()); 
            pushFollow(FOLLOW_2);
            ruleArithTerm();

            state._fsp--;

             after(grammarAccess.getArithBoolAccess().getArithTerm2ArithTermParserRuleCall_1_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithBool__ArithTerm2Assignment_1_1"


    // $ANTLR start "rule__ArithTerm__ArithTermLAssignment_0"
    // InternalProperty.g:3833:1: rule__ArithTerm__ArithTermLAssignment_0 : ( ruleArithTermL ) ;
    public final void rule__ArithTerm__ArithTermLAssignment_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3837:1: ( ( ruleArithTermL ) )
            // InternalProperty.g:3838:1: ( ruleArithTermL )
            {
            // InternalProperty.g:3838:1: ( ruleArithTermL )
            // InternalProperty.g:3839:1: ruleArithTermL
            {
             before(grammarAccess.getArithTermAccess().getArithTermLArithTermLParserRuleCall_0_0()); 
            pushFollow(FOLLOW_2);
            ruleArithTermL();

            state._fsp--;

             after(grammarAccess.getArithTermAccess().getArithTermLArithTermLParserRuleCall_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTerm__ArithTermLAssignment_0"


    // $ANTLR start "rule__ArithTerm__ArithTermRAssignment_1"
    // InternalProperty.g:3848:1: rule__ArithTerm__ArithTermRAssignment_1 : ( ruleArithTermR ) ;
    public final void rule__ArithTerm__ArithTermRAssignment_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3852:1: ( ( ruleArithTermR ) )
            // InternalProperty.g:3853:1: ( ruleArithTermR )
            {
            // InternalProperty.g:3853:1: ( ruleArithTermR )
            // InternalProperty.g:3854:1: ruleArithTermR
            {
             before(grammarAccess.getArithTermAccess().getArithTermRArithTermRParserRuleCall_1_0()); 
            pushFollow(FOLLOW_2);
            ruleArithTermR();

            state._fsp--;

             after(grammarAccess.getArithTermAccess().getArithTermRArithTermRParserRuleCall_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTerm__ArithTermRAssignment_1"


    // $ANTLR start "rule__ArithTermL__TrioAssignment_0_1"
    // InternalProperty.g:3863:1: rule__ArithTermL__TrioAssignment_0_1 : ( ruleTRIO ) ;
    public final void rule__ArithTermL__TrioAssignment_0_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3867:1: ( ( ruleTRIO ) )
            // InternalProperty.g:3868:1: ( ruleTRIO )
            {
            // InternalProperty.g:3868:1: ( ruleTRIO )
            // InternalProperty.g:3869:1: ruleTRIO
            {
             before(grammarAccess.getArithTermLAccess().getTrioTRIOParserRuleCall_0_1_0()); 
            pushFollow(FOLLOW_2);
            ruleTRIO();

            state._fsp--;

             after(grammarAccess.getArithTermLAccess().getTrioTRIOParserRuleCall_0_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__TrioAssignment_0_1"


    // $ANTLR start "rule__ArithTermL__ConstantAssignment_1"
    // InternalProperty.g:3878:1: rule__ArithTermL__ConstantAssignment_1 : ( ruleDataType ) ;
    public final void rule__ArithTermL__ConstantAssignment_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3882:1: ( ( ruleDataType ) )
            // InternalProperty.g:3883:1: ( ruleDataType )
            {
            // InternalProperty.g:3883:1: ( ruleDataType )
            // InternalProperty.g:3884:1: ruleDataType
            {
             before(grammarAccess.getArithTermLAccess().getConstantDataTypeParserRuleCall_1_0()); 
            pushFollow(FOLLOW_2);
            ruleDataType();

            state._fsp--;

             after(grammarAccess.getArithTermLAccess().getConstantDataTypeParserRuleCall_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__ConstantAssignment_1"


    // $ANTLR start "rule__ArithTermL__ArithVarAssignment_2"
    // InternalProperty.g:3893:1: rule__ArithTermL__ArithVarAssignment_2 : ( ruleArithVar ) ;
    public final void rule__ArithTermL__ArithVarAssignment_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3897:1: ( ( ruleArithVar ) )
            // InternalProperty.g:3898:1: ( ruleArithVar )
            {
            // InternalProperty.g:3898:1: ( ruleArithVar )
            // InternalProperty.g:3899:1: ruleArithVar
            {
             before(grammarAccess.getArithTermLAccess().getArithVarArithVarParserRuleCall_2_0()); 
            pushFollow(FOLLOW_2);
            ruleArithVar();

            state._fsp--;

             after(grammarAccess.getArithTermLAccess().getArithVarArithVarParserRuleCall_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__ArithVarAssignment_2"


    // $ANTLR start "rule__ArithTermL__ArithTermFAssignment_3_1"
    // InternalProperty.g:3908:1: rule__ArithTermL__ArithTermFAssignment_3_1 : ( ruleArithTerm ) ;
    public final void rule__ArithTermL__ArithTermFAssignment_3_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3912:1: ( ( ruleArithTerm ) )
            // InternalProperty.g:3913:1: ( ruleArithTerm )
            {
            // InternalProperty.g:3913:1: ( ruleArithTerm )
            // InternalProperty.g:3914:1: ruleArithTerm
            {
             before(grammarAccess.getArithTermLAccess().getArithTermFArithTermParserRuleCall_3_1_0()); 
            pushFollow(FOLLOW_2);
            ruleArithTerm();

            state._fsp--;

             after(grammarAccess.getArithTermLAccess().getArithTermFArithTermParserRuleCall_3_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__ArithTermFAssignment_3_1"


    // $ANTLR start "rule__ArithTermL__IntFAssignment_3_3"
    // InternalProperty.g:3923:1: rule__ArithTermL__IntFAssignment_3_3 : ( RULE_INT ) ;
    public final void rule__ArithTermL__IntFAssignment_3_3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3927:1: ( ( RULE_INT ) )
            // InternalProperty.g:3928:1: ( RULE_INT )
            {
            // InternalProperty.g:3928:1: ( RULE_INT )
            // InternalProperty.g:3929:1: RULE_INT
            {
             before(grammarAccess.getArithTermLAccess().getIntFINTTerminalRuleCall_3_3_0()); 
            match(input,RULE_INT,FOLLOW_2); 
             after(grammarAccess.getArithTermLAccess().getIntFINTTerminalRuleCall_3_3_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__IntFAssignment_3_3"


    // $ANTLR start "rule__ArithTermL__ArithTermPAssignment_4_1"
    // InternalProperty.g:3938:1: rule__ArithTermL__ArithTermPAssignment_4_1 : ( ruleArithTerm ) ;
    public final void rule__ArithTermL__ArithTermPAssignment_4_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3942:1: ( ( ruleArithTerm ) )
            // InternalProperty.g:3943:1: ( ruleArithTerm )
            {
            // InternalProperty.g:3943:1: ( ruleArithTerm )
            // InternalProperty.g:3944:1: ruleArithTerm
            {
             before(grammarAccess.getArithTermLAccess().getArithTermPArithTermParserRuleCall_4_1_0()); 
            pushFollow(FOLLOW_2);
            ruleArithTerm();

            state._fsp--;

             after(grammarAccess.getArithTermLAccess().getArithTermPArithTermParserRuleCall_4_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__ArithTermPAssignment_4_1"


    // $ANTLR start "rule__ArithTermL__IntPAssignment_4_3"
    // InternalProperty.g:3953:1: rule__ArithTermL__IntPAssignment_4_3 : ( RULE_INT ) ;
    public final void rule__ArithTermL__IntPAssignment_4_3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3957:1: ( ( RULE_INT ) )
            // InternalProperty.g:3958:1: ( RULE_INT )
            {
            // InternalProperty.g:3958:1: ( RULE_INT )
            // InternalProperty.g:3959:1: RULE_INT
            {
             before(grammarAccess.getArithTermLAccess().getIntPINTTerminalRuleCall_4_3_0()); 
            match(input,RULE_INT,FOLLOW_2); 
             after(grammarAccess.getArithTermLAccess().getIntPINTTerminalRuleCall_4_3_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermL__IntPAssignment_4_3"


    // $ANTLR start "rule__ArithTermR__ArithOPAssignment_0"
    // InternalProperty.g:3968:1: rule__ArithTermR__ArithOPAssignment_0 : ( RULE_ARITH_OP ) ;
    public final void rule__ArithTermR__ArithOPAssignment_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3972:1: ( ( RULE_ARITH_OP ) )
            // InternalProperty.g:3973:1: ( RULE_ARITH_OP )
            {
            // InternalProperty.g:3973:1: ( RULE_ARITH_OP )
            // InternalProperty.g:3974:1: RULE_ARITH_OP
            {
             before(grammarAccess.getArithTermRAccess().getArithOPARITH_OPTerminalRuleCall_0_0()); 
            match(input,RULE_ARITH_OP,FOLLOW_2); 
             after(grammarAccess.getArithTermRAccess().getArithOPARITH_OPTerminalRuleCall_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermR__ArithOPAssignment_0"


    // $ANTLR start "rule__ArithTermR__ArithTermAssignment_1"
    // InternalProperty.g:3983:1: rule__ArithTermR__ArithTermAssignment_1 : ( ruleArithTerm ) ;
    public final void rule__ArithTermR__ArithTermAssignment_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:3987:1: ( ( ruleArithTerm ) )
            // InternalProperty.g:3988:1: ( ruleArithTerm )
            {
            // InternalProperty.g:3988:1: ( ruleArithTerm )
            // InternalProperty.g:3989:1: ruleArithTerm
            {
             before(grammarAccess.getArithTermRAccess().getArithTermArithTermParserRuleCall_1_0()); 
            pushFollow(FOLLOW_2);
            ruleArithTerm();

            state._fsp--;

             after(grammarAccess.getArithTermRAccess().getArithTermArithTermParserRuleCall_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithTermR__ArithTermAssignment_1"


    // $ANTLR start "rule__ArithVar__ObjAssignment_0_0"
    // InternalProperty.g:3998:1: rule__ArithVar__ObjAssignment_0_0 : ( RULE_ID ) ;
    public final void rule__ArithVar__ObjAssignment_0_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:4002:1: ( ( RULE_ID ) )
            // InternalProperty.g:4003:1: ( RULE_ID )
            {
            // InternalProperty.g:4003:1: ( RULE_ID )
            // InternalProperty.g:4004:1: RULE_ID
            {
             before(grammarAccess.getArithVarAccess().getObjIDTerminalRuleCall_0_0_0()); 
            match(input,RULE_ID,FOLLOW_2); 
             after(grammarAccess.getArithVarAccess().getObjIDTerminalRuleCall_0_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__ObjAssignment_0_0"


    // $ANTLR start "rule__ArithVar__AtrAssignment_0_2"
    // InternalProperty.g:4013:1: rule__ArithVar__AtrAssignment_0_2 : ( RULE_ID ) ;
    public final void rule__ArithVar__AtrAssignment_0_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:4017:1: ( ( RULE_ID ) )
            // InternalProperty.g:4018:1: ( RULE_ID )
            {
            // InternalProperty.g:4018:1: ( RULE_ID )
            // InternalProperty.g:4019:1: RULE_ID
            {
             before(grammarAccess.getArithVarAccess().getAtrIDTerminalRuleCall_0_2_0()); 
            match(input,RULE_ID,FOLLOW_2); 
             after(grammarAccess.getArithVarAccess().getAtrIDTerminalRuleCall_0_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__AtrAssignment_0_2"


    // $ANTLR start "rule__ArithVar__ObjAssignment_1_0"
    // InternalProperty.g:4028:1: rule__ArithVar__ObjAssignment_1_0 : ( RULE_ID ) ;
    public final void rule__ArithVar__ObjAssignment_1_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:4032:1: ( ( RULE_ID ) )
            // InternalProperty.g:4033:1: ( RULE_ID )
            {
            // InternalProperty.g:4033:1: ( RULE_ID )
            // InternalProperty.g:4034:1: RULE_ID
            {
             before(grammarAccess.getArithVarAccess().getObjIDTerminalRuleCall_1_0_0()); 
            match(input,RULE_ID,FOLLOW_2); 
             after(grammarAccess.getArithVarAccess().getObjIDTerminalRuleCall_1_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__ObjAssignment_1_0"


    // $ANTLR start "rule__ArithVar__OpAssignment_1_2"
    // InternalProperty.g:4043:1: rule__ArithVar__OpAssignment_1_2 : ( RULE_ID ) ;
    public final void rule__ArithVar__OpAssignment_1_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:4047:1: ( ( RULE_ID ) )
            // InternalProperty.g:4048:1: ( RULE_ID )
            {
            // InternalProperty.g:4048:1: ( RULE_ID )
            // InternalProperty.g:4049:1: RULE_ID
            {
             before(grammarAccess.getArithVarAccess().getOpIDTerminalRuleCall_1_2_0()); 
            match(input,RULE_ID,FOLLOW_2); 
             after(grammarAccess.getArithVarAccess().getOpIDTerminalRuleCall_1_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__OpAssignment_1_2"


    // $ANTLR start "rule__ArithVar__ParamAssignment_1_4"
    // InternalProperty.g:4058:1: rule__ArithVar__ParamAssignment_1_4 : ( RULE_ID ) ;
    public final void rule__ArithVar__ParamAssignment_1_4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:4062:1: ( ( RULE_ID ) )
            // InternalProperty.g:4063:1: ( RULE_ID )
            {
            // InternalProperty.g:4063:1: ( RULE_ID )
            // InternalProperty.g:4064:1: RULE_ID
            {
             before(grammarAccess.getArithVarAccess().getParamIDTerminalRuleCall_1_4_0()); 
            match(input,RULE_ID,FOLLOW_2); 
             after(grammarAccess.getArithVarAccess().getParamIDTerminalRuleCall_1_4_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__ParamAssignment_1_4"


    // $ANTLR start "rule__ArithVar__SdAssignment_2_0"
    // InternalProperty.g:4073:1: rule__ArithVar__SdAssignment_2_0 : ( RULE_ID ) ;
    public final void rule__ArithVar__SdAssignment_2_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:4077:1: ( ( RULE_ID ) )
            // InternalProperty.g:4078:1: ( RULE_ID )
            {
            // InternalProperty.g:4078:1: ( RULE_ID )
            // InternalProperty.g:4079:1: RULE_ID
            {
             before(grammarAccess.getArithVarAccess().getSdIDTerminalRuleCall_2_0_0()); 
            match(input,RULE_ID,FOLLOW_2); 
             after(grammarAccess.getArithVarAccess().getSdIDTerminalRuleCall_2_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__SdAssignment_2_0"


    // $ANTLR start "rule__ArithVar__ParamAssignment_2_2"
    // InternalProperty.g:4088:1: rule__ArithVar__ParamAssignment_2_2 : ( RULE_ID ) ;
    public final void rule__ArithVar__ParamAssignment_2_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:4092:1: ( ( RULE_ID ) )
            // InternalProperty.g:4093:1: ( RULE_ID )
            {
            // InternalProperty.g:4093:1: ( RULE_ID )
            // InternalProperty.g:4094:1: RULE_ID
            {
             before(grammarAccess.getArithVarAccess().getParamIDTerminalRuleCall_2_2_0()); 
            match(input,RULE_ID,FOLLOW_2); 
             after(grammarAccess.getArithVarAccess().getParamIDTerminalRuleCall_2_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ArithVar__ParamAssignment_2_2"


    // $ANTLR start "rule__DataType__IAssignment_0"
    // InternalProperty.g:4103:1: rule__DataType__IAssignment_0 : ( RULE_INT ) ;
    public final void rule__DataType__IAssignment_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:4107:1: ( ( RULE_INT ) )
            // InternalProperty.g:4108:1: ( RULE_INT )
            {
            // InternalProperty.g:4108:1: ( RULE_INT )
            // InternalProperty.g:4109:1: RULE_INT
            {
             before(grammarAccess.getDataTypeAccess().getIINTTerminalRuleCall_0_0()); 
            match(input,RULE_INT,FOLLOW_2); 
             after(grammarAccess.getDataTypeAccess().getIINTTerminalRuleCall_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__DataType__IAssignment_0"


    // $ANTLR start "rule__DataType__FloatAssignment_1"
    // InternalProperty.g:4118:1: rule__DataType__FloatAssignment_1 : ( RULE_FLOAT ) ;
    public final void rule__DataType__FloatAssignment_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // InternalProperty.g:4122:1: ( ( RULE_FLOAT ) )
            // InternalProperty.g:4123:1: ( RULE_FLOAT )
            {
            // InternalProperty.g:4123:1: ( RULE_FLOAT )
            // InternalProperty.g:4124:1: RULE_FLOAT
            {
             before(grammarAccess.getDataTypeAccess().getFloatFLOATTerminalRuleCall_1_0()); 
            match(input,RULE_FLOAT,FOLLOW_2); 
             after(grammarAccess.getDataTypeAccess().getFloatFLOATTerminalRuleCall_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__DataType__FloatAssignment_1"

    // Delegated rules


 

    public static final BitSet FOLLOW_1 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_2 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_3 = new BitSet(new long[]{0x0000000000080000L});
    public static final BitSet FOLLOW_4 = new BitSet(new long[]{0x0000000000000022L});
    public static final BitSet FOLLOW_5 = new BitSet(new long[]{0x0000000000100010L});
    public static final BitSet FOLLOW_6 = new BitSet(new long[]{0x00000000F8000220L});
    public static final BitSet FOLLOW_7 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_8 = new BitSet(new long[]{0x0000000000400000L});
    public static final BitSet FOLLOW_9 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_10 = new BitSet(new long[]{0x0000000000800000L});
    public static final BitSet FOLLOW_11 = new BitSet(new long[]{0x0000000001000000L});
    public static final BitSet FOLLOW_12 = new BitSet(new long[]{0x0000000002000000L});
    public static final BitSet FOLLOW_13 = new BitSet(new long[]{0x0000000000000400L});
    public static final BitSet FOLLOW_14 = new BitSet(new long[]{0x0000000004000000L});
    public static final BitSet FOLLOW_15 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_16 = new BitSet(new long[]{0x0000000020000000L});
    public static final BitSet FOLLOW_17 = new BitSet(new long[]{0x0000000000000080L});
    public static final BitSet FOLLOW_18 = new BitSet(new long[]{0x0000000000000100L});
    public static final BitSet FOLLOW_19 = new BitSet(new long[]{0x0000000000000200L});
    public static final BitSet FOLLOW_20 = new BitSet(new long[]{0x0000000000000800L});
    public static final BitSet FOLLOW_21 = new BitSet(new long[]{0x00000000E0000220L});
    public static final BitSet FOLLOW_22 = new BitSet(new long[]{0x0000000000001000L});
    public static final BitSet FOLLOW_23 = new BitSet(new long[]{0x0000000100000000L});
    public static final BitSet FOLLOW_24 = new BitSet(new long[]{0x0000000200000000L});
    public static final BitSet FOLLOW_25 = new BitSet(new long[]{0x0000000400000000L});
    public static final BitSet FOLLOW_26 = new BitSet(new long[]{0x0000000000002000L});

}