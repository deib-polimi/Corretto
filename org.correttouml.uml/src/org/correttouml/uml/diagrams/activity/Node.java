package org.correttouml.uml.diagrams.activity;

import java.util.Collection;
import java.util.HashSet;

import org.eclipse.uml2.uml.ControlFlow;
import org.correttouml.uml.diagrams.activity.Activity;
import org.correttouml.uml.diagrams.activity.Activity.Utility;

public abstract class Node {

	protected org.eclipse.uml2.uml.ActivityNode uml_activitynode;
	
	public Collection<Node> getIncomingNodes(){
		Collection<Node> nodes=new HashSet<Node>();
		for(org.eclipse.uml2.uml.ActivityEdge e: uml_activitynode.getIncomings())
			if (e instanceof ControlFlow && Utility.isConcreteNode(e.getSource()))
					nodes.add(NodeFactory.getInstance(e.getSource()));
		return nodes;
	}
	
	public Collection<Node> getOutgoingNodes(){
		Collection<Node> nodes=new HashSet<Node>();
		for(org.eclipse.uml2.uml.ActivityEdge e: uml_activitynode.getOutgoings())
			if (e instanceof ControlFlow && Utility.isConcreteNode(e.getTarget()))
				nodes.add(NodeFactory.getInstance(e.getTarget()));
		return nodes;
	}

//	public Collection<ControlFlow> getIncomingControlFlows() {
//		Collection<ControlFlow> cfs=new HashSet<ControlFlow>();
//		for(org.eclipse.uml2.uml.ActivityEdge e: uml_activitynode.getIncomings()){
//			cfs.add(new ControlFlow(e));
//		}
//		return cfs;
//	}

	public Activity getUMLActivity() {
		return new Activity(uml_activitynode.getActivity(), null);
	}
	
	@Override
	public boolean equals(java.lang.Object o){
		if(!(o instanceof Node)) return false;
		Node other_node=(Node) o;
		return this.uml_activitynode.equals(other_node.uml_activitynode);
	}
	
	@Override
	public int hashCode(){
		return this.uml_activitynode.hashCode();
	}

}
