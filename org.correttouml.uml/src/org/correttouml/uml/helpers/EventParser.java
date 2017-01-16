package org.correttouml.uml.helpers;

public class EventParser {

	private String objectName;
	private String eventName;
	private String eventExtension;
	
	public EventParser(String event){
		//For @objName.adName.adstart:
		if (event.split("[.]").length == 3) {
			objectName = event.split("[.]")[0].substring(1);
			eventName = event.split("[.]")[1];
			eventExtension = event.split("[.]")[2];
		}
		//For the rest of events:
		else {
			objectName = null;
			eventName = event.split("[.]")[0].substring(1);
			eventExtension = event.split("[.]")[1];
		}
	}
	
	public String getObjectName(){
		return objectName;
	}
	
	public String getEventName(){
		return eventName;
	}
	
	public String getEventExtension(){
		return eventExtension;
	}
	
}
