package org.correttouml.uml.helpers;

import java.io.ByteArrayInputStream;

import org.correttouml.uml.MadesModel;
import org.correttouml.uml.diagrams.expressions.PrimitiveType;
import org.correttouml.uml2zot.semantics.expressions.SConstant;
import org.correttouml.uml2zot.semantics.util.bool.*;
import org.correttouml.uml2zot.semantics.util.trio.*;
import org.correttouml.grammars.PropertyStandaloneSetup;
import org.correttouml.grammars.property.*;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Set;

import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.xtext.resource.XtextResource;
import org.eclipse.xtext.resource.XtextResourceSet;

import com.google.inject.Injector;

public class PropertyParser {
	private Model model;
	private MadesModel madesModel;
	private Set<Declaration> trioVars = new HashSet();
	private Set<Declaration> stateNames = new HashSet();
	public PropertyParser(MadesModel madesModel, String property){
		this.madesModel = madesModel;
		Injector injector = new PropertyStandaloneSetup().createInjectorAndDoEMFRegistration();
		XtextResourceSet resourceSet = injector.getInstance(XtextResourceSet.class);
		resourceSet.addLoadOption(XtextResource.OPTION_RESOLVE_ALL, Boolean.TRUE);
		
		Resource resource = resourceSet.createResource(URI.createURI("file:/example.property"));
		InputStream in = new ByteArrayInputStream(property.getBytes());
		try {
			resource.load(in, resourceSet.getLoadOptions());
		} catch (IOException e) {
			e.printStackTrace();
		}
		model = (org.correttouml.grammars.property.Model) resource.getContents().get(0);
		
		try{
			if(model==null) throw new Exception(property + " not recognized");
		}catch(Exception e){
			e.printStackTrace();
		}
		
		if (model.getDeclarations() != null)
		for (Declaration d: model.getDeclarations()){
			if (d.getTrioVar() != null)
				trioVars.add(d);
			if (d.getUMLStateName() != null)
				stateNames.add(d);
		}
	}
	
	public BooleanFormulae getProperty() throws Exception{
		if (model.getCorrettoCommand().getVerify() != null)
			return getTRIOF(model.getCorrettoCommand().getVerify().getTrio());
		return null;
	}
	
	private Declaration getTrioVarDeclaration(String trioVarName){
		for (Declaration d: trioVars)
			if (d.getTrioVar().equals(trioVarName))
				return d;
		return null;
	}
	
	private Declaration getStateNameDeclaration(String stateName){
		for (Declaration d: stateNames)
			if (d.getStateName().equals(stateName))
				return d;
		return null;
	}
	
	private BooleanFormulae getStatePredicate(String objectName, String stateName){
		Declaration d = getStateNameDeclaration(stateName);
		String std = d.getStd();
		return new Predicate("$OBJ" + objectName + "_STD" + std +"_STATE" + d.getUMLStateName());
	}
	
	private BooleanFormulae getOperationCallPredicate(String objectName, String operationName){
		return new Predicate("OBJ" + objectName + "OP" + operationName); //modify.preCondition = SOperation.java.modify
	}
	
	/*
	 * TRIO:
	trioL=TRIOL trioR=TRIOR?;
	 */
	private BooleanFormulae getTRIOF(TRIO trio) throws Exception {
		if (trio.getTrioR() == null)
			return getTRIOLF(trio.getTrioL());
		else{
			/*
			 *
			 * TRIOR:
				trioOP2=TRIOOP2 trio=TRIO;
			   terminal TRIOOP2: //TRIO propositional operators with 2 operands
				'&&' | '||' | '=>' | '<=>' | '->' | '<->'
			 */
			if(trio.getTrioR().getTrioOP2().equals("&&")) 
				return new And(getTRIOLF(trio.getTrioL()), getTRIOF(trio.getTrioR().getTrio()));
			if(trio.getTrioR().getTrioOP2().equals("||"))
				return new Or(getTRIOLF(trio.getTrioL()), getTRIOF(trio.getTrioR().getTrio()));
			if(trio.getTrioR().getTrioOP2().equals("=>") || trio.getTrioR().getTrioOP2().equals("->"))
				return new Implies(getTRIOLF(trio.getTrioL()), getTRIOF(trio.getTrioR().getTrio()));
			if(trio.getTrioR().getTrioOP2().equals("<=>") || trio.getTrioR().getTrioOP2().equals("<->"))
				return new Iff(getTRIOLF(trio.getTrioL()), getTRIOF(trio.getTrioR().getTrio()));
			}
		return null;
	}
	
