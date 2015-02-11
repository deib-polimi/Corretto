package org.correttouml.plugins.launchinterface.util;

import java.io.File;
import java.io.IOException;

import org.eclipse.swt.widgets.DirectoryDialog;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Shell;

public class ZotSetupUtil {

		public static void InputIsInt(String string, Event e){

			char[] chars = new char[string.length()];
	        string.getChars(0, chars.length, chars, 0);
	        for (int i = 0; i < chars.length; i++) {
	          if (!('0' <= chars[i] && chars[i] <= '9')) {
	            e.doit = false;
	          }
	        }
		}
		
		public static boolean setupModelExists() throws IOException{
			boolean exists= false;
			File zotDir= new File("zotSetupDir");
			File zotSetupFile = new File(zotDir.getPath()+"/zotSetupModel.model");
			if(zotDir.exists() && zotSetupFile.isFile()){
				exists=true;
			}
			return exists;
		}
		
		public static void createSetupModel(){
			File zotDir= new File("zotSetupDir");
			File zotSetupFile = new File(zotDir.getPath()+"/zotSetupModel.model");
			try {
				zotDir.mkdir();
				zotSetupFile.createNewFile();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		public  static boolean removeDirectory(File directory) {
		  if (directory == null)
		    return false;
		  if (!directory.exists())
		    return true;
		  if (!directory.isDirectory())
		    return false;
		  String[] list = directory.list();
		  if (list != null) {
		    for (int i = 0; i < list.length; i++) {
		      File entry = new File(directory, list[i]);
		      if (entry.isDirectory()) {
		        if (!removeDirectory(entry))
		          return false;
		      }
		      else{
		        if (!entry.delete())
		          return false;
		      }
		    }
		  }
		  return directory.delete();
		}
		
		@SuppressWarnings("unused")
		public static boolean TimeBoundisNotEmpty(final String str) {
		    try {
		        Integer.parseInt(str);
		        return true;
		    } catch (NumberFormatException nfe) {
		    	System.err.println("Timebound should be integer");
		    }
		    return false;
		}
		
		public static String getDir(Display display, Shell shell){
			String directory=null;
		    DirectoryDialog dialog = new DirectoryDialog(shell);
		    dialog.setFilterPath("c:\\"); // Windows specific
		   // System.out.println("RESULT=" + dialog.open());
		    directory = dialog.open();
			return directory;
		}
}
