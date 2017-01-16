package org.correttouml.uml.diagrams.sequencediagram;

import java.util.ArrayList;
import org.correttouml.uml.diagrams.property.PTermElement;
import org.eclipse.uml2.uml.Element;

/**
*@author Mohammad Mehdi Pourhashem Kallehbasti 
*/
public class CombinedFragment implements CombinedFragmentItf, InteractionFragment, PTermElement{

	private org.eclipse.uml2.uml.CombinedFragment uml_combinedFragment;
	
	public CombinedFragment(org.eclipse.uml2.uml.CombinedFragment combinedFragment) {
		this.uml_combinedFragment = combinedFragment;
	}
	
	public String getName(){
		return uml_combinedFragment.getName();
	}
	
	public String getPredicateName(){
		//PrdName of  opt1, which is enclosed by par1, which is enclosed by SD1 is "SD1_par1_opt1"
		String predicatename = uml_combinedFragment.getName();
		org.eclipse.uml2.uml.Element element = uml_combinedFragment;//###
		while (!(element.getOwner() instanceof org.eclipse.uml2.uml.Package)) {
			if (element.getOwner() instanceof org.eclipse.uml2.uml.CombinedFragment) {
				element = element.getOwner();
				predicatename = ((org.eclipse.uml2.uml.CombinedFragment) element).getName() + '_' + predicatename;
			} else if (element.getOwner() instanceof org.eclipse.uml2.uml.InteractionOperand){
				element = element.getOwner();
				predicatename = ((org.eclipse.uml2.uml.InteractionOperand) element).getName() + '_' + predicatename;
			} else if (element.getOwner() instanceof org.eclipse.uml2.uml.Interaction) {
				element = element.getOwner();
				predicatename = ((org.eclipse.uml2.uml.Interaction) element).getName() + '_' + predicatename;
			}
		}
		return predicatename;

//		//PrdName of  opt1, which is enclosed by par1, which is enclosed by SD1 is "SD1_par1_opt1"
//		String prefix = "";
//		org.eclipse.uml2.uml.InteractionFragment tempif = (org.eclipse.uml2.uml.InteractionFragment)uml_combinedFragment;//###
//		while (tempif.getEnclosingInteraction() != null){
//			prefix = tempif.getEnclosingInteraction().getName() + '_' + prefix;
//			tempif = tempif.getEnclosingInteraction();
//		}
//		return prefix + uml_combinedFragment.getName();
}
	
	public String getSDName(){
		org.eclipse.uml2.uml.Element element = uml_combinedFragment;
		while (!(element.getOwner() instanceof org.eclipse.uml2.uml.Package)) {
			element = element.getOwner();
		}
		return ((org.eclipse.uml2.uml.Interaction) element).getName();
	}
	
	public SequenceDiagram getSD(){
		org.eclipse.uml2.uml.Element element = uml_combinedFragment;
		while (!(element.getOwner() instanceof org.eclipse.uml2.uml.Package)) {
			element = element.getOwner();
		}
		return (new SequenceDiagram((org.eclipse.uml2.uml.Interaction) element));
	}
	
	public String getOperatorName(){
		return uml_combinedFragment.getInteractionOperator().getName();
	}
	
	public ArrayList<InteractionOperand> getOperands(){
		ArrayList<InteractionOperand> ios = new ArrayList<InteractionOperand>();
		for (int i = 0; i < uml_combinedFragment.getOperands().size(); i++) {
			ios.add(new InteractionOperand(uml_combinedFragment.getOperands().get(i)));
		}
		return ios;
	}

	public ArrayList<InteractionOperand> getUMLOperands(){//It is excactly getOperands(). Since this getOperands() method is overridden in subclass (CF_Alt), super.getOperand() is not accessible. 
		ArrayList<InteractionOperand> ios = new ArrayList<InteractionOperand>();
		for (int i = 0; i < uml_combinedFragment.getOperands().size(); i++) {
			ios.add(new InteractionOperand(uml_combinedFragment.getOperands().get(i)));
		}
		return ios;
	}
	
	public ArrayList<String> getOperandsNames(){
		ArrayList<String> operandsnames = new ArrayList<String>();
		for (InteractionOperand io: getOperands())
			operandsnames.add(io.getName());
		return operandsnames;
	}
	
	public ArrayList<Lifeline> getLifelines(){
		ArrayList<Lifeline> lifelines = new ArrayList<Lifeline>();
		for (org.eclipse.uml2.uml.Lifeline l : uml_combinedFragment.getCovereds())
			lifelines.add(new Lifeline(l));
		return lifelines;
	}
	
