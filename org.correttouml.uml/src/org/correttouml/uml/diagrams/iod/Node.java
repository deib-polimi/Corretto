package org.correttouml.uml.diagrams.iod;

import java.util.Collection;
import java.util.HashSet;


public abstract class Node {

	protected org.eclipse.uml2.uml.ActivityNode uml_activitynode;
	
	public Collection<Node> getIncomingNodes(){
		Collection<Node> nodes=new HashSet<Node>();
		for(org.eclipse.uml2.uml.ActivityEdge e: uml_activitynode.getIncomings()){
			nodes.add(NodeFactory.getInstance(e.getSource()));
		}
		return nodes;
	}
	
	public Collection<Node> getOutgoingNodes(){
		Collection<Node> nodes=new HashSet<Node>();
		for(org.eclipse.uml2.uml.ActivityEdge e: uml_activitynode.getOutgoings()){
			nodes.add(NodeFactory.getInstance(e.getTarget()));
		}
		return nodes;
	}

	public Collection<ControlFlow> getIncomingControlFlows() {
		Collection<ControlFlow> cfs=new HashSet<ControlFlow>();
		for(org.eclipse.uml2.uml.ActivityEdge e: uml_activitynode.getIncomings()){
			cfs.add(new ControlFlow(e));
		}
		return cfs;
	}

	public IOD getIOD() {
		return new IOD(uml_activitynode.getActivity());
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
