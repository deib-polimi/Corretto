package org.correttouml.uml2zot.tests.grammars.stdtransitions;

import static org.junit.Assert.assertTrue;

import org.correttouml.uml.helpers.StDTransitionsParser;
import org.junit.Test;


public class Test1 {

	@Test
	public void zzz(){
		StDTransitionsParser stdp=new StDTransitionsParser();
		stdp.parse("");
		
		assertTrue(!stdp.hasTrigger());
		assertTrue(!stdp.hasGuard());
		assertTrue(!stdp.hasAction());
	}
	
	@Test
	public void zzu(){
		StDTransitionsParser stdp=new StDTransitionsParser();
		stdp.parse("/@sdname.start");
		
		System.out.println(stdp.getAction());
		
		assertTrue(!stdp.hasTrigger());
		assertTrue(!stdp.hasGuard());
		assertTrue(stdp.hasAction());
	}
	
	@Test
	public void zuz(){
		StDTransitionsParser stdp=new StDTransitionsParser();
		stdp.parse("[@now - @state.enter]");
		
		System.out.println(stdp.getGuard());
		
		assertTrue(!stdp.hasTrigger());
		assertTrue(stdp.hasGuard());
		assertTrue(!stdp.hasAction());
	}
	
	@Test
	public void zuu(){
		StDTransitionsParser stdp=new StDTransitionsParser();
		stdp.parse("[@now - @state.enter]/@sdname.start");
		
		System.out.println(stdp.getGuard());
		System.out.println(stdp.getAction());
		
		assertTrue(!stdp.hasTrigger());
		assertTrue(stdp.hasGuard());
		assertTrue(stdp.hasAction());
	}
	
	@Test
	public void uzz(){
		StDTransitionsParser stdp=new StDTransitionsParser();
		stdp.parse("@now - @state.enter");
		
		System.out.println(stdp.getTrigger());
		
		assertTrue(stdp.hasTrigger());
		assertTrue(!stdp.hasGuard());
		assertTrue(!stdp.hasAction());
	}
	
	@Test
	public void uzu(){
		StDTransitionsParser stdp=new StDTransitionsParser();
		stdp.parse("@now - @state.enter/operation.call");
		
		System.out.println(stdp.getTrigger());
		System.out.println(stdp.getAction());
		
		assertTrue(stdp.hasTrigger());
		assertTrue(!stdp.hasGuard());
		assertTrue(stdp.hasAction());
	}
	
	@Test
	public void uuz(){
		StDTransitionsParser stdp=new StDTransitionsParser();
		stdp.parse("@now - @state.enter[receivedDistance <= 3]");
		
		System.out.println(stdp.getTrigger());
		System.out.println(stdp.getGuard());
		
		assertTrue(stdp.hasTrigger());
		assertTrue(stdp.hasGuard());
		assertTrue(!stdp.hasAction());
	}
	
	@Test
	public void uuu(){
		StDTransitionsParser stdp=new StDTransitionsParser();
		stdp.parse("@now - @state.enter[receivedDistance <= 3]/prova.call");
		
		System.out.println(stdp.getTrigger());
		System.out.println(stdp.getGuard());
		System.out.println(stdp.getAction());
		
		assertTrue(stdp.hasTrigger());
		assertTrue(stdp.hasGuard());
		assertTrue(stdp.hasAction());
	}
	
	
}
