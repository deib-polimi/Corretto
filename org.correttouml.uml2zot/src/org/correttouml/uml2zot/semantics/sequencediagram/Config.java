package org.correttouml.uml2zot.semantics.sequencediagram;

public class Config {
	public ConfigCombine combine;// = ConfigCombine.SYNC;
	public ConfigCombine loop;// = ConfigLoop.SYNC;
	public ConfigWhat what;// = ConfigWhat.NONDETERMINISTICALLY;

	public Config(ConfigCombine combine, ConfigCombine loop, ConfigWhat what) {
		this.combine = combine;
		this.loop = loop;
		this.what = what;
	}
}
