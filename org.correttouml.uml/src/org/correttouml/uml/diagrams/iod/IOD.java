package org.correttouml.uml.diagrams.iod;


import java.util.HashSet;
import java.util.Set;

import org.correttouml.uml.MadesModel;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.uml2.uml.Activity;
import org.eclipse.uml2.uml.ActivityGroup;
import org.eclipse.uml2.uml.InterruptibleActivityRegion;

public class IOD implements ExpressionContext{

	private Activity uml_activity;

	public IOD(org.eclipse.uml2.uml.Activity uml_activity){
		this.uml_activity=uml_activity;
	}
	
	public String getName(){
		return uml_activity.getName();
	}
	
	public Set<Node> getNodes(){
		Set<Node> nodes=new HashSet<Node>();
		for(org.eclipse.uml2.uml.ActivityNode n: uml_activity.getNodes()){
			nodes.add(NodeFactory.getInstance(n));
		}
		return nodes;
	}
	
	public Set<ControlFlow> getControlFlows(){
		Set<ControlFlow> cfs=new HashSet<ControlFlow>();
		for(org.eclipse.uml2.uml.ActivityEdge uml_cf: uml_activity.getEdges()){
			cfs.add(new ControlFlow(uml_cf));
		}
		return cfs;
	}
	
    public ControlFlow findControlFlow(Node source, Node destination) {
        for (ControlFlow c : this.getControlFlows()) {
            if (c.getSource().equals(source) && c.getDestination().equals(destination)) {
                return c;
            }
        }
        return null;
    }
    
    public Set<InterruptibleRegion> getInterruptibleRegions(){
    	Set<InterruptibleRegion> regions=new HashSet<InterruptibleRegion>();
    	for(ActivityGroup ag:this.uml_activity.getGroups()){
    		if(ag instanceof InterruptibleActivityRegion) regions.add(new InterruptibleRegion((InterruptibleActivityRegion)ag));
    	}
    	return regions;
    }

	public String getUMLId() {
		String id=((XMLResource) this.uml_activity.eResource()).getID(uml_activity);
		return id;
	}

	@Override
	public MadesModel getMadesModel() {
		return new MadesModel(uml_activity.getModel());
	}
	
}
