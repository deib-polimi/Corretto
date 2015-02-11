package org.correttouml.uml.helpers;

public class StDTransitionsParser {

	private String trigger;
	private String guard;
	private String action;

	public void parse(String transition){
		transition=transition.trim();
		
		//no trigger, no guard, no action
		if(transition.equals("")){
			this.trigger=null;
			this.guard=null;
			this.action=null;
		}
		//no trigger, no guard, action
		else if(transition.indexOf("/")==0){
			this.trigger=null;
			this.guard=null;
			this.action=transition.substring(transition.indexOf("/")+1, transition.length());
		}
		//no trigger, guard, no action
		else if(transition.indexOf("[")==0 && transition.indexOf("/")==-1){
			this.trigger=null;
			this.guard=transition.substring(transition.indexOf("[")+1, transition.indexOf("]"));
			this.action=null;
		}
		//no trigger, guard, action
		else if(transition.indexOf("[")==0 && transition.indexOf("/")!=-1){
			this.trigger=null;
			this.guard=transition.substring(transition.indexOf("[")+1, transition.indexOf("]"));
			this.action=transition.substring(transition.indexOf("/")+1, transition.length());
		}
		//trigger, no guard, no action
		else if(transition.length()>0 && transition.indexOf("[")==-1 && transition.indexOf("/")==-1){
			this.trigger=transition;
			this.guard=null;
			this.action=null;
		}
		//trigger, no guard, action
		else if(transition.indexOf("[")==-1 && transition.indexOf("/")!=-1 && transition.indexOf("/")!=-0 ){
			this.trigger=transition.substring(0,transition.indexOf("/"));
			this.guard=null;
			this.action=transition.substring(transition.indexOf("/")+1, transition.length());
		}
		//trigger, guard, no action
		else if(transition.indexOf("[")!=-1 && transition.indexOf("[")!=0 && transition.indexOf("/")==-1 ){
			this.trigger=transition.substring(0,transition.indexOf("["));
			this.guard=transition.substring(transition.indexOf("[")+1, transition.indexOf("]"));
			this.action=null;
		}
		//trigger, guard, action
		else if(transition.indexOf("[")!=-1 && transition.indexOf("[")!=0 && transition.indexOf("/")!=-1){
			this.trigger=transition.substring(0,transition.indexOf("["));
			this.guard=transition.substring(transition.indexOf("[")+1, transition.indexOf("]"));
			this.action=transition.substring(transition.indexOf("/")+1, transition.length());
		}
			

	}
	
	public String getTrigger(){
		return trigger;
	}
	
	public String getGuard(){
		return guard;
	}
	
	public String getAction(){
		return action;
	}
	
	public boolean hasTrigger(){
		return this.trigger!=null;
	}
	
	public boolean hasGuard(){
		return this.guard!=null;
	}
	
	public boolean hasAction(){
		return this.action!=null;
	}
	
}
