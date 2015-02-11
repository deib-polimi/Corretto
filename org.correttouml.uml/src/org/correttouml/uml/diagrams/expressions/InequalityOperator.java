package org.correttouml.uml.diagrams.expressions;

public enum InequalityOperator {
	NEQ, EQ, GT, GTE, LT, LTE;
	
	public static InequalityOperator getOpFromString(String operator){
		if(operator.equals("==")) return EQ;
		else if(operator.equals("!=")) return NEQ;
		else if(operator.equals(">")) return GT;
		else if(operator.equals(">=")) return GTE;
		else if(operator.equals("<")) return LT;
		else if(operator.equals("<=")) return LTE;
		return null;
	}
}
