package org.correttouml.uml2zot.semantics.sequencediagram;

import org.correttouml.uml.diagrams.sequencediagram.*;

public class SCombinedFragmentFactory {
	public static SCombinedFragmentItf getInstance(CombinedFragmentItf mades_combinedfragment){
		if (mades_combinedfragment instanceof CF_Alt)
			return new SCF_Alt((CF_Alt)mades_combinedfragment);
		if (mades_combinedfragment instanceof CF_Opt)
			return new SCF_Opt((CF_Opt)mades_combinedfragment);
		if (mades_combinedfragment instanceof CF_Par)
			return new SCF_Par((CF_Par)mades_combinedfragment);
		if (mades_combinedfragment instanceof CF_Loop)
			return new SCF_Loop((CF_Loop)mades_combinedfragment);
		if (mades_combinedfragment instanceof CF_Break)
			return new SCF_Break((CF_Break)mades_combinedfragment);
		return null;
	}
}
