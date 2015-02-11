package org.correttouml.uml.helpers;

public class EventParser {

	private String eventName;
	private String eventExtension;
	
	public EventParser(String event){
		this.eventName=event.substring(event.indexOf("@")+1, event.indexOf("."));
		this.eventExtension=event.substring(event.indexOf(".")+1);
	}
	
	public String getEventName(){
		return eventName;
	}
	
	public String getEventExtension(){
		return eventExtension;
	}
	
}