	/*
	 * TRIOL:
	trioVar=ID (opName=ID '()')? |
	arithBool=ArithBool |
	'!(' trioNot=TRIO ')'
	'Time.' trioOpF=TRIOOPF '(' trioOpF1=TRIO ')' |
	'Time.' trioOpFF=TRIOOPFF '(' trioOpFF1=TRIO ',' trioOpFF2=TRIO ')' |
	'Time.' trioOpFN=TRIOOPFN '(' trioOpFN1=TRIO ',' int=INT ')';
	 */
	private BooleanFormulae getTRIOLF(TRIOL trioL) throws Exception { 
		if (trioL.getTrioVar() != null){
			if (trioL.getOpName() == null) //TRIO: trioVar=ID
				if (getTrioVarDeclaration(trioL.getTrioVar()) != null && getTrioVarF(getTrioVarDeclaration(trioL.getTrioVar())) != null)
					return getTrioVarF(getTrioVarDeclaration(trioL.getTrioVar())); // Fetch definition of the triovar.
				else
					return new Predicate(trioL.getTrioVar()); // If there is no definition, it is a <<signal>>. (Time.neverTrue(failure))
			else //TRIO: trioVar=ID opName=ID '()', xtext consumes the '^' character.
				return getOperationCallPredicate(trioL.getTrioVar(), trioL.getOpName());
		}
		if (trioL.getTrioNot() != null)
			return new Not(getTRIOF(trioL.getTrioNot()));
		if (trioL.getArithBool() != null) //TRIO: arithBool=ArithBool
			return getArithBoolF(trioL.getArithBool());
		if (trioL.getTrioOpF() != null) //TRIO: 'Time.' trioOpF=TRIOOPF '(' trioOpF1=TRIO ')' |
			return getTrioOpFF(trioL.getTrioOpF(), trioL.getTrioOpF1());
		if (trioL.getTrioOpFF() != null) //TRIO: 'Time.' trioOpFF=TRIOOPFF '(' trioOpFF1=TRIO ',' trioOpFF2=TRIO ')' |
			return getTrioOpFFF(trioL.getTrioOpFF(), trioL.getTrioOpFF1(), trioL.getTrioOpFF2());
		if (trioL.getTrioOpFN() != null) //TRIO: 'Time.' trioOpFN=TRIOOPFN '(' trioOpFN1=TRIO ',' int=INT ')';
			return getTrioOpFNF(trioL.getTrioOpFN(), trioL.getTrioOpFN1(), trioL.getInt());
		return null;
	}

	/*
	 * terminal TRIOOPFN: //TRIO temporal operators with 1 formula operand and a number
	'futr' | 'past' | 'withinF' | 'withinP' | 'lasts' | 'lasted';
	 */
	private BooleanFormulae getTrioOpFNF(String trioOpFN, TRIO trioOpFN1, int int1) throws Exception { 
		if (trioOpFN.equalsIgnoreCase("futr"))
			return new Futr(getTRIOF(trioOpFN1), int1);
		if (trioOpFN.equalsIgnoreCase("past"))
			return new Past(getTRIOF(trioOpFN1), int1);
		if (trioOpFN.equalsIgnoreCase("withinF") || trioOpFN.equalsIgnoreCase("atLeasetOnceIn"))
			return new WithinF(getTRIOF(trioOpFN1), int1);
		if (trioOpFN.equalsIgnoreCase("withinP"))
			return new WithinP(getTRIOF(trioOpFN1), int1);
		if (trioOpFN.equalsIgnoreCase("lasts"))
			return new Lasts(getTRIOF(trioOpFN1), int1);
		if (trioOpFN.equalsIgnoreCase("lasted"))
			return new Lasted(getTRIOF(trioOpFN1), int1);
		return null;
	}

	/*
	 * terminal TRIOOPFF: //TRIO temporal operators with 2 formula operands
	'until' | 'since' | 'release' | 'trigger';
	 */
	private BooleanFormulae getTrioOpFFF(String trioOpFF, TRIO left, TRIO right) throws Exception { 
		if (trioOpFF.equalsIgnoreCase("until"))
			return new Until(getTRIOF(left), getTRIOF(right));
		if (trioOpFF.equalsIgnoreCase("since"))
			return new Since(getTRIOF(left), getTRIOF(right));
		if (trioOpFF.equalsIgnoreCase("release"))
			return new Release(getTRIOF(left), getTRIOF(right));
		if (trioOpFF.equalsIgnoreCase("trigger"))
			return new Trigger(getTRIOF(left), getTRIOF(right));
		return null;
	}

