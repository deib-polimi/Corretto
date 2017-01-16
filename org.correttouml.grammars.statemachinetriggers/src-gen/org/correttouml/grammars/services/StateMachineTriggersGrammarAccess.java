/*
 * generated by Xtext
 */
package org.correttouml.grammars.services;

import com.google.inject.Singleton;
import com.google.inject.Inject;

import java.util.List;

import org.eclipse.xtext.*;
import org.eclipse.xtext.service.GrammarProvider;
import org.eclipse.xtext.service.AbstractElementFinder.*;

import org.eclipse.xtext.common.services.TerminalsGrammarAccess;

@Singleton
public class StateMachineTriggersGrammarAccess extends AbstractGrammarElementFinder {
	
	
	public class ModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.correttouml.grammars.StateMachineTriggers.Model");
		private final Assignment cTriggerAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cTriggerTriggerParserRuleCall_0 = (RuleCall)cTriggerAssignment.eContents().get(0);
		
		//Model:
		//	trigger=Trigger;
		public ParserRule getRule() { return rule; }

		//trigger=Trigger
		public Assignment getTriggerAssignment() { return cTriggerAssignment; }

		//Trigger
		public RuleCall getTriggerTriggerParserRuleCall_0() { return cTriggerTriggerParserRuleCall_0; }
	}

	public class TriggerElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.correttouml.grammars.StateMachineTriggers.Trigger");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cLeftAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cLeftLeftParserRuleCall_0_0 = (RuleCall)cLeftAssignment_0.eContents().get(0);
		private final Assignment cRightAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cRightRightParserRuleCall_1_0 = (RuleCall)cRightAssignment_1.eContents().get(0);
		
		//Trigger:
		//	left=Left right=Right?;
		public ParserRule getRule() { return rule; }

		//left=Left right=Right?
		public Group getGroup() { return cGroup; }

		//left=Left
		public Assignment getLeftAssignment_0() { return cLeftAssignment_0; }

		//Left
		public RuleCall getLeftLeftParserRuleCall_0_0() { return cLeftLeftParserRuleCall_0_0; }

		//right=Right?
		public Assignment getRightAssignment_1() { return cRightAssignment_1; }

		//Right
		public RuleCall getRightRightParserRuleCall_1_0() { return cRightRightParserRuleCall_1_0; }
	}

	public class LeftElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.correttouml.grammars.StateMachineTriggers.Left");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cCommercialAtKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cEventAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cEventEventParserRuleCall_1_0 = (RuleCall)cEventAssignment_1.eContents().get(0);
		
		//Left:
		//	'@' event=Event;
		public ParserRule getRule() { return rule; }

		//'@' event=Event
		public Group getGroup() { return cGroup; }

		//'@'
		public Keyword getCommercialAtKeyword_0() { return cCommercialAtKeyword_0; }

		//event=Event
		public Assignment getEventAssignment_1() { return cEventAssignment_1; }

		//Event
		public RuleCall getEventEventParserRuleCall_1_0() { return cEventEventParserRuleCall_1_0; }
	}

	public class RightElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.correttouml.grammars.StateMachineTriggers.Right");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cHyphenMinusKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Keyword cCommercialAtKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cEventAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cEventEventParserRuleCall_2_0 = (RuleCall)cEventAssignment_2.eContents().get(0);
		private final Assignment cOpAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cOpRELATIONSTerminalRuleCall_3_0 = (RuleCall)cOpAssignment_3.eContents().get(0);
		private final Assignment cValueAssignment_4 = (Assignment)cGroup.eContents().get(4);
		private final RuleCall cValueINTTerminalRuleCall_4_0 = (RuleCall)cValueAssignment_4.eContents().get(0);
		
		//Right:
		//	'-' '@' event=Event op=RELATIONS value=INT;
		public ParserRule getRule() { return rule; }

		//'-' '@' event=Event op=RELATIONS value=INT
		public Group getGroup() { return cGroup; }

		//'-'
		public Keyword getHyphenMinusKeyword_0() { return cHyphenMinusKeyword_0; }

		//'@'
		public Keyword getCommercialAtKeyword_1() { return cCommercialAtKeyword_1; }

		//event=Event
		public Assignment getEventAssignment_2() { return cEventAssignment_2; }

		//Event
		public RuleCall getEventEventParserRuleCall_2_0() { return cEventEventParserRuleCall_2_0; }

		//op=RELATIONS
		public Assignment getOpAssignment_3() { return cOpAssignment_3; }

		//RELATIONS
		public RuleCall getOpRELATIONSTerminalRuleCall_3_0() { return cOpRELATIONSTerminalRuleCall_3_0; }

		//value=INT
		public Assignment getValueAssignment_4() { return cValueAssignment_4; }

		//INT
		public RuleCall getValueINTTerminalRuleCall_4_0() { return cValueINTTerminalRuleCall_4_0; }
	}

	public class EventElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.correttouml.grammars.StateMachineTriggers.Event");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Group cGroup_0 = (Group)cAlternatives.eContents().get(0);
		private final Group cGroup_0_0 = (Group)cGroup_0.eContents().get(0);
		private final Assignment cObjNameAssignment_0_0_0 = (Assignment)cGroup_0_0.eContents().get(0);
		private final RuleCall cObjNameIDTerminalRuleCall_0_0_0_0 = (RuleCall)cObjNameAssignment_0_0_0.eContents().get(0);
		private final Keyword cFullStopKeyword_0_0_1 = (Keyword)cGroup_0_0.eContents().get(1);
		private final Group cGroup_0_1 = (Group)cGroup_0.eContents().get(1);
		private final Assignment cEventNameAssignment_0_1_0 = (Assignment)cGroup_0_1.eContents().get(0);
		private final RuleCall cEventNameIDTerminalRuleCall_0_1_0_0 = (RuleCall)cEventNameAssignment_0_1_0.eContents().get(0);
		private final Keyword cFullStopKeyword_0_1_1 = (Keyword)cGroup_0_1.eContents().get(1);
		private final Assignment cEventExtensionAssignment_0_1_2 = (Assignment)cGroup_0_1.eContents().get(2);
		private final RuleCall cEventExtensionEventExtensionsParserRuleCall_0_1_2_0 = (RuleCall)cEventExtensionAssignment_0_1_2.eContents().get(0);
		private final Assignment cNowEventAssignment_1 = (Assignment)cAlternatives.eContents().get(1);
		private final Keyword cNowEventNowKeyword_1_0 = (Keyword)cNowEventAssignment_1.eContents().get(0);
		
		//Event:
		//	(objName=ID '.')? (eventName=ID '.' eventExtension=EventExtensions) | nowEvent?='now';
		public ParserRule getRule() { return rule; }

		//(objName=ID '.')? (eventName=ID '.' eventExtension=EventExtensions) | nowEvent?='now'
		public Alternatives getAlternatives() { return cAlternatives; }

		//(objName=ID '.')? (eventName=ID '.' eventExtension=EventExtensions)
		public Group getGroup_0() { return cGroup_0; }

		//(objName=ID '.')?
		public Group getGroup_0_0() { return cGroup_0_0; }

		//objName=ID
		public Assignment getObjNameAssignment_0_0_0() { return cObjNameAssignment_0_0_0; }

		//ID
		public RuleCall getObjNameIDTerminalRuleCall_0_0_0_0() { return cObjNameIDTerminalRuleCall_0_0_0_0; }

		//'.'
		public Keyword getFullStopKeyword_0_0_1() { return cFullStopKeyword_0_0_1; }

		//(eventName=ID '.' eventExtension=EventExtensions)
		public Group getGroup_0_1() { return cGroup_0_1; }

		//eventName=ID
		public Assignment getEventNameAssignment_0_1_0() { return cEventNameAssignment_0_1_0; }

		//ID
		public RuleCall getEventNameIDTerminalRuleCall_0_1_0_0() { return cEventNameIDTerminalRuleCall_0_1_0_0; }

		//'.'
		public Keyword getFullStopKeyword_0_1_1() { return cFullStopKeyword_0_1_1; }

		//eventExtension=EventExtensions
		public Assignment getEventExtensionAssignment_0_1_2() { return cEventExtensionAssignment_0_1_2; }

		//EventExtensions
		public RuleCall getEventExtensionEventExtensionsParserRuleCall_0_1_2_0() { return cEventExtensionEventExtensionsParserRuleCall_0_1_2_0; }

		//nowEvent?='now'
		public Assignment getNowEventAssignment_1() { return cNowEventAssignment_1; }

		//'now'
		public Keyword getNowEventNowKeyword_1_0() { return cNowEventNowKeyword_1_0; }
	}

	public class EventExtensionsElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.correttouml.grammars.StateMachineTriggers.EventExtensions");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Keyword cExitKeyword_0 = (Keyword)cAlternatives.eContents().get(0);
		private final Keyword cEnterKeyword_1 = (Keyword)cAlternatives.eContents().get(1);
		private final Keyword cStartKeyword_2 = (Keyword)cAlternatives.eContents().get(2);
		private final Keyword cEndKeyword_3 = (Keyword)cAlternatives.eContents().get(3);
		private final Keyword cTickKeyword_4 = (Keyword)cAlternatives.eContents().get(4);
		private final Keyword cSigKeyword_5 = (Keyword)cAlternatives.eContents().get(5);
		private final Keyword cCallKeyword_6 = (Keyword)cAlternatives.eContents().get(6);
		private final Keyword cReplyKeyword_7 = (Keyword)cAlternatives.eContents().get(7);
		private final Keyword cAdstartKeyword_8 = (Keyword)cAlternatives.eContents().get(8);
		private final Keyword cAdendKeyword_9 = (Keyword)cAlternatives.eContents().get(9);
		private final Keyword cIodstartKeyword_10 = (Keyword)cAlternatives.eContents().get(10);
		private final Keyword cIodendKeyword_11 = (Keyword)cAlternatives.eContents().get(11);
		
		//EventExtensions:
		//	'exit' | 'enter' | 'start' | 'end' | 'tick' | 'sig' | 'call' | 'reply' | 'adstart' | 'adend' | 'iodstart' | 'iodend';
		public ParserRule getRule() { return rule; }

		//'exit' | 'enter' | 'start' | 'end' | 'tick' | 'sig' | 'call' | 'reply' | 'adstart' | 'adend' | 'iodstart' | 'iodend'
		public Alternatives getAlternatives() { return cAlternatives; }

		//'exit'
		public Keyword getExitKeyword_0() { return cExitKeyword_0; }

		//'enter'
		public Keyword getEnterKeyword_1() { return cEnterKeyword_1; }

		//'start'
		public Keyword getStartKeyword_2() { return cStartKeyword_2; }

		//'end'
		public Keyword getEndKeyword_3() { return cEndKeyword_3; }

		//'tick'
		public Keyword getTickKeyword_4() { return cTickKeyword_4; }

		//'sig'
		public Keyword getSigKeyword_5() { return cSigKeyword_5; }

		//'call'
		public Keyword getCallKeyword_6() { return cCallKeyword_6; }

		//'reply'
		public Keyword getReplyKeyword_7() { return cReplyKeyword_7; }

		//'adstart'
		public Keyword getAdstartKeyword_8() { return cAdstartKeyword_8; }

		//'adend'
		public Keyword getAdendKeyword_9() { return cAdendKeyword_9; }

		//'iodstart'
		public Keyword getIodstartKeyword_10() { return cIodstartKeyword_10; }

		//'iodend'
		public Keyword getIodendKeyword_11() { return cIodendKeyword_11; }
	}
	
	
	private final ModelElements pModel;
	private final TriggerElements pTrigger;
	private final LeftElements pLeft;
	private final RightElements pRight;
	private final EventElements pEvent;
	private final EventExtensionsElements pEventExtensions;
	private final TerminalRule tRELATIONS;
	
	private final Grammar grammar;

	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public StateMachineTriggersGrammarAccess(GrammarProvider grammarProvider,
		TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pModel = new ModelElements();
		this.pTrigger = new TriggerElements();
		this.pLeft = new LeftElements();
		this.pRight = new RightElements();
		this.pEvent = new EventElements();
		this.pEventExtensions = new EventExtensionsElements();
		this.tRELATIONS = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.correttouml.grammars.StateMachineTriggers.RELATIONS");
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.correttouml.grammars.StateMachineTriggers".equals(grammar.getName())) {
				return grammar;
			}
			List<Grammar> grammars = grammar.getUsedGrammars();
			if (!grammars.isEmpty()) {
				grammar = grammars.iterator().next();
			} else {
				return null;
			}
		}
		return grammar;
	}
	
	public Grammar getGrammar() {
		return grammar;
	}
	

	public TerminalsGrammarAccess getTerminalsGrammarAccess() {
		return gaTerminals;
	}

	
	//Model:
	//	trigger=Trigger;
	public ModelElements getModelAccess() {
		return pModel;
	}
	
	public ParserRule getModelRule() {
		return getModelAccess().getRule();
	}

	//Trigger:
	//	left=Left right=Right?;
	public TriggerElements getTriggerAccess() {
		return pTrigger;
	}
	
	public ParserRule getTriggerRule() {
		return getTriggerAccess().getRule();
	}

	//Left:
	//	'@' event=Event;
	public LeftElements getLeftAccess() {
		return pLeft;
	}
	
	public ParserRule getLeftRule() {
		return getLeftAccess().getRule();
	}

	//Right:
	//	'-' '@' event=Event op=RELATIONS value=INT;
	public RightElements getRightAccess() {
		return pRight;
	}
	
	public ParserRule getRightRule() {
		return getRightAccess().getRule();
	}

	//Event:
	//	(objName=ID '.')? (eventName=ID '.' eventExtension=EventExtensions) | nowEvent?='now';
	public EventElements getEventAccess() {
		return pEvent;
	}
	
	public ParserRule getEventRule() {
		return getEventAccess().getRule();
	}

	//EventExtensions:
	//	'exit' | 'enter' | 'start' | 'end' | 'tick' | 'sig' | 'call' | 'reply' | 'adstart' | 'adend' | 'iodstart' | 'iodend';
	public EventExtensionsElements getEventExtensionsAccess() {
		return pEventExtensions;
	}
	
	public ParserRule getEventExtensionsRule() {
		return getEventExtensionsAccess().getRule();
	}

	//terminal RELATIONS:
	//	'<' | '>' | '==' | '<=' | '>=' | '!=';
	public TerminalRule getRELATIONSRule() {
		return tRELATIONS;
	} 

	//terminal ID:
	//	'^'? ('a'..'z' | 'A'..'Z' | '_') ('a'..'z' | 'A'..'Z' | '_' | '0'..'9')*;
	public TerminalRule getIDRule() {
		return gaTerminals.getIDRule();
	} 

	//terminal INT returns ecore::EInt:
	//	'0'..'9'+;
	public TerminalRule getINTRule() {
		return gaTerminals.getINTRule();
	} 

	//terminal STRING:
	//	'"' ('\\' . | !('\\' | '"'))* '"' |
	//	"'" ('\\' . | !('\\' | "'"))* "'";
	public TerminalRule getSTRINGRule() {
		return gaTerminals.getSTRINGRule();
	} 

	//terminal ML_COMMENT:
	//	'/ *'->'* /';
	public TerminalRule getML_COMMENTRule() {
		return gaTerminals.getML_COMMENTRule();
	} 

	//terminal SL_COMMENT:
	//	'//' !('\n' | '\r')* ('\r'? '\n')?;
	public TerminalRule getSL_COMMENTRule() {
		return gaTerminals.getSL_COMMENTRule();
	} 

	//terminal WS:
	//	' ' | '\t' | '\r' | '\n'+;
	public TerminalRule getWSRule() {
		return gaTerminals.getWSRule();
	} 

	//terminal ANY_OTHER:
	//	.;
	public TerminalRule getANY_OTHERRule() {
		return gaTerminals.getANY_OTHERRule();
	} 
}
