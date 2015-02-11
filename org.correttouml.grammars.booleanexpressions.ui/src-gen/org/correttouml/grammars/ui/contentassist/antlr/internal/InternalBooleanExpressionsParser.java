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
import org.correttouml.grammars.services.BooleanExpressionsGrammarAccess;



import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class InternalBooleanExpressionsParser extends AbstractInternalContentAssistParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_RELATIONS", "RULE_INT", "RULE_ID", "RULE_STRING", "RULE_ML_COMMENT", "RULE_SL_COMMENT", "RULE_WS", "RULE_ANY_OTHER", "'exit'", "'enter'", "'start'", "'end'", "'tick'", "'sig'", "'call'", "'send'", "'receive'", "'!!'", "'||'", "'&&'", "'@'", "'-'", "'{'", "'}'", "'.'", "'now'"
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
    public String getGrammarFileName() { return "../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g"; }


     
     	private BooleanExpressionsGrammarAccess grammarAccess;
     	
        public void setGrammarAccess(BooleanExpressionsGrammarAccess grammarAccess) {
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
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:60:1: entryRuleModel : ruleModel EOF ;
    public final void entryRuleModel() throws RecognitionException {
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:61:1: ( ruleModel EOF )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:62:1: ruleModel EOF
            {
             before(grammarAccess.getModelRule()); 
            pushFollow(FOLLOW_ruleModel_in_entryRuleModel61);
            ruleModel();

            state._fsp--;

             after(grammarAccess.getModelRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleModel68); 

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
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:69:1: ruleModel : ( ( rule__Model__ExpressionAssignment ) ) ;
    public final void ruleModel() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:73:2: ( ( ( rule__Model__ExpressionAssignment ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:74:1: ( ( rule__Model__ExpressionAssignment ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:74:1: ( ( rule__Model__ExpressionAssignment ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:75:1: ( rule__Model__ExpressionAssignment )
            {
             before(grammarAccess.getModelAccess().getExpressionAssignment()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:76:1: ( rule__Model__ExpressionAssignment )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:76:2: rule__Model__ExpressionAssignment
            {
            pushFollow(FOLLOW_rule__Model__ExpressionAssignment_in_ruleModel94);
            rule__Model__ExpressionAssignment();

            state._fsp--;


            }

             after(grammarAccess.getModelAccess().getExpressionAssignment()); 

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


    // $ANTLR start "entryRulebooleanExpression"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:88:1: entryRulebooleanExpression : rulebooleanExpression EOF ;
    public final void entryRulebooleanExpression() throws RecognitionException {
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:89:1: ( rulebooleanExpression EOF )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:90:1: rulebooleanExpression EOF
            {
             before(grammarAccess.getBooleanExpressionRule()); 
            pushFollow(FOLLOW_rulebooleanExpression_in_entryRulebooleanExpression121);
            rulebooleanExpression();

            state._fsp--;

             after(grammarAccess.getBooleanExpressionRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRulebooleanExpression128); 

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
    // $ANTLR end "entryRulebooleanExpression"


    // $ANTLR start "rulebooleanExpression"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:97:1: rulebooleanExpression : ( ( rule__BooleanExpression__Alternatives ) ) ;
    public final void rulebooleanExpression() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:101:2: ( ( ( rule__BooleanExpression__Alternatives ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:102:1: ( ( rule__BooleanExpression__Alternatives ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:102:1: ( ( rule__BooleanExpression__Alternatives ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:103:1: ( rule__BooleanExpression__Alternatives )
            {
             before(grammarAccess.getBooleanExpressionAccess().getAlternatives()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:104:1: ( rule__BooleanExpression__Alternatives )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:104:2: rule__BooleanExpression__Alternatives
            {
            pushFollow(FOLLOW_rule__BooleanExpression__Alternatives_in_rulebooleanExpression154);
            rule__BooleanExpression__Alternatives();

            state._fsp--;


            }

             after(grammarAccess.getBooleanExpressionAccess().getAlternatives()); 

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
    // $ANTLR end "rulebooleanExpression"


    // $ANTLR start "entryRulebooleanTerm"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:116:1: entryRulebooleanTerm : rulebooleanTerm EOF ;
    public final void entryRulebooleanTerm() throws RecognitionException {
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:117:1: ( rulebooleanTerm EOF )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:118:1: rulebooleanTerm EOF
            {
             before(grammarAccess.getBooleanTermRule()); 
            pushFollow(FOLLOW_rulebooleanTerm_in_entryRulebooleanTerm181);
            rulebooleanTerm();

            state._fsp--;

             after(grammarAccess.getBooleanTermRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRulebooleanTerm188); 

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
    // $ANTLR end "entryRulebooleanTerm"


    // $ANTLR start "rulebooleanTerm"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:125:1: rulebooleanTerm : ( ( rule__BooleanTerm__Alternatives ) ) ;
    public final void rulebooleanTerm() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:129:2: ( ( ( rule__BooleanTerm__Alternatives ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:130:1: ( ( rule__BooleanTerm__Alternatives ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:130:1: ( ( rule__BooleanTerm__Alternatives ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:131:1: ( rule__BooleanTerm__Alternatives )
            {
             before(grammarAccess.getBooleanTermAccess().getAlternatives()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:132:1: ( rule__BooleanTerm__Alternatives )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:132:2: rule__BooleanTerm__Alternatives
            {
            pushFollow(FOLLOW_rule__BooleanTerm__Alternatives_in_rulebooleanTerm214);
            rule__BooleanTerm__Alternatives();

            state._fsp--;


            }

             after(grammarAccess.getBooleanTermAccess().getAlternatives()); 

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
    // $ANTLR end "rulebooleanTerm"


    // $ANTLR start "entryRuleTimeConstraint"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:144:1: entryRuleTimeConstraint : ruleTimeConstraint EOF ;
    public final void entryRuleTimeConstraint() throws RecognitionException {
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:145:1: ( ruleTimeConstraint EOF )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:146:1: ruleTimeConstraint EOF
            {
             before(grammarAccess.getTimeConstraintRule()); 
            pushFollow(FOLLOW_ruleTimeConstraint_in_entryRuleTimeConstraint241);
            ruleTimeConstraint();

            state._fsp--;

             after(grammarAccess.getTimeConstraintRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleTimeConstraint248); 

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
    // $ANTLR end "entryRuleTimeConstraint"


    // $ANTLR start "ruleTimeConstraint"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:153:1: ruleTimeConstraint : ( ( rule__TimeConstraint__Group__0 ) ) ;
    public final void ruleTimeConstraint() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:157:2: ( ( ( rule__TimeConstraint__Group__0 ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:158:1: ( ( rule__TimeConstraint__Group__0 ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:158:1: ( ( rule__TimeConstraint__Group__0 ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:159:1: ( rule__TimeConstraint__Group__0 )
            {
             before(grammarAccess.getTimeConstraintAccess().getGroup()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:160:1: ( rule__TimeConstraint__Group__0 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:160:2: rule__TimeConstraint__Group__0
            {
            pushFollow(FOLLOW_rule__TimeConstraint__Group__0_in_ruleTimeConstraint274);
            rule__TimeConstraint__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getTimeConstraintAccess().getGroup()); 

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
    // $ANTLR end "ruleTimeConstraint"


    // $ANTLR start "entryRuleBooleanVariable"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:172:1: entryRuleBooleanVariable : ruleBooleanVariable EOF ;
    public final void entryRuleBooleanVariable() throws RecognitionException {
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:173:1: ( ruleBooleanVariable EOF )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:174:1: ruleBooleanVariable EOF
            {
             before(grammarAccess.getBooleanVariableRule()); 
            pushFollow(FOLLOW_ruleBooleanVariable_in_entryRuleBooleanVariable301);
            ruleBooleanVariable();

            state._fsp--;

             after(grammarAccess.getBooleanVariableRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleBooleanVariable308); 

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
    // $ANTLR end "entryRuleBooleanVariable"


    // $ANTLR start "ruleBooleanVariable"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:181:1: ruleBooleanVariable : ( ( rule__BooleanVariable__VariableAssignment ) ) ;
    public final void ruleBooleanVariable() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:185:2: ( ( ( rule__BooleanVariable__VariableAssignment ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:186:1: ( ( rule__BooleanVariable__VariableAssignment ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:186:1: ( ( rule__BooleanVariable__VariableAssignment ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:187:1: ( rule__BooleanVariable__VariableAssignment )
            {
             before(grammarAccess.getBooleanVariableAccess().getVariableAssignment()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:188:1: ( rule__BooleanVariable__VariableAssignment )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:188:2: rule__BooleanVariable__VariableAssignment
            {
            pushFollow(FOLLOW_rule__BooleanVariable__VariableAssignment_in_ruleBooleanVariable334);
            rule__BooleanVariable__VariableAssignment();

            state._fsp--;


            }

             after(grammarAccess.getBooleanVariableAccess().getVariableAssignment()); 

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
    // $ANTLR end "ruleBooleanVariable"


    // $ANTLR start "entryRuleVariableCondition"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:200:1: entryRuleVariableCondition : ruleVariableCondition EOF ;
    public final void entryRuleVariableCondition() throws RecognitionException {
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:201:1: ( ruleVariableCondition EOF )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:202:1: ruleVariableCondition EOF
            {
             before(grammarAccess.getVariableConditionRule()); 
            pushFollow(FOLLOW_ruleVariableCondition_in_entryRuleVariableCondition361);
            ruleVariableCondition();

            state._fsp--;

             after(grammarAccess.getVariableConditionRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleVariableCondition368); 

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
    // $ANTLR end "entryRuleVariableCondition"


    // $ANTLR start "ruleVariableCondition"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:209:1: ruleVariableCondition : ( ( rule__VariableCondition__Group__0 ) ) ;
    public final void ruleVariableCondition() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:213:2: ( ( ( rule__VariableCondition__Group__0 ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:214:1: ( ( rule__VariableCondition__Group__0 ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:214:1: ( ( rule__VariableCondition__Group__0 ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:215:1: ( rule__VariableCondition__Group__0 )
            {
             before(grammarAccess.getVariableConditionAccess().getGroup()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:216:1: ( rule__VariableCondition__Group__0 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:216:2: rule__VariableCondition__Group__0
            {
            pushFollow(FOLLOW_rule__VariableCondition__Group__0_in_ruleVariableCondition394);
            rule__VariableCondition__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getVariableConditionAccess().getGroup()); 

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
    // $ANTLR end "ruleVariableCondition"


    // $ANTLR start "entryRuleEvent"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:228:1: entryRuleEvent : ruleEvent EOF ;
    public final void entryRuleEvent() throws RecognitionException {
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:229:1: ( ruleEvent EOF )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:230:1: ruleEvent EOF
            {
             before(grammarAccess.getEventRule()); 
            pushFollow(FOLLOW_ruleEvent_in_entryRuleEvent421);
            ruleEvent();

            state._fsp--;

             after(grammarAccess.getEventRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleEvent428); 

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
    // $ANTLR end "entryRuleEvent"


    // $ANTLR start "ruleEvent"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:237:1: ruleEvent : ( ( rule__Event__Alternatives ) ) ;
    public final void ruleEvent() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:241:2: ( ( ( rule__Event__Alternatives ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:242:1: ( ( rule__Event__Alternatives ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:242:1: ( ( rule__Event__Alternatives ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:243:1: ( rule__Event__Alternatives )
            {
             before(grammarAccess.getEventAccess().getAlternatives()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:244:1: ( rule__Event__Alternatives )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:244:2: rule__Event__Alternatives
            {
            pushFollow(FOLLOW_rule__Event__Alternatives_in_ruleEvent454);
            rule__Event__Alternatives();

            state._fsp--;


            }

             after(grammarAccess.getEventAccess().getAlternatives()); 

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
    // $ANTLR end "ruleEvent"


    // $ANTLR start "entryRuleEventExtensions"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:256:1: entryRuleEventExtensions : ruleEventExtensions EOF ;
    public final void entryRuleEventExtensions() throws RecognitionException {
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:257:1: ( ruleEventExtensions EOF )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:258:1: ruleEventExtensions EOF
            {
             before(grammarAccess.getEventExtensionsRule()); 
            pushFollow(FOLLOW_ruleEventExtensions_in_entryRuleEventExtensions481);
            ruleEventExtensions();

            state._fsp--;

             after(grammarAccess.getEventExtensionsRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleEventExtensions488); 

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
    // $ANTLR end "entryRuleEventExtensions"


    // $ANTLR start "ruleEventExtensions"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:265:1: ruleEventExtensions : ( ( rule__EventExtensions__Alternatives ) ) ;
    public final void ruleEventExtensions() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:269:2: ( ( ( rule__EventExtensions__Alternatives ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:270:1: ( ( rule__EventExtensions__Alternatives ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:270:1: ( ( rule__EventExtensions__Alternatives ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:271:1: ( rule__EventExtensions__Alternatives )
            {
             before(grammarAccess.getEventExtensionsAccess().getAlternatives()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:272:1: ( rule__EventExtensions__Alternatives )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:272:2: rule__EventExtensions__Alternatives
            {
            pushFollow(FOLLOW_rule__EventExtensions__Alternatives_in_ruleEventExtensions514);
            rule__EventExtensions__Alternatives();

            state._fsp--;


            }

             after(grammarAccess.getEventExtensionsAccess().getAlternatives()); 

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
    // $ANTLR end "ruleEventExtensions"


    // $ANTLR start "rule__BooleanExpression__Alternatives"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:284:1: rule__BooleanExpression__Alternatives : ( ( ( rule__BooleanExpression__Group_0__0 ) ) | ( ( rule__BooleanExpression__Group_1__0 ) ) | ( ( rule__BooleanExpression__Group_2__0 ) ) | ( ( rule__BooleanExpression__BooleanTermAssignment_3 ) ) );
    public final void rule__BooleanExpression__Alternatives() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:288:1: ( ( ( rule__BooleanExpression__Group_0__0 ) ) | ( ( rule__BooleanExpression__Group_1__0 ) ) | ( ( rule__BooleanExpression__Group_2__0 ) ) | ( ( rule__BooleanExpression__BooleanTermAssignment_3 ) ) )
            int alt1=4;
            alt1 = dfa1.predict(input);
            switch (alt1) {
                case 1 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:289:1: ( ( rule__BooleanExpression__Group_0__0 ) )
                    {
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:289:1: ( ( rule__BooleanExpression__Group_0__0 ) )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:290:1: ( rule__BooleanExpression__Group_0__0 )
                    {
                     before(grammarAccess.getBooleanExpressionAccess().getGroup_0()); 
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:291:1: ( rule__BooleanExpression__Group_0__0 )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:291:2: rule__BooleanExpression__Group_0__0
                    {
                    pushFollow(FOLLOW_rule__BooleanExpression__Group_0__0_in_rule__BooleanExpression__Alternatives550);
                    rule__BooleanExpression__Group_0__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getBooleanExpressionAccess().getGroup_0()); 

                    }


                    }
                    break;
                case 2 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:295:6: ( ( rule__BooleanExpression__Group_1__0 ) )
                    {
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:295:6: ( ( rule__BooleanExpression__Group_1__0 ) )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:296:1: ( rule__BooleanExpression__Group_1__0 )
                    {
                     before(grammarAccess.getBooleanExpressionAccess().getGroup_1()); 
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:297:1: ( rule__BooleanExpression__Group_1__0 )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:297:2: rule__BooleanExpression__Group_1__0
                    {
                    pushFollow(FOLLOW_rule__BooleanExpression__Group_1__0_in_rule__BooleanExpression__Alternatives568);
                    rule__BooleanExpression__Group_1__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getBooleanExpressionAccess().getGroup_1()); 

                    }


                    }
                    break;
                case 3 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:301:6: ( ( rule__BooleanExpression__Group_2__0 ) )
                    {
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:301:6: ( ( rule__BooleanExpression__Group_2__0 ) )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:302:1: ( rule__BooleanExpression__Group_2__0 )
                    {
                     before(grammarAccess.getBooleanExpressionAccess().getGroup_2()); 
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:303:1: ( rule__BooleanExpression__Group_2__0 )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:303:2: rule__BooleanExpression__Group_2__0
                    {
                    pushFollow(FOLLOW_rule__BooleanExpression__Group_2__0_in_rule__BooleanExpression__Alternatives586);
                    rule__BooleanExpression__Group_2__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getBooleanExpressionAccess().getGroup_2()); 

                    }


                    }
                    break;
                case 4 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:307:6: ( ( rule__BooleanExpression__BooleanTermAssignment_3 ) )
                    {
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:307:6: ( ( rule__BooleanExpression__BooleanTermAssignment_3 ) )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:308:1: ( rule__BooleanExpression__BooleanTermAssignment_3 )
                    {
                     before(grammarAccess.getBooleanExpressionAccess().getBooleanTermAssignment_3()); 
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:309:1: ( rule__BooleanExpression__BooleanTermAssignment_3 )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:309:2: rule__BooleanExpression__BooleanTermAssignment_3
                    {
                    pushFollow(FOLLOW_rule__BooleanExpression__BooleanTermAssignment_3_in_rule__BooleanExpression__Alternatives604);
                    rule__BooleanExpression__BooleanTermAssignment_3();

                    state._fsp--;


                    }

                     after(grammarAccess.getBooleanExpressionAccess().getBooleanTermAssignment_3()); 

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
    // $ANTLR end "rule__BooleanExpression__Alternatives"


    // $ANTLR start "rule__BooleanTerm__Alternatives"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:318:1: rule__BooleanTerm__Alternatives : ( ( ruleTimeConstraint ) | ( ruleBooleanVariable ) | ( ruleVariableCondition ) );
    public final void rule__BooleanTerm__Alternatives() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:322:1: ( ( ruleTimeConstraint ) | ( ruleBooleanVariable ) | ( ruleVariableCondition ) )
            int alt2=3;
            switch ( input.LA(1) ) {
            case 24:
                {
                alt2=1;
                }
                break;
            case RULE_ID:
                {
                alt2=2;
                }
                break;
            case 26:
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
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:323:1: ( ruleTimeConstraint )
                    {
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:323:1: ( ruleTimeConstraint )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:324:1: ruleTimeConstraint
                    {
                     before(grammarAccess.getBooleanTermAccess().getTimeConstraintParserRuleCall_0()); 
                    pushFollow(FOLLOW_ruleTimeConstraint_in_rule__BooleanTerm__Alternatives637);
                    ruleTimeConstraint();

                    state._fsp--;

                     after(grammarAccess.getBooleanTermAccess().getTimeConstraintParserRuleCall_0()); 

                    }


                    }
                    break;
                case 2 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:329:6: ( ruleBooleanVariable )
                    {
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:329:6: ( ruleBooleanVariable )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:330:1: ruleBooleanVariable
                    {
                     before(grammarAccess.getBooleanTermAccess().getBooleanVariableParserRuleCall_1()); 
                    pushFollow(FOLLOW_ruleBooleanVariable_in_rule__BooleanTerm__Alternatives654);
                    ruleBooleanVariable();

                    state._fsp--;

                     after(grammarAccess.getBooleanTermAccess().getBooleanVariableParserRuleCall_1()); 

                    }


                    }
                    break;
                case 3 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:335:6: ( ruleVariableCondition )
                    {
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:335:6: ( ruleVariableCondition )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:336:1: ruleVariableCondition
                    {
                     before(grammarAccess.getBooleanTermAccess().getVariableConditionParserRuleCall_2()); 
                    pushFollow(FOLLOW_ruleVariableCondition_in_rule__BooleanTerm__Alternatives671);
                    ruleVariableCondition();

                    state._fsp--;

                     after(grammarAccess.getBooleanTermAccess().getVariableConditionParserRuleCall_2()); 

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
    // $ANTLR end "rule__BooleanTerm__Alternatives"


    // $ANTLR start "rule__Event__Alternatives"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:346:1: rule__Event__Alternatives : ( ( ( rule__Event__Group_0__0 ) ) | ( ( rule__Event__NowEventAssignment_1 ) ) );
    public final void rule__Event__Alternatives() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:350:1: ( ( ( rule__Event__Group_0__0 ) ) | ( ( rule__Event__NowEventAssignment_1 ) ) )
            int alt3=2;
            int LA3_0 = input.LA(1);

            if ( (LA3_0==RULE_ID) ) {
                alt3=1;
            }
            else if ( (LA3_0==29) ) {
                alt3=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 3, 0, input);

                throw nvae;
            }
            switch (alt3) {
                case 1 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:351:1: ( ( rule__Event__Group_0__0 ) )
                    {
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:351:1: ( ( rule__Event__Group_0__0 ) )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:352:1: ( rule__Event__Group_0__0 )
                    {
                     before(grammarAccess.getEventAccess().getGroup_0()); 
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:353:1: ( rule__Event__Group_0__0 )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:353:2: rule__Event__Group_0__0
                    {
                    pushFollow(FOLLOW_rule__Event__Group_0__0_in_rule__Event__Alternatives703);
                    rule__Event__Group_0__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getEventAccess().getGroup_0()); 

                    }


                    }
                    break;
                case 2 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:357:6: ( ( rule__Event__NowEventAssignment_1 ) )
                    {
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:357:6: ( ( rule__Event__NowEventAssignment_1 ) )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:358:1: ( rule__Event__NowEventAssignment_1 )
                    {
                     before(grammarAccess.getEventAccess().getNowEventAssignment_1()); 
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:359:1: ( rule__Event__NowEventAssignment_1 )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:359:2: rule__Event__NowEventAssignment_1
                    {
                    pushFollow(FOLLOW_rule__Event__NowEventAssignment_1_in_rule__Event__Alternatives721);
                    rule__Event__NowEventAssignment_1();

                    state._fsp--;


                    }

                     after(grammarAccess.getEventAccess().getNowEventAssignment_1()); 

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
    // $ANTLR end "rule__Event__Alternatives"


    // $ANTLR start "rule__EventExtensions__Alternatives"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:368:1: rule__EventExtensions__Alternatives : ( ( 'exit' ) | ( 'enter' ) | ( 'start' ) | ( 'end' ) | ( 'tick' ) | ( 'sig' ) | ( 'call' ) | ( 'send' ) | ( 'receive' ) );
    public final void rule__EventExtensions__Alternatives() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:372:1: ( ( 'exit' ) | ( 'enter' ) | ( 'start' ) | ( 'end' ) | ( 'tick' ) | ( 'sig' ) | ( 'call' ) | ( 'send' ) | ( 'receive' ) )
            int alt4=9;
            switch ( input.LA(1) ) {
            case 12:
                {
                alt4=1;
                }
                break;
            case 13:
                {
                alt4=2;
                }
                break;
            case 14:
                {
                alt4=3;
                }
                break;
            case 15:
                {
                alt4=4;
                }
                break;
            case 16:
                {
                alt4=5;
                }
                break;
            case 17:
                {
                alt4=6;
                }
                break;
            case 18:
                {
                alt4=7;
                }
                break;
            case 19:
                {
                alt4=8;
                }
                break;
            case 20:
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
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:373:1: ( 'exit' )
                    {
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:373:1: ( 'exit' )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:374:1: 'exit'
                    {
                     before(grammarAccess.getEventExtensionsAccess().getExitKeyword_0()); 
                    match(input,12,FOLLOW_12_in_rule__EventExtensions__Alternatives755); 
                     after(grammarAccess.getEventExtensionsAccess().getExitKeyword_0()); 

                    }


                    }
                    break;
                case 2 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:381:6: ( 'enter' )
                    {
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:381:6: ( 'enter' )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:382:1: 'enter'
                    {
                     before(grammarAccess.getEventExtensionsAccess().getEnterKeyword_1()); 
                    match(input,13,FOLLOW_13_in_rule__EventExtensions__Alternatives775); 
                     after(grammarAccess.getEventExtensionsAccess().getEnterKeyword_1()); 

                    }


                    }
                    break;
                case 3 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:389:6: ( 'start' )
                    {
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:389:6: ( 'start' )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:390:1: 'start'
                    {
                     before(grammarAccess.getEventExtensionsAccess().getStartKeyword_2()); 
                    match(input,14,FOLLOW_14_in_rule__EventExtensions__Alternatives795); 
                     after(grammarAccess.getEventExtensionsAccess().getStartKeyword_2()); 

                    }


                    }
                    break;
                case 4 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:397:6: ( 'end' )
                    {
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:397:6: ( 'end' )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:398:1: 'end'
                    {
                     before(grammarAccess.getEventExtensionsAccess().getEndKeyword_3()); 
                    match(input,15,FOLLOW_15_in_rule__EventExtensions__Alternatives815); 
                     after(grammarAccess.getEventExtensionsAccess().getEndKeyword_3()); 

                    }


                    }
                    break;
                case 5 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:405:6: ( 'tick' )
                    {
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:405:6: ( 'tick' )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:406:1: 'tick'
                    {
                     before(grammarAccess.getEventExtensionsAccess().getTickKeyword_4()); 
                    match(input,16,FOLLOW_16_in_rule__EventExtensions__Alternatives835); 
                     after(grammarAccess.getEventExtensionsAccess().getTickKeyword_4()); 

                    }


                    }
                    break;
                case 6 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:413:6: ( 'sig' )
                    {
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:413:6: ( 'sig' )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:414:1: 'sig'
                    {
                     before(grammarAccess.getEventExtensionsAccess().getSigKeyword_5()); 
                    match(input,17,FOLLOW_17_in_rule__EventExtensions__Alternatives855); 
                     after(grammarAccess.getEventExtensionsAccess().getSigKeyword_5()); 

                    }


                    }
                    break;
                case 7 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:421:6: ( 'call' )
                    {
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:421:6: ( 'call' )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:422:1: 'call'
                    {
                     before(grammarAccess.getEventExtensionsAccess().getCallKeyword_6()); 
                    match(input,18,FOLLOW_18_in_rule__EventExtensions__Alternatives875); 
                     after(grammarAccess.getEventExtensionsAccess().getCallKeyword_6()); 

                    }


                    }
                    break;
                case 8 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:429:6: ( 'send' )
                    {
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:429:6: ( 'send' )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:430:1: 'send'
                    {
                     before(grammarAccess.getEventExtensionsAccess().getSendKeyword_7()); 
                    match(input,19,FOLLOW_19_in_rule__EventExtensions__Alternatives895); 
                     after(grammarAccess.getEventExtensionsAccess().getSendKeyword_7()); 

                    }


                    }
                    break;
                case 9 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:437:6: ( 'receive' )
                    {
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:437:6: ( 'receive' )
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:438:1: 'receive'
                    {
                     before(grammarAccess.getEventExtensionsAccess().getReceiveKeyword_8()); 
                    match(input,20,FOLLOW_20_in_rule__EventExtensions__Alternatives915); 
                     after(grammarAccess.getEventExtensionsAccess().getReceiveKeyword_8()); 

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
    // $ANTLR end "rule__EventExtensions__Alternatives"


    // $ANTLR start "rule__BooleanExpression__Group_0__0"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:452:1: rule__BooleanExpression__Group_0__0 : rule__BooleanExpression__Group_0__0__Impl rule__BooleanExpression__Group_0__1 ;
    public final void rule__BooleanExpression__Group_0__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:456:1: ( rule__BooleanExpression__Group_0__0__Impl rule__BooleanExpression__Group_0__1 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:457:2: rule__BooleanExpression__Group_0__0__Impl rule__BooleanExpression__Group_0__1
            {
            pushFollow(FOLLOW_rule__BooleanExpression__Group_0__0__Impl_in_rule__BooleanExpression__Group_0__0947);
            rule__BooleanExpression__Group_0__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__BooleanExpression__Group_0__1_in_rule__BooleanExpression__Group_0__0950);
            rule__BooleanExpression__Group_0__1();

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
    // $ANTLR end "rule__BooleanExpression__Group_0__0"


    // $ANTLR start "rule__BooleanExpression__Group_0__0__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:464:1: rule__BooleanExpression__Group_0__0__Impl : ( '!!' ) ;
    public final void rule__BooleanExpression__Group_0__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:468:1: ( ( '!!' ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:469:1: ( '!!' )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:469:1: ( '!!' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:470:1: '!!'
            {
             before(grammarAccess.getBooleanExpressionAccess().getExclamationMarkExclamationMarkKeyword_0_0()); 
            match(input,21,FOLLOW_21_in_rule__BooleanExpression__Group_0__0__Impl978); 
             after(grammarAccess.getBooleanExpressionAccess().getExclamationMarkExclamationMarkKeyword_0_0()); 

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
    // $ANTLR end "rule__BooleanExpression__Group_0__0__Impl"


    // $ANTLR start "rule__BooleanExpression__Group_0__1"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:483:1: rule__BooleanExpression__Group_0__1 : rule__BooleanExpression__Group_0__1__Impl ;
    public final void rule__BooleanExpression__Group_0__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:487:1: ( rule__BooleanExpression__Group_0__1__Impl )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:488:2: rule__BooleanExpression__Group_0__1__Impl
            {
            pushFollow(FOLLOW_rule__BooleanExpression__Group_0__1__Impl_in_rule__BooleanExpression__Group_0__11009);
            rule__BooleanExpression__Group_0__1__Impl();

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
    // $ANTLR end "rule__BooleanExpression__Group_0__1"


    // $ANTLR start "rule__BooleanExpression__Group_0__1__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:494:1: rule__BooleanExpression__Group_0__1__Impl : ( ( rule__BooleanExpression__NotExpressionAssignment_0_1 ) ) ;
    public final void rule__BooleanExpression__Group_0__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:498:1: ( ( ( rule__BooleanExpression__NotExpressionAssignment_0_1 ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:499:1: ( ( rule__BooleanExpression__NotExpressionAssignment_0_1 ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:499:1: ( ( rule__BooleanExpression__NotExpressionAssignment_0_1 ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:500:1: ( rule__BooleanExpression__NotExpressionAssignment_0_1 )
            {
             before(grammarAccess.getBooleanExpressionAccess().getNotExpressionAssignment_0_1()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:501:1: ( rule__BooleanExpression__NotExpressionAssignment_0_1 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:501:2: rule__BooleanExpression__NotExpressionAssignment_0_1
            {
            pushFollow(FOLLOW_rule__BooleanExpression__NotExpressionAssignment_0_1_in_rule__BooleanExpression__Group_0__1__Impl1036);
            rule__BooleanExpression__NotExpressionAssignment_0_1();

            state._fsp--;


            }

             after(grammarAccess.getBooleanExpressionAccess().getNotExpressionAssignment_0_1()); 

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
    // $ANTLR end "rule__BooleanExpression__Group_0__1__Impl"


    // $ANTLR start "rule__BooleanExpression__Group_1__0"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:515:1: rule__BooleanExpression__Group_1__0 : rule__BooleanExpression__Group_1__0__Impl rule__BooleanExpression__Group_1__1 ;
    public final void rule__BooleanExpression__Group_1__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:519:1: ( rule__BooleanExpression__Group_1__0__Impl rule__BooleanExpression__Group_1__1 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:520:2: rule__BooleanExpression__Group_1__0__Impl rule__BooleanExpression__Group_1__1
            {
            pushFollow(FOLLOW_rule__BooleanExpression__Group_1__0__Impl_in_rule__BooleanExpression__Group_1__01070);
            rule__BooleanExpression__Group_1__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__BooleanExpression__Group_1__1_in_rule__BooleanExpression__Group_1__01073);
            rule__BooleanExpression__Group_1__1();

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
    // $ANTLR end "rule__BooleanExpression__Group_1__0"


    // $ANTLR start "rule__BooleanExpression__Group_1__0__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:527:1: rule__BooleanExpression__Group_1__0__Impl : ( ( rule__BooleanExpression__OrLeftAssignment_1_0 ) ) ;
    public final void rule__BooleanExpression__Group_1__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:531:1: ( ( ( rule__BooleanExpression__OrLeftAssignment_1_0 ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:532:1: ( ( rule__BooleanExpression__OrLeftAssignment_1_0 ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:532:1: ( ( rule__BooleanExpression__OrLeftAssignment_1_0 ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:533:1: ( rule__BooleanExpression__OrLeftAssignment_1_0 )
            {
             before(grammarAccess.getBooleanExpressionAccess().getOrLeftAssignment_1_0()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:534:1: ( rule__BooleanExpression__OrLeftAssignment_1_0 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:534:2: rule__BooleanExpression__OrLeftAssignment_1_0
            {
            pushFollow(FOLLOW_rule__BooleanExpression__OrLeftAssignment_1_0_in_rule__BooleanExpression__Group_1__0__Impl1100);
            rule__BooleanExpression__OrLeftAssignment_1_0();

            state._fsp--;


            }

             after(grammarAccess.getBooleanExpressionAccess().getOrLeftAssignment_1_0()); 

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
    // $ANTLR end "rule__BooleanExpression__Group_1__0__Impl"


    // $ANTLR start "rule__BooleanExpression__Group_1__1"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:544:1: rule__BooleanExpression__Group_1__1 : rule__BooleanExpression__Group_1__1__Impl rule__BooleanExpression__Group_1__2 ;
    public final void rule__BooleanExpression__Group_1__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:548:1: ( rule__BooleanExpression__Group_1__1__Impl rule__BooleanExpression__Group_1__2 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:549:2: rule__BooleanExpression__Group_1__1__Impl rule__BooleanExpression__Group_1__2
            {
            pushFollow(FOLLOW_rule__BooleanExpression__Group_1__1__Impl_in_rule__BooleanExpression__Group_1__11130);
            rule__BooleanExpression__Group_1__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__BooleanExpression__Group_1__2_in_rule__BooleanExpression__Group_1__11133);
            rule__BooleanExpression__Group_1__2();

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
    // $ANTLR end "rule__BooleanExpression__Group_1__1"


    // $ANTLR start "rule__BooleanExpression__Group_1__1__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:556:1: rule__BooleanExpression__Group_1__1__Impl : ( '||' ) ;
    public final void rule__BooleanExpression__Group_1__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:560:1: ( ( '||' ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:561:1: ( '||' )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:561:1: ( '||' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:562:1: '||'
            {
             before(grammarAccess.getBooleanExpressionAccess().getVerticalLineVerticalLineKeyword_1_1()); 
            match(input,22,FOLLOW_22_in_rule__BooleanExpression__Group_1__1__Impl1161); 
             after(grammarAccess.getBooleanExpressionAccess().getVerticalLineVerticalLineKeyword_1_1()); 

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
    // $ANTLR end "rule__BooleanExpression__Group_1__1__Impl"


    // $ANTLR start "rule__BooleanExpression__Group_1__2"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:575:1: rule__BooleanExpression__Group_1__2 : rule__BooleanExpression__Group_1__2__Impl ;
    public final void rule__BooleanExpression__Group_1__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:579:1: ( rule__BooleanExpression__Group_1__2__Impl )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:580:2: rule__BooleanExpression__Group_1__2__Impl
            {
            pushFollow(FOLLOW_rule__BooleanExpression__Group_1__2__Impl_in_rule__BooleanExpression__Group_1__21192);
            rule__BooleanExpression__Group_1__2__Impl();

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
    // $ANTLR end "rule__BooleanExpression__Group_1__2"


    // $ANTLR start "rule__BooleanExpression__Group_1__2__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:586:1: rule__BooleanExpression__Group_1__2__Impl : ( ( rule__BooleanExpression__OrRightAssignment_1_2 ) ) ;
    public final void rule__BooleanExpression__Group_1__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:590:1: ( ( ( rule__BooleanExpression__OrRightAssignment_1_2 ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:591:1: ( ( rule__BooleanExpression__OrRightAssignment_1_2 ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:591:1: ( ( rule__BooleanExpression__OrRightAssignment_1_2 ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:592:1: ( rule__BooleanExpression__OrRightAssignment_1_2 )
            {
             before(grammarAccess.getBooleanExpressionAccess().getOrRightAssignment_1_2()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:593:1: ( rule__BooleanExpression__OrRightAssignment_1_2 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:593:2: rule__BooleanExpression__OrRightAssignment_1_2
            {
            pushFollow(FOLLOW_rule__BooleanExpression__OrRightAssignment_1_2_in_rule__BooleanExpression__Group_1__2__Impl1219);
            rule__BooleanExpression__OrRightAssignment_1_2();

            state._fsp--;


            }

             after(grammarAccess.getBooleanExpressionAccess().getOrRightAssignment_1_2()); 

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
    // $ANTLR end "rule__BooleanExpression__Group_1__2__Impl"


    // $ANTLR start "rule__BooleanExpression__Group_2__0"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:609:1: rule__BooleanExpression__Group_2__0 : rule__BooleanExpression__Group_2__0__Impl rule__BooleanExpression__Group_2__1 ;
    public final void rule__BooleanExpression__Group_2__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:613:1: ( rule__BooleanExpression__Group_2__0__Impl rule__BooleanExpression__Group_2__1 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:614:2: rule__BooleanExpression__Group_2__0__Impl rule__BooleanExpression__Group_2__1
            {
            pushFollow(FOLLOW_rule__BooleanExpression__Group_2__0__Impl_in_rule__BooleanExpression__Group_2__01255);
            rule__BooleanExpression__Group_2__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__BooleanExpression__Group_2__1_in_rule__BooleanExpression__Group_2__01258);
            rule__BooleanExpression__Group_2__1();

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
    // $ANTLR end "rule__BooleanExpression__Group_2__0"


    // $ANTLR start "rule__BooleanExpression__Group_2__0__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:621:1: rule__BooleanExpression__Group_2__0__Impl : ( ( rule__BooleanExpression__AndLeftAssignment_2_0 ) ) ;
    public final void rule__BooleanExpression__Group_2__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:625:1: ( ( ( rule__BooleanExpression__AndLeftAssignment_2_0 ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:626:1: ( ( rule__BooleanExpression__AndLeftAssignment_2_0 ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:626:1: ( ( rule__BooleanExpression__AndLeftAssignment_2_0 ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:627:1: ( rule__BooleanExpression__AndLeftAssignment_2_0 )
            {
             before(grammarAccess.getBooleanExpressionAccess().getAndLeftAssignment_2_0()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:628:1: ( rule__BooleanExpression__AndLeftAssignment_2_0 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:628:2: rule__BooleanExpression__AndLeftAssignment_2_0
            {
            pushFollow(FOLLOW_rule__BooleanExpression__AndLeftAssignment_2_0_in_rule__BooleanExpression__Group_2__0__Impl1285);
            rule__BooleanExpression__AndLeftAssignment_2_0();

            state._fsp--;


            }

             after(grammarAccess.getBooleanExpressionAccess().getAndLeftAssignment_2_0()); 

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
    // $ANTLR end "rule__BooleanExpression__Group_2__0__Impl"


    // $ANTLR start "rule__BooleanExpression__Group_2__1"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:638:1: rule__BooleanExpression__Group_2__1 : rule__BooleanExpression__Group_2__1__Impl rule__BooleanExpression__Group_2__2 ;
    public final void rule__BooleanExpression__Group_2__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:642:1: ( rule__BooleanExpression__Group_2__1__Impl rule__BooleanExpression__Group_2__2 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:643:2: rule__BooleanExpression__Group_2__1__Impl rule__BooleanExpression__Group_2__2
            {
            pushFollow(FOLLOW_rule__BooleanExpression__Group_2__1__Impl_in_rule__BooleanExpression__Group_2__11315);
            rule__BooleanExpression__Group_2__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__BooleanExpression__Group_2__2_in_rule__BooleanExpression__Group_2__11318);
            rule__BooleanExpression__Group_2__2();

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
    // $ANTLR end "rule__BooleanExpression__Group_2__1"


    // $ANTLR start "rule__BooleanExpression__Group_2__1__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:650:1: rule__BooleanExpression__Group_2__1__Impl : ( '&&' ) ;
    public final void rule__BooleanExpression__Group_2__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:654:1: ( ( '&&' ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:655:1: ( '&&' )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:655:1: ( '&&' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:656:1: '&&'
            {
             before(grammarAccess.getBooleanExpressionAccess().getAmpersandAmpersandKeyword_2_1()); 
            match(input,23,FOLLOW_23_in_rule__BooleanExpression__Group_2__1__Impl1346); 
             after(grammarAccess.getBooleanExpressionAccess().getAmpersandAmpersandKeyword_2_1()); 

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
    // $ANTLR end "rule__BooleanExpression__Group_2__1__Impl"


    // $ANTLR start "rule__BooleanExpression__Group_2__2"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:669:1: rule__BooleanExpression__Group_2__2 : rule__BooleanExpression__Group_2__2__Impl ;
    public final void rule__BooleanExpression__Group_2__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:673:1: ( rule__BooleanExpression__Group_2__2__Impl )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:674:2: rule__BooleanExpression__Group_2__2__Impl
            {
            pushFollow(FOLLOW_rule__BooleanExpression__Group_2__2__Impl_in_rule__BooleanExpression__Group_2__21377);
            rule__BooleanExpression__Group_2__2__Impl();

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
    // $ANTLR end "rule__BooleanExpression__Group_2__2"


    // $ANTLR start "rule__BooleanExpression__Group_2__2__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:680:1: rule__BooleanExpression__Group_2__2__Impl : ( ( rule__BooleanExpression__AndRightAssignment_2_2 ) ) ;
    public final void rule__BooleanExpression__Group_2__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:684:1: ( ( ( rule__BooleanExpression__AndRightAssignment_2_2 ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:685:1: ( ( rule__BooleanExpression__AndRightAssignment_2_2 ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:685:1: ( ( rule__BooleanExpression__AndRightAssignment_2_2 ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:686:1: ( rule__BooleanExpression__AndRightAssignment_2_2 )
            {
             before(grammarAccess.getBooleanExpressionAccess().getAndRightAssignment_2_2()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:687:1: ( rule__BooleanExpression__AndRightAssignment_2_2 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:687:2: rule__BooleanExpression__AndRightAssignment_2_2
            {
            pushFollow(FOLLOW_rule__BooleanExpression__AndRightAssignment_2_2_in_rule__BooleanExpression__Group_2__2__Impl1404);
            rule__BooleanExpression__AndRightAssignment_2_2();

            state._fsp--;


            }

             after(grammarAccess.getBooleanExpressionAccess().getAndRightAssignment_2_2()); 

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
    // $ANTLR end "rule__BooleanExpression__Group_2__2__Impl"


    // $ANTLR start "rule__TimeConstraint__Group__0"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:703:1: rule__TimeConstraint__Group__0 : rule__TimeConstraint__Group__0__Impl rule__TimeConstraint__Group__1 ;
    public final void rule__TimeConstraint__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:707:1: ( rule__TimeConstraint__Group__0__Impl rule__TimeConstraint__Group__1 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:708:2: rule__TimeConstraint__Group__0__Impl rule__TimeConstraint__Group__1
            {
            pushFollow(FOLLOW_rule__TimeConstraint__Group__0__Impl_in_rule__TimeConstraint__Group__01440);
            rule__TimeConstraint__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__TimeConstraint__Group__1_in_rule__TimeConstraint__Group__01443);
            rule__TimeConstraint__Group__1();

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
    // $ANTLR end "rule__TimeConstraint__Group__0"


    // $ANTLR start "rule__TimeConstraint__Group__0__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:715:1: rule__TimeConstraint__Group__0__Impl : ( '@' ) ;
    public final void rule__TimeConstraint__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:719:1: ( ( '@' ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:720:1: ( '@' )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:720:1: ( '@' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:721:1: '@'
            {
             before(grammarAccess.getTimeConstraintAccess().getCommercialAtKeyword_0()); 
            match(input,24,FOLLOW_24_in_rule__TimeConstraint__Group__0__Impl1471); 
             after(grammarAccess.getTimeConstraintAccess().getCommercialAtKeyword_0()); 

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
    // $ANTLR end "rule__TimeConstraint__Group__0__Impl"


    // $ANTLR start "rule__TimeConstraint__Group__1"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:734:1: rule__TimeConstraint__Group__1 : rule__TimeConstraint__Group__1__Impl rule__TimeConstraint__Group__2 ;
    public final void rule__TimeConstraint__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:738:1: ( rule__TimeConstraint__Group__1__Impl rule__TimeConstraint__Group__2 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:739:2: rule__TimeConstraint__Group__1__Impl rule__TimeConstraint__Group__2
            {
            pushFollow(FOLLOW_rule__TimeConstraint__Group__1__Impl_in_rule__TimeConstraint__Group__11502);
            rule__TimeConstraint__Group__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__TimeConstraint__Group__2_in_rule__TimeConstraint__Group__11505);
            rule__TimeConstraint__Group__2();

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
    // $ANTLR end "rule__TimeConstraint__Group__1"


    // $ANTLR start "rule__TimeConstraint__Group__1__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:746:1: rule__TimeConstraint__Group__1__Impl : ( ( rule__TimeConstraint__Event2Assignment_1 ) ) ;
    public final void rule__TimeConstraint__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:750:1: ( ( ( rule__TimeConstraint__Event2Assignment_1 ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:751:1: ( ( rule__TimeConstraint__Event2Assignment_1 ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:751:1: ( ( rule__TimeConstraint__Event2Assignment_1 ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:752:1: ( rule__TimeConstraint__Event2Assignment_1 )
            {
             before(grammarAccess.getTimeConstraintAccess().getEvent2Assignment_1()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:753:1: ( rule__TimeConstraint__Event2Assignment_1 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:753:2: rule__TimeConstraint__Event2Assignment_1
            {
            pushFollow(FOLLOW_rule__TimeConstraint__Event2Assignment_1_in_rule__TimeConstraint__Group__1__Impl1532);
            rule__TimeConstraint__Event2Assignment_1();

            state._fsp--;


            }

             after(grammarAccess.getTimeConstraintAccess().getEvent2Assignment_1()); 

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
    // $ANTLR end "rule__TimeConstraint__Group__1__Impl"


    // $ANTLR start "rule__TimeConstraint__Group__2"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:763:1: rule__TimeConstraint__Group__2 : rule__TimeConstraint__Group__2__Impl rule__TimeConstraint__Group__3 ;
    public final void rule__TimeConstraint__Group__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:767:1: ( rule__TimeConstraint__Group__2__Impl rule__TimeConstraint__Group__3 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:768:2: rule__TimeConstraint__Group__2__Impl rule__TimeConstraint__Group__3
            {
            pushFollow(FOLLOW_rule__TimeConstraint__Group__2__Impl_in_rule__TimeConstraint__Group__21562);
            rule__TimeConstraint__Group__2__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__TimeConstraint__Group__3_in_rule__TimeConstraint__Group__21565);
            rule__TimeConstraint__Group__3();

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
    // $ANTLR end "rule__TimeConstraint__Group__2"


    // $ANTLR start "rule__TimeConstraint__Group__2__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:775:1: rule__TimeConstraint__Group__2__Impl : ( '-' ) ;
    public final void rule__TimeConstraint__Group__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:779:1: ( ( '-' ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:780:1: ( '-' )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:780:1: ( '-' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:781:1: '-'
            {
             before(grammarAccess.getTimeConstraintAccess().getHyphenMinusKeyword_2()); 
            match(input,25,FOLLOW_25_in_rule__TimeConstraint__Group__2__Impl1593); 
             after(grammarAccess.getTimeConstraintAccess().getHyphenMinusKeyword_2()); 

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
    // $ANTLR end "rule__TimeConstraint__Group__2__Impl"


    // $ANTLR start "rule__TimeConstraint__Group__3"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:794:1: rule__TimeConstraint__Group__3 : rule__TimeConstraint__Group__3__Impl rule__TimeConstraint__Group__4 ;
    public final void rule__TimeConstraint__Group__3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:798:1: ( rule__TimeConstraint__Group__3__Impl rule__TimeConstraint__Group__4 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:799:2: rule__TimeConstraint__Group__3__Impl rule__TimeConstraint__Group__4
            {
            pushFollow(FOLLOW_rule__TimeConstraint__Group__3__Impl_in_rule__TimeConstraint__Group__31624);
            rule__TimeConstraint__Group__3__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__TimeConstraint__Group__4_in_rule__TimeConstraint__Group__31627);
            rule__TimeConstraint__Group__4();

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
    // $ANTLR end "rule__TimeConstraint__Group__3"


    // $ANTLR start "rule__TimeConstraint__Group__3__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:806:1: rule__TimeConstraint__Group__3__Impl : ( '@' ) ;
    public final void rule__TimeConstraint__Group__3__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:810:1: ( ( '@' ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:811:1: ( '@' )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:811:1: ( '@' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:812:1: '@'
            {
             before(grammarAccess.getTimeConstraintAccess().getCommercialAtKeyword_3()); 
            match(input,24,FOLLOW_24_in_rule__TimeConstraint__Group__3__Impl1655); 
             after(grammarAccess.getTimeConstraintAccess().getCommercialAtKeyword_3()); 

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
    // $ANTLR end "rule__TimeConstraint__Group__3__Impl"


    // $ANTLR start "rule__TimeConstraint__Group__4"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:825:1: rule__TimeConstraint__Group__4 : rule__TimeConstraint__Group__4__Impl rule__TimeConstraint__Group__5 ;
    public final void rule__TimeConstraint__Group__4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:829:1: ( rule__TimeConstraint__Group__4__Impl rule__TimeConstraint__Group__5 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:830:2: rule__TimeConstraint__Group__4__Impl rule__TimeConstraint__Group__5
            {
            pushFollow(FOLLOW_rule__TimeConstraint__Group__4__Impl_in_rule__TimeConstraint__Group__41686);
            rule__TimeConstraint__Group__4__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__TimeConstraint__Group__5_in_rule__TimeConstraint__Group__41689);
            rule__TimeConstraint__Group__5();

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
    // $ANTLR end "rule__TimeConstraint__Group__4"


    // $ANTLR start "rule__TimeConstraint__Group__4__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:837:1: rule__TimeConstraint__Group__4__Impl : ( ( rule__TimeConstraint__Event1Assignment_4 ) ) ;
    public final void rule__TimeConstraint__Group__4__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:841:1: ( ( ( rule__TimeConstraint__Event1Assignment_4 ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:842:1: ( ( rule__TimeConstraint__Event1Assignment_4 ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:842:1: ( ( rule__TimeConstraint__Event1Assignment_4 ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:843:1: ( rule__TimeConstraint__Event1Assignment_4 )
            {
             before(grammarAccess.getTimeConstraintAccess().getEvent1Assignment_4()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:844:1: ( rule__TimeConstraint__Event1Assignment_4 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:844:2: rule__TimeConstraint__Event1Assignment_4
            {
            pushFollow(FOLLOW_rule__TimeConstraint__Event1Assignment_4_in_rule__TimeConstraint__Group__4__Impl1716);
            rule__TimeConstraint__Event1Assignment_4();

            state._fsp--;


            }

             after(grammarAccess.getTimeConstraintAccess().getEvent1Assignment_4()); 

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
    // $ANTLR end "rule__TimeConstraint__Group__4__Impl"


    // $ANTLR start "rule__TimeConstraint__Group__5"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:854:1: rule__TimeConstraint__Group__5 : rule__TimeConstraint__Group__5__Impl rule__TimeConstraint__Group__6 ;
    public final void rule__TimeConstraint__Group__5() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:858:1: ( rule__TimeConstraint__Group__5__Impl rule__TimeConstraint__Group__6 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:859:2: rule__TimeConstraint__Group__5__Impl rule__TimeConstraint__Group__6
            {
            pushFollow(FOLLOW_rule__TimeConstraint__Group__5__Impl_in_rule__TimeConstraint__Group__51746);
            rule__TimeConstraint__Group__5__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__TimeConstraint__Group__6_in_rule__TimeConstraint__Group__51749);
            rule__TimeConstraint__Group__6();

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
    // $ANTLR end "rule__TimeConstraint__Group__5"


    // $ANTLR start "rule__TimeConstraint__Group__5__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:866:1: rule__TimeConstraint__Group__5__Impl : ( ( rule__TimeConstraint__OpAssignment_5 ) ) ;
    public final void rule__TimeConstraint__Group__5__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:870:1: ( ( ( rule__TimeConstraint__OpAssignment_5 ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:871:1: ( ( rule__TimeConstraint__OpAssignment_5 ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:871:1: ( ( rule__TimeConstraint__OpAssignment_5 ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:872:1: ( rule__TimeConstraint__OpAssignment_5 )
            {
             before(grammarAccess.getTimeConstraintAccess().getOpAssignment_5()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:873:1: ( rule__TimeConstraint__OpAssignment_5 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:873:2: rule__TimeConstraint__OpAssignment_5
            {
            pushFollow(FOLLOW_rule__TimeConstraint__OpAssignment_5_in_rule__TimeConstraint__Group__5__Impl1776);
            rule__TimeConstraint__OpAssignment_5();

            state._fsp--;


            }

             after(grammarAccess.getTimeConstraintAccess().getOpAssignment_5()); 

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
    // $ANTLR end "rule__TimeConstraint__Group__5__Impl"


    // $ANTLR start "rule__TimeConstraint__Group__6"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:883:1: rule__TimeConstraint__Group__6 : rule__TimeConstraint__Group__6__Impl ;
    public final void rule__TimeConstraint__Group__6() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:887:1: ( rule__TimeConstraint__Group__6__Impl )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:888:2: rule__TimeConstraint__Group__6__Impl
            {
            pushFollow(FOLLOW_rule__TimeConstraint__Group__6__Impl_in_rule__TimeConstraint__Group__61806);
            rule__TimeConstraint__Group__6__Impl();

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
    // $ANTLR end "rule__TimeConstraint__Group__6"


    // $ANTLR start "rule__TimeConstraint__Group__6__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:894:1: rule__TimeConstraint__Group__6__Impl : ( ( rule__TimeConstraint__ValueAssignment_6 ) ) ;
    public final void rule__TimeConstraint__Group__6__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:898:1: ( ( ( rule__TimeConstraint__ValueAssignment_6 ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:899:1: ( ( rule__TimeConstraint__ValueAssignment_6 ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:899:1: ( ( rule__TimeConstraint__ValueAssignment_6 ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:900:1: ( rule__TimeConstraint__ValueAssignment_6 )
            {
             before(grammarAccess.getTimeConstraintAccess().getValueAssignment_6()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:901:1: ( rule__TimeConstraint__ValueAssignment_6 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:901:2: rule__TimeConstraint__ValueAssignment_6
            {
            pushFollow(FOLLOW_rule__TimeConstraint__ValueAssignment_6_in_rule__TimeConstraint__Group__6__Impl1833);
            rule__TimeConstraint__ValueAssignment_6();

            state._fsp--;


            }

             after(grammarAccess.getTimeConstraintAccess().getValueAssignment_6()); 

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
    // $ANTLR end "rule__TimeConstraint__Group__6__Impl"


    // $ANTLR start "rule__VariableCondition__Group__0"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:925:1: rule__VariableCondition__Group__0 : rule__VariableCondition__Group__0__Impl rule__VariableCondition__Group__1 ;
    public final void rule__VariableCondition__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:929:1: ( rule__VariableCondition__Group__0__Impl rule__VariableCondition__Group__1 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:930:2: rule__VariableCondition__Group__0__Impl rule__VariableCondition__Group__1
            {
            pushFollow(FOLLOW_rule__VariableCondition__Group__0__Impl_in_rule__VariableCondition__Group__01877);
            rule__VariableCondition__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__VariableCondition__Group__1_in_rule__VariableCondition__Group__01880);
            rule__VariableCondition__Group__1();

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
    // $ANTLR end "rule__VariableCondition__Group__0"


    // $ANTLR start "rule__VariableCondition__Group__0__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:937:1: rule__VariableCondition__Group__0__Impl : ( '{' ) ;
    public final void rule__VariableCondition__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:941:1: ( ( '{' ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:942:1: ( '{' )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:942:1: ( '{' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:943:1: '{'
            {
             before(grammarAccess.getVariableConditionAccess().getLeftCurlyBracketKeyword_0()); 
            match(input,26,FOLLOW_26_in_rule__VariableCondition__Group__0__Impl1908); 
             after(grammarAccess.getVariableConditionAccess().getLeftCurlyBracketKeyword_0()); 

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
    // $ANTLR end "rule__VariableCondition__Group__0__Impl"


    // $ANTLR start "rule__VariableCondition__Group__1"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:956:1: rule__VariableCondition__Group__1 : rule__VariableCondition__Group__1__Impl rule__VariableCondition__Group__2 ;
    public final void rule__VariableCondition__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:960:1: ( rule__VariableCondition__Group__1__Impl rule__VariableCondition__Group__2 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:961:2: rule__VariableCondition__Group__1__Impl rule__VariableCondition__Group__2
            {
            pushFollow(FOLLOW_rule__VariableCondition__Group__1__Impl_in_rule__VariableCondition__Group__11939);
            rule__VariableCondition__Group__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__VariableCondition__Group__2_in_rule__VariableCondition__Group__11942);
            rule__VariableCondition__Group__2();

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
    // $ANTLR end "rule__VariableCondition__Group__1"


    // $ANTLR start "rule__VariableCondition__Group__1__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:968:1: rule__VariableCondition__Group__1__Impl : ( ( rule__VariableCondition__VariableAssignment_1 ) ) ;
    public final void rule__VariableCondition__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:972:1: ( ( ( rule__VariableCondition__VariableAssignment_1 ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:973:1: ( ( rule__VariableCondition__VariableAssignment_1 ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:973:1: ( ( rule__VariableCondition__VariableAssignment_1 ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:974:1: ( rule__VariableCondition__VariableAssignment_1 )
            {
             before(grammarAccess.getVariableConditionAccess().getVariableAssignment_1()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:975:1: ( rule__VariableCondition__VariableAssignment_1 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:975:2: rule__VariableCondition__VariableAssignment_1
            {
            pushFollow(FOLLOW_rule__VariableCondition__VariableAssignment_1_in_rule__VariableCondition__Group__1__Impl1969);
            rule__VariableCondition__VariableAssignment_1();

            state._fsp--;


            }

             after(grammarAccess.getVariableConditionAccess().getVariableAssignment_1()); 

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
    // $ANTLR end "rule__VariableCondition__Group__1__Impl"


    // $ANTLR start "rule__VariableCondition__Group__2"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:985:1: rule__VariableCondition__Group__2 : rule__VariableCondition__Group__2__Impl rule__VariableCondition__Group__3 ;
    public final void rule__VariableCondition__Group__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:989:1: ( rule__VariableCondition__Group__2__Impl rule__VariableCondition__Group__3 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:990:2: rule__VariableCondition__Group__2__Impl rule__VariableCondition__Group__3
            {
            pushFollow(FOLLOW_rule__VariableCondition__Group__2__Impl_in_rule__VariableCondition__Group__21999);
            rule__VariableCondition__Group__2__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__VariableCondition__Group__3_in_rule__VariableCondition__Group__22002);
            rule__VariableCondition__Group__3();

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
    // $ANTLR end "rule__VariableCondition__Group__2"


    // $ANTLR start "rule__VariableCondition__Group__2__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:997:1: rule__VariableCondition__Group__2__Impl : ( ( rule__VariableCondition__RelationAssignment_2 ) ) ;
    public final void rule__VariableCondition__Group__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1001:1: ( ( ( rule__VariableCondition__RelationAssignment_2 ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1002:1: ( ( rule__VariableCondition__RelationAssignment_2 ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1002:1: ( ( rule__VariableCondition__RelationAssignment_2 ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1003:1: ( rule__VariableCondition__RelationAssignment_2 )
            {
             before(grammarAccess.getVariableConditionAccess().getRelationAssignment_2()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1004:1: ( rule__VariableCondition__RelationAssignment_2 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1004:2: rule__VariableCondition__RelationAssignment_2
            {
            pushFollow(FOLLOW_rule__VariableCondition__RelationAssignment_2_in_rule__VariableCondition__Group__2__Impl2029);
            rule__VariableCondition__RelationAssignment_2();

            state._fsp--;


            }

             after(grammarAccess.getVariableConditionAccess().getRelationAssignment_2()); 

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
    // $ANTLR end "rule__VariableCondition__Group__2__Impl"


    // $ANTLR start "rule__VariableCondition__Group__3"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1014:1: rule__VariableCondition__Group__3 : rule__VariableCondition__Group__3__Impl rule__VariableCondition__Group__4 ;
    public final void rule__VariableCondition__Group__3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1018:1: ( rule__VariableCondition__Group__3__Impl rule__VariableCondition__Group__4 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1019:2: rule__VariableCondition__Group__3__Impl rule__VariableCondition__Group__4
            {
            pushFollow(FOLLOW_rule__VariableCondition__Group__3__Impl_in_rule__VariableCondition__Group__32059);
            rule__VariableCondition__Group__3__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__VariableCondition__Group__4_in_rule__VariableCondition__Group__32062);
            rule__VariableCondition__Group__4();

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
    // $ANTLR end "rule__VariableCondition__Group__3"


    // $ANTLR start "rule__VariableCondition__Group__3__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1026:1: rule__VariableCondition__Group__3__Impl : ( ( rule__VariableCondition__ValueAssignment_3 ) ) ;
    public final void rule__VariableCondition__Group__3__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1030:1: ( ( ( rule__VariableCondition__ValueAssignment_3 ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1031:1: ( ( rule__VariableCondition__ValueAssignment_3 ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1031:1: ( ( rule__VariableCondition__ValueAssignment_3 ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1032:1: ( rule__VariableCondition__ValueAssignment_3 )
            {
             before(grammarAccess.getVariableConditionAccess().getValueAssignment_3()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1033:1: ( rule__VariableCondition__ValueAssignment_3 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1033:2: rule__VariableCondition__ValueAssignment_3
            {
            pushFollow(FOLLOW_rule__VariableCondition__ValueAssignment_3_in_rule__VariableCondition__Group__3__Impl2089);
            rule__VariableCondition__ValueAssignment_3();

            state._fsp--;


            }

             after(grammarAccess.getVariableConditionAccess().getValueAssignment_3()); 

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
    // $ANTLR end "rule__VariableCondition__Group__3__Impl"


    // $ANTLR start "rule__VariableCondition__Group__4"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1043:1: rule__VariableCondition__Group__4 : rule__VariableCondition__Group__4__Impl ;
    public final void rule__VariableCondition__Group__4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1047:1: ( rule__VariableCondition__Group__4__Impl )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1048:2: rule__VariableCondition__Group__4__Impl
            {
            pushFollow(FOLLOW_rule__VariableCondition__Group__4__Impl_in_rule__VariableCondition__Group__42119);
            rule__VariableCondition__Group__4__Impl();

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
    // $ANTLR end "rule__VariableCondition__Group__4"


    // $ANTLR start "rule__VariableCondition__Group__4__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1054:1: rule__VariableCondition__Group__4__Impl : ( '}' ) ;
    public final void rule__VariableCondition__Group__4__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1058:1: ( ( '}' ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1059:1: ( '}' )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1059:1: ( '}' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1060:1: '}'
            {
             before(grammarAccess.getVariableConditionAccess().getRightCurlyBracketKeyword_4()); 
            match(input,27,FOLLOW_27_in_rule__VariableCondition__Group__4__Impl2147); 
             after(grammarAccess.getVariableConditionAccess().getRightCurlyBracketKeyword_4()); 

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
    // $ANTLR end "rule__VariableCondition__Group__4__Impl"


    // $ANTLR start "rule__Event__Group_0__0"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1083:1: rule__Event__Group_0__0 : rule__Event__Group_0__0__Impl rule__Event__Group_0__1 ;
    public final void rule__Event__Group_0__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1087:1: ( rule__Event__Group_0__0__Impl rule__Event__Group_0__1 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1088:2: rule__Event__Group_0__0__Impl rule__Event__Group_0__1
            {
            pushFollow(FOLLOW_rule__Event__Group_0__0__Impl_in_rule__Event__Group_0__02188);
            rule__Event__Group_0__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Event__Group_0__1_in_rule__Event__Group_0__02191);
            rule__Event__Group_0__1();

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
    // $ANTLR end "rule__Event__Group_0__0"


    // $ANTLR start "rule__Event__Group_0__0__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1095:1: rule__Event__Group_0__0__Impl : ( ( rule__Event__EventNameAssignment_0_0 ) ) ;
    public final void rule__Event__Group_0__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1099:1: ( ( ( rule__Event__EventNameAssignment_0_0 ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1100:1: ( ( rule__Event__EventNameAssignment_0_0 ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1100:1: ( ( rule__Event__EventNameAssignment_0_0 ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1101:1: ( rule__Event__EventNameAssignment_0_0 )
            {
             before(grammarAccess.getEventAccess().getEventNameAssignment_0_0()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1102:1: ( rule__Event__EventNameAssignment_0_0 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1102:2: rule__Event__EventNameAssignment_0_0
            {
            pushFollow(FOLLOW_rule__Event__EventNameAssignment_0_0_in_rule__Event__Group_0__0__Impl2218);
            rule__Event__EventNameAssignment_0_0();

            state._fsp--;


            }

             after(grammarAccess.getEventAccess().getEventNameAssignment_0_0()); 

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
    // $ANTLR end "rule__Event__Group_0__0__Impl"


    // $ANTLR start "rule__Event__Group_0__1"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1112:1: rule__Event__Group_0__1 : rule__Event__Group_0__1__Impl rule__Event__Group_0__2 ;
    public final void rule__Event__Group_0__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1116:1: ( rule__Event__Group_0__1__Impl rule__Event__Group_0__2 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1117:2: rule__Event__Group_0__1__Impl rule__Event__Group_0__2
            {
            pushFollow(FOLLOW_rule__Event__Group_0__1__Impl_in_rule__Event__Group_0__12248);
            rule__Event__Group_0__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Event__Group_0__2_in_rule__Event__Group_0__12251);
            rule__Event__Group_0__2();

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
    // $ANTLR end "rule__Event__Group_0__1"


    // $ANTLR start "rule__Event__Group_0__1__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1124:1: rule__Event__Group_0__1__Impl : ( '.' ) ;
    public final void rule__Event__Group_0__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1128:1: ( ( '.' ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1129:1: ( '.' )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1129:1: ( '.' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1130:1: '.'
            {
             before(grammarAccess.getEventAccess().getFullStopKeyword_0_1()); 
            match(input,28,FOLLOW_28_in_rule__Event__Group_0__1__Impl2279); 
             after(grammarAccess.getEventAccess().getFullStopKeyword_0_1()); 

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
    // $ANTLR end "rule__Event__Group_0__1__Impl"


    // $ANTLR start "rule__Event__Group_0__2"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1143:1: rule__Event__Group_0__2 : rule__Event__Group_0__2__Impl ;
    public final void rule__Event__Group_0__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1147:1: ( rule__Event__Group_0__2__Impl )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1148:2: rule__Event__Group_0__2__Impl
            {
            pushFollow(FOLLOW_rule__Event__Group_0__2__Impl_in_rule__Event__Group_0__22310);
            rule__Event__Group_0__2__Impl();

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
    // $ANTLR end "rule__Event__Group_0__2"


    // $ANTLR start "rule__Event__Group_0__2__Impl"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1154:1: rule__Event__Group_0__2__Impl : ( ( rule__Event__EventExtensionAssignment_0_2 ) ) ;
    public final void rule__Event__Group_0__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1158:1: ( ( ( rule__Event__EventExtensionAssignment_0_2 ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1159:1: ( ( rule__Event__EventExtensionAssignment_0_2 ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1159:1: ( ( rule__Event__EventExtensionAssignment_0_2 ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1160:1: ( rule__Event__EventExtensionAssignment_0_2 )
            {
             before(grammarAccess.getEventAccess().getEventExtensionAssignment_0_2()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1161:1: ( rule__Event__EventExtensionAssignment_0_2 )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1161:2: rule__Event__EventExtensionAssignment_0_2
            {
            pushFollow(FOLLOW_rule__Event__EventExtensionAssignment_0_2_in_rule__Event__Group_0__2__Impl2337);
            rule__Event__EventExtensionAssignment_0_2();

            state._fsp--;


            }

             after(grammarAccess.getEventAccess().getEventExtensionAssignment_0_2()); 

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
    // $ANTLR end "rule__Event__Group_0__2__Impl"


    // $ANTLR start "rule__Model__ExpressionAssignment"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1178:1: rule__Model__ExpressionAssignment : ( rulebooleanExpression ) ;
    public final void rule__Model__ExpressionAssignment() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1182:1: ( ( rulebooleanExpression ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1183:1: ( rulebooleanExpression )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1183:1: ( rulebooleanExpression )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1184:1: rulebooleanExpression
            {
             before(grammarAccess.getModelAccess().getExpressionBooleanExpressionParserRuleCall_0()); 
            pushFollow(FOLLOW_rulebooleanExpression_in_rule__Model__ExpressionAssignment2378);
            rulebooleanExpression();

            state._fsp--;

             after(grammarAccess.getModelAccess().getExpressionBooleanExpressionParserRuleCall_0()); 

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
    // $ANTLR end "rule__Model__ExpressionAssignment"


    // $ANTLR start "rule__BooleanExpression__NotExpressionAssignment_0_1"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1193:1: rule__BooleanExpression__NotExpressionAssignment_0_1 : ( rulebooleanExpression ) ;
    public final void rule__BooleanExpression__NotExpressionAssignment_0_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1197:1: ( ( rulebooleanExpression ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1198:1: ( rulebooleanExpression )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1198:1: ( rulebooleanExpression )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1199:1: rulebooleanExpression
            {
             before(grammarAccess.getBooleanExpressionAccess().getNotExpressionBooleanExpressionParserRuleCall_0_1_0()); 
            pushFollow(FOLLOW_rulebooleanExpression_in_rule__BooleanExpression__NotExpressionAssignment_0_12409);
            rulebooleanExpression();

            state._fsp--;

             after(grammarAccess.getBooleanExpressionAccess().getNotExpressionBooleanExpressionParserRuleCall_0_1_0()); 

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
    // $ANTLR end "rule__BooleanExpression__NotExpressionAssignment_0_1"


    // $ANTLR start "rule__BooleanExpression__OrLeftAssignment_1_0"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1208:1: rule__BooleanExpression__OrLeftAssignment_1_0 : ( rulebooleanTerm ) ;
    public final void rule__BooleanExpression__OrLeftAssignment_1_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1212:1: ( ( rulebooleanTerm ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1213:1: ( rulebooleanTerm )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1213:1: ( rulebooleanTerm )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1214:1: rulebooleanTerm
            {
             before(grammarAccess.getBooleanExpressionAccess().getOrLeftBooleanTermParserRuleCall_1_0_0()); 
            pushFollow(FOLLOW_rulebooleanTerm_in_rule__BooleanExpression__OrLeftAssignment_1_02440);
            rulebooleanTerm();

            state._fsp--;

             after(grammarAccess.getBooleanExpressionAccess().getOrLeftBooleanTermParserRuleCall_1_0_0()); 

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
    // $ANTLR end "rule__BooleanExpression__OrLeftAssignment_1_0"


    // $ANTLR start "rule__BooleanExpression__OrRightAssignment_1_2"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1223:1: rule__BooleanExpression__OrRightAssignment_1_2 : ( rulebooleanTerm ) ;
    public final void rule__BooleanExpression__OrRightAssignment_1_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1227:1: ( ( rulebooleanTerm ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1228:1: ( rulebooleanTerm )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1228:1: ( rulebooleanTerm )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1229:1: rulebooleanTerm
            {
             before(grammarAccess.getBooleanExpressionAccess().getOrRightBooleanTermParserRuleCall_1_2_0()); 
            pushFollow(FOLLOW_rulebooleanTerm_in_rule__BooleanExpression__OrRightAssignment_1_22471);
            rulebooleanTerm();

            state._fsp--;

             after(grammarAccess.getBooleanExpressionAccess().getOrRightBooleanTermParserRuleCall_1_2_0()); 

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
    // $ANTLR end "rule__BooleanExpression__OrRightAssignment_1_2"


    // $ANTLR start "rule__BooleanExpression__AndLeftAssignment_2_0"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1238:1: rule__BooleanExpression__AndLeftAssignment_2_0 : ( rulebooleanTerm ) ;
    public final void rule__BooleanExpression__AndLeftAssignment_2_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1242:1: ( ( rulebooleanTerm ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1243:1: ( rulebooleanTerm )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1243:1: ( rulebooleanTerm )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1244:1: rulebooleanTerm
            {
             before(grammarAccess.getBooleanExpressionAccess().getAndLeftBooleanTermParserRuleCall_2_0_0()); 
            pushFollow(FOLLOW_rulebooleanTerm_in_rule__BooleanExpression__AndLeftAssignment_2_02502);
            rulebooleanTerm();

            state._fsp--;

             after(grammarAccess.getBooleanExpressionAccess().getAndLeftBooleanTermParserRuleCall_2_0_0()); 

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
    // $ANTLR end "rule__BooleanExpression__AndLeftAssignment_2_0"


    // $ANTLR start "rule__BooleanExpression__AndRightAssignment_2_2"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1253:1: rule__BooleanExpression__AndRightAssignment_2_2 : ( rulebooleanTerm ) ;
    public final void rule__BooleanExpression__AndRightAssignment_2_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1257:1: ( ( rulebooleanTerm ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1258:1: ( rulebooleanTerm )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1258:1: ( rulebooleanTerm )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1259:1: rulebooleanTerm
            {
             before(grammarAccess.getBooleanExpressionAccess().getAndRightBooleanTermParserRuleCall_2_2_0()); 
            pushFollow(FOLLOW_rulebooleanTerm_in_rule__BooleanExpression__AndRightAssignment_2_22533);
            rulebooleanTerm();

            state._fsp--;

             after(grammarAccess.getBooleanExpressionAccess().getAndRightBooleanTermParserRuleCall_2_2_0()); 

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
    // $ANTLR end "rule__BooleanExpression__AndRightAssignment_2_2"


    // $ANTLR start "rule__BooleanExpression__BooleanTermAssignment_3"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1268:1: rule__BooleanExpression__BooleanTermAssignment_3 : ( rulebooleanTerm ) ;
    public final void rule__BooleanExpression__BooleanTermAssignment_3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1272:1: ( ( rulebooleanTerm ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1273:1: ( rulebooleanTerm )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1273:1: ( rulebooleanTerm )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1274:1: rulebooleanTerm
            {
             before(grammarAccess.getBooleanExpressionAccess().getBooleanTermBooleanTermParserRuleCall_3_0()); 
            pushFollow(FOLLOW_rulebooleanTerm_in_rule__BooleanExpression__BooleanTermAssignment_32564);
            rulebooleanTerm();

            state._fsp--;

             after(grammarAccess.getBooleanExpressionAccess().getBooleanTermBooleanTermParserRuleCall_3_0()); 

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
    // $ANTLR end "rule__BooleanExpression__BooleanTermAssignment_3"


    // $ANTLR start "rule__TimeConstraint__Event2Assignment_1"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1283:1: rule__TimeConstraint__Event2Assignment_1 : ( ruleEvent ) ;
    public final void rule__TimeConstraint__Event2Assignment_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1287:1: ( ( ruleEvent ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1288:1: ( ruleEvent )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1288:1: ( ruleEvent )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1289:1: ruleEvent
            {
             before(grammarAccess.getTimeConstraintAccess().getEvent2EventParserRuleCall_1_0()); 
            pushFollow(FOLLOW_ruleEvent_in_rule__TimeConstraint__Event2Assignment_12595);
            ruleEvent();

            state._fsp--;

             after(grammarAccess.getTimeConstraintAccess().getEvent2EventParserRuleCall_1_0()); 

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
    // $ANTLR end "rule__TimeConstraint__Event2Assignment_1"


    // $ANTLR start "rule__TimeConstraint__Event1Assignment_4"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1298:1: rule__TimeConstraint__Event1Assignment_4 : ( ruleEvent ) ;
    public final void rule__TimeConstraint__Event1Assignment_4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1302:1: ( ( ruleEvent ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1303:1: ( ruleEvent )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1303:1: ( ruleEvent )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1304:1: ruleEvent
            {
             before(grammarAccess.getTimeConstraintAccess().getEvent1EventParserRuleCall_4_0()); 
            pushFollow(FOLLOW_ruleEvent_in_rule__TimeConstraint__Event1Assignment_42626);
            ruleEvent();

            state._fsp--;

             after(grammarAccess.getTimeConstraintAccess().getEvent1EventParserRuleCall_4_0()); 

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
    // $ANTLR end "rule__TimeConstraint__Event1Assignment_4"


    // $ANTLR start "rule__TimeConstraint__OpAssignment_5"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1313:1: rule__TimeConstraint__OpAssignment_5 : ( RULE_RELATIONS ) ;
    public final void rule__TimeConstraint__OpAssignment_5() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1317:1: ( ( RULE_RELATIONS ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1318:1: ( RULE_RELATIONS )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1318:1: ( RULE_RELATIONS )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1319:1: RULE_RELATIONS
            {
             before(grammarAccess.getTimeConstraintAccess().getOpRELATIONSTerminalRuleCall_5_0()); 
            match(input,RULE_RELATIONS,FOLLOW_RULE_RELATIONS_in_rule__TimeConstraint__OpAssignment_52657); 
             after(grammarAccess.getTimeConstraintAccess().getOpRELATIONSTerminalRuleCall_5_0()); 

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
    // $ANTLR end "rule__TimeConstraint__OpAssignment_5"


    // $ANTLR start "rule__TimeConstraint__ValueAssignment_6"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1328:1: rule__TimeConstraint__ValueAssignment_6 : ( RULE_INT ) ;
    public final void rule__TimeConstraint__ValueAssignment_6() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1332:1: ( ( RULE_INT ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1333:1: ( RULE_INT )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1333:1: ( RULE_INT )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1334:1: RULE_INT
            {
             before(grammarAccess.getTimeConstraintAccess().getValueINTTerminalRuleCall_6_0()); 
            match(input,RULE_INT,FOLLOW_RULE_INT_in_rule__TimeConstraint__ValueAssignment_62688); 
             after(grammarAccess.getTimeConstraintAccess().getValueINTTerminalRuleCall_6_0()); 

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
    // $ANTLR end "rule__TimeConstraint__ValueAssignment_6"


    // $ANTLR start "rule__BooleanVariable__VariableAssignment"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1343:1: rule__BooleanVariable__VariableAssignment : ( RULE_ID ) ;
    public final void rule__BooleanVariable__VariableAssignment() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1347:1: ( ( RULE_ID ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1348:1: ( RULE_ID )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1348:1: ( RULE_ID )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1349:1: RULE_ID
            {
             before(grammarAccess.getBooleanVariableAccess().getVariableIDTerminalRuleCall_0()); 
            match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__BooleanVariable__VariableAssignment2719); 
             after(grammarAccess.getBooleanVariableAccess().getVariableIDTerminalRuleCall_0()); 

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
    // $ANTLR end "rule__BooleanVariable__VariableAssignment"


    // $ANTLR start "rule__VariableCondition__VariableAssignment_1"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1358:1: rule__VariableCondition__VariableAssignment_1 : ( RULE_ID ) ;
    public final void rule__VariableCondition__VariableAssignment_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1362:1: ( ( RULE_ID ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1363:1: ( RULE_ID )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1363:1: ( RULE_ID )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1364:1: RULE_ID
            {
             before(grammarAccess.getVariableConditionAccess().getVariableIDTerminalRuleCall_1_0()); 
            match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__VariableCondition__VariableAssignment_12750); 
             after(grammarAccess.getVariableConditionAccess().getVariableIDTerminalRuleCall_1_0()); 

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
    // $ANTLR end "rule__VariableCondition__VariableAssignment_1"


    // $ANTLR start "rule__VariableCondition__RelationAssignment_2"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1373:1: rule__VariableCondition__RelationAssignment_2 : ( RULE_RELATIONS ) ;
    public final void rule__VariableCondition__RelationAssignment_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1377:1: ( ( RULE_RELATIONS ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1378:1: ( RULE_RELATIONS )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1378:1: ( RULE_RELATIONS )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1379:1: RULE_RELATIONS
            {
             before(grammarAccess.getVariableConditionAccess().getRelationRELATIONSTerminalRuleCall_2_0()); 
            match(input,RULE_RELATIONS,FOLLOW_RULE_RELATIONS_in_rule__VariableCondition__RelationAssignment_22781); 
             after(grammarAccess.getVariableConditionAccess().getRelationRELATIONSTerminalRuleCall_2_0()); 

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
    // $ANTLR end "rule__VariableCondition__RelationAssignment_2"


    // $ANTLR start "rule__VariableCondition__ValueAssignment_3"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1388:1: rule__VariableCondition__ValueAssignment_3 : ( RULE_INT ) ;
    public final void rule__VariableCondition__ValueAssignment_3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1392:1: ( ( RULE_INT ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1393:1: ( RULE_INT )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1393:1: ( RULE_INT )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1394:1: RULE_INT
            {
             before(grammarAccess.getVariableConditionAccess().getValueINTTerminalRuleCall_3_0()); 
            match(input,RULE_INT,FOLLOW_RULE_INT_in_rule__VariableCondition__ValueAssignment_32812); 
             after(grammarAccess.getVariableConditionAccess().getValueINTTerminalRuleCall_3_0()); 

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
    // $ANTLR end "rule__VariableCondition__ValueAssignment_3"


    // $ANTLR start "rule__Event__EventNameAssignment_0_0"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1403:1: rule__Event__EventNameAssignment_0_0 : ( RULE_ID ) ;
    public final void rule__Event__EventNameAssignment_0_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1407:1: ( ( RULE_ID ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1408:1: ( RULE_ID )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1408:1: ( RULE_ID )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1409:1: RULE_ID
            {
             before(grammarAccess.getEventAccess().getEventNameIDTerminalRuleCall_0_0_0()); 
            match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__Event__EventNameAssignment_0_02843); 
             after(grammarAccess.getEventAccess().getEventNameIDTerminalRuleCall_0_0_0()); 

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
    // $ANTLR end "rule__Event__EventNameAssignment_0_0"


    // $ANTLR start "rule__Event__EventExtensionAssignment_0_2"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1418:1: rule__Event__EventExtensionAssignment_0_2 : ( ruleEventExtensions ) ;
    public final void rule__Event__EventExtensionAssignment_0_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1422:1: ( ( ruleEventExtensions ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1423:1: ( ruleEventExtensions )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1423:1: ( ruleEventExtensions )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1424:1: ruleEventExtensions
            {
             before(grammarAccess.getEventAccess().getEventExtensionEventExtensionsParserRuleCall_0_2_0()); 
            pushFollow(FOLLOW_ruleEventExtensions_in_rule__Event__EventExtensionAssignment_0_22874);
            ruleEventExtensions();

            state._fsp--;

             after(grammarAccess.getEventAccess().getEventExtensionEventExtensionsParserRuleCall_0_2_0()); 

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
    // $ANTLR end "rule__Event__EventExtensionAssignment_0_2"


    // $ANTLR start "rule__Event__NowEventAssignment_1"
    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1433:1: rule__Event__NowEventAssignment_1 : ( ( 'now' ) ) ;
    public final void rule__Event__NowEventAssignment_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1437:1: ( ( ( 'now' ) ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1438:1: ( ( 'now' ) )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1438:1: ( ( 'now' ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1439:1: ( 'now' )
            {
             before(grammarAccess.getEventAccess().getNowEventNowKeyword_1_0()); 
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1440:1: ( 'now' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1441:1: 'now'
            {
             before(grammarAccess.getEventAccess().getNowEventNowKeyword_1_0()); 
            match(input,29,FOLLOW_29_in_rule__Event__NowEventAssignment_12910); 
             after(grammarAccess.getEventAccess().getNowEventNowKeyword_1_0()); 

            }

             after(grammarAccess.getEventAccess().getNowEventNowKeyword_1_0()); 

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
    // $ANTLR end "rule__Event__NowEventAssignment_1"

    // Delegated rules


    protected DFA1 dfa1 = new DFA1(this);
    static final String DFA1_eotS =
        "\50\uffff";
    static final String DFA1_eofS =
        "\3\uffff\1\11\27\uffff\1\11\13\uffff\1\11";
    static final String DFA1_minS =
        "\1\6\1\uffff\1\6\1\26\1\6\1\34\1\31\3\uffff\1\4\1\14\1\30\1\5\11"+
        "\31\1\6\1\33\1\34\1\4\1\26\1\14\1\5\11\4\1\26";
    static final String DFA1_maxS =
        "\1\32\1\uffff\1\35\1\27\1\6\1\34\1\31\3\uffff\1\4\1\24\1\30\1\5"+
        "\11\31\1\35\1\33\1\34\1\4\1\27\1\24\1\5\11\4\1\27";
    static final String DFA1_acceptS =
        "\1\uffff\1\1\5\uffff\1\3\1\2\1\4\36\uffff";
    static final String DFA1_specialS =
        "\50\uffff}>";
    static final String[] DFA1_transitionS = {
            "\1\3\16\uffff\1\1\2\uffff\1\2\1\uffff\1\4",
            "",
            "\1\5\26\uffff\1\6",
            "\1\10\1\7",
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
            "\1\31\26\uffff\1\32",
            "\1\33",
            "\1\34",
            "\1\35",
            "\1\10\1\7",
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
            "\1\10\1\7"
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
            return "284:1: rule__BooleanExpression__Alternatives : ( ( ( rule__BooleanExpression__Group_0__0 ) ) | ( ( rule__BooleanExpression__Group_1__0 ) ) | ( ( rule__BooleanExpression__Group_2__0 ) ) | ( ( rule__BooleanExpression__BooleanTermAssignment_3 ) ) );";
        }
    }
 

    public static final BitSet FOLLOW_ruleModel_in_entryRuleModel61 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleModel68 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Model__ExpressionAssignment_in_ruleModel94 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rulebooleanExpression_in_entryRulebooleanExpression121 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRulebooleanExpression128 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanExpression__Alternatives_in_rulebooleanExpression154 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rulebooleanTerm_in_entryRulebooleanTerm181 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRulebooleanTerm188 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanTerm__Alternatives_in_rulebooleanTerm214 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTimeConstraint_in_entryRuleTimeConstraint241 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleTimeConstraint248 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__TimeConstraint__Group__0_in_ruleTimeConstraint274 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleBooleanVariable_in_entryRuleBooleanVariable301 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleBooleanVariable308 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanVariable__VariableAssignment_in_ruleBooleanVariable334 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleVariableCondition_in_entryRuleVariableCondition361 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleVariableCondition368 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__VariableCondition__Group__0_in_ruleVariableCondition394 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEvent_in_entryRuleEvent421 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleEvent428 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Event__Alternatives_in_ruleEvent454 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEventExtensions_in_entryRuleEventExtensions481 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleEventExtensions488 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__EventExtensions__Alternatives_in_ruleEventExtensions514 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanExpression__Group_0__0_in_rule__BooleanExpression__Alternatives550 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanExpression__Group_1__0_in_rule__BooleanExpression__Alternatives568 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanExpression__Group_2__0_in_rule__BooleanExpression__Alternatives586 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanExpression__BooleanTermAssignment_3_in_rule__BooleanExpression__Alternatives604 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTimeConstraint_in_rule__BooleanTerm__Alternatives637 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleBooleanVariable_in_rule__BooleanTerm__Alternatives654 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleVariableCondition_in_rule__BooleanTerm__Alternatives671 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Event__Group_0__0_in_rule__Event__Alternatives703 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Event__NowEventAssignment_1_in_rule__Event__Alternatives721 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_12_in_rule__EventExtensions__Alternatives755 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_13_in_rule__EventExtensions__Alternatives775 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_14_in_rule__EventExtensions__Alternatives795 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_15_in_rule__EventExtensions__Alternatives815 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_16_in_rule__EventExtensions__Alternatives835 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_17_in_rule__EventExtensions__Alternatives855 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_18_in_rule__EventExtensions__Alternatives875 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_19_in_rule__EventExtensions__Alternatives895 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_20_in_rule__EventExtensions__Alternatives915 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanExpression__Group_0__0__Impl_in_rule__BooleanExpression__Group_0__0947 = new BitSet(new long[]{0x0000000005200040L});
    public static final BitSet FOLLOW_rule__BooleanExpression__Group_0__1_in_rule__BooleanExpression__Group_0__0950 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_21_in_rule__BooleanExpression__Group_0__0__Impl978 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanExpression__Group_0__1__Impl_in_rule__BooleanExpression__Group_0__11009 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanExpression__NotExpressionAssignment_0_1_in_rule__BooleanExpression__Group_0__1__Impl1036 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanExpression__Group_1__0__Impl_in_rule__BooleanExpression__Group_1__01070 = new BitSet(new long[]{0x0000000000400000L});
    public static final BitSet FOLLOW_rule__BooleanExpression__Group_1__1_in_rule__BooleanExpression__Group_1__01073 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanExpression__OrLeftAssignment_1_0_in_rule__BooleanExpression__Group_1__0__Impl1100 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanExpression__Group_1__1__Impl_in_rule__BooleanExpression__Group_1__11130 = new BitSet(new long[]{0x0000000005000040L});
    public static final BitSet FOLLOW_rule__BooleanExpression__Group_1__2_in_rule__BooleanExpression__Group_1__11133 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_22_in_rule__BooleanExpression__Group_1__1__Impl1161 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanExpression__Group_1__2__Impl_in_rule__BooleanExpression__Group_1__21192 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanExpression__OrRightAssignment_1_2_in_rule__BooleanExpression__Group_1__2__Impl1219 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanExpression__Group_2__0__Impl_in_rule__BooleanExpression__Group_2__01255 = new BitSet(new long[]{0x0000000000800000L});
    public static final BitSet FOLLOW_rule__BooleanExpression__Group_2__1_in_rule__BooleanExpression__Group_2__01258 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanExpression__AndLeftAssignment_2_0_in_rule__BooleanExpression__Group_2__0__Impl1285 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanExpression__Group_2__1__Impl_in_rule__BooleanExpression__Group_2__11315 = new BitSet(new long[]{0x0000000005000040L});
    public static final BitSet FOLLOW_rule__BooleanExpression__Group_2__2_in_rule__BooleanExpression__Group_2__11318 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_23_in_rule__BooleanExpression__Group_2__1__Impl1346 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanExpression__Group_2__2__Impl_in_rule__BooleanExpression__Group_2__21377 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanExpression__AndRightAssignment_2_2_in_rule__BooleanExpression__Group_2__2__Impl1404 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__TimeConstraint__Group__0__Impl_in_rule__TimeConstraint__Group__01440 = new BitSet(new long[]{0x0000000020000040L});
    public static final BitSet FOLLOW_rule__TimeConstraint__Group__1_in_rule__TimeConstraint__Group__01443 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_24_in_rule__TimeConstraint__Group__0__Impl1471 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__TimeConstraint__Group__1__Impl_in_rule__TimeConstraint__Group__11502 = new BitSet(new long[]{0x0000000002000000L});
    public static final BitSet FOLLOW_rule__TimeConstraint__Group__2_in_rule__TimeConstraint__Group__11505 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__TimeConstraint__Event2Assignment_1_in_rule__TimeConstraint__Group__1__Impl1532 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__TimeConstraint__Group__2__Impl_in_rule__TimeConstraint__Group__21562 = new BitSet(new long[]{0x0000000001000000L});
    public static final BitSet FOLLOW_rule__TimeConstraint__Group__3_in_rule__TimeConstraint__Group__21565 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_25_in_rule__TimeConstraint__Group__2__Impl1593 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__TimeConstraint__Group__3__Impl_in_rule__TimeConstraint__Group__31624 = new BitSet(new long[]{0x0000000020000040L});
    public static final BitSet FOLLOW_rule__TimeConstraint__Group__4_in_rule__TimeConstraint__Group__31627 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_24_in_rule__TimeConstraint__Group__3__Impl1655 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__TimeConstraint__Group__4__Impl_in_rule__TimeConstraint__Group__41686 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_rule__TimeConstraint__Group__5_in_rule__TimeConstraint__Group__41689 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__TimeConstraint__Event1Assignment_4_in_rule__TimeConstraint__Group__4__Impl1716 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__TimeConstraint__Group__5__Impl_in_rule__TimeConstraint__Group__51746 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_rule__TimeConstraint__Group__6_in_rule__TimeConstraint__Group__51749 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__TimeConstraint__OpAssignment_5_in_rule__TimeConstraint__Group__5__Impl1776 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__TimeConstraint__Group__6__Impl_in_rule__TimeConstraint__Group__61806 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__TimeConstraint__ValueAssignment_6_in_rule__TimeConstraint__Group__6__Impl1833 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__VariableCondition__Group__0__Impl_in_rule__VariableCondition__Group__01877 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_rule__VariableCondition__Group__1_in_rule__VariableCondition__Group__01880 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_26_in_rule__VariableCondition__Group__0__Impl1908 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__VariableCondition__Group__1__Impl_in_rule__VariableCondition__Group__11939 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_rule__VariableCondition__Group__2_in_rule__VariableCondition__Group__11942 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__VariableCondition__VariableAssignment_1_in_rule__VariableCondition__Group__1__Impl1969 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__VariableCondition__Group__2__Impl_in_rule__VariableCondition__Group__21999 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_rule__VariableCondition__Group__3_in_rule__VariableCondition__Group__22002 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__VariableCondition__RelationAssignment_2_in_rule__VariableCondition__Group__2__Impl2029 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__VariableCondition__Group__3__Impl_in_rule__VariableCondition__Group__32059 = new BitSet(new long[]{0x0000000008000000L});
    public static final BitSet FOLLOW_rule__VariableCondition__Group__4_in_rule__VariableCondition__Group__32062 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__VariableCondition__ValueAssignment_3_in_rule__VariableCondition__Group__3__Impl2089 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__VariableCondition__Group__4__Impl_in_rule__VariableCondition__Group__42119 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_27_in_rule__VariableCondition__Group__4__Impl2147 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Event__Group_0__0__Impl_in_rule__Event__Group_0__02188 = new BitSet(new long[]{0x0000000010000000L});
    public static final BitSet FOLLOW_rule__Event__Group_0__1_in_rule__Event__Group_0__02191 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Event__EventNameAssignment_0_0_in_rule__Event__Group_0__0__Impl2218 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Event__Group_0__1__Impl_in_rule__Event__Group_0__12248 = new BitSet(new long[]{0x00000000001FF000L});
    public static final BitSet FOLLOW_rule__Event__Group_0__2_in_rule__Event__Group_0__12251 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_28_in_rule__Event__Group_0__1__Impl2279 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Event__Group_0__2__Impl_in_rule__Event__Group_0__22310 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Event__EventExtensionAssignment_0_2_in_rule__Event__Group_0__2__Impl2337 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rulebooleanExpression_in_rule__Model__ExpressionAssignment2378 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rulebooleanExpression_in_rule__BooleanExpression__NotExpressionAssignment_0_12409 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rulebooleanTerm_in_rule__BooleanExpression__OrLeftAssignment_1_02440 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rulebooleanTerm_in_rule__BooleanExpression__OrRightAssignment_1_22471 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rulebooleanTerm_in_rule__BooleanExpression__AndLeftAssignment_2_02502 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rulebooleanTerm_in_rule__BooleanExpression__AndRightAssignment_2_22533 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rulebooleanTerm_in_rule__BooleanExpression__BooleanTermAssignment_32564 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEvent_in_rule__TimeConstraint__Event2Assignment_12595 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEvent_in_rule__TimeConstraint__Event1Assignment_42626 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_RELATIONS_in_rule__TimeConstraint__OpAssignment_52657 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_INT_in_rule__TimeConstraint__ValueAssignment_62688 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__BooleanVariable__VariableAssignment2719 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__VariableCondition__VariableAssignment_12750 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_RELATIONS_in_rule__VariableCondition__RelationAssignment_22781 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_INT_in_rule__VariableCondition__ValueAssignment_32812 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__Event__EventNameAssignment_0_02843 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEventExtensions_in_rule__Event__EventExtensionAssignment_0_22874 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_29_in_rule__Event__NowEventAssignment_12910 = new BitSet(new long[]{0x0000000000000002L});

}