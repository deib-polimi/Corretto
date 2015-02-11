package org.correttouml.uml.diagrams.classdiagram;

import org.correttouml.uml.MadesModel;
import org.correttouml.uml.diagrams.property.PTermElement;



public class Signal implements PTermElement {
	
	private org.eclipse.uml2.uml.Signal dec_signal;

	public Signal(org.eclipse.uml2.uml.Signal signal){
		this.dec_signal=signal;
	}

	public String getName() {
		return dec_signal.getName();
	}
	
	@Override
	public boolean equals(java.lang.Object o){
		Signal other_signal=(Signal) o;
		return this.dec_signal.equals((org.eclipse.uml2.uml.Signal) other_signal.dec_signal);
	}
	
	@Override
	public int hashCode(){
		return this.dec_signal.hashCode();
	}

	public MadesModel getMadesModel() {
		return new MadesModel(dec_signal.getModel());
	}
}
