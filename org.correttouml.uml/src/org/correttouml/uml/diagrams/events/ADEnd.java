package org.correttouml.uml.diagrams.events;

import org.correttouml.uml.diagrams.activitydiagram.AD;

/**
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class ADEnd implements Event{

	private AD mades_ad;

	public ADEnd(AD ad) {
		this.mades_ad = ad;
	}

	public AD getAD() {
		return mades_ad;
	}

}