	public ArrayList<InteractionFragment> getPreIFs(){ ////###test when a lifeline is not included in CF
		ArrayList<InteractionFragment> CFPreIFs = new ArrayList<InteractionFragment>();
		org.eclipse.uml2.uml.Interaction enclosingfragment = uml_combinedFragment.getEnclosingInteraction();
		if (enclosingfragment != null) { 
			for (org.eclipse.uml2.uml.Lifeline l : uml_combinedFragment.getCovereds()) {
				//<get lifeline's events (InteractionFragment)>
				ArrayList<InteractionFragment> lifelineifs = new ArrayList<InteractionFragment>();
				for (org.eclipse.uml2.uml.InteractionFragment ifr : enclosingfragment.getFragments()) {
					if (l.getCoveredBys().contains(ifr)) 
						lifelineifs.add(InteractionFragmentFactory.getInstance(ifr));
				}
				//</get lifeline's events (InteractionFragment)>

				for(int i=0;i<lifelineifs.size();i++){
					if (lifelineifs.get(i) instanceof CombinedFragment){
						//					CombinedFragment cf = new CombinedFragment((org.eclipse.uml2.uml.CombinedFragment)lifelineifs.get(i));
						CombinedFragment cf = (CombinedFragment) lifelineifs.get(i);
						if (cf.getName() == this.getName())
							if (i == 0)
								CFPreIFs.add(null);
							else
								CFPreIFs.add(lifelineifs.get(i - 1));
					}
				}
			}
		} else {
			org.eclipse.uml2.uml.InteractionOperand enclosingoperand = uml_combinedFragment.getEnclosingOperand();
			for (org.eclipse.uml2.uml.Lifeline l : uml_combinedFragment.getCovereds()) {
				//<get lifeline's events (InteractionFragment)>
				ArrayList<InteractionFragment> lifelineifs = new ArrayList<InteractionFragment>();
				for (org.eclipse.uml2.uml.InteractionFragment ifr : enclosingoperand.getFragments()) {
					if (l.getCoveredBys().contains(ifr)) 
						lifelineifs.add(InteractionFragmentFactory.getInstance(ifr));
				}
				//</get lifeline's events (InteractionFragment)>

				for(int i=0;i<lifelineifs.size();i++){
					if (lifelineifs.get(i) instanceof CombinedFragment){
						//					CombinedFragment cf = new CombinedFragment((org.eclipse.uml2.uml.CombinedFragment)lifelineifs.get(i));
						CombinedFragment cf = (CombinedFragment) lifelineifs.get(i);
						if (cf.getName() == this.getName())
							if (i == 0)
								CFPreIFs.add(null);
							else
								CFPreIFs.add(lifelineifs.get(i - 1));
					}
				}
			}
		}
		
		return CFPreIFs;
	}
	
	public ArrayList<InteractionFragment> getPostIFs(){ ////###test when a lifeline is not included in CF
		ArrayList<InteractionFragment> CFPostIFs = new ArrayList<InteractionFragment>();
		org.eclipse.uml2.uml.Interaction enclosingfragment = uml_combinedFragment.getEnclosingInteraction();
		if (enclosingfragment != null) {
		for (org.eclipse.uml2.uml.Lifeline l : uml_combinedFragment.getCovereds()) {
			//<get lifeline's events (InteractionFragment)>
			ArrayList<InteractionFragment> lifelineifs = new ArrayList<InteractionFragment>();
			for (org.eclipse.uml2.uml.InteractionFragment ifr : enclosingfragment.getFragments()) {
				if (l.getCoveredBys().contains(ifr)) 
					lifelineifs.add(InteractionFragmentFactory.getInstance(ifr));
			}
			//</get lifeline's events (InteractionFragment)>
			
			for(int i=0;i<lifelineifs.size();i++){
				if (lifelineifs.get(i) instanceof CombinedFragment){
//					CombinedFragment cf = new CombinedFragment((org.eclipse.uml2.uml.CombinedFragment)lifelineifs.get(i));
					CombinedFragment cf = (CombinedFragment)lifelineifs.get(i);
					if (cf.getName() == this.getName())
						if (i < lifelineifs.size() - 1)
							CFPostIFs.add(lifelineifs.get(i + 1));
						else
							CFPostIFs.add(null);
				}
			}
		}
		}else {
			org.eclipse.uml2.uml.InteractionOperand enclosingoperand = uml_combinedFragment.getEnclosingOperand();
			for (org.eclipse.uml2.uml.Lifeline l : uml_combinedFragment.getCovereds()) {
				//<get lifeline's events (InteractionFragment)>
				ArrayList<InteractionFragment> lifelineifs = new ArrayList<InteractionFragment>();
				for (org.eclipse.uml2.uml.InteractionFragment ifr : enclosingoperand.getFragments()) {
					if (l.getCoveredBys().contains(ifr)) 
						lifelineifs.add(InteractionFragmentFactory.getInstance(ifr));
				}
				//</get lifeline's events (InteractionFragment)>
				
				for(int i=0;i<lifelineifs.size();i++){
					if (lifelineifs.get(i) instanceof CombinedFragment){
//						CombinedFragment cf = new CombinedFragment((org.eclipse.uml2.uml.CombinedFragment)lifelineifs.get(i));
						CombinedFragment cf = (CombinedFragment)lifelineifs.get(i);
						if (cf.getName() == this.getName())
							if (i < lifelineifs.size() - 1)
								CFPostIFs.add(lifelineifs.get(i + 1));
							else
								CFPostIFs.add(null);
					}
				}
			}
		}
			
		return CFPostIFs;
	}
	
	public org.eclipse.uml2.uml.Interaction getEnclosingFragment(){ ////###test for enclosingF is CF and when it is CF_Op
		return uml_combinedFragment.getEnclosingInteraction();
	}
	
	public org.eclipse.uml2.uml.InteractionOperand getEnclosingOperand(){ ////###test for enclosingF is CF and when it is CF_Op
		return uml_combinedFragment.getEnclosingOperand();
	}
	
	public ArrayList<String> getGuards(){
		ArrayList<String> guards = new ArrayList<String>();
		for (org.eclipse.uml2.uml.InteractionOperand operand:uml_combinedFragment.getOperands()) {
			guards.add(new InteractionOperand(operand).getGuard());
		}
		return guards;
	}
	
	public ArrayList<Element> getEnclosingFragments(){ // returns sequence enclosing fragments, whose first element is operand and next elements are operands or CFs and last element is SD. 
		org.eclipse.uml2.uml.Element element = uml_combinedFragment;
		ArrayList<Element> elements = new ArrayList<Element>();
		while (!(element.getOwner() instanceof org.eclipse.uml2.uml.Package)) {
			element = element.getOwner();
			elements.add(element);
		}
		return elements;
	}
	
}
