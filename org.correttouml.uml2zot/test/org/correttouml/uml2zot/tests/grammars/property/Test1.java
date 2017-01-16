package org.correttouml.uml2zot.tests.grammars.property;

import org.apache.log4j.Logger;
import org.correttouml.uml.helpers.PropertyParser;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.junit.Test;

import static org.junit.Assert.assertNull;

/**
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class Test1 {

	@SuppressWarnings("unused")
	private static final Logger LOGGER = Logger.getLogger(Test1.class); 
	
	@Test
	public void State() throws Exception{
System.out.println("State:\n\t" + new PropertyParser(null, "state1 = obj1.getState(STD1, UMLstate1)\n"
		+ "inState1 = obj1.in(state1)\n"
		+ "Corretto.verify(!(inState1))").getProperty());
	}
	
	@Test
	public void Parentheses() throws Exception{
System.out.println("Parentheses:\n\t" + new PropertyParser(null, "state1 = obj1.getState(STD1, UMLstate1)\n"
		+ "a= obj1.in(state1)\n"
		+ "b= obj1.in(state1)\n"
		+ "Corretto.verify((!(a) && b) || a)").getProperty());
	}
	
	@Test
	public void ParenthesesArithBool() throws Exception{
System.out.println("ParenthesesArithBool:\n\t" + new PropertyParser(null, "state1 = obj1.getState(STD1, UMLstate1)\n"
		+ "a= obj1.in(state1)\n"
		+ "b= obj1.in(state1)\n"
		+ "Corretto.verify((a && b) || (3 > 4))").getProperty());
	}
	
	@Test
	public void Implies() throws Exception{
System.out.println("Implies:\n\t" + new PropertyParser(null, "state1 = obj1.getState(STD1, UMLstate1)\n"
		+ "a= obj1.in(state1)\n"
		+ "b= obj1.in(state1)\n"
		+ "//Corretto.verify((a => b) || (3 > 4))\n"
		+ "Corretto.verify((b <=> b) || (22 > 2.22))").getProperty());
	}
	
	
	@Test
	public void ImpliesWithinF() throws Exception{
		System.out.println("ImpliesWithinf2:\n\t" + new PropertyParser(null, "state1 = obj1.getState(STD1, UMLstate1)\n"
		+ "a= obj1.in(state1)\n"
		+ "b= obj1.in(state1)\n"
		+ "Corretto.verify(Time.withinF((a => b) || (3 > 4)), 5)").getProperty());
	}
	
	@Test
	public void CCAS1() throws Exception{
		System.out.println("CCAS1:\n\t" + new PropertyParser(null, 
		"smallDistance= ctr::notifyDistance.receivedDistance < 2\n"
		+ "brakingState = brakeS.getState(brakingSM, braking)\n"
		+ "inBraking = brakeS.in(brakingState)\n"
		+ "brakingInTime = Time.lasted(smallDistance, 52) => Time.withinP(inBraking, 52)\n"
		+ "myProperty = Time.alwaysTrue(brakingInTime)\n"
		+ "Corretto.verify(myProperty)").getProperty());
	}
	
	@Test
	public void CCAS() throws Exception{ 
		System.out.println("CCAS:\n\t" + new PropertyParser(null, 
		"smallDistance = sendSensorDistance.getParameter(distance) < 2\n"
		+ "brakingState = brakeS.getState(brakingSM, braking)\n"
		+ "inBraking = brakeS.in(brakingState)\n"
		+ "brakingInTime = Time.lasted(smallDistance && !(failure), 52) => Time.withinP(inBraking, 52)\n"
		+ "myProperty = Time.alwaysTrue(brakingInTime)\n"
		+ "Corretto.verify(myProperty)"
				).getProperty());
	}
	
	@Test
	public void CCASSat() throws Exception{
		BooleanFormulae property = new PropertyParser(null, 
		"smallDistance = sendSensorDistance.getParameter(distance) < 2\n"
		+"brakingState = brakeS.getState(brakingSM, braking)\n"
		+ "inBraking = brakeS.in(brakingState)\n"
		+ "brakingInTime = Time.lasted(smallDistance && !(failure), 52) => Time.withinP(inBraking, 52)\n"
		+ "myProperty = Time.alwaysTrue(brakingInTime)\n"
		+ "//Corretto.verify(myProperty)\n"
		+ "Corretto.execute()"
				).getProperty();
		assertNull(property);
		System.out.println("CCASSat:\n\t property is commented out so Corretto returns an execution of the CUML model.");
	}
	
	@Test
	public void LeaderSAT() throws Exception{
		System.out.println("LeaderSAT:\n\t" + new PropertyParser(null, "stateEnd = idGenerator.getState(IdGenerator_SM, stateEnd)\n"
						+ "inStateEnd = idGenerator.in(stateEnd)\n"
						+ "Corretto.verify(Time.alwF(!(Time.eventually(inStateEnd))))"
				).getProperty());
	}
	
	@Test
	public void OpCall() throws Exception{
		System.out.println("OpCall:\n\t" + new PropertyParser(null, 
"Corretto.verify(obj1^op1())"
				).getProperty());
	}
	
	@Test
	public void ATM() throws Exception{
		System.out.println("ATM:\n\t" + new PropertyParser(null, 
				"releaseMoney = cashdispenser^cd_releaseMoney()\n"
				+ "Corretto.verify(Time.alwaysTrue(releaseMoney => (cashdispenser::cd_releaseMoney.amount_released == 50))"
				).getProperty());
	}
	
	@Test
	public void TXT() throws Exception{
		System.out.println("TXT:\n\t" + new PropertyParser(null, 
				"setButtonCall = environment^panel_setButton()\n"
	+ "getButtonCall = environment^main_panel_getButton()\n"
	+ "Corretto.verify(Time.alwaysTrue(setButtonCall => Time.withinF(getButtonCall, 15)))"
				).getProperty());
	}
	
}