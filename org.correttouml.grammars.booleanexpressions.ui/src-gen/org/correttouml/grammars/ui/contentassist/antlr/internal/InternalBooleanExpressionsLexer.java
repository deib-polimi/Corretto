package org.correttouml.grammars.ui.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.Lexer;


import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class InternalBooleanExpressionsLexer extends Lexer {
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
    public static final int EOF=-1;
    public static final int RULE_SL_COMMENT=9;
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

    public InternalBooleanExpressionsLexer() {;} 
    public InternalBooleanExpressionsLexer(CharStream input) {
        this(input, new RecognizerSharedState());
    }
    public InternalBooleanExpressionsLexer(CharStream input, RecognizerSharedState state) {
        super(input,state);

    }
    public String getGrammarFileName() { return "../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g"; }

    // $ANTLR start "T__12"
    public final void mT__12() throws RecognitionException {
        try {
            int _type = T__12;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:11:7: ( 'exit' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:11:9: 'exit'
            {
            match("exit"); 


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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:12:7: ( 'enter' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:12:9: 'enter'
            {
            match("enter"); 


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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:13:7: ( 'start' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:13:9: 'start'
            {
            match("start"); 


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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:14:7: ( 'end' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:14:9: 'end'
            {
            match("end"); 


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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:15:7: ( 'tick' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:15:9: 'tick'
            {
            match("tick"); 


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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:16:7: ( 'sig' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:16:9: 'sig'
            {
            match("sig"); 


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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:17:7: ( 'call' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:17:9: 'call'
            {
            match("call"); 


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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:18:7: ( 'send' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:18:9: 'send'
            {
            match("send"); 


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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:19:7: ( 'receive' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:19:9: 'receive'
            {
            match("receive"); 


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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:20:7: ( '!!' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:20:9: '!!'
            {
            match("!!"); 


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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:21:7: ( '||' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:21:9: '||'
            {
            match("||"); 


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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:22:7: ( '&&' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:22:9: '&&'
            {
            match("&&"); 


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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:23:7: ( '@' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:23:9: '@'
            {
            match('@'); 

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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:24:7: ( '-' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:24:9: '-'
            {
            match('-'); 

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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:25:7: ( '{' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:25:9: '{'
            {
            match('{'); 

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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:26:7: ( '}' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:26:9: '}'
            {
            match('}'); 

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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:27:7: ( '.' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:27:9: '.'
            {
            match('.'); 

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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:28:7: ( 'now' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:28:9: 'now'
            {
            match("now"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__29"

    // $ANTLR start "RULE_RELATIONS"
    public final void mRULE_RELATIONS() throws RecognitionException {
        try {
            int _type = RULE_RELATIONS;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1457:16: ( ( '<' | '>' | '==' | '<=' | '>=' | '!=' ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1457:18: ( '<' | '>' | '==' | '<=' | '>=' | '!=' )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1457:18: ( '<' | '>' | '==' | '<=' | '>=' | '!=' )
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
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1457:19: '<'
                    {
                    match('<'); 

                    }
                    break;
                case 2 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1457:23: '>'
                    {
                    match('>'); 

                    }
                    break;
                case 3 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1457:27: '=='
                    {
                    match("=="); 


                    }
                    break;
                case 4 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1457:32: '<='
                    {
                    match("<="); 


                    }
                    break;
                case 5 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1457:37: '>='
                    {
                    match(">="); 


                    }
                    break;
                case 6 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1457:42: '!='
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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1459:9: ( ( '^' )? ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )* )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1459:11: ( '^' )? ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1459:11: ( '^' )?
            int alt2=2;
            int LA2_0 = input.LA(1);

            if ( (LA2_0=='^') ) {
                alt2=1;
            }
            switch (alt2) {
                case 1 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1459:11: '^'
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

            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1459:40: ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
            loop3:
            do {
                int alt3=2;
                int LA3_0 = input.LA(1);

                if ( ((LA3_0>='0' && LA3_0<='9')||(LA3_0>='A' && LA3_0<='Z')||LA3_0=='_'||(LA3_0>='a' && LA3_0<='z')) ) {
                    alt3=1;
                }


                switch (alt3) {
            	case 1 :
            	    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:
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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1461:10: ( ( '0' .. '9' )+ )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1461:12: ( '0' .. '9' )+
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1461:12: ( '0' .. '9' )+
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
            	    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1461:13: '0' .. '9'
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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1463:13: ( ( '\"' ( '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | 'u' | '\"' | '\\'' | '\\\\' ) | ~ ( ( '\\\\' | '\"' ) ) )* '\"' | '\\'' ( '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | 'u' | '\"' | '\\'' | '\\\\' ) | ~ ( ( '\\\\' | '\\'' ) ) )* '\\'' ) )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1463:15: ( '\"' ( '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | 'u' | '\"' | '\\'' | '\\\\' ) | ~ ( ( '\\\\' | '\"' ) ) )* '\"' | '\\'' ( '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | 'u' | '\"' | '\\'' | '\\\\' ) | ~ ( ( '\\\\' | '\\'' ) ) )* '\\'' )
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1463:15: ( '\"' ( '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | 'u' | '\"' | '\\'' | '\\\\' ) | ~ ( ( '\\\\' | '\"' ) ) )* '\"' | '\\'' ( '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | 'u' | '\"' | '\\'' | '\\\\' ) | ~ ( ( '\\\\' | '\\'' ) ) )* '\\'' )
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
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1463:16: '\"' ( '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | 'u' | '\"' | '\\'' | '\\\\' ) | ~ ( ( '\\\\' | '\"' ) ) )* '\"'
                    {
                    match('\"'); 
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1463:20: ( '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | 'u' | '\"' | '\\'' | '\\\\' ) | ~ ( ( '\\\\' | '\"' ) ) )*
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
                    	    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1463:21: '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | 'u' | '\"' | '\\'' | '\\\\' )
                    	    {
                    	    match('\\'); 
                    	    if ( input.LA(1)=='\"'||input.LA(1)=='\''||input.LA(1)=='\\'||input.LA(1)=='b'||input.LA(1)=='f'||input.LA(1)=='n'||input.LA(1)=='r'||(input.LA(1)>='t' && input.LA(1)<='u') ) {
                    	        input.consume();

                    	    }
                    	    else {
                    	        MismatchedSetException mse = new MismatchedSetException(null,input);
                    	        recover(mse);
                    	        throw mse;}


                    	    }
                    	    break;
                    	case 2 :
                    	    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1463:66: ~ ( ( '\\\\' | '\"' ) )
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
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1463:86: '\\'' ( '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | 'u' | '\"' | '\\'' | '\\\\' ) | ~ ( ( '\\\\' | '\\'' ) ) )* '\\''
                    {
                    match('\''); 
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1463:91: ( '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | 'u' | '\"' | '\\'' | '\\\\' ) | ~ ( ( '\\\\' | '\\'' ) ) )*
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
                    	    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1463:92: '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | 'u' | '\"' | '\\'' | '\\\\' )
                    	    {
                    	    match('\\'); 
                    	    if ( input.LA(1)=='\"'||input.LA(1)=='\''||input.LA(1)=='\\'||input.LA(1)=='b'||input.LA(1)=='f'||input.LA(1)=='n'||input.LA(1)=='r'||(input.LA(1)>='t' && input.LA(1)<='u') ) {
                    	        input.consume();

                    	    }
                    	    else {
                    	        MismatchedSetException mse = new MismatchedSetException(null,input);
                    	        recover(mse);
                    	        throw mse;}


                    	    }
                    	    break;
                    	case 2 :
                    	    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1463:137: ~ ( ( '\\\\' | '\\'' ) )
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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1465:17: ( '/*' ( options {greedy=false; } : . )* '*/' )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1465:19: '/*' ( options {greedy=false; } : . )* '*/'
            {
            match("/*"); 

            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1465:24: ( options {greedy=false; } : . )*
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
            	    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1465:52: .
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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1467:17: ( '//' (~ ( ( '\\n' | '\\r' ) ) )* ( ( '\\r' )? '\\n' )? )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1467:19: '//' (~ ( ( '\\n' | '\\r' ) ) )* ( ( '\\r' )? '\\n' )?
            {
            match("//"); 

            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1467:24: (~ ( ( '\\n' | '\\r' ) ) )*
            loop9:
            do {
                int alt9=2;
                int LA9_0 = input.LA(1);

                if ( ((LA9_0>='\u0000' && LA9_0<='\t')||(LA9_0>='\u000B' && LA9_0<='\f')||(LA9_0>='\u000E' && LA9_0<='\uFFFF')) ) {
                    alt9=1;
                }


                switch (alt9) {
            	case 1 :
            	    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1467:24: ~ ( ( '\\n' | '\\r' ) )
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

            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1467:40: ( ( '\\r' )? '\\n' )?
            int alt11=2;
            int LA11_0 = input.LA(1);

            if ( (LA11_0=='\n'||LA11_0=='\r') ) {
                alt11=1;
            }
            switch (alt11) {
                case 1 :
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1467:41: ( '\\r' )? '\\n'
                    {
                    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1467:41: ( '\\r' )?
                    int alt10=2;
                    int LA10_0 = input.LA(1);

                    if ( (LA10_0=='\r') ) {
                        alt10=1;
                    }
                    switch (alt10) {
                        case 1 :
                            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1467:41: '\\r'
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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1469:9: ( ( ' ' | '\\t' | '\\r' | '\\n' )+ )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1469:11: ( ' ' | '\\t' | '\\r' | '\\n' )+
            {
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1469:11: ( ' ' | '\\t' | '\\r' | '\\n' )+
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
            	    // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:
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
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1471:16: ( . )
            // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1471:18: .
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
        // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:8: ( T__12 | T__13 | T__14 | T__15 | T__16 | T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | RULE_RELATIONS | RULE_ID | RULE_INT | RULE_STRING | RULE_ML_COMMENT | RULE_SL_COMMENT | RULE_WS | RULE_ANY_OTHER )
        int alt13=26;
        alt13 = dfa13.predict(input);
        switch (alt13) {
            case 1 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:10: T__12
                {
                mT__12(); 

                }
                break;
            case 2 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:16: T__13
                {
                mT__13(); 

                }
                break;
            case 3 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:22: T__14
                {
                mT__14(); 

                }
                break;
            case 4 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:28: T__15
                {
                mT__15(); 

                }
                break;
            case 5 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:34: T__16
                {
                mT__16(); 

                }
                break;
            case 6 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:40: T__17
                {
                mT__17(); 

                }
                break;
            case 7 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:46: T__18
                {
                mT__18(); 

                }
                break;
            case 8 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:52: T__19
                {
                mT__19(); 

                }
                break;
            case 9 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:58: T__20
                {
                mT__20(); 

                }
                break;
            case 10 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:64: T__21
                {
                mT__21(); 

                }
                break;
            case 11 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:70: T__22
                {
                mT__22(); 

                }
                break;
            case 12 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:76: T__23
                {
                mT__23(); 

                }
                break;
            case 13 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:82: T__24
                {
                mT__24(); 

                }
                break;
            case 14 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:88: T__25
                {
                mT__25(); 

                }
                break;
            case 15 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:94: T__26
                {
                mT__26(); 

                }
                break;
            case 16 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:100: T__27
                {
                mT__27(); 

                }
                break;
            case 17 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:106: T__28
                {
                mT__28(); 

                }
                break;
            case 18 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:112: T__29
                {
                mT__29(); 

                }
                break;
            case 19 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:118: RULE_RELATIONS
                {
                mRULE_RELATIONS(); 

                }
                break;
            case 20 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:133: RULE_ID
                {
                mRULE_ID(); 

                }
                break;
            case 21 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:141: RULE_INT
                {
                mRULE_INT(); 

                }
                break;
            case 22 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:150: RULE_STRING
                {
                mRULE_STRING(); 

                }
                break;
            case 23 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:162: RULE_ML_COMMENT
                {
                mRULE_ML_COMMENT(); 

                }
                break;
            case 24 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:178: RULE_SL_COMMENT
                {
                mRULE_SL_COMMENT(); 

                }
                break;
            case 25 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:194: RULE_WS
                {
                mRULE_WS(); 

                }
                break;
            case 26 :
                // ../org.correttouml.grammars.booleanexpressions.ui/src-gen/org/correttouml/grammars/ui/contentassist/antlr/internal/InternalBooleanExpressions.g:1:202: RULE_ANY_OTHER
                {
                mRULE_ANY_OTHER(); 

                }
                break;

        }

    }


    protected DFA13 dfa13 = new DFA13(this);
    static final String DFA13_eotS =
        "\1\uffff\5\34\3\31\5\uffff\1\34\2\uffff\2\31\2\uffff\3\31\2\uffff"+
        "\2\34\1\uffff\6\34\11\uffff\1\34\5\uffff\2\34\1\76\1\34\1\100\4"+
        "\34\1\105\1\106\1\34\1\uffff\1\34\1\uffff\1\111\1\112\1\113\1\34"+
        "\2\uffff\1\115\1\116\3\uffff\1\34\2\uffff\1\34\1\121\1\uffff";
    static final String DFA13_eofS =
        "\122\uffff";
    static final String DFA13_minS =
        "\1\0\1\156\1\145\1\151\1\141\1\145\1\41\1\174\1\46\5\uffff\1\157"+
        "\2\uffff\1\75\1\101\2\uffff\2\0\1\52\2\uffff\1\151\1\144\1\uffff"+
        "\1\141\1\147\1\156\1\143\1\154\1\143\11\uffff\1\167\5\uffff\1\164"+
        "\1\145\1\60\1\162\1\60\1\144\1\153\1\154\1\145\2\60\1\162\1\uffff"+
        "\1\164\1\uffff\3\60\1\151\2\uffff\2\60\3\uffff\1\166\2\uffff\1\145"+
        "\1\60\1\uffff";
    static final String DFA13_maxS =
        "\1\uffff\1\170\1\164\1\151\1\141\1\145\1\75\1\174\1\46\5\uffff\1"+
        "\157\2\uffff\1\75\1\172\2\uffff\2\uffff\1\57\2\uffff\1\151\1\164"+
        "\1\uffff\1\141\1\147\1\156\1\143\1\154\1\143\11\uffff\1\167\5\uffff"+
        "\1\164\1\145\1\172\1\162\1\172\1\144\1\153\1\154\1\145\2\172\1\162"+
        "\1\uffff\1\164\1\uffff\3\172\1\151\2\uffff\2\172\3\uffff\1\166\2"+
        "\uffff\1\145\1\172\1\uffff";
    static final String DFA13_acceptS =
        "\11\uffff\1\15\1\16\1\17\1\20\1\21\1\uffff\2\23\2\uffff\1\24\1\25"+
        "\3\uffff\1\31\1\32\2\uffff\1\24\6\uffff\1\12\1\23\1\13\1\14\1\15"+
        "\1\16\1\17\1\20\1\21\1\uffff\1\25\1\26\1\27\1\30\1\31\14\uffff\1"+
        "\4\1\uffff\1\6\4\uffff\1\22\1\1\2\uffff\1\10\1\5\1\7\1\uffff\1\2"+
        "\1\3\2\uffff\1\11";
    static final String DFA13_specialS =
        "\1\0\24\uffff\1\1\1\2\73\uffff}>";
    static final String[] DFA13_transitionS = {
            "\11\31\2\30\2\31\1\30\22\31\1\30\1\6\1\25\3\31\1\10\1\26\5\31"+
            "\1\12\1\15\1\27\12\24\2\31\1\17\1\21\1\20\1\31\1\11\32\23\3"+
            "\31\1\22\1\23\1\31\2\23\1\4\1\23\1\1\10\23\1\16\3\23\1\5\1\2"+
            "\1\3\6\23\1\13\1\7\1\14\uff82\31",
            "\1\33\11\uffff\1\32",
            "\1\37\3\uffff\1\36\12\uffff\1\35",
            "\1\40",
            "\1\41",
            "\1\42",
            "\1\43\33\uffff\1\44",
            "\1\45",
            "\1\46",
            "",
            "",
            "",
            "",
            "",
            "\1\54",
            "",
            "",
            "\1\44",
            "\32\34\4\uffff\1\34\1\uffff\32\34",
            "",
            "",
            "\0\56",
            "\0\56",
            "\1\57\4\uffff\1\60",
            "",
            "",
            "\1\62",
            "\1\64\17\uffff\1\63",
            "",
            "\1\65",
            "\1\66",
            "\1\67",
            "\1\70",
            "\1\71",
            "\1\72",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "\1\73",
            "",
            "",
            "",
            "",
            "",
            "\1\74",
            "\1\75",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "\1\77",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "\1\101",
            "\1\102",
            "\1\103",
            "\1\104",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "\1\107",
            "",
            "\1\110",
            "",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "\1\114",
            "",
            "",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "\12\34\7\uffff\32\34\4\uffff\1\34\1\uffff\32\34",
            "",
            "",
            "",
            "\1\117",
            "",
            "",
            "\1\120",
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
            return "1:1: Tokens : ( T__12 | T__13 | T__14 | T__15 | T__16 | T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | RULE_RELATIONS | RULE_ID | RULE_INT | RULE_STRING | RULE_ML_COMMENT | RULE_SL_COMMENT | RULE_WS | RULE_ANY_OTHER );";
        }
        public int specialStateTransition(int s, IntStream _input) throws NoViableAltException {
            IntStream input = _input;
        	int _s = s;
            switch ( s ) {
                    case 0 : 
                        int LA13_0 = input.LA(1);

                        s = -1;
                        if ( (LA13_0=='e') ) {s = 1;}

                        else if ( (LA13_0=='s') ) {s = 2;}

                        else if ( (LA13_0=='t') ) {s = 3;}

                        else if ( (LA13_0=='c') ) {s = 4;}

                        else if ( (LA13_0=='r') ) {s = 5;}

                        else if ( (LA13_0=='!') ) {s = 6;}

                        else if ( (LA13_0=='|') ) {s = 7;}

                        else if ( (LA13_0=='&') ) {s = 8;}

                        else if ( (LA13_0=='@') ) {s = 9;}

                        else if ( (LA13_0=='-') ) {s = 10;}

                        else if ( (LA13_0=='{') ) {s = 11;}

                        else if ( (LA13_0=='}') ) {s = 12;}

                        else if ( (LA13_0=='.') ) {s = 13;}

                        else if ( (LA13_0=='n') ) {s = 14;}

                        else if ( (LA13_0=='<') ) {s = 15;}

                        else if ( (LA13_0=='>') ) {s = 16;}

                        else if ( (LA13_0=='=') ) {s = 17;}

                        else if ( (LA13_0=='^') ) {s = 18;}

                        else if ( ((LA13_0>='A' && LA13_0<='Z')||LA13_0=='_'||(LA13_0>='a' && LA13_0<='b')||LA13_0=='d'||(LA13_0>='f' && LA13_0<='m')||(LA13_0>='o' && LA13_0<='q')||(LA13_0>='u' && LA13_0<='z')) ) {s = 19;}

                        else if ( ((LA13_0>='0' && LA13_0<='9')) ) {s = 20;}

                        else if ( (LA13_0=='\"') ) {s = 21;}

                        else if ( (LA13_0=='\'') ) {s = 22;}

                        else if ( (LA13_0=='/') ) {s = 23;}

                        else if ( ((LA13_0>='\t' && LA13_0<='\n')||LA13_0=='\r'||LA13_0==' ') ) {s = 24;}

                        else if ( ((LA13_0>='\u0000' && LA13_0<='\b')||(LA13_0>='\u000B' && LA13_0<='\f')||(LA13_0>='\u000E' && LA13_0<='\u001F')||(LA13_0>='#' && LA13_0<='%')||(LA13_0>='(' && LA13_0<=',')||(LA13_0>=':' && LA13_0<=';')||LA13_0=='?'||(LA13_0>='[' && LA13_0<=']')||LA13_0=='`'||(LA13_0>='~' && LA13_0<='\uFFFF')) ) {s = 25;}

                        if ( s>=0 ) return s;
                        break;
                    case 1 : 
                        int LA13_21 = input.LA(1);

                        s = -1;
                        if ( ((LA13_21>='\u0000' && LA13_21<='\uFFFF')) ) {s = 46;}

                        else s = 25;

                        if ( s>=0 ) return s;
                        break;
                    case 2 : 
                        int LA13_22 = input.LA(1);

                        s = -1;
                        if ( ((LA13_22>='\u0000' && LA13_22<='\uFFFF')) ) {s = 46;}

                        else s = 25;

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