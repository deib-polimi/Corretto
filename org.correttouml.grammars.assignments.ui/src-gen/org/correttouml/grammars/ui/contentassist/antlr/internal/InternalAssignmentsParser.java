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
import org.correttouml.grammars.services.AssignmentsGrammarAccess;



import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class InternalAssignmentsParser extends AbstractInternalContentAssistParser {
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
    public String getGrammarFileName() { return "../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g"; }


     
     	private AssignmentsGrammarAccess grammarAccess;
     	
        public void setGrammarAccess(AssignmentsGrammarAccess grammarAccess) {
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
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:60:1: entryRuleModel : ruleModel EOF ;
    public final void entryRuleModel() throws RecognitionException {
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:61:1: ( ruleModel EOF )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:62:1: ruleModel EOF
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
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:69:1: ruleModel : ( ( rule__Model__AssignmentAssignment ) ) ;
    public final void ruleModel() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:73:2: ( ( ( rule__Model__AssignmentAssignment ) ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:74:1: ( ( rule__Model__AssignmentAssignment ) )
            {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:74:1: ( ( rule__Model__AssignmentAssignment ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:75:1: ( rule__Model__AssignmentAssignment )
            {
             before(grammarAccess.getModelAccess().getAssignmentAssignment()); 
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:76:1: ( rule__Model__AssignmentAssignment )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:76:2: rule__Model__AssignmentAssignment
            {
            pushFollow(FOLLOW_rule__Model__AssignmentAssignment_in_ruleModel94);
            rule__Model__AssignmentAssignment();

            state._fsp--;


            }

             after(grammarAccess.getModelAccess().getAssignmentAssignment()); 

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


    // $ANTLR start "entryRuleASSIGNMENT"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:88:1: entryRuleASSIGNMENT : ruleASSIGNMENT EOF ;
    public final void entryRuleASSIGNMENT() throws RecognitionException {
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:89:1: ( ruleASSIGNMENT EOF )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:90:1: ruleASSIGNMENT EOF
            {
             before(grammarAccess.getASSIGNMENTRule()); 
            pushFollow(FOLLOW_ruleASSIGNMENT_in_entryRuleASSIGNMENT121);
            ruleASSIGNMENT();

            state._fsp--;

             after(grammarAccess.getASSIGNMENTRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleASSIGNMENT128); 

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
    // $ANTLR end "entryRuleASSIGNMENT"


    // $ANTLR start "ruleASSIGNMENT"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:97:1: ruleASSIGNMENT : ( ( rule__ASSIGNMENT__Group__0 ) ) ;
    public final void ruleASSIGNMENT() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:101:2: ( ( ( rule__ASSIGNMENT__Group__0 ) ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:102:1: ( ( rule__ASSIGNMENT__Group__0 ) )
            {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:102:1: ( ( rule__ASSIGNMENT__Group__0 ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:103:1: ( rule__ASSIGNMENT__Group__0 )
            {
             before(grammarAccess.getASSIGNMENTAccess().getGroup()); 
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:104:1: ( rule__ASSIGNMENT__Group__0 )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:104:2: rule__ASSIGNMENT__Group__0
            {
            pushFollow(FOLLOW_rule__ASSIGNMENT__Group__0_in_ruleASSIGNMENT154);
            rule__ASSIGNMENT__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getASSIGNMENTAccess().getGroup()); 

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
    // $ANTLR end "ruleASSIGNMENT"


    // $ANTLR start "entryRuleEXPRESSION"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:116:1: entryRuleEXPRESSION : ruleEXPRESSION EOF ;
    public final void entryRuleEXPRESSION() throws RecognitionException {
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:117:1: ( ruleEXPRESSION EOF )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:118:1: ruleEXPRESSION EOF
            {
             before(grammarAccess.getEXPRESSIONRule()); 
            pushFollow(FOLLOW_ruleEXPRESSION_in_entryRuleEXPRESSION181);
            ruleEXPRESSION();

            state._fsp--;

             after(grammarAccess.getEXPRESSIONRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleEXPRESSION188); 

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
    // $ANTLR end "entryRuleEXPRESSION"


    // $ANTLR start "ruleEXPRESSION"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:125:1: ruleEXPRESSION : ( ( rule__EXPRESSION__Alternatives ) ) ;
    public final void ruleEXPRESSION() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:129:2: ( ( ( rule__EXPRESSION__Alternatives ) ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:130:1: ( ( rule__EXPRESSION__Alternatives ) )
            {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:130:1: ( ( rule__EXPRESSION__Alternatives ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:131:1: ( rule__EXPRESSION__Alternatives )
            {
             before(grammarAccess.getEXPRESSIONAccess().getAlternatives()); 
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:132:1: ( rule__EXPRESSION__Alternatives )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:132:2: rule__EXPRESSION__Alternatives
            {
            pushFollow(FOLLOW_rule__EXPRESSION__Alternatives_in_ruleEXPRESSION214);
            rule__EXPRESSION__Alternatives();

            state._fsp--;


            }

             after(grammarAccess.getEXPRESSIONAccess().getAlternatives()); 

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
    // $ANTLR end "ruleEXPRESSION"


    // $ANTLR start "entryRuleTERM"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:144:1: entryRuleTERM : ruleTERM EOF ;
    public final void entryRuleTERM() throws RecognitionException {
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:145:1: ( ruleTERM EOF )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:146:1: ruleTERM EOF
            {
             before(grammarAccess.getTERMRule()); 
            pushFollow(FOLLOW_ruleTERM_in_entryRuleTERM241);
            ruleTERM();

            state._fsp--;

             after(grammarAccess.getTERMRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleTERM248); 

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
    // $ANTLR end "entryRuleTERM"


    // $ANTLR start "ruleTERM"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:153:1: ruleTERM : ( ( rule__TERM__Alternatives ) ) ;
    public final void ruleTERM() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:157:2: ( ( ( rule__TERM__Alternatives ) ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:158:1: ( ( rule__TERM__Alternatives ) )
            {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:158:1: ( ( rule__TERM__Alternatives ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:159:1: ( rule__TERM__Alternatives )
            {
             before(grammarAccess.getTERMAccess().getAlternatives()); 
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:160:1: ( rule__TERM__Alternatives )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:160:2: rule__TERM__Alternatives
            {
            pushFollow(FOLLOW_rule__TERM__Alternatives_in_ruleTERM274);
            rule__TERM__Alternatives();

            state._fsp--;


            }

             after(grammarAccess.getTERMAccess().getAlternatives()); 

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
    // $ANTLR end "ruleTERM"


    // $ANTLR start "rule__EXPRESSION__Alternatives"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:172:1: rule__EXPRESSION__Alternatives : ( ( ( rule__EXPRESSION__Group_0__0 ) ) | ( ( rule__EXPRESSION__AloneAssignment_1 ) ) );
    public final void rule__EXPRESSION__Alternatives() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:176:1: ( ( ( rule__EXPRESSION__Group_0__0 ) ) | ( ( rule__EXPRESSION__AloneAssignment_1 ) ) )
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
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:177:1: ( ( rule__EXPRESSION__Group_0__0 ) )
                    {
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:177:1: ( ( rule__EXPRESSION__Group_0__0 ) )
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:178:1: ( rule__EXPRESSION__Group_0__0 )
                    {
                     before(grammarAccess.getEXPRESSIONAccess().getGroup_0()); 
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:179:1: ( rule__EXPRESSION__Group_0__0 )
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:179:2: rule__EXPRESSION__Group_0__0
                    {
                    pushFollow(FOLLOW_rule__EXPRESSION__Group_0__0_in_rule__EXPRESSION__Alternatives310);
                    rule__EXPRESSION__Group_0__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getEXPRESSIONAccess().getGroup_0()); 

                    }


                    }
                    break;
                case 2 :
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:183:6: ( ( rule__EXPRESSION__AloneAssignment_1 ) )
                    {
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:183:6: ( ( rule__EXPRESSION__AloneAssignment_1 ) )
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:184:1: ( rule__EXPRESSION__AloneAssignment_1 )
                    {
                     before(grammarAccess.getEXPRESSIONAccess().getAloneAssignment_1()); 
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:185:1: ( rule__EXPRESSION__AloneAssignment_1 )
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:185:2: rule__EXPRESSION__AloneAssignment_1
                    {
                    pushFollow(FOLLOW_rule__EXPRESSION__AloneAssignment_1_in_rule__EXPRESSION__Alternatives328);
                    rule__EXPRESSION__AloneAssignment_1();

                    state._fsp--;


                    }

                     after(grammarAccess.getEXPRESSIONAccess().getAloneAssignment_1()); 

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
    // $ANTLR end "rule__EXPRESSION__Alternatives"


    // $ANTLR start "rule__TERM__Alternatives"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:194:1: rule__TERM__Alternatives : ( ( ( rule__TERM__VariableAssignment_0 ) ) | ( ( rule__TERM__ConstantAssignment_1 ) ) );
    public final void rule__TERM__Alternatives() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:198:1: ( ( ( rule__TERM__VariableAssignment_0 ) ) | ( ( rule__TERM__ConstantAssignment_1 ) ) )
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
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:199:1: ( ( rule__TERM__VariableAssignment_0 ) )
                    {
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:199:1: ( ( rule__TERM__VariableAssignment_0 ) )
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:200:1: ( rule__TERM__VariableAssignment_0 )
                    {
                     before(grammarAccess.getTERMAccess().getVariableAssignment_0()); 
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:201:1: ( rule__TERM__VariableAssignment_0 )
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:201:2: rule__TERM__VariableAssignment_0
                    {
                    pushFollow(FOLLOW_rule__TERM__VariableAssignment_0_in_rule__TERM__Alternatives361);
                    rule__TERM__VariableAssignment_0();

                    state._fsp--;


                    }

                     after(grammarAccess.getTERMAccess().getVariableAssignment_0()); 

                    }


                    }
                    break;
                case 2 :
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:205:6: ( ( rule__TERM__ConstantAssignment_1 ) )
                    {
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:205:6: ( ( rule__TERM__ConstantAssignment_1 ) )
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:206:1: ( rule__TERM__ConstantAssignment_1 )
                    {
                     before(grammarAccess.getTERMAccess().getConstantAssignment_1()); 
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:207:1: ( rule__TERM__ConstantAssignment_1 )
                    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:207:2: rule__TERM__ConstantAssignment_1
                    {
                    pushFollow(FOLLOW_rule__TERM__ConstantAssignment_1_in_rule__TERM__Alternatives379);
                    rule__TERM__ConstantAssignment_1();

                    state._fsp--;


                    }

                     after(grammarAccess.getTERMAccess().getConstantAssignment_1()); 

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
    // $ANTLR end "rule__TERM__Alternatives"


    // $ANTLR start "rule__ASSIGNMENT__Group__0"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:218:1: rule__ASSIGNMENT__Group__0 : rule__ASSIGNMENT__Group__0__Impl rule__ASSIGNMENT__Group__1 ;
    public final void rule__ASSIGNMENT__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:222:1: ( rule__ASSIGNMENT__Group__0__Impl rule__ASSIGNMENT__Group__1 )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:223:2: rule__ASSIGNMENT__Group__0__Impl rule__ASSIGNMENT__Group__1
            {
            pushFollow(FOLLOW_rule__ASSIGNMENT__Group__0__Impl_in_rule__ASSIGNMENT__Group__0410);
            rule__ASSIGNMENT__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__ASSIGNMENT__Group__1_in_rule__ASSIGNMENT__Group__0413);
            rule__ASSIGNMENT__Group__1();

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
    // $ANTLR end "rule__ASSIGNMENT__Group__0"


    // $ANTLR start "rule__ASSIGNMENT__Group__0__Impl"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:230:1: rule__ASSIGNMENT__Group__0__Impl : ( ( rule__ASSIGNMENT__VariableAssignment_0 ) ) ;
    public final void rule__ASSIGNMENT__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:234:1: ( ( ( rule__ASSIGNMENT__VariableAssignment_0 ) ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:235:1: ( ( rule__ASSIGNMENT__VariableAssignment_0 ) )
            {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:235:1: ( ( rule__ASSIGNMENT__VariableAssignment_0 ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:236:1: ( rule__ASSIGNMENT__VariableAssignment_0 )
            {
             before(grammarAccess.getASSIGNMENTAccess().getVariableAssignment_0()); 
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:237:1: ( rule__ASSIGNMENT__VariableAssignment_0 )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:237:2: rule__ASSIGNMENT__VariableAssignment_0
            {
            pushFollow(FOLLOW_rule__ASSIGNMENT__VariableAssignment_0_in_rule__ASSIGNMENT__Group__0__Impl440);
            rule__ASSIGNMENT__VariableAssignment_0();

            state._fsp--;


            }

             after(grammarAccess.getASSIGNMENTAccess().getVariableAssignment_0()); 

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
    // $ANTLR end "rule__ASSIGNMENT__Group__0__Impl"


    // $ANTLR start "rule__ASSIGNMENT__Group__1"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:247:1: rule__ASSIGNMENT__Group__1 : rule__ASSIGNMENT__Group__1__Impl rule__ASSIGNMENT__Group__2 ;
    public final void rule__ASSIGNMENT__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:251:1: ( rule__ASSIGNMENT__Group__1__Impl rule__ASSIGNMENT__Group__2 )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:252:2: rule__ASSIGNMENT__Group__1__Impl rule__ASSIGNMENT__Group__2
            {
            pushFollow(FOLLOW_rule__ASSIGNMENT__Group__1__Impl_in_rule__ASSIGNMENT__Group__1470);
            rule__ASSIGNMENT__Group__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__ASSIGNMENT__Group__2_in_rule__ASSIGNMENT__Group__1473);
            rule__ASSIGNMENT__Group__2();

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
    // $ANTLR end "rule__ASSIGNMENT__Group__1"


    // $ANTLR start "rule__ASSIGNMENT__Group__1__Impl"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:259:1: rule__ASSIGNMENT__Group__1__Impl : ( '=' ) ;
    public final void rule__ASSIGNMENT__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:263:1: ( ( '=' ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:264:1: ( '=' )
            {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:264:1: ( '=' )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:265:1: '='
            {
             before(grammarAccess.getASSIGNMENTAccess().getEqualsSignKeyword_1()); 
            match(input,12,FOLLOW_12_in_rule__ASSIGNMENT__Group__1__Impl501); 
             after(grammarAccess.getASSIGNMENTAccess().getEqualsSignKeyword_1()); 

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
    // $ANTLR end "rule__ASSIGNMENT__Group__1__Impl"


    // $ANTLR start "rule__ASSIGNMENT__Group__2"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:278:1: rule__ASSIGNMENT__Group__2 : rule__ASSIGNMENT__Group__2__Impl ;
    public final void rule__ASSIGNMENT__Group__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:282:1: ( rule__ASSIGNMENT__Group__2__Impl )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:283:2: rule__ASSIGNMENT__Group__2__Impl
            {
            pushFollow(FOLLOW_rule__ASSIGNMENT__Group__2__Impl_in_rule__ASSIGNMENT__Group__2532);
            rule__ASSIGNMENT__Group__2__Impl();

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
    // $ANTLR end "rule__ASSIGNMENT__Group__2"


    // $ANTLR start "rule__ASSIGNMENT__Group__2__Impl"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:289:1: rule__ASSIGNMENT__Group__2__Impl : ( ( rule__ASSIGNMENT__ExpressionAssignment_2 ) ) ;
    public final void rule__ASSIGNMENT__Group__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:293:1: ( ( ( rule__ASSIGNMENT__ExpressionAssignment_2 ) ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:294:1: ( ( rule__ASSIGNMENT__ExpressionAssignment_2 ) )
            {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:294:1: ( ( rule__ASSIGNMENT__ExpressionAssignment_2 ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:295:1: ( rule__ASSIGNMENT__ExpressionAssignment_2 )
            {
             before(grammarAccess.getASSIGNMENTAccess().getExpressionAssignment_2()); 
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:296:1: ( rule__ASSIGNMENT__ExpressionAssignment_2 )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:296:2: rule__ASSIGNMENT__ExpressionAssignment_2
            {
            pushFollow(FOLLOW_rule__ASSIGNMENT__ExpressionAssignment_2_in_rule__ASSIGNMENT__Group__2__Impl559);
            rule__ASSIGNMENT__ExpressionAssignment_2();

            state._fsp--;


            }

             after(grammarAccess.getASSIGNMENTAccess().getExpressionAssignment_2()); 

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
    // $ANTLR end "rule__ASSIGNMENT__Group__2__Impl"


    // $ANTLR start "rule__EXPRESSION__Group_0__0"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:312:1: rule__EXPRESSION__Group_0__0 : rule__EXPRESSION__Group_0__0__Impl rule__EXPRESSION__Group_0__1 ;
    public final void rule__EXPRESSION__Group_0__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:316:1: ( rule__EXPRESSION__Group_0__0__Impl rule__EXPRESSION__Group_0__1 )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:317:2: rule__EXPRESSION__Group_0__0__Impl rule__EXPRESSION__Group_0__1
            {
            pushFollow(FOLLOW_rule__EXPRESSION__Group_0__0__Impl_in_rule__EXPRESSION__Group_0__0595);
            rule__EXPRESSION__Group_0__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__EXPRESSION__Group_0__1_in_rule__EXPRESSION__Group_0__0598);
            rule__EXPRESSION__Group_0__1();

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
    // $ANTLR end "rule__EXPRESSION__Group_0__0"


    // $ANTLR start "rule__EXPRESSION__Group_0__0__Impl"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:324:1: rule__EXPRESSION__Group_0__0__Impl : ( ( rule__EXPRESSION__FirstTermAssignment_0_0 ) ) ;
    public final void rule__EXPRESSION__Group_0__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:328:1: ( ( ( rule__EXPRESSION__FirstTermAssignment_0_0 ) ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:329:1: ( ( rule__EXPRESSION__FirstTermAssignment_0_0 ) )
            {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:329:1: ( ( rule__EXPRESSION__FirstTermAssignment_0_0 ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:330:1: ( rule__EXPRESSION__FirstTermAssignment_0_0 )
            {
             before(grammarAccess.getEXPRESSIONAccess().getFirstTermAssignment_0_0()); 
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:331:1: ( rule__EXPRESSION__FirstTermAssignment_0_0 )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:331:2: rule__EXPRESSION__FirstTermAssignment_0_0
            {
            pushFollow(FOLLOW_rule__EXPRESSION__FirstTermAssignment_0_0_in_rule__EXPRESSION__Group_0__0__Impl625);
            rule__EXPRESSION__FirstTermAssignment_0_0();

            state._fsp--;


            }

             after(grammarAccess.getEXPRESSIONAccess().getFirstTermAssignment_0_0()); 

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
    // $ANTLR end "rule__EXPRESSION__Group_0__0__Impl"


    // $ANTLR start "rule__EXPRESSION__Group_0__1"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:341:1: rule__EXPRESSION__Group_0__1 : rule__EXPRESSION__Group_0__1__Impl rule__EXPRESSION__Group_0__2 ;
    public final void rule__EXPRESSION__Group_0__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:345:1: ( rule__EXPRESSION__Group_0__1__Impl rule__EXPRESSION__Group_0__2 )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:346:2: rule__EXPRESSION__Group_0__1__Impl rule__EXPRESSION__Group_0__2
            {
            pushFollow(FOLLOW_rule__EXPRESSION__Group_0__1__Impl_in_rule__EXPRESSION__Group_0__1655);
            rule__EXPRESSION__Group_0__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__EXPRESSION__Group_0__2_in_rule__EXPRESSION__Group_0__1658);
            rule__EXPRESSION__Group_0__2();

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
    // $ANTLR end "rule__EXPRESSION__Group_0__1"


    // $ANTLR start "rule__EXPRESSION__Group_0__1__Impl"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:353:1: rule__EXPRESSION__Group_0__1__Impl : ( ( rule__EXPRESSION__OperatorAssignment_0_1 ) ) ;
    public final void rule__EXPRESSION__Group_0__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:357:1: ( ( ( rule__EXPRESSION__OperatorAssignment_0_1 ) ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:358:1: ( ( rule__EXPRESSION__OperatorAssignment_0_1 ) )
            {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:358:1: ( ( rule__EXPRESSION__OperatorAssignment_0_1 ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:359:1: ( rule__EXPRESSION__OperatorAssignment_0_1 )
            {
             before(grammarAccess.getEXPRESSIONAccess().getOperatorAssignment_0_1()); 
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:360:1: ( rule__EXPRESSION__OperatorAssignment_0_1 )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:360:2: rule__EXPRESSION__OperatorAssignment_0_1
            {
            pushFollow(FOLLOW_rule__EXPRESSION__OperatorAssignment_0_1_in_rule__EXPRESSION__Group_0__1__Impl685);
            rule__EXPRESSION__OperatorAssignment_0_1();

            state._fsp--;


            }

             after(grammarAccess.getEXPRESSIONAccess().getOperatorAssignment_0_1()); 

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
    // $ANTLR end "rule__EXPRESSION__Group_0__1__Impl"


    // $ANTLR start "rule__EXPRESSION__Group_0__2"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:370:1: rule__EXPRESSION__Group_0__2 : rule__EXPRESSION__Group_0__2__Impl ;
    public final void rule__EXPRESSION__Group_0__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:374:1: ( rule__EXPRESSION__Group_0__2__Impl )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:375:2: rule__EXPRESSION__Group_0__2__Impl
            {
            pushFollow(FOLLOW_rule__EXPRESSION__Group_0__2__Impl_in_rule__EXPRESSION__Group_0__2715);
            rule__EXPRESSION__Group_0__2__Impl();

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
    // $ANTLR end "rule__EXPRESSION__Group_0__2"


    // $ANTLR start "rule__EXPRESSION__Group_0__2__Impl"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:381:1: rule__EXPRESSION__Group_0__2__Impl : ( ( rule__EXPRESSION__SecondTermAssignment_0_2 ) ) ;
    public final void rule__EXPRESSION__Group_0__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:385:1: ( ( ( rule__EXPRESSION__SecondTermAssignment_0_2 ) ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:386:1: ( ( rule__EXPRESSION__SecondTermAssignment_0_2 ) )
            {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:386:1: ( ( rule__EXPRESSION__SecondTermAssignment_0_2 ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:387:1: ( rule__EXPRESSION__SecondTermAssignment_0_2 )
            {
             before(grammarAccess.getEXPRESSIONAccess().getSecondTermAssignment_0_2()); 
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:388:1: ( rule__EXPRESSION__SecondTermAssignment_0_2 )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:388:2: rule__EXPRESSION__SecondTermAssignment_0_2
            {
            pushFollow(FOLLOW_rule__EXPRESSION__SecondTermAssignment_0_2_in_rule__EXPRESSION__Group_0__2__Impl742);
            rule__EXPRESSION__SecondTermAssignment_0_2();

            state._fsp--;


            }

             after(grammarAccess.getEXPRESSIONAccess().getSecondTermAssignment_0_2()); 

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
    // $ANTLR end "rule__EXPRESSION__Group_0__2__Impl"


    // $ANTLR start "rule__Model__AssignmentAssignment"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:405:1: rule__Model__AssignmentAssignment : ( ruleASSIGNMENT ) ;
    public final void rule__Model__AssignmentAssignment() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:409:1: ( ( ruleASSIGNMENT ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:410:1: ( ruleASSIGNMENT )
            {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:410:1: ( ruleASSIGNMENT )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:411:1: ruleASSIGNMENT
            {
             before(grammarAccess.getModelAccess().getAssignmentASSIGNMENTParserRuleCall_0()); 
            pushFollow(FOLLOW_ruleASSIGNMENT_in_rule__Model__AssignmentAssignment783);
            ruleASSIGNMENT();

            state._fsp--;

             after(grammarAccess.getModelAccess().getAssignmentASSIGNMENTParserRuleCall_0()); 

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
    // $ANTLR end "rule__Model__AssignmentAssignment"


    // $ANTLR start "rule__ASSIGNMENT__VariableAssignment_0"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:420:1: rule__ASSIGNMENT__VariableAssignment_0 : ( RULE_ID ) ;
    public final void rule__ASSIGNMENT__VariableAssignment_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:424:1: ( ( RULE_ID ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:425:1: ( RULE_ID )
            {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:425:1: ( RULE_ID )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:426:1: RULE_ID
            {
             before(grammarAccess.getASSIGNMENTAccess().getVariableIDTerminalRuleCall_0_0()); 
            match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__ASSIGNMENT__VariableAssignment_0814); 
             after(grammarAccess.getASSIGNMENTAccess().getVariableIDTerminalRuleCall_0_0()); 

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
    // $ANTLR end "rule__ASSIGNMENT__VariableAssignment_0"


    // $ANTLR start "rule__ASSIGNMENT__ExpressionAssignment_2"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:435:1: rule__ASSIGNMENT__ExpressionAssignment_2 : ( ruleEXPRESSION ) ;
    public final void rule__ASSIGNMENT__ExpressionAssignment_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:439:1: ( ( ruleEXPRESSION ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:440:1: ( ruleEXPRESSION )
            {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:440:1: ( ruleEXPRESSION )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:441:1: ruleEXPRESSION
            {
             before(grammarAccess.getASSIGNMENTAccess().getExpressionEXPRESSIONParserRuleCall_2_0()); 
            pushFollow(FOLLOW_ruleEXPRESSION_in_rule__ASSIGNMENT__ExpressionAssignment_2845);
            ruleEXPRESSION();

            state._fsp--;

             after(grammarAccess.getASSIGNMENTAccess().getExpressionEXPRESSIONParserRuleCall_2_0()); 

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
    // $ANTLR end "rule__ASSIGNMENT__ExpressionAssignment_2"


    // $ANTLR start "rule__EXPRESSION__FirstTermAssignment_0_0"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:450:1: rule__EXPRESSION__FirstTermAssignment_0_0 : ( ruleTERM ) ;
    public final void rule__EXPRESSION__FirstTermAssignment_0_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:454:1: ( ( ruleTERM ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:455:1: ( ruleTERM )
            {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:455:1: ( ruleTERM )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:456:1: ruleTERM
            {
             before(grammarAccess.getEXPRESSIONAccess().getFirstTermTERMParserRuleCall_0_0_0()); 
            pushFollow(FOLLOW_ruleTERM_in_rule__EXPRESSION__FirstTermAssignment_0_0876);
            ruleTERM();

            state._fsp--;

             after(grammarAccess.getEXPRESSIONAccess().getFirstTermTERMParserRuleCall_0_0_0()); 

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
    // $ANTLR end "rule__EXPRESSION__FirstTermAssignment_0_0"


    // $ANTLR start "rule__EXPRESSION__OperatorAssignment_0_1"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:465:1: rule__EXPRESSION__OperatorAssignment_0_1 : ( RULE_OPERATOR ) ;
    public final void rule__EXPRESSION__OperatorAssignment_0_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:469:1: ( ( RULE_OPERATOR ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:470:1: ( RULE_OPERATOR )
            {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:470:1: ( RULE_OPERATOR )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:471:1: RULE_OPERATOR
            {
             before(grammarAccess.getEXPRESSIONAccess().getOperatorOPERATORTerminalRuleCall_0_1_0()); 
            match(input,RULE_OPERATOR,FOLLOW_RULE_OPERATOR_in_rule__EXPRESSION__OperatorAssignment_0_1907); 
             after(grammarAccess.getEXPRESSIONAccess().getOperatorOPERATORTerminalRuleCall_0_1_0()); 

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
    // $ANTLR end "rule__EXPRESSION__OperatorAssignment_0_1"


    // $ANTLR start "rule__EXPRESSION__SecondTermAssignment_0_2"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:480:1: rule__EXPRESSION__SecondTermAssignment_0_2 : ( ruleTERM ) ;
    public final void rule__EXPRESSION__SecondTermAssignment_0_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:484:1: ( ( ruleTERM ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:485:1: ( ruleTERM )
            {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:485:1: ( ruleTERM )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:486:1: ruleTERM
            {
             before(grammarAccess.getEXPRESSIONAccess().getSecondTermTERMParserRuleCall_0_2_0()); 
            pushFollow(FOLLOW_ruleTERM_in_rule__EXPRESSION__SecondTermAssignment_0_2938);
            ruleTERM();

            state._fsp--;

             after(grammarAccess.getEXPRESSIONAccess().getSecondTermTERMParserRuleCall_0_2_0()); 

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
    // $ANTLR end "rule__EXPRESSION__SecondTermAssignment_0_2"


    // $ANTLR start "rule__EXPRESSION__AloneAssignment_1"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:495:1: rule__EXPRESSION__AloneAssignment_1 : ( ruleTERM ) ;
    public final void rule__EXPRESSION__AloneAssignment_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:499:1: ( ( ruleTERM ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:500:1: ( ruleTERM )
            {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:500:1: ( ruleTERM )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:501:1: ruleTERM
            {
             before(grammarAccess.getEXPRESSIONAccess().getAloneTERMParserRuleCall_1_0()); 
            pushFollow(FOLLOW_ruleTERM_in_rule__EXPRESSION__AloneAssignment_1969);
            ruleTERM();

            state._fsp--;

             after(grammarAccess.getEXPRESSIONAccess().getAloneTERMParserRuleCall_1_0()); 

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
    // $ANTLR end "rule__EXPRESSION__AloneAssignment_1"


    // $ANTLR start "rule__TERM__VariableAssignment_0"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:510:1: rule__TERM__VariableAssignment_0 : ( RULE_ID ) ;
    public final void rule__TERM__VariableAssignment_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:514:1: ( ( RULE_ID ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:515:1: ( RULE_ID )
            {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:515:1: ( RULE_ID )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:516:1: RULE_ID
            {
             before(grammarAccess.getTERMAccess().getVariableIDTerminalRuleCall_0_0()); 
            match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__TERM__VariableAssignment_01000); 
             after(grammarAccess.getTERMAccess().getVariableIDTerminalRuleCall_0_0()); 

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
    // $ANTLR end "rule__TERM__VariableAssignment_0"


    // $ANTLR start "rule__TERM__ConstantAssignment_1"
    // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:525:1: rule__TERM__ConstantAssignment_1 : ( RULE_INT ) ;
    public final void rule__TERM__ConstantAssignment_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:529:1: ( ( RULE_INT ) )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:530:1: ( RULE_INT )
            {
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:530:1: ( RULE_INT )
            // ../org.correttouml.grammars.assignments.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalAssignments.g:531:1: RULE_INT
            {
             before(grammarAccess.getTERMAccess().getConstantINTTerminalRuleCall_1_0()); 
            match(input,RULE_INT,FOLLOW_RULE_INT_in_rule__TERM__ConstantAssignment_11031); 
             after(grammarAccess.getTERMAccess().getConstantINTTerminalRuleCall_1_0()); 

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
    // $ANTLR end "rule__TERM__ConstantAssignment_1"

    // Delegated rules


 

    public static final BitSet FOLLOW_ruleModel_in_entryRuleModel61 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleModel68 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Model__AssignmentAssignment_in_ruleModel94 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleASSIGNMENT_in_entryRuleASSIGNMENT121 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleASSIGNMENT128 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__ASSIGNMENT__Group__0_in_ruleASSIGNMENT154 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEXPRESSION_in_entryRuleEXPRESSION181 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleEXPRESSION188 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__EXPRESSION__Alternatives_in_ruleEXPRESSION214 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTERM_in_entryRuleTERM241 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleTERM248 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__TERM__Alternatives_in_ruleTERM274 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__EXPRESSION__Group_0__0_in_rule__EXPRESSION__Alternatives310 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__EXPRESSION__AloneAssignment_1_in_rule__EXPRESSION__Alternatives328 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__TERM__VariableAssignment_0_in_rule__TERM__Alternatives361 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__TERM__ConstantAssignment_1_in_rule__TERM__Alternatives379 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__ASSIGNMENT__Group__0__Impl_in_rule__ASSIGNMENT__Group__0410 = new BitSet(new long[]{0x0000000000001000L});
    public static final BitSet FOLLOW_rule__ASSIGNMENT__Group__1_in_rule__ASSIGNMENT__Group__0413 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__ASSIGNMENT__VariableAssignment_0_in_rule__ASSIGNMENT__Group__0__Impl440 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__ASSIGNMENT__Group__1__Impl_in_rule__ASSIGNMENT__Group__1470 = new BitSet(new long[]{0x0000000000000050L});
    public static final BitSet FOLLOW_rule__ASSIGNMENT__Group__2_in_rule__ASSIGNMENT__Group__1473 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_12_in_rule__ASSIGNMENT__Group__1__Impl501 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__ASSIGNMENT__Group__2__Impl_in_rule__ASSIGNMENT__Group__2532 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__ASSIGNMENT__ExpressionAssignment_2_in_rule__ASSIGNMENT__Group__2__Impl559 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__EXPRESSION__Group_0__0__Impl_in_rule__EXPRESSION__Group_0__0595 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_rule__EXPRESSION__Group_0__1_in_rule__EXPRESSION__Group_0__0598 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__EXPRESSION__FirstTermAssignment_0_0_in_rule__EXPRESSION__Group_0__0__Impl625 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__EXPRESSION__Group_0__1__Impl_in_rule__EXPRESSION__Group_0__1655 = new BitSet(new long[]{0x0000000000000050L});
    public static final BitSet FOLLOW_rule__EXPRESSION__Group_0__2_in_rule__EXPRESSION__Group_0__1658 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__EXPRESSION__OperatorAssignment_0_1_in_rule__EXPRESSION__Group_0__1__Impl685 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__EXPRESSION__Group_0__2__Impl_in_rule__EXPRESSION__Group_0__2715 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__EXPRESSION__SecondTermAssignment_0_2_in_rule__EXPRESSION__Group_0__2__Impl742 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleASSIGNMENT_in_rule__Model__AssignmentAssignment783 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__ASSIGNMENT__VariableAssignment_0814 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEXPRESSION_in_rule__ASSIGNMENT__ExpressionAssignment_2845 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTERM_in_rule__EXPRESSION__FirstTermAssignment_0_0876 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_OPERATOR_in_rule__EXPRESSION__OperatorAssignment_0_1907 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTERM_in_rule__EXPRESSION__SecondTermAssignment_0_2938 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTERM_in_rule__EXPRESSION__AloneAssignment_1969 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__TERM__VariableAssignment_01000 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_INT_in_rule__TERM__ConstantAssignment_11031 = new BitSet(new long[]{0x0000000000000002L});

}