	/*
	 * terminal TRIOOPF: //TRIO temporal operators with 1 operands
	'alw' | 'som' | 'alwF' | 'somF' | 'alwP' | 'somP' | 'alwaysTrue' | 'alwaysFalse' | 'neverTrue' | 'neverFalse' | 'atLeastOnce' ;
	 */
	private BooleanFormulae getTrioOpFF(String trioOpF, TRIO trio) throws Exception { 
		if (trioOpF.equalsIgnoreCase("alw") || trioOpF.equalsIgnoreCase("always") || trioOpF.equalsIgnoreCase("alwaysTrue") || trioOpF.equalsIgnoreCase("neverFalse"))
			return new Alw(getTRIOF(trio));
		if (trioOpF.equalsIgnoreCase("som") || trioOpF.equalsIgnoreCase("atLeastOnce"))
			return new Som(getTRIOF(trio));
		if (trioOpF.equalsIgnoreCase("alwF") || trioOpF.equalsIgnoreCase("alwaysWillBe"))
			return new AlwF(getTRIOF(trio));
		if (trioOpF.equalsIgnoreCase("alwP") || trioOpF.equalsIgnoreCase("historically") || trioOpF.equalsIgnoreCase("alwaysHasBeen"))
			return new AlwP(getTRIOF(trio));
		if (trioOpF.equalsIgnoreCase("somF") || trioOpF.equalsIgnoreCase("eventually") || trioOpF.equalsIgnoreCase("eventuallyWillBe"))
			return new SomF(getTRIOF(trio));
		if (trioOpF.equalsIgnoreCase("somP"))
			return new SomP(getTRIOF(trio));
		if (trioOpF.equalsIgnoreCase("alwaysFalse") || trioOpF.equalsIgnoreCase("neverTrue"))
			return new Alw(new Not(getTRIOF(trio)));
		return null;
	}

	/*
	 * ArithBool:
	arithTerm1=ArithTerm (arithCOP=ARITH_COMPARE_OP arithTerm2=ArithTerm)?;
	 */
	private BooleanFormulae getArithBoolF(ArithBool arithBool) throws Exception {
		if (arithBool.getArithCOP() != null){
			BooleanFormulae left = getArithTermF(arithBool.getArithTerm1());
			BooleanFormulae right = getArithTermF(arithBool.getArithTerm2());
			switch (arithBool.getArithCOP()) {
			case "==":
				return new EQ(left, right);
			case ">=":
				return new GTE(left, right);
			case "<=":
				return new LTE(left, right);
			case ">":
				return new GT(left, right);
			case "<":
				return new LT(left, right);
			case "!=":
				return new NEQ(left, right);
			default:
				break;
			}
		}
		// The only way to surround a TRIO formula with parentheses is TRIO -> ArithBool -> ArithTerm -> '('TRIO')'
		else  
			return getArithTermF(arithBool.getArithTerm1());
		return null;
	}

	/*
	 * ArithTerm:
	arithTermL=ArithTermL arithTermR=ArithTermR?;
	 */
	private BooleanFormulae getArithTermF(ArithTerm arithTerm) throws Exception{
		if (arithTerm.getArithTermR() == null){
			return getArithTermLF(arithTerm.getArithTermL());
		}
		else{
			if (arithTerm.getArithTermL().getTrio() != null)
				if (arithTerm.getArithTermL().getTrio().getTrioR() != null || arithTerm.getArithTermL().getTrio().getTrioL().getArithBool() == null)
					try {
						throw new Exception("Inconsistent use of arithmetic term with logical operand.");
					} catch (Exception e) {
						e.printStackTrace();
					}
			return getArithTermRF(getArithTermLF(arithTerm.getArithTermL()), arithTerm.getArithTermR());
		}
	}
	
