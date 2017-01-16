package org.correttouml.uml2zot.tests.grammars.booleanexpressions;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import org.apache.log4j.Logger;
import org.correttouml.uml.helpers.BooleanExpressionsParser;
import org.junit.Test;

import org.correttouml.grammars.booleanExpressions.*;

public class Test1 {

	private static final Logger LOGGER = Logger.getLogger(Test1.class); 
	
	@Test
	public void MyTest1(){
		Model m=BooleanExpressionsParser.parse("@now-@braking.enter==10");
		assertNotNull(m.getExpression().getLeftExpression().getLeftExpression().getBooleanTerm());
		TimeConstraint tc=m.getExpression().getLeftExpression().getLeftExpression().getBooleanTerm().getTimeConstraint();
		
		LOGGER.info(tc.getEvent1());
		LOGGER.info(tc.getEvent2());
		
		assertNotNull(tc.getEvent1());
		assertNotNull(tc.getEvent2());
	}
	

	@Test
	public void MyTest2(){
		Model m=BooleanExpressionsParser.parse("@Interaction1.end-@Interaction1.start==5");
		assertNotNull(m.getExpression().getLeftExpression().getLeftExpression().getBooleanTerm());
		TimeConstraint tc=m.getExpression().getLeftExpression().getLeftExpression().getBooleanTerm().getTimeConstraint();
		
		LOGGER.info(tc.getEvent1());
		LOGGER.info(tc.getEvent2());
		
		assertNotNull(tc.getEvent1());
		assertNotNull(tc.getEvent2());
	}
	
	@Test 
	public void MyTest4(){
		Model m=BooleanExpressionsParser.parse("@Signal1.sig - @sd.start == 4");
		assertTrue(m.getExpression().getLeftExpression().getLeftExpression().getBooleanTerm().getTimeConstraint() instanceof org.correttouml.grammars.booleanExpressions.TimeConstraint);
	}
	
}
