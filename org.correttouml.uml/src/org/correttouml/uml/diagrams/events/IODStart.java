package org.correttouml.uml.diagrams.events;

import org.correttouml.uml.diagrams.iod.IOD;

/**
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class IODStart implements Event{

	private IOD mades_iod;

	public IODStart(IOD iod) {
		this.mades_iod = iod;
	}

	public IOD getIOD() {
		return mades_iod;
	}

}