	/*
	 * ArithTermL:
	'('trio=TRIO')' |
	constant=DataType |
	arithVar=ArithVar |
	'Futr(' arithTermF=ArithTerm ',' intF=INT ')' |
	'Past(' arithTermP=ArithTerm ',' intP=INT ')';
	 */
	private BooleanFormulae getArithTermLF(ArithTermL arithTermL) throws Exception{ 
		if (arithTermL.getTrio() != null) //ArithTerm: '('trio=TRIO')' 
			return getTRIOF(arithTermL.getTrio());
		if (arithTermL.getConstant() != null) //ArithTerm: constant:DataType;
			return getConstantF(arithTermL.getConstant());
		if (arithTermL.getArithVar() != null) //ArithTerm: arithVar=ArithVar;
			return getArithVarPredicate(arithTermL.getArithVar());
		if (arithTermL.getArithTermF() != null) //ArithTerm: 'Futr(' arithTermLF=ArithTerm ',' intF=INT ')'
			return new Futr(getArithTermF(arithTermL.getArithTermF()), arithTermL.getIntF());
		if (arithTermL.getArithTermP() != null) //ArithTerm: 'Past(' arithTermLP=ArithTerm ',' intP=INT ')'
			return new Past(getArithTermF(arithTermL.getArithTermP()), arithTermL.getIntP());
		return null;
	}
	
	/*
	 * ArithTermR:
	arithOP=ARITH_OP arithTerm=ArithTerm;
	 */
	/*
	 * terminal ARITH_OP:
	'+' | '-' | '*' | '/';
	 */
	private BooleanFormulae getArithTermRF(BooleanFormulae ArithTermLF, ArithTermR arithTermR) throws Exception{ 
		if (arithTermR.getArithTerm().getArithTermL().getTrio() != null)
			try {
				throw new Exception("A Boolean or a TRIO fomula cannot appear as an arithmetic operand.");
			} catch (Exception e) {
				e.printStackTrace();
			}
		switch (arithTermR.getArithOP()) {
		case "+":
			return new Plus(ArithTermLF, getArithTermF(arithTermR.getArithTerm()));
		case "-":
			return new Minus(ArithTermLF, getArithTermF(arithTermR.getArithTerm()));
		case "*":
			return new Multiply(ArithTermLF, getArithTermF(arithTermR.getArithTerm()));
		case "/":
			return new Divide(ArithTermLF, getArithTermF(arithTermR.getArithTerm()));
		default:
			break;
		}
		return null;
	}
	
	private BooleanFormulae getConstantF(DataType dt){ 
		if (dt.getFloat() != null) //DataType: i=INT float=FLOAT
			return new SConstant(new Constant(Float.parseFloat((Integer.toString(dt.getI()) + dt.getFloat()))));
		else{ //DataType: i=INT 
			return new SConstant(new Constant(dt.getI()));
		}
	}
	
	/*
	 * ArithVar:
	obj=ID '.' atr=ID | //This captures obj.atr as well as static attributes (class.atr)
	obj=ID '::' op=ID '.' param=ID |
	sd=ID '.getParameter(' param=ID ')';
	 */
	private BooleanFormulae getArithVarPredicate(ArithVar arithVar){
		if (arithVar.getOp() != null)
			return new TrioVar("OBJ" + arithVar.getObj() + "OP" + arithVar.getOp() + "PARAM" + arithVar.getParam(), PrimitiveType.INTEGER); //modify.preCondition = SOperationParameter.java.modify
		if (arithVar.getSd() != null)
			return new TrioVar("SD" + arithVar.getSd() + "PAR" + arithVar.getParam(), PrimitiveType.INTEGER); //modify.preCondition = SSequenceDiagramParameter.java.modify
		if (arithVar.getAtr() != null)
			if (isAClass(arithVar.getObj()))
				return new TrioVar("ATTR" + arithVar.getAtr(), PrimitiveType.INTEGER); //static var //modify.preCondition = SAttribute.java.modify
			else
				return new TrioVar("OBJ" + arithVar.getObj() + "ATTR" + arithVar.getAtr(), PrimitiveType.INTEGER); //modify.preCondition = SAttribute.java.modify
		return null;
	}

	/*
	 * Declaration:
		...
		trioVar=ID '=' (trio=TRIO | obj=ID '.in(' stateName=ID ')');
	 */
	private BooleanFormulae getTrioVarF(Declaration d) throws Exception {
		if (d.getTrio() != null)
			return getTRIOF(d.getTrio());
		if (d.getStateName() != null)
			return getStatePredicate(d.getObj(), d.getStateName());
		return null;
	}
	
	private boolean isAClass(String className){
		for(org.correttouml.uml.diagrams.classdiagram.Class c: madesModel.getClassdiagram().getClasses())
			if (c.getName().equals(className))
				return true;
		return false;
	}
}
