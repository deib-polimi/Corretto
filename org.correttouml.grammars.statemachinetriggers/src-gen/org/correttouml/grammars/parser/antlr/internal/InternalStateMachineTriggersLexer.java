package org.correttouml.grammars.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;


import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class InternalStateMachineTriggersLexer extends Lexer {
    public static final int RULE_RELATIONS=4;
    public static final int RULE_STRING=7;
    public static final int RULE_SL_COMMENT=9;
    public static final int T__19=19;
    public static final int T__15=15;
    public static final int T__16=16;
    public static final int T__17=17;
    public static final int T__18=18;
    public static final int T__12=12;
    public static final int T__13=13;
    public static final int T__14=14;
    public static final int EOF=-1;
    public static final int RULE_ID=6;
    public static final int RULE_WS=10;
    public static final int RULE_ANY_OTHER=11;
    public static final int T__26=26;
    public static final int T__27=27;
    public static final int RULE_INT=5;
    public static final int T__22=22;
    public static final int RULE_ML_COMMENT=8;
    public static final int T__23=23;
    public static final int T__24=24;
    public static final int T__25=25;
    public static final int T__20=20;
    public static final int T__21=21;

    // delegates
    // delegators

    public InternalStateMachineTriggersLexer() {;} 
    public InternalStateMachineTriggersLexer(CharStream input) {
        this(input, new RecognizerSharedState());
    }
    public InternalStateMachineTriggersLexer(CharStream input, RecognizerSharedState state) {
        super(input,state);

    }
    public String getGrammarFileName() { return "InternalStateMachineTriggers.g"; }

    // $ANTLR start "T__12"
    public final void mT__12() throws RecognitionException {
        try {
            int _type = T__12;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalStateMachineTriggers.g:11:7: ( '@' )
            // InternalStateMachineTriggers.g:11:9: '@'
            {
            match('@'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__12"

    // $ANTLR start "T__13"
    public final void mT__13() throws RecognitionException {
        try {
            int _type = T__13;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalStateMachineTriggers.g:12:7: ( '-' )
            // InternalStateMachineTriggers.g:12:9: '-'
            {
            match('-'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__13"

    // $ANTLR start "T__14"
    public final void mT__14() throws RecognitionException {
        try {
            int _type = T__14;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalStateMachineTriggers.g:13:7: ( '.' )
            // InternalStateMachineTriggers.g:13:9: '.'
            {
            match('.'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__14"

    // $ANTLR start "T__15"
    public final void mT__15() throws RecognitionException {
        try {
            int _type = T__15;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalStateMachineTriggers.g:14:7: ( 'now' )
            // InternalStateMachineTriggers.g:14:9: 'now'
            {
            match("now"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__15"

    // $ANTLR start "T__16"
    public final void mT__16() throws RecognitionException {
        try {
            int _type = T__16;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalStateMachineTriggers.g:15:7: ( 'exit' )
            // InternalStateMachineTriggers.g:15:9: 'exit'
            {
            match("exit"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__16"

    // $ANTLR start "T__17"
    public final void mT__17() throws RecognitionException {
        try {
            int _type = T__17;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalStateMachineTriggers.g:16:7: ( 'enter' )
            // InternalStateMachineTriggers.g:16:9: 'enter'
            {
            match("enter"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__17"

    // $ANTLR start "T__18"
    public final void mT__18() throws RecognitionException {
        try {
            int _type = T__18;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalStateMachineTriggers.g:17:7: ( 'start' )
            // InternalStateMachineTriggers.g:17:9: 'start'
            {
            match("start"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__18"

    // $ANTLR start "T__19"
    public final void mT__19() throws RecognitionException {
        try {
            int _type = T__19;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalStateMachineTriggers.g:18:7: ( 'end' )
            // InternalStateMachineTriggers.g:18:9: 'end'
            {
            match("end"); 


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
            // InternalStateMachineTriggers.g:19:7: ( 'tick' )
            // InternalStateMachineTriggers.g:19:9: 'tick'
            {
            match("tick"); 


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
            // InternalStateMachineTriggers.g:20:7: ( 'sig' )
            // InternalStateMachineTriggers.g:20:9: 'sig'
            {
            match("sig"); 


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
            // InternalStateMachineTriggers.g:21:7: ( 'call' )
            // InternalStateMachineTriggers.g:21:9: 'call'
            {
            match("call"); 


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
            // InternalStateMachineTriggers.g:22:7: ( 'reply' )
            // InternalStateMachineTriggers.g:22:9: 'reply'
            {
            match("reply"); 


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
            // InternalStateMachineTriggers.g:23:7: ( 'adstart' )
            // InternalStateMachineTriggers.g:23:9: 'adstart'
            {
            match("adstart"); 


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
            // InternalStateMachineTriggers.g:24:7: ( 'adend' )
            // InternalStateMachineTriggers.g:24:9: 'adend'
            {
            match("adend"); 


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
            // InternalStateMachineTriggers.g:25:7: ( 'iodstart' )
            // InternalStateMachineTriggers.g:25:9: 'iodstart'
            {
            match("iodstart"); 


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
            // InternalStateMachineTriggers.g:26:7: ( 'iodend' )
            // InternalStateMachineTriggers.g:26:9: 'iodend'
            {
            match("iodend"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__27"

    // $ANTLR start "RULE_RELATIONS"
    public final void mRULE_RELATIONS() throws RecognitionException {
        try {
            int _type = RULE_RELATIONS;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalStateMachineTriggers.g:491:16: ( ( '<' | '>' | '==' | '<=' | '>=' | '!=' ) )
            // InternalStateMachineTriggers.g:491:18: ( '<' | '>' | '==' | '<=' | '>=' | '!=' )
            {
            // InternalStateMachineTriggers.g:491:18: ( '<' | '>' | '==' | '<=' | '>=' | '!=' )
            int alt1=6;
            switch ( input.LA(1) ) {
            case '<':
                {
                int LA1_1 = input.LA(2);

                if ( (LA1_1=='=') ) {
                    alt1=4;
                }
                else {
                    alt1=1;}
                }
                break;
            case '>':
                {
                int LA1_2 = input.LA(2);

                if ( (LA1_2=='=') ) {
                    alt1=5;
                }
                else {
                    alt1=2;}
                }
                break;
            case '=':
                {
                alt1=3;
                }
                break;
            case '!':
                {
                alt1=6;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 1, 0, input);

                throw nvae;
            }

            switch (alt1) {
                case 1 :
                    // InternalStateMachineTriggers.g:491:19: '<'
                    {
                    match('<'); 

                    }
                    break;
                case 2 :
                    // InternalStateMachineTriggers.g:491:23: '>'
                    {
                    match('>'); 

                    }
                    break;
                case 3 :
                    // InternalStateMachineTriggers.g:491:27: '=='
                    {
                    match("=="); 


                    }
                    break;
                case 4 :
                    // InternalStateMachineTriggers.g:491:32: '<='
                    {
                    match("<="); 


                    }
                    break;
                case 5 :
                    // InternalStateMachineTriggers.g:491:37: '>='
                    {
                    match(">="); 


                    }
                    break;
                case 6 :
                    // InternalStateMachineTriggers.g:491:42: '!='
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
    // $ANTLR end "RULE_RELATIONS"

    // $ANTLR start "RULE_ID"
    public final void mRULE_ID() throws RecognitionException {
        try {
            int _type = RULE_ID;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalStateMachineTriggers.g:493:9: ( ( '^' )? ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )* )
            // InternalStateMachineTriggers.g:493:11: ( '^' )? ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
            {
            // InternalStateMachineTriggers.g:493:11: ( '^' )?
            int alt2=2;
            int LA2_0 = input.LA(1);

            if ( (LA2_0=='^') ) {
                alt2=1;
            }
            switch (alt2) {
                case 1 :
                    // InternalStateMachineTriggers.g:493:11: '^'
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

            // InternalStateMachineTriggers.g:493:40: ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
            loop3:
            do {
                int alt3=2;
                int LA3_0 = input.LA(1);

                if ( ((LA3_0>='0' && LA3_0<='9')||(LA3_0>='A' && LA3_0<='Z')||LA3_0=='_'||(LA3_0>='a' && LA3_0<='z')) ) {
                    alt3=1;
                }


                switch (alt3) {
            	case 1 :
            	    // InternalStateMachineTriggers.g:
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
            	    break loop3;
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
            // InternalStateMachineTriggers.g:495:10: ( ( '0' .. '9' )+ )
            // InternalStateMachineTriggers.g:495:12: ( '0' .. '9' )+
            {
            // InternalStateMachineTriggers.g:495:12: ( '0' .. '9' )+
            int cnt4=0;
            loop4:
            do {
                int alt4=2;
                int LA4_0 = input.LA(1);

                if ( ((LA4_0>='0' && LA4_0<='9')) ) {
                    alt4=1;
                }


                switch (alt4) {
            	case 1 :
            	    // InternalStateMachineTriggers.g:495:13: '0' .. '9'
            	    {
            	    matchRange('0','9'); 

            	    }
            	    break;

            	default :
            	    if ( cnt4 >= 1 ) break loop4;
                        EarlyExitException eee =
                            new EarlyExitException(4, input);
                        throw eee;
                }
                cnt4++;
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
            // InternalStateMachineTriggers.g:497:13: ( ( '\"' ( '\\\\' . | ~ ( ( '\\\\' | '\"' ) ) )* '\"' | '\\'' ( '\\\\' . | ~ ( ( '\\\\' | '\\'' ) ) )* '\\'' ) )
            // InternalStateMachineTriggers.g:497:15: ( '\"' ( '\\\\' . | ~ ( ( '\\\\' | '\"' ) ) )* '\"' | '\\'' ( '\\\\' . | ~ ( ( '\\\\' | '\\'' ) ) )* '\\'' )
            {
            // InternalStateMachineTriggers.g:497:15: ( '\"' ( '\\\\' . | ~ ( ( '\\\\' | '\"' ) ) )* '\"' | '\\'' ( '\\\\' . | ~ ( ( '\\\\' | '\\'' ) ) )* '\\'' )
            int alt7=2;
            int LA7_0 = input.LA(1);

            if ( (LA7_0=='\"') ) {
                alt7=1;
            }
            else if ( (LA7_0=='\'') ) {
                alt7=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 7, 0, input);

                throw nvae;
            }
            switch (alt7) {
                case 1 :
                    // InternalStateMachineTriggers.g:497:16: '\"' ( '\\\\' . | ~ ( ( '\\\\' | '\"' ) ) )* '\"'
                    {
                    match('\"'); 
                    // InternalStateMachineTriggers.g:497:20: ( '\\\\' . | ~ ( ( '\\\\' | '\"' ) ) )*
                    loop5:
                    do {
                        int alt5=3;
                        int LA5_0 = input.LA(1);

                        if ( (LA5_0=='\\') ) {
                            alt5=1;
                        }
                        else if ( ((LA5_0>='\u0000' && LA5_0<='!')||(LA5_0>='#' && LA5_0<='[')||(LA5_0>=']' && LA5_0<='\uFFFF')) ) {
                            alt5=2;
                        }


                        switch (alt5) {
                    	case 1 :
                    	    // InternalStateMachineTriggers.g:497:21: '\\\\' .
                    	    {
                    	    match('\\'); 
                    	    matchAny(); 

                    	    }
                    	    break;
                    	case 2 :
                    	    // InternalStateMachineTriggers.g:497:28: ~ ( ( '\\\\' | '\"' ) )
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
                    	    break loop5;
                        }
                    } while (true);

                    match('\"'); 

                    }
                    break;
                case 2 :
                    // InternalStateMachineTriggers.g:497:48: '\\'' ( '\\\\' . | ~ ( ( '\\\\' | '\\'' ) ) )* '\\''
                    {
                    match('\''); 
                    // InternalStateMachineTriggers.g:497:53: ( '\\\\' . | ~ ( ( '\\\\' | '\\'' ) ) )*
                    loop6:
                    do {
                        int alt6=3;
                        int LA6_0 = input.LA(1);

                        if ( (LA6_0=='\\') ) {
                            alt6=1;
                        }
                        else if ( ((LA6_0>='\u0000' && LA6_0<='&')||(LA6_0>='(' && LA6_0<='[')||(LA6_0>=']' && LA6_0<='\uFFFF')) ) {
                            alt6=2;
                        }


                        switch (alt6) {
                    	case 1 :
                    	    // InternalStateMachineTriggers.g:497:54: '\\\\' .
                    	    {
                    	    match('\\'); 
                    	    matchAny(); 

                    	    }
                    	    break;
                    	case 2 :
                    	    // InternalStateMachineTriggers.g:497:61: ~ ( ( '\\\\' | '\\'' ) )
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
                    	    break loop6;
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
            // InternalStateMachineTriggers.g:499:17: ( '/*' ( options {greedy=false; } : . )* '*/' )
            // InternalStateMachineTriggers.g:499:19: '/*' ( options {greedy=false; } : . )* '*/'
            {
            match("/*"); 

            // InternalStateMachineTriggers.g:499:24: ( options {greedy=false; } : . )*
            loop8:
            do {
                int alt8=2;
                int LA8_0 = input.LA(1);

                if ( (LA8_0=='*') ) {
                    int LA8_1 = input.LA(2);

                    if ( (LA8_1=='/') ) {
                        alt8=2;
                    }
                    else if ( ((LA8_1>='\u0000' && LA8_1<='.')||(LA8_1>='0' && LA8_1<='\uFFFF')) ) {
                        alt8=1;
                    }


                }
                else if ( ((LA8_0>='\u0000' && LA8_0<=')')||(LA8_0>='+' && LA8_0<='\uFFFF')) ) {
                    alt8=1;
                }


                switch (alt8) {
            	case 1 :
            	    // InternalStateMachineTriggers.g:499:52: .
            	    {
            	    matchAny(); 

            	    }
            	    break;

            	default :
            	    break loop8;
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
            // InternalStateMachineTriggers.g:501:17: ( '//' (~ ( ( '\\n' | '\\r' ) ) )* ( ( '\\r' )? '\\n' )? )
            // InternalStateMachineTriggers.g:501:19: '//' (~ ( ( '\\n' | '\\r' ) ) )* ( ( '\\r' )? '\\n' )?
            {
            match("//"); 

            // InternalStateMachineTriggers.g:501:24: (~ ( ( '\\n' | '\\r' ) ) )*
            loop9:
            do {
                int alt9=2;
                int LA9_0 = input.LA(1);

                if ( ((LA9_0>='\u0000' && LA9_0<='\t')||(LA9_0>='\u000B' && LA9_0<='\f')||(LA9_0>='\u000E' && LA9_0<='\uFFFF')) ) {
                    alt9=1;
                }


                switch (alt9) {
            	case 1 :
            	    // InternalStateMachineTriggers.g:501:24: ~ ( ( '\\n' | '\\r' ) )
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
            	    break loop9;
                }
            } while (true);

            // InternalStateMachineTriggers.g:501:40: ( ( '\\r' )? '\\n' )?
            int alt11=2;
            int LA11_0 = input.LA(1);

            if ( (LA11_0=='\n'||LA11_0=='\r') ) {
                alt11=1;
            }
            switch (alt11) {
                case 1 :
                    // InternalStateMachineTriggers.g:501:41: ( '\\r' )? '\\n'
                    {
                    // InternalStateMachineTriggers.g:501:41: ( '\\r' )?
                    int alt10=2;
                    int LA10_0 = input.LA(1);

                    if ( (LA10_0=='\r') ) {
                        alt10=1;
                    }
                    switch (alt10) {
                        case 1 :
                            // InternalStateMachineTriggers.g:501:41: '\\r'
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
            // InternalStateMachineTriggers.g:503:9: ( ( ' ' | '\\t' | '\\r' | '\\n' )+ )
            // InternalStateMachineTriggers.g:503:11: ( ' ' | '\\t' | '\\r' | '\\n' )+
            {
            // InternalStateMachineTriggers.g:503:11: ( ' ' | '\\t' | '\\r' | '\\n' )+
            int cnt12=0;
            loop12:
            do {
                int alt12=2;
                int LA12_0 = input.LA(1);

                if ( ((LA12_0>='\t' && LA12_0<='\n')||LA12_0=='\r'||LA12_0==' ') ) {
                    alt12=1;
                }


                switch (alt12) {
            	case 1 :
            	    // InternalStateMachineTriggers.g:
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
            	    if ( cnt12 >= 1 ) break loop12;
                        EarlyExitException eee =
                            new EarlyExitException(12, input);
                        throw eee;
                }
                cnt12++;
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
            // InternalStateMachineTriggers.g:505:16: ( . )
            // InternalStateMachineTriggers.g:505:18: .
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
        // InternalStateMachineTriggers.g:1:8: ( T__12 | T__13 | T__14 | T__15 | T__16 | T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | RULE_RELATIONS | RULE_ID | RULE_INT | RULE_STRING | RULE_ML_COMMENT | RULE_SL_COMMENT | RULE_WS | RULE_ANY_OTHER )
        int alt13=24;
        alt13 = dfa13.predict(input);
        switch (alt13) {
            case 1 :
                // InternalStateMachineTriggers.g:1:10: T__12
                {
                mT__12(); 

                }
                break;
            case 2 :
                // InternalStateMachineTriggers.g:1:16: T__13
                {
                mT__13(); 

                }
                break;
            case 3 :
                // InternalStateMachineTriggers.g:1:22: T__14
                {
                mT__14(); 

                }
                break;
            case 4 :
                // InternalStateMachineTriggers.g:1:28: T__15
                {
                mT__15(); 

                }
                break;
            case 5 :
                // InternalStateMachineTriggers.g:1:34: T__16
                {
                mT__16(); 

                }
                break;
            case 6 :
                // InternalStateMachineTriggers.g:1:40: T__17
                {
                mT__17(); 

                }
                break;
            case 7 :
                // InternalStateMachineTriggers.g:1:46: T__18
                {
                mT__18(); 

                }
                break;
            case 8 :
                // InternalStateMachineTriggers.g:1:52: T__19
                {
                mT__19(); 

                }
                break;
            case 9 :
                // InternalStateMachineTriggers.g:1:58: T__20
                {
                mT__20(); 

                }
                break;
            case 10 :
                // InternalStateMachineTriggers.g:1:64: T__21
                {
                mT__21(); 

                }
                break;
            case 11 :
                // InternalStateMachineTriggers.g:1:70: T__22
                {
                mT__22(); 

                }
                break;
            case 12 :
                // InternalStateMachineTriggers.g:1:76: T__23
                {
                mT__23(); 

                }
                break;
            case 13 :
                // InternalStateMachineTriggers.g:1:82: T__24
                {
                mT__24(); 

                }
                break;
            case 14 :
                // InternalStateMachineTriggers.g:1:88: T__25
                {
                mT__25(); 

                }
                break;
            case 15 :
                // InternalStateMachineTriggers.g:1:94: T__26
                {
                mT__26(); 

                }
                break;
            case 16 :
                // InternalStateMachineTriggers.g:1:100: T__27
                {
                mT__27(); 

                }
                break;
            case 17 :
                // InternalStateMachineTriggers.g:1:106: RULE_RELATIONS
                {
                mRULE_RELATIONS(); 

                }
                break;
            case 18 :
                // InternalStateMachineTriggers.g:1:121: RULE_ID
                {
                mRULE_ID(); 

                }
                break;
            case 19 :
                // InternalStateMachineTriggers.g:1:129: RULE_INT
                {
                mRULE_INT(); 

                }
                break;
            case 20 :
                // InternalStateMachineTriggers.g:1:138: RULE_STRING
                {
                mRULE_STRING(); 

                }
                break;
            case 21 :
                // InternalStateMachineTriggers.g:1:150: RULE_ML_COMMENT
                {
                mRULE_ML_COMMENT(); 

                }
                break;
            case 22 :
                // InternalStateMachineTriggers.g:1:166: RULE_SL_COMMENT
                {
                mRULE_SL_COMMENT(); 

                }
                break;
            case 23 :
                // InternalStateMachineTriggers.g:1:182: RULE_WS
                {
                mRULE_WS(); 

                }
                break;
            case 24 :
                // InternalStateMachineTriggers.g:1:190: RULE_ANY_OTHER
                {
                mRULE_ANY_OTHER(); 

                }
                break;

        }

    }


    protected DFA13 dfa13 = new DFA13(this);
    static final String DFA13_eotS =
        "\4\uffff\10\34\2\uffff\3\27\2\uffff\3\27\5\uffff\1\34\1\uffff\11\34\6\uffff\1\70\2\34\1\73\1\34\1\75\6\34\1\uffff\1\105\1\34\1\uffff\1\34\1\uffff\1\110\1\111\5\34\1\uffff\1\117\1\120\2\uffff\1\121\1\34\1\123\2\34\3\uffff\1\34\1\uffff\1\34\1\130\1\131\1\34\2\uffff\1\133\1\uffff";
    static final String DFA13_eofS =
        "\134\uffff";
    static final String DFA13_minS =
        "\1\0\3\uffff\1\157\1\156\2\151\1\141\1\145\1\144\1\157\2\uffff\2\75\1\101\2\uffff\2\0\1\52\5\uffff\1\167\1\uffff\1\151\1\144\1\141\1\147\1\143\1\154\1\160\1\145\1\144\6\uffff\1\60\1\164\1\145\1\60\1\162\1\60\1\153\2\154\1\164\1\156\1\145\1\uffff\1\60\1\162\1\uffff\1\164\1\uffff\2\60\1\171\1\141\1\144\1\164\1\156\1\uffff\2\60\2\uffff\1\60\1\162\1\60\1\141\1\144\3\uffff\1\164\1\uffff\1\162\2\60\1\164\2\uffff\1\60\1\uffff";
    static final String DFA13_maxS =
        "\1\uffff\3\uffff\1\157\1\170\1\164\1\151\1\141\1\145\1\144\1\157\2\uffff\2\75\1\172\2\uffff\2\uffff\1\57\5\uffff\1\167\1\uffff\1\151\1\164\1\141\1\147\1\143\1\154\1\160\1\163\1\144\6\uffff\1\172\1\164\1\145\1\172\1\162\1\172\1\153\2\154\1\164\1\156\1\163\1\uffff\1\172\1\162\1\uffff\1\164\1\uffff\2\172\1\171\1\141\1\144\1\164\1\156\1\uffff\2\172\2\uffff\1\172\1\162\1\172\1\141\1\144\3\uffff\1\164\1\uffff\1\162\2\172\1\164\2\uffff\1\172\1\uffff";
    static final String DFA13_acceptS =
        "\1\uffff\1\1\1\2\1\3\10\uffff\2\21\3\uffff\1\22\1\23\3\uffff\1\27\1\30\1\1\1\2\1\3\1\uffff\1\22\11\uffff\1\21\1\23\1\24\1\25\1\26\1\27\14\uffff\1\4\2\uffff\1\10\1\uffff\1\12\7\uffff\1\5\2\uffff\1\11\1\13\5\uffff\1\6\1\7\1\14\1\uffff\1\16\4\uffff\1\20\1\15\1\uffff\1\17";
    static final String DFA13_specialS =
        "\1\1\22\uffff\1\2\1\0\107\uffff}>";
    static final String[] DFA13_transitionS = {
            "\11\27\2\26\2\27\1\26\22\27\1\26\1\17\1\23\4\27\1\24\5\27\1\2\1\3\1\25\12\22\2\27\1\14\1\16\1\15\1\27\1\1\32\21\3\27\1\20\1\21\1\27\1\12\1\21\1\10\1\21\1\5\3\21\1\13\4\21\1\4\3\21\1\11\1\6\1\7\6\21\uff85\27",
            "",
            "",
            "",
            "\1\33",
            "\1\36\11\uffff\1\35",
            "\1\40\12\uffff\1\37",
            "\1\41",
            "\1\42",
            "\1\43",
            "\1\44",
            "\1\45",
            "",
            "",
            "\1\46",
            "\1\46",
            "\32\34\4\uffff\1\34\1\uffff\32\34",
            "",
            "",
            "\0\50",
            "\0\50",
            "\1\51\4\uffff\1\52",
            "",
            "",
            "",
            "",
            "",
            "\1\54",
            "",
            "\1\55",
            "\1\57\17\uffff\1\56",
            "\1\60",
            "\1\61",
            "\1\62",
            "\1\63",
            "\1\64",
            "\1\66\15\uffff\1\65",
            "\1\67",
            "",
            "",
            "",
            "",
            "",
            "",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "\1\71",
            "\1\72",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "\1\74",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "\1\76",
            "\1\77",
            "\1\100",
            "\1\101",
            "\1\102",
            "\1\104\15\uffff\1\103",
            "",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "\1\106",
            "",
            "\1\107",
            "",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "\1\112",
            "\1\113",
            "\1\114",
            "\1\115",
            "\1\116",
            "",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "",
            "",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "\1\122",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "\1\124",
            "\1\125",
            "",
            "",
            "",
            "\1\126",
            "",
            "\1\127",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "\1\132",
            "",
            "",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            ""
    };

    static final short[] DFA13_eot = DFA.unpackEncodedString(DFA13_eotS);
    static final short[] DFA13_eof = DFA.unpackEncodedString(DFA13_eofS);
    static final char[] DFA13_min = DFA.unpackEncodedStringToUnsignedChars(DFA13_minS);
    static final char[] DFA13_max = DFA.unpackEncodedStringToUnsignedChars(DFA13_maxS);
    static final short[] DFA13_accept = DFA.unpackEncodedString(DFA13_acceptS);
    static final short[] DFA13_special = DFA.unpackEncodedString(DFA13_specialS);
    static final short[][] DFA13_transition;

    static {
        int numStates = DFA13_transitionS.length;
        DFA13_transition = new short[numStates][];
        for (int i=0; i<numStates; i++) {
            DFA13_transition[i] = DFA.unpackEncodedString(DFA13_transitionS[i]);
        }
    }

    class DFA13 extends DFA {

        public DFA13(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 13;
            this.eot = DFA13_eot;
            this.eof = DFA13_eof;
            this.min = DFA13_min;
            this.max = DFA13_max;
            this.accept = DFA13_accept;
            this.special = DFA13_special;
            this.transition = DFA13_transition;
        }
        public String getDescription() {
            return "1:1: Tokens : ( T__12 | T__13 | T__14 | T__15 | T__16 | T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | RULE_RELATIONS | RULE_ID | RULE_INT | RULE_STRING | RULE_ML_COMMENT | RULE_SL_COMMENT | RULE_WS | RULE_ANY_OTHER );";
        }
        public int specialStateTransition(int s, IntStream _input) throws NoViableAltException {
            IntStream input = _input;
        	int _s = s;
            switch ( s ) {
                    case 0 : 
                        int LA13_20 = input.LA(1);

                        s = -1;
                        if ( ((LA13_20>='\u0000' && LA13_20<='\uFFFF')) ) {s = 40;}

                        else s = 23;

                        if ( s>=0 ) return s;
                        break;
                    case 1 : 
                        int LA13_0 = input.LA(1);

                        s = -1;
                        if ( (LA13_0=='@') ) {s = 1;}

                        else if ( (LA13_0=='-') ) {s = 2;}

                        else if ( (LA13_0=='.') ) {s = 3;}

                        else if ( (LA13_0=='n') ) {s = 4;}

                        else if ( (LA13_0=='e') ) {s = 5;}

                        else if ( (LA13_0=='s') ) {s = 6;}

                        else if ( (LA13_0=='t') ) {s = 7;}

                        else if ( (LA13_0=='c') ) {s = 8;}

                        else if ( (LA13_0=='r') ) {s = 9;}

                        else if ( (LA13_0=='a') ) {s = 10;}

                        else if ( (LA13_0=='i') ) {s = 11;}

                        else if ( (LA13_0=='<') ) {s = 12;}

                        else if ( (LA13_0=='>') ) {s = 13;}

                        else if ( (LA13_0=='=') ) {s = 14;}

                        else if ( (LA13_0=='!') ) {s = 15;}

                        else if ( (LA13_0=='^') ) {s = 16;}

                        else if ( ((LA13_0>='A' && LA13_0<='Z')||LA13_0=='_'||LA13_0=='b'||LA13_0=='d'||(LA13_0>='f' && LA13_0<='h')||(LA13_0>='j' && LA13_0<='m')||(LA13_0>='o' && LA13_0<='q')||(LA13_0>='u' && LA13_0<='z')) ) {s = 17;}

                        else if ( ((LA13_0>='0' && LA13_0<='9')) ) {s = 18;}

                        else if ( (LA13_0=='\"') ) {s = 19;}

                        else if ( (LA13_0=='\'') ) {s = 20;}

                        else if ( (LA13_0=='/') ) {s = 21;}

                        else if ( ((LA13_0>='\t' && LA13_0<='\n')||LA13_0=='\r'||LA13_0==' ') ) {s = 22;}

                        else if ( ((LA13_0>='\u0000' && LA13_0<='\b')||(LA13_0>='\u000B' && LA13_0<='\f')||(LA13_0>='\u000E' && LA13_0<='\u001F')||(LA13_0>='#' && LA13_0<='&')||(LA13_0>='(' && LA13_0<=',')||(LA13_0>=':' && LA13_0<=';')||LA13_0=='?'||(LA13_0>='[' && LA13_0<=']')||LA13_0=='`'||(LA13_0>='{' && LA13_0<='\uFFFF')) ) {s = 23;}

                        if ( s>=0 ) return s;
                        break;
                    case 2 : 
                        int LA13_19 = input.LA(1);

                        s = -1;
                        if ( ((LA13_19>='\u0000' && LA13_19<='\uFFFF')) ) {s = 40;}

                        else s = 23;

                        if ( s>=0 ) return s;
                        break;
            }
            NoViableAltException nvae =
                new NoViableAltException(getDescription(), 13, _s, input);
            error(nvae);
            throw nvae;
        }
    }
 

}