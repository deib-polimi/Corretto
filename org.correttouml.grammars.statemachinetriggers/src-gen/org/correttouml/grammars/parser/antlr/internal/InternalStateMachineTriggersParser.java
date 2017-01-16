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
import org.correttouml.grammars.services.StateMachineTriggersGrammarAccess;



import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class InternalStateMachineTriggersParser extends AbstractInternalAntlrParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_RELATIONS", "RULE_INT", "RULE_ID", "RULE_STRING", "RULE_ML_COMMENT", "RULE_SL_COMMENT", "RULE_WS", "RULE_ANY_OTHER", "'@'", "'-'", "'.'", "'now'", "'exit'", "'enter'", "'start'", "'end'", "'tick'", "'sig'", "'call'", "'reply'", "'adstart'", "'adend'", "'iodstart'", "'iodend'"
    };
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


        public InternalStateMachineTriggersParser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public InternalStateMachineTriggersParser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        

    public String[] getTokenNames() { return InternalStateMachineTriggersParser.tokenNames; }
    public String getGrammarFileName() { return "InternalStateMachineTriggers.g"; }



     	private StateMachineTriggersGrammarAccess grammarAccess;
     	
        public InternalStateMachineTriggersParser(TokenStream input, StateMachineTriggersGrammarAccess grammarAccess) {
            this(input);
            this.grammarAccess = grammarAccess;
            registerRules(grammarAccess.getGrammar());
        }
        
        @Override
        protected String getFirstRuleName() {
        	return "Model";	
       	}
       	
       	@Override
       	protected StateMachineTriggersGrammarAccess getGrammarAccess() {
       		return grammarAccess;
       	}



    // $ANTLR start "entryRuleModel"
    // InternalStateMachineTriggers.g:67:1: entryRuleModel returns [EObject current=null] : iv_ruleModel= ruleModel EOF ;
    public final EObject entryRuleModel() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleModel = null;


        try {
            // InternalStateMachineTriggers.g:68:2: (iv_ruleModel= ruleModel EOF )
            // InternalStateMachineTriggers.g:69:2: iv_ruleModel= ruleModel EOF
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
    // InternalStateMachineTriggers.g:76:1: ruleModel returns [EObject current=null] : ( (lv_trigger_0_0= ruleTrigger ) ) ;
    public final EObject ruleModel() throws RecognitionException {
        EObject current = null;

        EObject lv_trigger_0_0 = null;


         enterRule(); 
            
        try {
            // InternalStateMachineTriggers.g:79:28: ( ( (lv_trigger_0_0= ruleTrigger ) ) )
            // InternalStateMachineTriggers.g:80:1: ( (lv_trigger_0_0= ruleTrigger ) )
            {
            // InternalStateMachineTriggers.g:80:1: ( (lv_trigger_0_0= ruleTrigger ) )
            // InternalStateMachineTriggers.g:81:1: (lv_trigger_0_0= ruleTrigger )
            {
            // InternalStateMachineTriggers.g:81:1: (lv_trigger_0_0= ruleTrigger )
            // InternalStateMachineTriggers.g:82:3: lv_trigger_0_0= ruleTrigger
            {
             
            	        newCompositeNode(grammarAccess.getModelAccess().getTriggerTriggerParserRuleCall_0()); 
            	    
            pushFollow(FOLLOW_2);
            lv_trigger_0_0=ruleTrigger();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getModelRule());
            	        }
                   		set(
                   			current, 
                   			"trigger",
                    		lv_trigger_0_0, 
                    		"org.correttouml.grammars.StateMachineTriggers.Trigger");
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


    // $ANTLR start "entryRuleTrigger"
    // InternalStateMachineTriggers.g:106:1: entryRuleTrigger returns [EObject current=null] : iv_ruleTrigger= ruleTrigger EOF ;
    public final EObject entryRuleTrigger() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleTrigger = null;


        try {
            // InternalStateMachineTriggers.g:107:2: (iv_ruleTrigger= ruleTrigger EOF )
            // InternalStateMachineTriggers.g:108:2: iv_ruleTrigger= ruleTrigger EOF
            {
             newCompositeNode(grammarAccess.getTriggerRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleTrigger=ruleTrigger();

            state._fsp--;

             current =iv_ruleTrigger; 
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
    // $ANTLR end "entryRuleTrigger"


    // $ANTLR start "ruleTrigger"
    // InternalStateMachineTriggers.g:115:1: ruleTrigger returns [EObject current=null] : ( ( (lv_left_0_0= ruleLeft ) ) ( (lv_right_1_0= ruleRight ) )? ) ;
    public final EObject ruleTrigger() throws RecognitionException {
        EObject current = null;

        EObject lv_left_0_0 = null;

        EObject lv_right_1_0 = null;


         enterRule(); 
            
        try {
            // InternalStateMachineTriggers.g:118:28: ( ( ( (lv_left_0_0= ruleLeft ) ) ( (lv_right_1_0= ruleRight ) )? ) )
            // InternalStateMachineTriggers.g:119:1: ( ( (lv_left_0_0= ruleLeft ) ) ( (lv_right_1_0= ruleRight ) )? )
            {
            // InternalStateMachineTriggers.g:119:1: ( ( (lv_left_0_0= ruleLeft ) ) ( (lv_right_1_0= ruleRight ) )? )
            // InternalStateMachineTriggers.g:119:2: ( (lv_left_0_0= ruleLeft ) ) ( (lv_right_1_0= ruleRight ) )?
            {
            // InternalStateMachineTriggers.g:119:2: ( (lv_left_0_0= ruleLeft ) )
            // InternalStateMachineTriggers.g:120:1: (lv_left_0_0= ruleLeft )
            {
            // InternalStateMachineTriggers.g:120:1: (lv_left_0_0= ruleLeft )
            // InternalStateMachineTriggers.g:121:3: lv_left_0_0= ruleLeft
            {
             
            	        newCompositeNode(grammarAccess.getTriggerAccess().getLeftLeftParserRuleCall_0_0()); 
            	    
            pushFollow(FOLLOW_3);
            lv_left_0_0=ruleLeft();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getTriggerRule());
            	        }
                   		set(
                   			current, 
                   			"left",
                    		lv_left_0_0, 
                    		"org.correttouml.grammars.StateMachineTriggers.Left");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            // InternalStateMachineTriggers.g:137:2: ( (lv_right_1_0= ruleRight ) )?
            int alt1=2;
            int LA1_0 = input.LA(1);

            if ( (LA1_0==13) ) {
                alt1=1;
            }
            switch (alt1) {
                case 1 :
                    // InternalStateMachineTriggers.g:138:1: (lv_right_1_0= ruleRight )
                    {
                    // InternalStateMachineTriggers.g:138:1: (lv_right_1_0= ruleRight )
                    // InternalStateMachineTriggers.g:139:3: lv_right_1_0= ruleRight
                    {
                     
                    	        newCompositeNode(grammarAccess.getTriggerAccess().getRightRightParserRuleCall_1_0()); 
                    	    
                    pushFollow(FOLLOW_2);
                    lv_right_1_0=ruleRight();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getTriggerRule());
                    	        }
                           		set(
                           			current, 
                           			"right",
                            		lv_right_1_0, 
                            		"org.correttouml.grammars.StateMachineTriggers.Right");
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
    // $ANTLR end "ruleTrigger"


    // $ANTLR start "entryRuleLeft"
    // InternalStateMachineTriggers.g:163:1: entryRuleLeft returns [EObject current=null] : iv_ruleLeft= ruleLeft EOF ;
    public final EObject entryRuleLeft() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleLeft = null;


        try {
            // InternalStateMachineTriggers.g:164:2: (iv_ruleLeft= ruleLeft EOF )
            // InternalStateMachineTriggers.g:165:2: iv_ruleLeft= ruleLeft EOF
            {
             newCompositeNode(grammarAccess.getLeftRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleLeft=ruleLeft();

            state._fsp--;

             current =iv_ruleLeft; 
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
    // $ANTLR end "entryRuleLeft"


    // $ANTLR start "ruleLeft"
    // InternalStateMachineTriggers.g:172:1: ruleLeft returns [EObject current=null] : (otherlv_0= '@' ( (lv_event_1_0= ruleEvent ) ) ) ;
    public final EObject ruleLeft() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        EObject lv_event_1_0 = null;


         enterRule(); 
            
        try {
            // InternalStateMachineTriggers.g:175:28: ( (otherlv_0= '@' ( (lv_event_1_0= ruleEvent ) ) ) )
            // InternalStateMachineTriggers.g:176:1: (otherlv_0= '@' ( (lv_event_1_0= ruleEvent ) ) )
            {
            // InternalStateMachineTriggers.g:176:1: (otherlv_0= '@' ( (lv_event_1_0= ruleEvent ) ) )
            // InternalStateMachineTriggers.g:176:3: otherlv_0= '@' ( (lv_event_1_0= ruleEvent ) )
            {
            otherlv_0=(Token)match(input,12,FOLLOW_4); 

                	newLeafNode(otherlv_0, grammarAccess.getLeftAccess().getCommercialAtKeyword_0());
                
            // InternalStateMachineTriggers.g:180:1: ( (lv_event_1_0= ruleEvent ) )
            // InternalStateMachineTriggers.g:181:1: (lv_event_1_0= ruleEvent )
            {
            // InternalStateMachineTriggers.g:181:1: (lv_event_1_0= ruleEvent )
            // InternalStateMachineTriggers.g:182:3: lv_event_1_0= ruleEvent
            {
             
            	        newCompositeNode(grammarAccess.getLeftAccess().getEventEventParserRuleCall_1_0()); 
            	    
            pushFollow(FOLLOW_2);
            lv_event_1_0=ruleEvent();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getLeftRule());
            	        }
                   		set(
                   			current, 
                   			"event",
                    		lv_event_1_0, 
                    		"org.correttouml.grammars.StateMachineTriggers.Event");
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
    // $ANTLR end "ruleLeft"


    // $ANTLR start "entryRuleRight"
    // InternalStateMachineTriggers.g:206:1: entryRuleRight returns [EObject current=null] : iv_ruleRight= ruleRight EOF ;
    public final EObject entryRuleRight() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleRight = null;


        try {
            // InternalStateMachineTriggers.g:207:2: (iv_ruleRight= ruleRight EOF )
            // InternalStateMachineTriggers.g:208:2: iv_ruleRight= ruleRight EOF
            {
             newCompositeNode(grammarAccess.getRightRule()); 
            pushFollow(FOLLOW_1);
            iv_ruleRight=ruleRight();

            state._fsp--;

             current =iv_ruleRight; 
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
    // $ANTLR end "entryRuleRight"


    // $ANTLR start "ruleRight"
    // InternalStateMachineTriggers.g:215:1: ruleRight returns [EObject current=null] : (otherlv_0= '-' otherlv_1= '@' ( (lv_event_2_0= ruleEvent ) ) ( (lv_op_3_0= RULE_RELATIONS ) ) ( (lv_value_4_0= RULE_INT ) ) ) ;
    public final EObject ruleRight() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token otherlv_1=null;
        Token lv_op_3_0=null;
        Token lv_value_4_0=null;
        EObject lv_event_2_0 = null;


         enterRule(); 
            
        try {
            // InternalStateMachineTriggers.g:218:28: ( (otherlv_0= '-' otherlv_1= '@' ( (lv_event_2_0= ruleEvent ) ) ( (lv_op_3_0= RULE_RELATIONS ) ) ( (lv_value_4_0= RULE_INT ) ) ) )
            // InternalStateMachineTriggers.g:219:1: (otherlv_0= '-' otherlv_1= '@' ( (lv_event_2_0= ruleEvent ) ) ( (lv_op_3_0= RULE_RELATIONS ) ) ( (lv_value_4_0= RULE_INT ) ) )
            {
            // InternalStateMachineTriggers.g:219:1: (otherlv_0= '-' otherlv_1= '@' ( (lv_event_2_0= ruleEvent ) ) ( (lv_op_3_0= RULE_RELATIONS ) ) ( (lv_value_4_0= RULE_INT ) ) )
            // InternalStateMachineTriggers.g:219:3: otherlv_0= '-' otherlv_1= '@' ( (lv_event_2_0= ruleEvent ) ) ( (lv_op_3_0= RULE_RELATIONS ) ) ( (lv_value_4_0= RULE_INT ) )
            {
            otherlv_0=(Token)match(input,13,FOLLOW_5); 

                	newLeafNode(otherlv_0, grammarAccess.getRightAccess().getHyphenMinusKeyword_0());
                
            otherlv_1=(Token)match(input,12,FOLLOW_4); 

                	newLeafNode(otherlv_1, grammarAccess.getRightAccess().getCommercialAtKeyword_1());
                
            // InternalStateMachineTriggers.g:227:1: ( (lv_event_2_0= ruleEvent ) )
            // InternalStateMachineTriggers.g:228:1: (lv_event_2_0= ruleEvent )
            {
            // InternalStateMachineTriggers.g:228:1: (lv_event_2_0= ruleEvent )
            // InternalStateMachineTriggers.g:229:3: lv_event_2_0= ruleEvent
            {
             
            	        newCompositeNode(grammarAccess.getRightAccess().getEventEventParserRuleCall_2_0()); 
            	    
            pushFollow(FOLLOW_6);
            lv_event_2_0=ruleEvent();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getRightRule());
            	        }
                   		set(
                   			current, 
                   			"event",
                    		lv_event_2_0, 
                    		"org.correttouml.grammars.StateMachineTriggers.Event");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            // InternalStateMachineTriggers.g:245:2: ( (lv_op_3_0= RULE_RELATIONS ) )
            // InternalStateMachineTriggers.g:246:1: (lv_op_3_0= RULE_RELATIONS )
            {
            // InternalStateMachineTriggers.g:246:1: (lv_op_3_0= RULE_RELATIONS )
            // InternalStateMachineTriggers.g:247:3: lv_op_3_0= RULE_RELATIONS
            {
            lv_op_3_0=(Token)match(input,RULE_RELATIONS,FOLLOW_7); 

            			newLeafNode(lv_op_3_0, grammarAccess.getRightAccess().getOpRELATIONSTerminalRuleCall_3_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getRightRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"op",
                    		lv_op_3_0, 
                    		"org.correttouml.grammars.StateMachineTriggers.RELATIONS");
            	    

            }


            }

            // InternalStateMachineTriggers.g:263:2: ( (lv_value_4_0= RULE_INT ) )
            // InternalStateMachineTriggers.g:264:1: (lv_value_4_0= RULE_INT )
            {
            // InternalStateMachineTriggers.g:264:1: (lv_value_4_0= RULE_INT )
            // InternalStateMachineTriggers.g:265:3: lv_value_4_0= RULE_INT
            {
            lv_value_4_0=(Token)match(input,RULE_INT,FOLLOW_2); 

            			newLeafNode(lv_value_4_0, grammarAccess.getRightAccess().getValueINTTerminalRuleCall_4_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getRightRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"value",
                    		lv_value_4_0, 
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
    // $ANTLR end "ruleRight"


    // $ANTLR start "entryRuleEvent"
    // InternalStateMachineTriggers.g:289:1: entryRuleEvent returns [EObject current=null] : iv_ruleEvent= ruleEvent EOF ;
    public final EObject entryRuleEvent() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleEvent = null;


        try {
            // InternalStateMachineTriggers.g:290:2: (iv_ruleEvent= ruleEvent EOF )
            // InternalStateMachineTriggers.g:291:2: iv_ruleEvent= ruleEvent EOF
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
    // InternalStateMachineTriggers.g:298:1: ruleEvent returns [EObject current=null] : ( ( ( ( (lv_objName_0_0= RULE_ID ) ) otherlv_1= '.' )? ( ( (lv_eventName_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_eventExtension_4_0= ruleEventExtensions ) ) ) ) | ( (lv_nowEvent_5_0= 'now' ) ) ) ;
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
            // InternalStateMachineTriggers.g:301:28: ( ( ( ( ( (lv_objName_0_0= RULE_ID ) ) otherlv_1= '.' )? ( ( (lv_eventName_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_eventExtension_4_0= ruleEventExtensions ) ) ) ) | ( (lv_nowEvent_5_0= 'now' ) ) ) )
            // InternalStateMachineTriggers.g:302:1: ( ( ( ( (lv_objName_0_0= RULE_ID ) ) otherlv_1= '.' )? ( ( (lv_eventName_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_eventExtension_4_0= ruleEventExtensions ) ) ) ) | ( (lv_nowEvent_5_0= 'now' ) ) )
            {
            // InternalStateMachineTriggers.g:302:1: ( ( ( ( (lv_objName_0_0= RULE_ID ) ) otherlv_1= '.' )? ( ( (lv_eventName_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_eventExtension_4_0= ruleEventExtensions ) ) ) ) | ( (lv_nowEvent_5_0= 'now' ) ) )
            int alt3=2;
            int LA3_0 = input.LA(1);

            if ( (LA3_0==RULE_ID) ) {
                alt3=1;
            }
            else if ( (LA3_0==15) ) {
                alt3=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 3, 0, input);

                throw nvae;
            }
            switch (alt3) {
                case 1 :
                    // InternalStateMachineTriggers.g:302:2: ( ( ( (lv_objName_0_0= RULE_ID ) ) otherlv_1= '.' )? ( ( (lv_eventName_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_eventExtension_4_0= ruleEventExtensions ) ) ) )
                    {
                    // InternalStateMachineTriggers.g:302:2: ( ( ( (lv_objName_0_0= RULE_ID ) ) otherlv_1= '.' )? ( ( (lv_eventName_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_eventExtension_4_0= ruleEventExtensions ) ) ) )
                    // InternalStateMachineTriggers.g:302:3: ( ( (lv_objName_0_0= RULE_ID ) ) otherlv_1= '.' )? ( ( (lv_eventName_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_eventExtension_4_0= ruleEventExtensions ) ) )
                    {
                    // InternalStateMachineTriggers.g:302:3: ( ( (lv_objName_0_0= RULE_ID ) ) otherlv_1= '.' )?
                    int alt2=2;
                    int LA2_0 = input.LA(1);

                    if ( (LA2_0==RULE_ID) ) {
                        int LA2_1 = input.LA(2);

                        if ( (LA2_1==14) ) {
                            int LA2_2 = input.LA(3);

                            if ( (LA2_2==RULE_ID) ) {
                                alt2=1;
                            }
                        }
                    }
                    switch (alt2) {
                        case 1 :
                            // InternalStateMachineTriggers.g:302:4: ( (lv_objName_0_0= RULE_ID ) ) otherlv_1= '.'
                            {
                            // InternalStateMachineTriggers.g:302:4: ( (lv_objName_0_0= RULE_ID ) )
                            // InternalStateMachineTriggers.g:303:1: (lv_objName_0_0= RULE_ID )
                            {
                            // InternalStateMachineTriggers.g:303:1: (lv_objName_0_0= RULE_ID )
                            // InternalStateMachineTriggers.g:304:3: lv_objName_0_0= RULE_ID
                            {
                            lv_objName_0_0=(Token)match(input,RULE_ID,FOLLOW_8); 

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

                            otherlv_1=(Token)match(input,14,FOLLOW_9); 

                                	newLeafNode(otherlv_1, grammarAccess.getEventAccess().getFullStopKeyword_0_0_1());
                                

                            }
                            break;

                    }

                    // InternalStateMachineTriggers.g:324:3: ( ( (lv_eventName_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_eventExtension_4_0= ruleEventExtensions ) ) )
                    // InternalStateMachineTriggers.g:324:4: ( (lv_eventName_2_0= RULE_ID ) ) otherlv_3= '.' ( (lv_eventExtension_4_0= ruleEventExtensions ) )
                    {
                    // InternalStateMachineTriggers.g:324:4: ( (lv_eventName_2_0= RULE_ID ) )
                    // InternalStateMachineTriggers.g:325:1: (lv_eventName_2_0= RULE_ID )
                    {
                    // InternalStateMachineTriggers.g:325:1: (lv_eventName_2_0= RULE_ID )
                    // InternalStateMachineTriggers.g:326:3: lv_eventName_2_0= RULE_ID
                    {
                    lv_eventName_2_0=(Token)match(input,RULE_ID,FOLLOW_8); 

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

                    otherlv_3=(Token)match(input,14,FOLLOW_10); 

                        	newLeafNode(otherlv_3, grammarAccess.getEventAccess().getFullStopKeyword_0_1_1());
                        
                    // InternalStateMachineTriggers.g:346:1: ( (lv_eventExtension_4_0= ruleEventExtensions ) )
                    // InternalStateMachineTriggers.g:347:1: (lv_eventExtension_4_0= ruleEventExtensions )
                    {
                    // InternalStateMachineTriggers.g:347:1: (lv_eventExtension_4_0= ruleEventExtensions )
                    // InternalStateMachineTriggers.g:348:3: lv_eventExtension_4_0= ruleEventExtensions
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
                            		"org.correttouml.grammars.StateMachineTriggers.EventExtensions");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }


                    }


                    }


                    }
                    break;
                case 2 :
                    // InternalStateMachineTriggers.g:365:6: ( (lv_nowEvent_5_0= 'now' ) )
                    {
                    // InternalStateMachineTriggers.g:365:6: ( (lv_nowEvent_5_0= 'now' ) )
                    // InternalStateMachineTriggers.g:366:1: (lv_nowEvent_5_0= 'now' )
                    {
                    // InternalStateMachineTriggers.g:366:1: (lv_nowEvent_5_0= 'now' )
                    // InternalStateMachineTriggers.g:367:3: lv_nowEvent_5_0= 'now'
                    {
                    lv_nowEvent_5_0=(Token)match(input,15,FOLLOW_2); 

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
    // InternalStateMachineTriggers.g:388:1: entryRuleEventExtensions returns [String current=null] : iv_ruleEventExtensions= ruleEventExtensions EOF ;
    public final String entryRuleEventExtensions() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleEventExtensions = null;


        try {
            // InternalStateMachineTriggers.g:389:2: (iv_ruleEventExtensions= ruleEventExtensions EOF )
            // InternalStateMachineTriggers.g:390:2: iv_ruleEventExtensions= ruleEventExtensions EOF
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
    // InternalStateMachineTriggers.g:397:1: ruleEventExtensions returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' | kw= 'reply' | kw= 'adstart' | kw= 'adend' | kw= 'iodstart' | kw= 'iodend' ) ;
    public final AntlrDatatypeRuleToken ruleEventExtensions() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token kw=null;

         enterRule(); 
            
        try {
            // InternalStateMachineTriggers.g:400:28: ( (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' | kw= 'reply' | kw= 'adstart' | kw= 'adend' | kw= 'iodstart' | kw= 'iodend' ) )
            // InternalStateMachineTriggers.g:401:1: (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' | kw= 'reply' | kw= 'adstart' | kw= 'adend' | kw= 'iodstart' | kw= 'iodend' )
            {
            // InternalStateMachineTriggers.g:401:1: (kw= 'exit' | kw= 'enter' | kw= 'start' | kw= 'end' | kw= 'tick' | kw= 'sig' | kw= 'call' | kw= 'reply' | kw= 'adstart' | kw= 'adend' | kw= 'iodstart' | kw= 'iodend' )
            int alt4=12;
            switch ( input.LA(1) ) {
            case 16:
                {
                alt4=1;
                }
                break;
            case 17:
                {
                alt4=2;
                }
                break;
            case 18:
                {
                alt4=3;
                }
                break;
            case 19:
                {
                alt4=4;
                }
                break;
            case 20:
                {
                alt4=5;
                }
                break;
            case 21:
                {
                alt4=6;
                }
                break;
            case 22:
                {
                alt4=7;
                }
                break;
            case 23:
                {
                alt4=8;
                }
                break;
            case 24:
                {
                alt4=9;
                }
                break;
            case 25:
                {
                alt4=10;
                }
                break;
            case 26:
                {
                alt4=11;
                }
                break;
            case 27:
                {
                alt4=12;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 4, 0, input);

                throw nvae;
            }

            switch (alt4) {
                case 1 :
                    // InternalStateMachineTriggers.g:402:2: kw= 'exit'
                    {
                    kw=(Token)match(input,16,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getExitKeyword_0()); 
                        

                    }
                    break;
                case 2 :
                    // InternalStateMachineTriggers.g:409:2: kw= 'enter'
                    {
                    kw=(Token)match(input,17,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getEnterKeyword_1()); 
                        

                    }
                    break;
                case 3 :
                    // InternalStateMachineTriggers.g:416:2: kw= 'start'
                    {
                    kw=(Token)match(input,18,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getStartKeyword_2()); 
                        

                    }
                    break;
                case 4 :
                    // InternalStateMachineTriggers.g:423:2: kw= 'end'
                    {
                    kw=(Token)match(input,19,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getEndKeyword_3()); 
                        

                    }
                    break;
                case 5 :
                    // InternalStateMachineTriggers.g:430:2: kw= 'tick'
                    {
                    kw=(Token)match(input,20,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getTickKeyword_4()); 
                        

                    }
                    break;
                case 6 :
                    // InternalStateMachineTriggers.g:437:2: kw= 'sig'
                    {
                    kw=(Token)match(input,21,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getSigKeyword_5()); 
                        

                    }
                    break;
                case 7 :
                    // InternalStateMachineTriggers.g:444:2: kw= 'call'
                    {
                    kw=(Token)match(input,22,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getCallKeyword_6()); 
                        

                    }
                    break;
                case 8 :
                    // InternalStateMachineTriggers.g:451:2: kw= 'reply'
                    {
                    kw=(Token)match(input,23,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getReplyKeyword_7()); 
                        

                    }
                    break;
                case 9 :
                    // InternalStateMachineTriggers.g:458:2: kw= 'adstart'
                    {
                    kw=(Token)match(input,24,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getAdstartKeyword_8()); 
                        

                    }
                    break;
                case 10 :
                    // InternalStateMachineTriggers.g:465:2: kw= 'adend'
                    {
                    kw=(Token)match(input,25,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getAdendKeyword_9()); 
                        

                    }
                    break;
                case 11 :
                    // InternalStateMachineTriggers.g:472:2: kw= 'iodstart'
                    {
                    kw=(Token)match(input,26,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getIodstartKeyword_10()); 
                        

                    }
                    break;
                case 12 :
                    // InternalStateMachineTriggers.g:479:2: kw= 'iodend'
                    {
                    kw=(Token)match(input,27,FOLLOW_2); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getEventExtensionsAccess().getIodendKeyword_11()); 
                        

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
    public static final BitSet FOLLOW_3 = new BitSet(new long[]{0x0000000000002002L});
    public static final BitSet FOLLOW_4 = new BitSet(new long[]{0x0000000000008040L});
    public static final BitSet FOLLOW_5 = new BitSet(new long[]{0x0000000000001000L});
    public static final BitSet FOLLOW_6 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_7 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_8 = new BitSet(new long[]{0x0000000000004000L});
    public static final BitSet FOLLOW_9 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_10 = new BitSet(new long[]{0x000000000FFF0000L});

}