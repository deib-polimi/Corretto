package org.correttouml.uml2zot.semantics.property;

import org.correttouml.uml.diagrams.property.PAlw;
import org.correttouml.uml.diagrams.property.PAnd;
import org.correttouml.uml.diagrams.property.PBooleanExpression;
import org.correttouml.uml.diagrams.property.PBooleanFormulae;
import org.correttouml.uml.diagrams.property.PEvent;
import org.correttouml.uml.diagrams.property.PFutr;
import org.correttouml.uml.diagrams.property.PImplies;
import org.correttouml.uml.diagrams.property.PLasted;
import org.correttouml.uml.diagrams.property.PLasts;
import org.correttouml.uml.diagrams.property.PNext;
import org.correttouml.uml.diagrams.property.PNot;
import org.correttouml.uml.diagrams.property.POr;
import org.correttouml.uml.diagrams.property.PPast;
import org.correttouml.uml.diagrams.property.PSince;
import org.correttouml.uml.diagrams.property.PSomF;
import org.correttouml.uml.diagrams.property.PSomP;
import org.correttouml.uml.diagrams.property.PTerm;
import org.correttouml.uml.diagrams.property.PUntil;
import org.correttouml.uml.diagrams.property.PWithinF;
import org.correttouml.uml.diagrams.property.PWithinP;
import org.correttouml.uml.diagrams.property.PYesterday;
import org.correttouml.uml.diagrams.property.Property;
import org.correttouml.uml2zot.semantics.util.bool.And;
import org.correttouml.uml2zot.semantics.util.bool.BooleanFormulae;
import org.correttouml.uml2zot.semantics.util.bool.Implies;
import org.correttouml.uml2zot.semantics.util.bool.Not;
import org.correttouml.uml2zot.semantics.util.bool.Or;
import org.correttouml.uml2zot.semantics.util.trio.AlwF;
import org.correttouml.uml2zot.semantics.util.trio.Futr;
import org.correttouml.uml2zot.semantics.util.trio.Lasted;
import org.correttouml.uml2zot.semantics.util.trio.Lasts;
import org.correttouml.uml2zot.semantics.util.trio.Next;
import org.correttouml.uml2zot.semantics.util.trio.Past;
import org.correttouml.uml2zot.semantics.util.trio.Since;
import org.correttouml.uml2zot.semantics.util.trio.SomF;
import org.correttouml.uml2zot.semantics.util.trio.SomP;
import org.correttouml.uml2zot.semantics.util.trio.Until;
import org.correttouml.uml2zot.semantics.util.trio.WithinF;
import org.correttouml.uml2zot.semantics.util.trio.WithinP;
import org.correttouml.uml2zot.semantics.util.trio.Yesterday;


public class SProperty {

	private Property mades_property;

	public SProperty(Property mades_property){
		this.mades_property=mades_property;
	}
	
	public BooleanFormulae getSemantics(){
		
		BooleanFormulae bf=this.parseProperty(mades_property.getRoot());
		
		return bf;
	}

	private BooleanFormulae parseProperty(PBooleanFormulae ff) {
		BooleanFormulae r=null;
		
		if(ff instanceof PAlw){
			//TODO: Why this is an AlwF!?
			r=new AlwF(this.parseProperty(((PAlw) ff).getFormulae()));
		}
		if(ff instanceof PImplies){
			BooleanFormulae left=this.parseProperty(((PImplies)ff).getLeft());
			BooleanFormulae right=this.parseProperty(((PImplies)ff).getRight());
			r=new Implies(left, right);
		}
		if(ff instanceof PLasted){
			BooleanFormulae formulae=this.parseProperty(((PLasted)ff).getFormulae());
			Integer T=((PLasted)ff).getT();
			r=new Lasted(formulae, T);
		}
		if(ff instanceof PLasts){
			BooleanFormulae formulae=this.parseProperty(((PLasts)ff).getFormulae());
			Integer T=((PLasts)ff).getT();
			r=new Lasts(formulae, T);
		}
		if(ff instanceof PNot){
			BooleanFormulae formulae=this.parseProperty(((PNot)ff).getFormulae());
			r=new Not(formulae);
		}
		if(ff instanceof PNext){
			BooleanFormulae formulae=this.parseProperty(((PNext)ff).getFormulae());
			r=new Next(formulae);
		}
		if(ff instanceof PYesterday){
			BooleanFormulae formulae=this.parseProperty(((PYesterday)ff).getFormulae());
			r=new Yesterday(formulae);
		}
		if(ff instanceof PSomP){
			BooleanFormulae formulae=this.parseProperty(((PSomP)ff).getFormulae());
			r=new SomP(formulae);
		}
		if(ff instanceof PSomF){
			BooleanFormulae formulae=this.parseProperty(((PSomF)ff).getFormulae());
			r=new SomF(formulae);
		}
		if(ff instanceof POr){
			BooleanFormulae left=this.parseProperty(((POr)ff).getLeft());
			BooleanFormulae right=this.parseProperty(((POr)ff).getRight());
			r=new Or(left, right);
		}
		if(ff instanceof PAnd){
			BooleanFormulae left=this.parseProperty(((PAnd)ff).getLeft());
			BooleanFormulae right=this.parseProperty(((PAnd)ff).getRight());
			r=new And(left, right);
		}
		if(ff instanceof PWithinP){
			BooleanFormulae formulae=this.parseProperty(((PWithinP)ff).getFormulae());
			Integer T=((PWithinP)ff).getT();
			r=new WithinP(formulae, T);
		}
		if(ff instanceof PWithinF){
			BooleanFormulae formulae=this.parseProperty(((PWithinF)ff).getFormulae());
			Integer T=((PWithinF)ff).getT();
			r=new WithinF(formulae, T);
		}
		if(ff instanceof PSince){
			BooleanFormulae left=this.parseProperty(((PSince)ff).getLeft());
			BooleanFormulae right=this.parseProperty(((PSince)ff).getRight());
			r=new Since(left, right);
		}
		if(ff instanceof PUntil){
			BooleanFormulae left=this.parseProperty(((PUntil)ff).getLeft());
			BooleanFormulae right=this.parseProperty(((PUntil)ff).getRight());
			r=new Until(left, right);
		}
		if(ff instanceof PFutr){
			BooleanFormulae formulae=this.parseProperty(((PFutr)ff).getFormulae());
			Integer T=((PFutr)ff).getT();
			r=new Futr(formulae, T);
		}
		if(ff instanceof PPast){
			BooleanFormulae formulae=this.parseProperty(((PPast)ff).getFormulae());
			Integer T=((PPast)ff).getT();
			r=new Past(formulae, T);
		}
		if(ff instanceof PTerm){
			r=this.parseTerm((PTerm) ff);
		}
		if(ff instanceof PBooleanExpression){
			r=this.parseBooleanExpression((PBooleanExpression) ff);
		}
		if(ff instanceof PEvent){
			r=this.parseEvent((PEvent) ff);
		}
		
		//I did not recognized the operator, notify the unlucky programmer which is going
		//to implement it
		if(r==null){
			try {
				throw new Exception("TRIO operator not yet supported in Property semantics generation");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return r;
	}

	private BooleanFormulae parseBooleanExpression(PBooleanExpression ff) {
		return new PSBooleanExpression(ff).getSemantics();
	}

	private BooleanFormulae parseTerm(PTerm ff) {
		return new SPTerm(ff).getSemantics();
	}
	
	private BooleanFormulae parseEvent(PEvent ff) {
		return new SPEvent(ff).getSemantics();
	}
	
}
