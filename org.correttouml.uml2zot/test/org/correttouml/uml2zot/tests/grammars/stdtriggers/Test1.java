package org.correttouml.uml2zot.tests.grammars.stdtriggers;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import org.apache.log4j.Logger;
import org.correttouml.uml.helpers.StDTriggersParser;
import org.junit.Test;

import org.correttouml.grammars.stateMachineTriggers.*;

public class Test1 {

	@SuppressWarnings("unused")
	private static final Logger LOGGER = Logger.getLogger(Test1.class); 
	
	@Test
	public void MyTest1(){
		Model m=StDTriggersParser.parse("@Signal1.sig");
		assertNotNull(m.getTrigger().getLeft());
		assertNull(m.getTrigger().getRight());
	}
	
	@Test
	public void MyTest2(){
		Model m=StDTriggersParser.parse("@Signal1.sig - @sd.start");
		assertNotNull(m.getTrigger().getLeft());
		assertNotNull(m.getTrigger().getRight());
	}

	
}
