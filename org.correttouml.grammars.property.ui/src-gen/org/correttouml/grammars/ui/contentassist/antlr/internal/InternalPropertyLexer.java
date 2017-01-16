package org.correttouml.grammars.ui.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.Lexer;


import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class InternalPropertyLexer extends Lexer {
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

    public InternalPropertyLexer() {;} 
    public InternalPropertyLexer(CharStream input) {
        this(input, new RecognizerSharedState());
    }
    public InternalPropertyLexer(CharStream input, RecognizerSharedState state) {
        super(input,state);

    }
    public String getGrammarFileName() { return "InternalProperty.g"; }

    // $ANTLR start "T__19"
    public final void mT__19() throws RecognitionException {
        try {
            int _type = T__19;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:11:7: ( 'Corretto.' )
            // InternalProperty.g:11:9: 'Corretto.'
            {
            match("Corretto."); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__19"

    // $ANTLR start "T__20"
    public final void mT__20() throws RecognitionException {
        try {
            int _type = T__20;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:12:7: ( 'verify(' )
            // InternalProperty.g:12:9: 'verify('
            {
            match("verify("); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__20"

    // $ANTLR start "T__21"
    public final void mT__21() throws RecognitionException {
        try {
            int _type = T__21;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:13:7: ( ')' )
            // InternalProperty.g:13:9: ')'
            {
            match(')'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__21"

    // $ANTLR start "T__22"
    public final void mT__22() throws RecognitionException {
        try {
            int _type = T__22;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:14:7: ( '=' )
            // InternalProperty.g:14:9: '='
            {
            match('='); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__22"

    // $ANTLR start "T__23"
    public final void mT__23() throws RecognitionException {
        try {
            int _type = T__23;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:15:7: ( '.getState(' )
            // InternalProperty.g:15:9: '.getState('
            {
            match(".getState("); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__23"

    // $ANTLR start "T__24"
    public final void mT__24() throws RecognitionException {
        try {
            int _type = T__24;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:16:7: ( ',' )
            // InternalProperty.g:16:9: ','
            {
            match(','); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__24"

    // $ANTLR start "T__25"
    public final void mT__25() throws RecognitionException {
        try {
            int _type = T__25;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:17:7: ( '.in(' )
            // InternalProperty.g:17:9: '.in('
            {
            match(".in("); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__25"

    // $ANTLR start "T__26"
    public final void mT__26() throws RecognitionException {
        try {
            int _type = T__26;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:18:7: ( '()' )
            // InternalProperty.g:18:9: '()'
            {
            match("()"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__26"

    // $ANTLR start "T__27"
    public final void mT__27() throws RecognitionException {
        try {
            int _type = T__27;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:19:7: ( '!(' )
            // InternalProperty.g:19:9: '!('
            {
            match("!("); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__27"

    // $ANTLR start "T__28"
    public final void mT__28() throws RecognitionException {
        try {
            int _type = T__28;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:20:7: ( 'Time.' )
            // InternalProperty.g:20:9: 'Time.'
            {
            match("Time."); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__28"

    // $ANTLR start "T__29"
    public final void mT__29() throws RecognitionException {
        try {
            int _type = T__29;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:21:7: ( '(' )
            // InternalProperty.g:21:9: '('
            {
            match('('); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__29"

    // $ANTLR start "T__30"
    public final void mT__30() throws RecognitionException {
        try {
            int _type = T__30;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:22:7: ( 'Futr(' )
            // InternalProperty.g:22:9: 'Futr('
            {
            match("Futr("); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__30"

    // $ANTLR start "T__31"
    public final void mT__31() throws RecognitionException {
        try {
            int _type = T__31;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:23:7: ( 'Past(' )
            // InternalProperty.g:23:9: 'Past('
            {
            match("Past("); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__31"

    // $ANTLR start "T__32"
    public final void mT__32() throws RecognitionException {
        try {
            int _type = T__32;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:24:7: ( '.' )
            // InternalProperty.g:24:9: '.'
            {
            match('.'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__32"

    // $ANTLR start "T__33"
    public final void mT__33() throws RecognitionException {
        try {
            int _type = T__33;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:25:7: ( '::' )
            // InternalProperty.g:25:9: '::'
            {
            match("::"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__33"

    // $ANTLR start "T__34"
    public final void mT__34() throws RecognitionException {
        try {
            int _type = T__34;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:26:7: ( '.getParameter(' )
            // InternalProperty.g:26:9: '.getParameter('
            {
            match(".getParameter("); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__34"

    // $ANTLR start "RULE_EXECUTE"
    public final void mRULE_EXECUTE() throws RecognitionException {
        try {
            int _type = RULE_EXECUTE;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:4134:14: ( 'execute()' )
            // InternalProperty.g:4134:16: 'execute()'
            {
            match("execute()"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_EXECUTE"

    // $ANTLR start "RULE_TRIOOP2"
    public final void mRULE_TRIOOP2() throws RecognitionException {
        try {
            int _type = RULE_TRIOOP2;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:4136:14: ( ( '&&' | '||' | '=>' | '<=>' | '->' | '<->' ) )
            // InternalProperty.g:4136:16: ( '&&' | '||' | '=>' | '<=>' | '->' | '<->' )
            {
            // InternalProperty.g:4136:16: ( '&&' | '||' | '=>' | '<=>' | '->' | '<->' )
            int alt1=6;
            switch ( input.LA(1) ) {
            case '&':
                {
                alt1=1;
                }
                break;
            case '|':
                {
                alt1=2;
                }
                break;
            case '=':
                {
                alt1=3;
                }
                break;
            case '<':
                {
                int LA1_4 = input.LA(2);

                if ( (LA1_4=='=') ) {
                    alt1=4;
                }
                else if ( (LA1_4=='-') ) {
                    alt1=6;
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 1, 4, input);

                    throw nvae;
                }
                }
                break;
            case '-':
                {
                alt1=5;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 1, 0, input);

                throw nvae;
            }

            switch (alt1) {
                case 1 :
                    // InternalProperty.g:4136:17: '&&'
                    {
                    match("&&"); 


                    }
                    break;
                case 2 :
                    // InternalProperty.g:4136:22: '||'
                    {
                    match("||"); 


                    }
                    break;
                case 3 :
                    // InternalProperty.g:4136:27: '=>'
                    {
                    match("=>"); 


                    }
                    break;
                case 4 :
                    // InternalProperty.g:4136:32: '<=>'
                    {
                    match("<=>"); 


                    }
                    break;
                case 5 :
                    // InternalProperty.g:4136:38: '->'
                    {
                    match("->"); 


                    }
                    break;
                case 6 :
                    // InternalProperty.g:4136:43: '<->'
                    {
                    match("<->"); 


                    }
                    break;

            }


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_TRIOOP2"

    // $ANTLR start "RULE_TRIOOPF"
    public final void mRULE_TRIOOPF() throws RecognitionException {
        try {
            int _type = RULE_TRIOOPF;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:4138:14: ( ( 'alw' | 'always' | 'alwaysTrue' | 'neverFalse' | 'som' | 'atLeastOnce' | 'alwF' | 'alwaysWillBe' | 'somF' | 'eventually' | 'eventuallyWillBe' | 'alwP' | 'historically' | 'alwaysHasBeen' | 'somP' | 'alwaysFalse' | 'neverTrue' ) )
            // InternalProperty.g:4138:16: ( 'alw' | 'always' | 'alwaysTrue' | 'neverFalse' | 'som' | 'atLeastOnce' | 'alwF' | 'alwaysWillBe' | 'somF' | 'eventually' | 'eventuallyWillBe' | 'alwP' | 'historically' | 'alwaysHasBeen' | 'somP' | 'alwaysFalse' | 'neverTrue' )
            {
            // InternalProperty.g:4138:16: ( 'alw' | 'always' | 'alwaysTrue' | 'neverFalse' | 'som' | 'atLeastOnce' | 'alwF' | 'alwaysWillBe' | 'somF' | 'eventually' | 'eventuallyWillBe' | 'alwP' | 'historically' | 'alwaysHasBeen' | 'somP' | 'alwaysFalse' | 'neverTrue' )
            int alt2=17;
            alt2 = dfa2.predict(input);
            switch (alt2) {
                case 1 :
                    // InternalProperty.g:4138:17: 'alw'
                    {
                    match("alw"); 


                    }
                    break;
                case 2 :
                    // InternalProperty.g:4138:23: 'always'
                    {
                    match("always"); 


                    }
                    break;
                case 3 :
                    // InternalProperty.g:4138:32: 'alwaysTrue'
                    {
                    match("alwaysTrue"); 


                    }
                    break;
                case 4 :
                    // InternalProperty.g:4138:45: 'neverFalse'
                    {
                    match("neverFalse"); 


                    }
                    break;
                case 5 :
                    // InternalProperty.g:4138:58: 'som'
                    {
                    match("som"); 


                    }
                    break;
                case 6 :
                    // InternalProperty.g:4138:64: 'atLeastOnce'
                    {
                    match("atLeastOnce"); 


                    }
                    break;
                case 7 :
                    // InternalProperty.g:4138:78: 'alwF'
                    {
                    match("alwF"); 


                    }
                    break;
                case 8 :
                    // InternalProperty.g:4138:85: 'alwaysWillBe'
                    {
                    match("alwaysWillBe"); 


                    }
                    break;
                case 9 :
                    // InternalProperty.g:4138:100: 'somF'
                    {
                    match("somF"); 


                    }
                    break;
                case 10 :
                    // InternalProperty.g:4138:107: 'eventually'
                    {
                    match("eventually"); 


                    }
                    break;
                case 11 :
                    // InternalProperty.g:4138:120: 'eventuallyWillBe'
                    {
                    match("eventuallyWillBe"); 


                    }
                    break;
                case 12 :
                    // InternalProperty.g:4138:139: 'alwP'
                    {
                    match("alwP"); 


                    }
                    break;
                case 13 :
                    // InternalProperty.g:4138:146: 'historically'
                    {
                    match("historically"); 


                    }
                    break;
                case 14 :
                    // InternalProperty.g:4138:161: 'alwaysHasBeen'
                    {
                    match("alwaysHasBeen"); 


                    }
                    break;
                case 15 :
                    // InternalProperty.g:4138:177: 'somP'
                    {
                    match("somP"); 


                    }
                    break;
                case 16 :
                    // InternalProperty.g:4138:184: 'alwaysFalse'
                    {
                    match("alwaysFalse"); 


                    }
                    break;
                case 17 :
                    // InternalProperty.g:4138:198: 'neverTrue'
                    {
                    match("neverTrue"); 


                    }
                    break;

            }


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_TRIOOPF"

    // $ANTLR start "RULE_TRIOOPFF"
    public final void mRULE_TRIOOPFF() throws RecognitionException {
        try {
            int _type = RULE_TRIOOPFF;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:4140:15: ( ( 'until' | 'since' | 'release' | 'trigger' ) )
            // InternalProperty.g:4140:17: ( 'until' | 'since' | 'release' | 'trigger' )
            {
            // InternalProperty.g:4140:17: ( 'until' | 'since' | 'release' | 'trigger' )
            int alt3=4;
            switch ( input.LA(1) ) {
            case 'u':
                {
                alt3=1;
                }
                break;
            case 's':
                {
                alt3=2;
                }
                break;
            case 'r':
                {
                alt3=3;
                }
                break;
            case 't':
                {
                alt3=4;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 3, 0, input);

                throw nvae;
            }

            switch (alt3) {
                case 1 :
                    // InternalProperty.g:4140:18: 'until'
                    {
                    match("until"); 


                    }
                    break;
                case 2 :
                    // InternalProperty.g:4140:26: 'since'
                    {
                    match("since"); 


                    }
                    break;
                case 3 :
                    // InternalProperty.g:4140:34: 'release'
                    {
                    match("release"); 


                    }
                    break;
                case 4 :
                    // InternalProperty.g:4140:44: 'trigger'
                    {
                    match("trigger"); 


                    }
                    break;

            }


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_TRIOOPFF"

    // $ANTLR start "RULE_TRIOOPFN"
    public final void mRULE_TRIOOPFN() throws RecognitionException {
        try {
            int _type = RULE_TRIOOPFN;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:4142:15: ( ( 'futr' | 'past' | 'withinF' | 'withinP' | 'lasts' | 'lasted' ) )
            // InternalProperty.g:4142:17: ( 'futr' | 'past' | 'withinF' | 'withinP' | 'lasts' | 'lasted' )
            {
            // InternalProperty.g:4142:17: ( 'futr' | 'past' | 'withinF' | 'withinP' | 'lasts' | 'lasted' )
            int alt4=6;
            alt4 = dfa4.predict(input);
            switch (alt4) {
                case 1 :
                    // InternalProperty.g:4142:18: 'futr'
                    {
                    match("futr"); 


                    }
                    break;
                case 2 :
                    // InternalProperty.g:4142:25: 'past'
                    {
                    match("past"); 


                    }
                    break;
                case 3 :
                    // InternalProperty.g:4142:32: 'withinF'
                    {
                    match("withinF"); 


                    }
                    break;
                case 4 :
                    // InternalProperty.g:4142:42: 'withinP'
                    {
                    match("withinP"); 


                    }
                    break;
                case 5 :
                    // InternalProperty.g:4142:52: 'lasts'
                    {
                    match("lasts"); 


                    }
                    break;
                case 6 :
                    // InternalProperty.g:4142:60: 'lasted'
                    {
                    match("lasted"); 


                    }
                    break;

            }


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_TRIOOPFN"

    // $ANTLR start "RULE_FLOAT"
    public final void mRULE_FLOAT() throws RecognitionException {
        try {
            int _type = RULE_FLOAT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:4144:12: ( '.' ( '0' .. '9' )+ )
            // InternalProperty.g:4144:14: '.' ( '0' .. '9' )+
            {
            match('.'); 
            // InternalProperty.g:4144:18: ( '0' .. '9' )+
            int cnt5=0;
            loop5:
            do {
                int alt5=2;
                int LA5_0 = input.LA(1);

                if ( ((LA5_0>='0' && LA5_0<='9')) ) {
                    alt5=1;
                }


                switch (alt5) {
            	case 1 :
            	    // InternalProperty.g:4144:19: '0' .. '9'
            	    {
            	    matchRange('0','9'); 

            	    }
            	    break;

            	default :
            	    if ( cnt5 >= 1 ) break loop5;
                        EarlyExitException eee =
                            new EarlyExitException(5, input);
                        throw eee;
                }
                cnt5++;
            } while (true);


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_FLOAT"

    // $ANTLR start "RULE_ARITH_OP"
    public final void mRULE_ARITH_OP() throws RecognitionException {
        try {
            int _type = RULE_ARITH_OP;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:4146:15: ( ( '+' | '-' | '*' | '/' ) )
            // InternalProperty.g:4146:17: ( '+' | '-' | '*' | '/' )
            {
            if ( (input.LA(1)>='*' && input.LA(1)<='+')||input.LA(1)=='-'||input.LA(1)=='/' ) {
                input.consume();

            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;}


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_ARITH_OP"

    // $ANTLR start "RULE_ARITH_COMPARE_OP"
    public final void mRULE_ARITH_COMPARE_OP() throws RecognitionException {
        try {
            int _type = RULE_ARITH_COMPARE_OP;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:4148:23: ( ( '>' | '>=' | '<' | '<=' | '==' | '!=' ) )
            // InternalProperty.g:4148:25: ( '>' | '>=' | '<' | '<=' | '==' | '!=' )
            {
            // InternalProperty.g:4148:25: ( '>' | '>=' | '<' | '<=' | '==' | '!=' )
            int alt6=6;
            switch ( input.LA(1) ) {
            case '>':
                {
                int LA6_1 = input.LA(2);

                if ( (LA6_1=='=') ) {
                    alt6=2;
                }
                else {
                    alt6=1;}
                }
                break;
            case '<':
                {
                int LA6_2 = input.LA(2);

                if ( (LA6_2=='=') ) {
                    alt6=4;
                }
                else {
                    alt6=3;}
                }
                break;
            case '=':
                {
                alt6=5;
                }
                break;
            case '!':
                {
                alt6=6;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 6, 0, input);

                throw nvae;
            }

            switch (alt6) {
                case 1 :
                    // InternalProperty.g:4148:26: '>'
                    {
                    match('>'); 

                    }
                    break;
                case 2 :
                    // InternalProperty.g:4148:30: '>='
                    {
                    match(">="); 


                    }
                    break;
                case 3 :
                    // InternalProperty.g:4148:35: '<'
                    {
                    match('<'); 

                    }
                    break;
                case 4 :
                    // InternalProperty.g:4148:39: '<='
                    {
                    match("<="); 


                    }
                    break;
                case 5 :
                    // InternalProperty.g:4148:44: '=='
                    {
                    match("=="); 


                    }
                    break;
                case 6 :
                    // InternalProperty.g:4148:49: '!='
                    {
                    match("!="); 


                    }
                    break;

            }


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_ARITH_COMPARE_OP"

    // $ANTLR start "RULE_ID"
    public final void mRULE_ID() throws RecognitionException {
        try {
            int _type = RULE_ID;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:4150:9: ( ( '^' )? ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )* )
            // InternalProperty.g:4150:11: ( '^' )? ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
            {
            // InternalProperty.g:4150:11: ( '^' )?
            int alt7=2;
            int LA7_0 = input.LA(1);

            if ( (LA7_0=='^') ) {
                alt7=1;
            }
            switch (alt7) {
                case 1 :
                    // InternalProperty.g:4150:11: '^'
                    {
                    match('^'); 

                    }
                    break;

            }

            if ( (input.LA(1)>='A' && input.LA(1)<='Z')||input.LA(1)=='_'||(input.LA(1)>='a' && input.LA(1)<='z') ) {
                input.consume();

            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;}

            // InternalProperty.g:4150:40: ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
            loop8:
            do {
                int alt8=2;
                int LA8_0 = input.LA(1);

                if ( ((LA8_0>='0' && LA8_0<='9')||(LA8_0>='A' && LA8_0<='Z')||LA8_0=='_'||(LA8_0>='a' && LA8_0<='z')) ) {
                    alt8=1;
                }


                switch (alt8) {
            	case 1 :
            	    // InternalProperty.g:
            	    {
            	    if ( (input.LA(1)>='0' && input.LA(1)<='9')||(input.LA(1)>='A' && input.LA(1)<='Z')||input.LA(1)=='_'||(input.LA(1)>='a' && input.LA(1)<='z') ) {
            	        input.consume();

            	    }
            	    else {
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;}


            	    }
            	    break;

            	default :
            	    break loop8;
                }
            } while (true);


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_ID"

    // $ANTLR start "RULE_INT"
    public final void mRULE_INT() throws RecognitionException {
        try {
            int _type = RULE_INT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:4152:10: ( ( '0' .. '9' )+ )
            // InternalProperty.g:4152:12: ( '0' .. '9' )+
            {
            // InternalProperty.g:4152:12: ( '0' .. '9' )+
            int cnt9=0;
            loop9:
            do {
                int alt9=2;
                int LA9_0 = input.LA(1);

                if ( ((LA9_0>='0' && LA9_0<='9')) ) {
                    alt9=1;
                }


                switch (alt9) {
            	case 1 :
            	    // InternalProperty.g:4152:13: '0' .. '9'
            	    {
            	    matchRange('0','9'); 

            	    }
            	    break;

            	default :
            	    if ( cnt9 >= 1 ) break loop9;
                        EarlyExitException eee =
                            new EarlyExitException(9, input);
                        throw eee;
                }
                cnt9++;
            } while (true);


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_INT"

    // $ANTLR start "RULE_STRING"
    public final void mRULE_STRING() throws RecognitionException {
        try {
            int _type = RULE_STRING;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:4154:13: ( ( '\"' ( '\\\\' . | ~ ( ( '\\\\' | '\"' ) ) )* '\"' | '\\'' ( '\\\\' . | ~ ( ( '\\\\' | '\\'' ) ) )* '\\'' ) )
            // InternalProperty.g:4154:15: ( '\"' ( '\\\\' . | ~ ( ( '\\\\' | '\"' ) ) )* '\"' | '\\'' ( '\\\\' . | ~ ( ( '\\\\' | '\\'' ) ) )* '\\'' )
            {
            // InternalProperty.g:4154:15: ( '\"' ( '\\\\' . | ~ ( ( '\\\\' | '\"' ) ) )* '\"' | '\\'' ( '\\\\' . | ~ ( ( '\\\\' | '\\'' ) ) )* '\\'' )
            int alt12=2;
            int LA12_0 = input.LA(1);

            if ( (LA12_0=='\"') ) {
                alt12=1;
            }
            else if ( (LA12_0=='\'') ) {
                alt12=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 12, 0, input);

                throw nvae;
            }
            switch (alt12) {
                case 1 :
                    // InternalProperty.g:4154:16: '\"' ( '\\\\' . | ~ ( ( '\\\\' | '\"' ) ) )* '\"'
                    {
                    match('\"'); 
                    // InternalProperty.g:4154:20: ( '\\\\' . | ~ ( ( '\\\\' | '\"' ) ) )*
                    loop10:
                    do {
                        int alt10=3;
                        int LA10_0 = input.LA(1);

                        if ( (LA10_0=='\\') ) {
                            alt10=1;
                        }
                        else if ( ((LA10_0>='\u0000' && LA10_0<='!')||(LA10_0>='#' && LA10_0<='[')||(LA10_0>=']' && LA10_0<='\uFFFF')) ) {
                            alt10=2;
                        }


                        switch (alt10) {
                    	case 1 :
                    	    // InternalProperty.g:4154:21: '\\\\' .
                    	    {
                    	    match('\\'); 
                    	    matchAny(); 

                    	    }
                    	    break;
                    	case 2 :
                    	    // InternalProperty.g:4154:28: ~ ( ( '\\\\' | '\"' ) )
                    	    {
                    	    if ( (input.LA(1)>='\u0000' && input.LA(1)<='!')||(input.LA(1)>='#' && input.LA(1)<='[')||(input.LA(1)>=']' && input.LA(1)<='\uFFFF') ) {
                    	        input.consume();

                    	    }
                    	    else {
                    	        MismatchedSetException mse = new MismatchedSetException(null,input);
                    	        recover(mse);
                    	        throw mse;}


                    	    }
                    	    break;

                    	default :
                    	    break loop10;
                        }
                    } while (true);

                    match('\"'); 

                    }
                    break;
                case 2 :
                    // InternalProperty.g:4154:48: '\\'' ( '\\\\' . | ~ ( ( '\\\\' | '\\'' ) ) )* '\\''
                    {
                    match('\''); 
                    // InternalProperty.g:4154:53: ( '\\\\' . | ~ ( ( '\\\\' | '\\'' ) ) )*
                    loop11:
                    do {
                        int alt11=3;
                        int LA11_0 = input.LA(1);

                        if ( (LA11_0=='\\') ) {
                            alt11=1;
                        }
                        else if ( ((LA11_0>='\u0000' && LA11_0<='&')||(LA11_0>='(' && LA11_0<='[')||(LA11_0>=']' && LA11_0<='\uFFFF')) ) {
                            alt11=2;
                        }


                        switch (alt11) {
                    	case 1 :
                    	    // InternalProperty.g:4154:54: '\\\\' .
                    	    {
                    	    match('\\'); 
                    	    matchAny(); 

                    	    }
                    	    break;
                    	case 2 :
                    	    // InternalProperty.g:4154:61: ~ ( ( '\\\\' | '\\'' ) )
                    	    {
                    	    if ( (input.LA(1)>='\u0000' && input.LA(1)<='&')||(input.LA(1)>='(' && input.LA(1)<='[')||(input.LA(1)>=']' && input.LA(1)<='\uFFFF') ) {
                    	        input.consume();

                    	    }
                    	    else {
                    	        MismatchedSetException mse = new MismatchedSetException(null,input);
                    	        recover(mse);
                    	        throw mse;}


                    	    }
                    	    break;

                    	default :
                    	    break loop11;
                        }
                    } while (true);

                    match('\''); 

                    }
                    break;

            }


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_STRING"

    // $ANTLR start "RULE_ML_COMMENT"
    public final void mRULE_ML_COMMENT() throws RecognitionException {
        try {
            int _type = RULE_ML_COMMENT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:4156:17: ( '/*' ( options {greedy=false; } : . )* '*/' )
            // InternalProperty.g:4156:19: '/*' ( options {greedy=false; } : . )* '*/'
            {
            match("/*"); 

            // InternalProperty.g:4156:24: ( options {greedy=false; } : . )*
            loop13:
            do {
                int alt13=2;
                int LA13_0 = input.LA(1);

                if ( (LA13_0=='*') ) {
                    int LA13_1 = input.LA(2);

                    if ( (LA13_1=='/') ) {
                        alt13=2;
                    }
                    else if ( ((LA13_1>='\u0000' && LA13_1<='.')||(LA13_1>='0' && LA13_1<='\uFFFF')) ) {
                        alt13=1;
                    }


                }
                else if ( ((LA13_0>='\u0000' && LA13_0<=')')||(LA13_0>='+' && LA13_0<='\uFFFF')) ) {
                    alt13=1;
                }


                switch (alt13) {
            	case 1 :
            	    // InternalProperty.g:4156:52: .
            	    {
            	    matchAny(); 

            	    }
            	    break;

            	default :
            	    break loop13;
                }
            } while (true);

            match("*/"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_ML_COMMENT"

    // $ANTLR start "RULE_SL_COMMENT"
    public final void mRULE_SL_COMMENT() throws RecognitionException {
        try {
            int _type = RULE_SL_COMMENT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:4158:17: ( '//' (~ ( ( '\\n' | '\\r' ) ) )* ( ( '\\r' )? '\\n' )? )
            // InternalProperty.g:4158:19: '//' (~ ( ( '\\n' | '\\r' ) ) )* ( ( '\\r' )? '\\n' )?
            {
            match("//"); 

            // InternalProperty.g:4158:24: (~ ( ( '\\n' | '\\r' ) ) )*
            loop14:
            do {
                int alt14=2;
                int LA14_0 = input.LA(1);

                if ( ((LA14_0>='\u0000' && LA14_0<='\t')||(LA14_0>='\u000B' && LA14_0<='\f')||(LA14_0>='\u000E' && LA14_0<='\uFFFF')) ) {
                    alt14=1;
                }


                switch (alt14) {
            	case 1 :
            	    // InternalProperty.g:4158:24: ~ ( ( '\\n' | '\\r' ) )
            	    {
            	    if ( (input.LA(1)>='\u0000' && input.LA(1)<='\t')||(input.LA(1)>='\u000B' && input.LA(1)<='\f')||(input.LA(1)>='\u000E' && input.LA(1)<='\uFFFF') ) {
            	        input.consume();

            	    }
            	    else {
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;}


            	    }
            	    break;

            	default :
            	    break loop14;
                }
            } while (true);

            // InternalProperty.g:4158:40: ( ( '\\r' )? '\\n' )?
            int alt16=2;
            int LA16_0 = input.LA(1);

            if ( (LA16_0=='\n'||LA16_0=='\r') ) {
                alt16=1;
            }
            switch (alt16) {
                case 1 :
                    // InternalProperty.g:4158:41: ( '\\r' )? '\\n'
                    {
                    // InternalProperty.g:4158:41: ( '\\r' )?
                    int alt15=2;
                    int LA15_0 = input.LA(1);

                    if ( (LA15_0=='\r') ) {
                        alt15=1;
                    }
                    switch (alt15) {
                        case 1 :
                            // InternalProperty.g:4158:41: '\\r'
                            {
                            match('\r'); 

                            }
                            break;

                    }

                    match('\n'); 

                    }
                    break;

            }


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_SL_COMMENT"

    // $ANTLR start "RULE_WS"
    public final void mRULE_WS() throws RecognitionException {
        try {
            int _type = RULE_WS;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:4160:9: ( ( ' ' | '\\t' | '\\r' | '\\n' )+ )
            // InternalProperty.g:4160:11: ( ' ' | '\\t' | '\\r' | '\\n' )+
            {
            // InternalProperty.g:4160:11: ( ' ' | '\\t' | '\\r' | '\\n' )+
            int cnt17=0;
            loop17:
            do {
                int alt17=2;
                int LA17_0 = input.LA(1);

                if ( ((LA17_0>='\t' && LA17_0<='\n')||LA17_0=='\r'||LA17_0==' ') ) {
                    alt17=1;
                }


                switch (alt17) {
            	case 1 :
            	    // InternalProperty.g:
            	    {
            	    if ( (input.LA(1)>='\t' && input.LA(1)<='\n')||input.LA(1)=='\r'||input.LA(1)==' ' ) {
            	        input.consume();

            	    }
            	    else {
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;}


            	    }
            	    break;

            	default :
            	    if ( cnt17 >= 1 ) break loop17;
                        EarlyExitException eee =
                            new EarlyExitException(17, input);
                        throw eee;
                }
                cnt17++;
            } while (true);


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_WS"

    // $ANTLR start "RULE_ANY_OTHER"
    public final void mRULE_ANY_OTHER() throws RecognitionException {
        try {
            int _type = RULE_ANY_OTHER;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalProperty.g:4162:16: ( . )
            // InternalProperty.g:4162:18: .
            {
            matchAny(); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_ANY_OTHER"

    public void mTokens() throws RecognitionException {
        // InternalProperty.g:1:8: ( T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | RULE_EXECUTE | RULE_TRIOOP2 | RULE_TRIOOPF | RULE_TRIOOPFF | RULE_TRIOOPFN | RULE_FLOAT | RULE_ARITH_OP | RULE_ARITH_COMPARE_OP | RULE_ID | RULE_INT | RULE_STRING | RULE_ML_COMMENT | RULE_SL_COMMENT | RULE_WS | RULE_ANY_OTHER )
        int alt18=31;
        alt18 = dfa18.predict(input);
        switch (alt18) {
            case 1 :
                // InternalProperty.g:1:10: T__19
                {
                mT__19(); 

                }
                break;
            case 2 :
                // InternalProperty.g:1:16: T__20
                {
                mT__20(); 

                }
                break;
            case 3 :
                // InternalProperty.g:1:22: T__21
                {
                mT__21(); 

                }
                break;
            case 4 :
                // InternalProperty.g:1:28: T__22
                {
                mT__22(); 

                }
                break;
            case 5 :
                // InternalProperty.g:1:34: T__23
                {
                mT__23(); 

                }
                break;
            case 6 :
                // InternalProperty.g:1:40: T__24
                {
                mT__24(); 

                }
                break;
            case 7 :
                // InternalProperty.g:1:46: T__25
                {
                mT__25(); 

                }
                break;
            case 8 :
                // InternalProperty.g:1:52: T__26
                {
                mT__26(); 

                }
                break;
            case 9 :
                // InternalProperty.g:1:58: T__27
                {
                mT__27(); 

                }
                break;
            case 10 :
                // InternalProperty.g:1:64: T__28
                {
                mT__28(); 

                }
                break;
            case 11 :
                // InternalProperty.g:1:70: T__29
                {
                mT__29(); 

                }
                break;
            case 12 :
                // InternalProperty.g:1:76: T__30
                {
                mT__30(); 

                }
                break;
            case 13 :
                // InternalProperty.g:1:82: T__31
                {
                mT__31(); 

                }
                break;
            case 14 :
                // InternalProperty.g:1:88: T__32
                {
                mT__32(); 

                }
                break;
            case 15 :
                // InternalProperty.g:1:94: T__33
                {
                mT__33(); 

                }
                break;
            case 16 :
                // InternalProperty.g:1:100: T__34
                {
                mT__34(); 

                }
                break;
            case 17 :
                // InternalProperty.g:1:106: RULE_EXECUTE
                {
                mRULE_EXECUTE(); 

                }
                break;
            case 18 :
                // InternalProperty.g:1:119: RULE_TRIOOP2
                {
                mRULE_TRIOOP2(); 

                }
                break;
            case 19 :
                // InternalProperty.g:1:132: RULE_TRIOOPF
                {
                mRULE_TRIOOPF(); 

                }
                break;
            case 20 :
                // InternalProperty.g:1:145: RULE_TRIOOPFF
                {
                mRULE_TRIOOPFF(); 

                }
                break;
            case 21 :
                // InternalProperty.g:1:159: RULE_TRIOOPFN
                {
                mRULE_TRIOOPFN(); 

                }
                break;
            case 22 :
                // InternalProperty.g:1:173: RULE_FLOAT
                {
                mRULE_FLOAT(); 

                }
                break;
            case 23 :
                // InternalProperty.g:1:184: RULE_ARITH_OP
                {
                mRULE_ARITH_OP(); 

                }
                break;
            case 24 :
                // InternalProperty.g:1:198: RULE_ARITH_COMPARE_OP
                {
                mRULE_ARITH_COMPARE_OP(); 

                }
                break;
            case 25 :
                // InternalProperty.g:1:220: RULE_ID
                {
                mRULE_ID(); 

                }
                break;
            case 26 :
                // InternalProperty.g:1:228: RULE_INT
                {
                mRULE_INT(); 

                }
                break;
            case 27 :
                // InternalProperty.g:1:237: RULE_STRING
                {
                mRULE_STRING(); 

                }
                break;
            case 28 :
                // InternalProperty.g:1:249: RULE_ML_COMMENT
                {
                mRULE_ML_COMMENT(); 

                }
                break;
            case 29 :
                // InternalProperty.g:1:265: RULE_SL_COMMENT
                {
                mRULE_SL_COMMENT(); 

                }
                break;
            case 30 :
                // InternalProperty.g:1:281: RULE_WS
                {
                mRULE_WS(); 

                }
                break;
            case 31 :
                // InternalProperty.g:1:289: RULE_ANY_OTHER
                {
                mRULE_ANY_OTHER(); 

                }
                break;

        }

    }


    protected DFA2 dfa2 = new DFA2(this);
    protected DFA4 dfa4 = new DFA4(this);
    protected DFA18 dfa18 = new DFA18(this);
    static final String DFA2_eotS =
        "\13\uffff\1\22\1\uffff\1\26\15\uffff\1\43\13\uffff\1\51\2\uffff";
    static final String DFA2_eofS =
        "\52\uffff";
    static final String DFA2_minS =
        "\1\141\1\154\1\145\1\157\1\166\1\uffff\1\167\1\uffff\1\166\1\155\1\145\1\106\1\145\1\106\1\156\1\171\3\uffff\1\162\3\uffff\1\164\1\163\1\106\1\165\1\106\2\uffff\1\141\5\uffff\2\154\1\171\1\127\2\uffff";
    static final String DFA2_maxS =
        "\1\163\1\164\1\145\1\157\1\166\1\uffff\1\167\1\uffff\1\166\1\155\1\145\1\141\1\145\1\120\1\156\1\171\3\uffff\1\162\3\uffff\1\164\1\163\1\124\1\165\1\127\2\uffff\1\141\5\uffff\2\154\1\171\1\127\2\uffff";
    static final String DFA2_acceptS =
        "\5\uffff\1\15\1\uffff\1\6\10\uffff\1\7\1\14\1\1\1\uffff\1\11\1\17\1\5\5\uffff\1\4\1\21\1\uffff\1\3\1\10\1\16\1\20\1\2\4\uffff\1\13\1\12";
    static final String DFA2_specialS =
        "\52\uffff}>";
    static final String[] DFA2_transitionS = {
            "\1\1\3\uffff\1\4\2\uffff\1\5\5\uffff\1\2\4\uffff\1\3",
            "\1\6\7\uffff\1\7",
            "\1\10",
            "\1\11",
            "\1\12",
            "",
            "\1\13",
            "",
            "\1\14",
            "\1\15",
            "\1\16",
            "\1\20\11\uffff\1\21\20\uffff\1\17",
            "\1\23",
            "\1\24\11\uffff\1\25",
            "\1\27",
            "\1\30",
            "",
            "",
            "",
            "\1\31",
            "",
            "",
            "",
            "\1\32",
            "\1\33",
            "\1\34\15\uffff\1\35",
            "\1\36",
            "\1\42\1\uffff\1\41\13\uffff\1\37\2\uffff\1\40",
            "",
            "",
            "\1\44",
            "",
            "",
            "",
            "",
            "",
            "\1\45",
            "\1\46",
            "\1\47",
            "\1\50",
            "",
            ""
    };

    static final short[] DFA2_eot = DFA.unpackEncodedString(DFA2_eotS);
    static final short[] DFA2_eof = DFA.unpackEncodedString(DFA2_eofS);
    static final char[] DFA2_min = DFA.unpackEncodedStringToUnsignedChars(DFA2_minS);
    static final char[] DFA2_max = DFA.unpackEncodedStringToUnsignedChars(DFA2_maxS);
    static final short[] DFA2_accept = DFA.unpackEncodedString(DFA2_acceptS);
    static final short[] DFA2_special = DFA.unpackEncodedString(DFA2_specialS);
    static final short[][] DFA2_transition;

    static {
        int numStates = DFA2_transitionS.length;
        DFA2_transition = new short[numStates][];
        for (int i=0; i<numStates; i++) {
            DFA2_transition[i] = DFA.unpackEncodedString(DFA2_transitionS[i]);
        }
    }

    class DFA2 extends DFA {

        public DFA2(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 2;
            this.eot = DFA2_eot;
            this.eof = DFA2_eof;
            this.min = DFA2_min;
            this.max = DFA2_max;
            this.accept = DFA2_accept;
            this.special = DFA2_special;
            this.transition = DFA2_transition;
        }
        public String getDescription() {
            return "4138:16: ( 'alw' | 'always' | 'alwaysTrue' | 'neverFalse' | 'som' | 'atLeastOnce' | 'alwF' | 'alwaysWillBe' | 'somF' | 'eventually' | 'eventuallyWillBe' | 'alwP' | 'historically' | 'alwaysHasBeen' | 'somP' | 'alwaysFalse' | 'neverTrue' )";
        }
    }
    static final String DFA4_eotS =
        "\21\uffff";
    static final String DFA4_eofS =
        "\21\uffff";
    static final String DFA4_minS =
        "\1\146\2\uffff\1\151\1\141\1\164\1\163\1\150\1\164\1\151\1\145\1\156\2\uffff\1\106\2\uffff";
    static final String DFA4_maxS =
        "\1\167\2\uffff\1\151\1\141\1\164\1\163\1\150\1\164\1\151\1\163\1\156\2\uffff\1\120\2\uffff";
    static final String DFA4_acceptS =
        "\1\uffff\1\1\1\2\11\uffff\1\5\1\6\1\uffff\1\3\1\4";
    static final String DFA4_specialS =
        "\21\uffff}>";
    static final String[] DFA4_transitionS = {
            "\1\1\5\uffff\1\4\3\uffff\1\2\6\uffff\1\3",
            "",
            "",
            "\1\5",
            "\1\6",
            "\1\7",
            "\1\10",
            "\1\11",
            "\1\12",
            "\1\13",
            "\1\15\15\uffff\1\14",
            "\1\16",
            "",
            "",
            "\1\17\11\uffff\1\20",
            "",
            ""
    };

    static final short[] DFA4_eot = DFA.unpackEncodedString(DFA4_eotS);
    static final short[] DFA4_eof = DFA.unpackEncodedString(DFA4_eofS);
    static final char[] DFA4_min = DFA.unpackEncodedStringToUnsignedChars(DFA4_minS);
    static final char[] DFA4_max = DFA.unpackEncodedStringToUnsignedChars(DFA4_maxS);
    static final short[] DFA4_accept = DFA.unpackEncodedString(DFA4_acceptS);
    static final short[] DFA4_special = DFA.unpackEncodedString(DFA4_specialS);
    static final short[][] DFA4_transition;

    static {
        int numStates = DFA4_transitionS.length;
        DFA4_transition = new short[numStates][];
        for (int i=0; i<numStates; i++) {
            DFA4_transition[i] = DFA.unpackEncodedString(DFA4_transitionS[i]);
        }
    }

    class DFA4 extends DFA {

        public DFA4(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 4;
            this.eot = DFA4_eot;
            this.eof = DFA4_eof;
            this.min = DFA4_min;
            this.max = DFA4_max;
            this.accept = DFA4_accept;
            this.special = DFA4_special;
            this.transition = DFA4_transition;
        }
        public String getDescription() {
            return "4142:17: ( 'futr' | 'past' | 'withinF' | 'withinP' | 'lasts' | 'lasted' )";
        }
    }
    static final String DFA18_eotS =
        "\1\uffff\2\50\1\uffff\1\55\1\61\1\uffff\1\64\1\46\3\50\1\46\1\50\2\46\1\54\1\75\13\50\1\75\1\uffff\1\46\2\uffff\2\46\3\uffff\1\50\1\uffff\1\50\14\uffff\3\50\1\uffff\2\50\1\54\1\uffff\15\50\5\uffff\2\50\1\uffff\5\50\1\160\2\50\1\160\13\50\1\uffff\6\50\2\160\1\uffff\2\50\2\160\5\50\2\u008f\4\50\5\uffff\5\50\1\u009b\1\50\1\u009b\2\50\1\uffff\1\50\1\u008f\5\50\1\160\3\50\1\uffff\4\50\1\u008f\1\50\1\uffff\12\50\2\u009b\2\u008f\1\50\1\uffff\11\50\1\uffff\7\50\1\160\1\50\2\160\4\50\1\160\4\50\2\160\2\50\1\160\1\50\1\160\1\50\1\160\2\50\1\160";
    static final String DFA18_eofS =
        "\u00dd\uffff";
    static final String DFA18_minS =
        "\1\0\1\157\1\145\1\uffff\1\75\1\60\1\uffff\1\51\1\50\1\151\1\165\1\141\1\72\1\166\1\46\1\174\1\55\1\76\1\154\1\145\2\151\1\156\1\145\1\162\1\165\1\141\1\151\1\141\1\52\1\uffff\1\101\2\uffff\2\0\3\uffff\1\162\1\uffff\1\162\4\uffff\1\145\7\uffff\1\155\1\164\1\163\1\uffff\2\145\1\76\1\uffff\1\167\1\114\1\166\1\155\1\156\1\163\1\164\1\154\1\151\1\164\1\163\1\164\1\163\5\uffff\1\162\1\151\1\164\1\145\1\162\1\164\1\143\1\156\1\60\2\145\1\60\1\143\1\164\1\151\1\145\1\147\1\162\1\164\1\150\1\164\1\145\1\146\1\120\1\56\2\50\1\165\1\164\1\171\2\60\1\uffff\1\141\1\162\2\60\1\145\1\157\1\154\1\141\1\147\2\60\1\151\1\145\1\164\1\171\5\uffff\1\164\1\165\2\163\1\106\1\60\1\162\1\60\1\163\1\145\1\uffff\1\156\1\60\1\144\1\164\1\50\1\145\1\141\1\60\1\164\1\141\1\162\1\uffff\1\151\1\145\1\162\1\106\1\60\1\157\1\uffff\1\50\1\154\1\162\1\151\2\141\1\117\1\154\1\165\1\143\4\60\1\56\1\uffff\1\154\1\165\1\154\1\163\1\154\1\156\1\163\1\145\1\141\1\uffff\1\171\1\145\1\154\1\102\1\163\1\143\1\145\1\60\1\154\2\60\1\102\3\145\1\60\1\154\1\151\2\145\2\60\1\171\1\154\1\60\1\156\1\60\1\154\1\60\1\102\1\145\1\60";
    static final String DFA18_maxS =
        "\1\uffff\1\157\1\145\1\uffff\1\76\1\151\1\uffff\1\51\1\75\1\151\1\165\1\141\1\72\1\170\1\46\1\174\1\75\1\76\1\164\1\145\1\157\1\151\1\156\1\145\1\162\1\165\1\141\1\151\1\141\1\57\1\uffff\1\172\2\uffff\2\uffff\3\uffff\1\162\1\uffff\1\162\4\uffff\1\145\7\uffff\1\155\1\164\1\163\1\uffff\2\145\1\76\1\uffff\1\167\1\114\1\166\1\155\1\156\1\163\1\164\1\154\1\151\1\164\1\163\1\164\1\163\5\uffff\1\162\1\151\1\164\1\145\1\162\1\164\1\143\1\156\1\172\2\145\1\172\1\143\1\164\1\151\1\145\1\147\1\162\1\164\1\150\1\164\1\145\1\146\1\123\1\56\2\50\1\165\1\164\1\171\2\172\1\uffff\1\141\1\162\2\172\1\145\1\157\1\154\1\141\1\147\2\172\1\151\1\163\1\164\1\171\5\uffff\1\164\1\165\2\163\1\124\1\172\1\162\1\172\1\163\1\145\1\uffff\1\156\1\172\1\144\1\164\1\50\1\145\1\141\1\172\1\164\1\141\1\162\1\uffff\1\151\1\145\1\162\1\120\1\172\1\157\1\uffff\1\50\1\154\1\162\1\151\2\141\1\117\1\154\1\165\1\143\4\172\1\56\1\uffff\1\154\1\165\1\154\1\163\1\154\1\156\1\163\1\145\1\141\1\uffff\1\171\1\145\1\154\1\102\1\163\1\143\1\145\1\172\1\154\2\172\1\102\3\145\1\172\1\154\1\151\2\145\2\172\1\171\1\154\1\172\1\156\1\172\1\154\1\172\1\102\1\145\1\172";
    static final String DFA18_acceptS =
        "\3\uffff\1\3\2\uffff\1\6\27\uffff\1\30\1\uffff\1\31\1\32\2\uffff\1\27\1\36\1\37\1\uffff\1\31\1\uffff\1\3\1\22\1\30\1\4\1\uffff\1\7\1\26\1\16\1\6\1\10\1\13\1\11\3\uffff\1\17\3\uffff\1\27\15\uffff\1\34\1\35\1\32\1\33\1\36\40\uffff\1\23\17\uffff\1\5\1\20\1\12\1\14\1\15\12\uffff\1\25\13\uffff\1\24\6\uffff\1\2\17\uffff\1\21\11\uffff\1\1\40\uffff";
    static final String DFA18_specialS =
        "\1\1\41\uffff\1\0\1\2\u00b9\uffff}>";
    static final String[] DFA18_transitionS = {
            "\11\46\2\45\2\46\1\45\22\46\1\45\1\10\1\42\3\46\1\16\1\43\1\7\1\3\2\44\1\6\1\21\1\5\1\35\12\41\1\14\1\46\1\20\1\4\1\36\2\46\2\40\1\1\2\40\1\12\11\40\1\13\3\40\1\11\6\40\3\46\1\37\1\40\1\46\1\22\3\40\1\15\1\31\1\40\1\25\3\40\1\34\1\40\1\23\1\40\1\32\1\40\1\27\1\24\1\30\1\26\1\2\1\33\3\40\1\46\1\17\uff83\46",
            "\1\47",
            "\1\51",
            "",
            "\1\54\1\53",
            "\12\60\55\uffff\1\56\1\uffff\1\57",
            "",
            "\1\63",
            "\1\65\24\uffff\1\54",
            "\1\66",
            "\1\67",
            "\1\70",
            "\1\71",
            "\1\73\1\uffff\1\72",
            "\1\53",
            "\1\53",
            "\1\53\17\uffff\1\74",
            "\1\53",
            "\1\76\7\uffff\1\77",
            "\1\100",
            "\1\102\5\uffff\1\101",
            "\1\103",
            "\1\104",
            "\1\105",
            "\1\106",
            "\1\107",
            "\1\110",
            "\1\111",
            "\1\112",
            "\1\113\4\uffff\1\114",
            "",
            "\32\50\4\uffff\1\50\1\uffff\32\50",
            "",
            "",
            "\0\116",
            "\0\116",
            "",
            "",
            "",
            "\1\120",
            "",
            "\1\121",
            "",
            "",
            "",
            "",
            "\1\122",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "\1\123",
            "\1\124",
            "\1\125",
            "",
            "\1\126",
            "\1\127",
            "\1\53",
            "",
            "\1\130",
            "\1\131",
            "\1\132",
            "\1\133",
            "\1\134",
            "\1\135",
            "\1\136",
            "\1\137",
            "\1\140",
            "\1\141",
            "\1\142",
            "\1\143",
            "\1\144",
            "",
            "",
            "",
            "",
            "",
            "\1\145",
            "\1\146",
            "\1\147",
            "\1\150",
            "\1\151",
            "\1\152",
            "\1\153",
            "\1\154",
            "\12\50\7\uffff\5\50\1\156\11\50\1\157\12\50\4\uffff\1\50\1\uffff\1\155\31\50",
            "\1\161",
            "\1\162",
            "\12\50\7\uffff\5\50\1\163\11\50\1\164\12\50\4\uffff\1\50\1\uffff\32\50",
            "\1\165",
            "\1\166",
            "\1\167",
            "\1\170",
            "\1\171",
            "\1\172",
            "\1\173",
            "\1\174",
            "\1\175",
            "\1\176",
            "\1\177",
            "\1\u0081\2\uffff\1\u0080",
            "\1\u0082",
            "\1\u0083",
            "\1\u0084",
            "\1\u0085",
            "\1\u0086",
            "\1\u0087",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "",
            "\1\u0088",
            "\1\u0089",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\1\u008a",
            "\1\u008b",
            "\1\u008c",
            "\1\u008d",
            "\1\u008e",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\1\u0090",
            "\1\u0092\15\uffff\1\u0091",
            "\1\u0093",
            "\1\u0094",
            "",
            "",
            "",
            "",
            "",
            "\1\u0095",
            "\1\u0096",
            "\1\u0097",
            "\1\u0098",
            "\1\u0099\15\uffff\1\u009a",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\1\u009c",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\1\u009d",
            "\1\u009e",
            "",
            "\1\u009f",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\1\u00a0",
            "\1\u00a1",
            "\1\u00a2",
            "\1\u00a3",
            "\1\u00a4",
            "\12\50\7\uffff\5\50\1\u00a8\1\50\1\u00a7\13\50\1\u00a5\2\50\1\u00a6\3\50\4\uffff\1\50\1\uffff\32\50",
            "\1\u00a9",
            "\1\u00aa",
            "\1\u00ab",
            "",
            "\1\u00ac",
            "\1\u00ad",
            "\1\u00ae",
            "\1\u00af\11\uffff\1\u00b0",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\1\u00b1",
            "",
            "\1\u00b2",
            "\1\u00b3",
            "\1\u00b4",
            "\1\u00b5",
            "\1\u00b6",
            "\1\u00b7",
            "\1\u00b8",
            "\1\u00b9",
            "\1\u00ba",
            "\1\u00bb",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\1\u00bc",
            "",
            "\1\u00bd",
            "\1\u00be",
            "\1\u00bf",
            "\1\u00c0",
            "\1\u00c1",
            "\1\u00c2",
            "\1\u00c3",
            "\1\u00c4",
            "\1\u00c5",
            "",
            "\1\u00c6",
            "\1\u00c7",
            "\1\u00c8",
            "\1\u00c9",
            "\1\u00ca",
            "\1\u00cb",
            "\1\u00cc",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\1\u00cd",
            "\12\50\7\uffff\26\50\1\u00ce\3\50\4\uffff\1\50\1\uffff\32\50",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\1\u00cf",
            "\1\u00d0",
            "\1\u00d1",
            "\1\u00d2",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\1\u00d3",
            "\1\u00d4",
            "\1\u00d5",
            "\1\u00d6",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\1\u00d7",
            "\1\u00d8",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\1\u00d9",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\1\u00da",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50",
            "\1\u00db",
            "\1\u00dc",
            "\12\50\7\uffff\32\50\4\uffff\1\50\1\uffff\32\50"
    };

    static final short[] DFA18_eot = DFA.unpackEncodedString(DFA18_eotS);
    static final short[] DFA18_eof = DFA.unpackEncodedString(DFA18_eofS);
    static final char[] DFA18_min = DFA.unpackEncodedStringToUnsignedChars(DFA18_minS);
    static final char[] DFA18_max = DFA.unpackEncodedStringToUnsignedChars(DFA18_maxS);
    static final short[] DFA18_accept = DFA.unpackEncodedString(DFA18_acceptS);
    static final short[] DFA18_special = DFA.unpackEncodedString(DFA18_specialS);
    static final short[][] DFA18_transition;

    static {
        int numStates = DFA18_transitionS.length;
        DFA18_transition = new short[numStates][];
        for (int i=0; i<numStates; i++) {
            DFA18_transition[i] = DFA.unpackEncodedString(DFA18_transitionS[i]);
        }
    }

    class DFA18 extends DFA {

        public DFA18(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 18;
            this.eot = DFA18_eot;
            this.eof = DFA18_eof;
            this.min = DFA18_min;
            this.max = DFA18_max;
            this.accept = DFA18_accept;
            this.special = DFA18_special;
            this.transition = DFA18_transition;
        }
        public String getDescription() {
            return "1:1: Tokens : ( T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | RULE_EXECUTE | RULE_TRIOOP2 | RULE_TRIOOPF | RULE_TRIOOPFF | RULE_TRIOOPFN | RULE_FLOAT | RULE_ARITH_OP | RULE_ARITH_COMPARE_OP | RULE_ID | RULE_INT | RULE_STRING | RULE_ML_COMMENT | RULE_SL_COMMENT | RULE_WS | RULE_ANY_OTHER );";
        }
        public int specialStateTransition(int s, IntStream _input) throws NoViableAltException {
            IntStream input = _input;
        	int _s = s;
            switch ( s ) {
                    case 0 : 
                        int LA18_34 = input.LA(1);

                        s = -1;
                        if ( ((LA18_34>='\u0000' && LA18_34<='\uFFFF')) ) {s = 78;}

                        else s = 38;

                        if ( s>=0 ) return s;
                        break;
                    case 1 : 
                        int LA18_0 = input.LA(1);

                        s = -1;
                        if ( (LA18_0=='C') ) {s = 1;}

                        else if ( (LA18_0=='v') ) {s = 2;}

                        else if ( (LA18_0==')') ) {s = 3;}

                        else if ( (LA18_0=='=') ) {s = 4;}

                        else if ( (LA18_0=='.') ) {s = 5;}

                        else if ( (LA18_0==',') ) {s = 6;}

                        else if ( (LA18_0=='(') ) {s = 7;}

                        else if ( (LA18_0=='!') ) {s = 8;}

                        else if ( (LA18_0=='T') ) {s = 9;}

                        else if ( (LA18_0=='F') ) {s = 10;}

                        else if ( (LA18_0=='P') ) {s = 11;}

                        else if ( (LA18_0==':') ) {s = 12;}

                        else if ( (LA18_0=='e') ) {s = 13;}

                        else if ( (LA18_0=='&') ) {s = 14;}

                        else if ( (LA18_0=='|') ) {s = 15;}

                        else if ( (LA18_0=='<') ) {s = 16;}

                        else if ( (LA18_0=='-') ) {s = 17;}

                        else if ( (LA18_0=='a') ) {s = 18;}

                        else if ( (LA18_0=='n') ) {s = 19;}

                        else if ( (LA18_0=='s') ) {s = 20;}

                        else if ( (LA18_0=='h') ) {s = 21;}

                        else if ( (LA18_0=='u') ) {s = 22;}

                        else if ( (LA18_0=='r') ) {s = 23;}

                        else if ( (LA18_0=='t') ) {s = 24;}

                        else if ( (LA18_0=='f') ) {s = 25;}

                        else if ( (LA18_0=='p') ) {s = 26;}

                        else if ( (LA18_0=='w') ) {s = 27;}

                        else if ( (LA18_0=='l') ) {s = 28;}

                        else if ( (LA18_0=='/') ) {s = 29;}

                        else if ( (LA18_0=='>') ) {s = 30;}

                        else if ( (LA18_0=='^') ) {s = 31;}

                        else if ( ((LA18_0>='A' && LA18_0<='B')||(LA18_0>='D' && LA18_0<='E')||(LA18_0>='G' && LA18_0<='O')||(LA18_0>='Q' && LA18_0<='S')||(LA18_0>='U' && LA18_0<='Z')||LA18_0=='_'||(LA18_0>='b' && LA18_0<='d')||LA18_0=='g'||(LA18_0>='i' && LA18_0<='k')||LA18_0=='m'||LA18_0=='o'||LA18_0=='q'||(LA18_0>='x' && LA18_0<='z')) ) {s = 32;}

                        else if ( ((LA18_0>='0' && LA18_0<='9')) ) {s = 33;}

                        else if ( (LA18_0=='\"') ) {s = 34;}

                        else if ( (LA18_0=='\'') ) {s = 35;}

                        else if ( ((LA18_0>='*' && LA18_0<='+')) ) {s = 36;}

                        else if ( ((LA18_0>='\t' && LA18_0<='\n')||LA18_0=='\r'||LA18_0==' ') ) {s = 37;}

                        else if ( ((LA18_0>='\u0000' && LA18_0<='\b')||(LA18_0>='\u000B' && LA18_0<='\f')||(LA18_0>='\u000E' && LA18_0<='\u001F')||(LA18_0>='#' && LA18_0<='%')||LA18_0==';'||(LA18_0>='?' && LA18_0<='@')||(LA18_0>='[' && LA18_0<=']')||LA18_0=='`'||LA18_0=='{'||(LA18_0>='}' && LA18_0<='\uFFFF')) ) {s = 38;}

                        if ( s>=0 ) return s;
                        break;
                    case 2 : 
                        int LA18_35 = input.LA(1);

                        s = -1;
                        if ( ((LA18_35>='\u0000' && LA18_35<='\uFFFF')) ) {s = 78;}

                        else s = 38;

                        if ( s>=0 ) return s;
                        break;
            }
            NoViableAltException nvae =
                new NoViableAltException(getDescription(), 18, _s, input);
            error(nvae);
            throw nvae;
        }
    }
 

}