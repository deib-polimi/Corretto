package org.correttouml.uml2zot.tests;

import java.io.File;

public class TestConfiguration {

	public static String PATH_TO_REPOSITORY=new File(".").getAbsoluteFile().getParentFile().getParentFile().getAbsolutePath().toString();
	public static String MADES_PROFILE_PATH=PATH_TO_REPOSITORY+"/org.correttouml.profiles/resources/model.profile.uml";
	public static String MODEL_SAVE_PATH=PATH_TO_REPOSITORY+"/org.correttouml.uml2zot/tmp";
	public static String MODEL_SAVE_NAME="model";
	public static String MODEL_FILE="tmp/model.uml";
	
}
