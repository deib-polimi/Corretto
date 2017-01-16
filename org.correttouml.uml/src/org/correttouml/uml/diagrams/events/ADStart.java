package org.correttouml.uml.diagrams.events;

import org.correttouml.uml.diagrams.activitydiagram.AD;

/**
 * @author Mohammad Mehdi Pourhashem Kallehbasti
 */
public class ADStart implements Event{

	private AD mades_ad;

	public ADStart(AD ad) {
		this.mades_ad = ad;
	}

	public AD getAD() {
		return mades_ad;
	}

}
