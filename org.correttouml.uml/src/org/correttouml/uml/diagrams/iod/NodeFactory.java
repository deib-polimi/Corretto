package org.correttouml.uml.diagrams.iod;

public class NodeFactory {

	public static Node getInstance(
			org.eclipse.uml2.uml.ActivityNode uml_activitynode) {
		try {
			if (uml_activitynode instanceof org.eclipse.uml2.uml.InitialNode) {
				return new InitialNode(
						(org.eclipse.uml2.uml.InitialNode) uml_activitynode);
			}
			if (uml_activitynode instanceof org.eclipse.uml2.uml.ActivityFinalNode) {
				return new FinalNode(
						(org.eclipse.uml2.uml.ActivityFinalNode) uml_activitynode);
			}
			if (uml_activitynode instanceof org.eclipse.uml2.uml.FlowFinalNode) {
				return new FlowFinalNode(
						(org.eclipse.uml2.uml.FlowFinalNode) uml_activitynode);
			}
			if (uml_activitynode instanceof org.eclipse.uml2.uml.ForkNode) {
				return new ForkNode(
						(org.eclipse.uml2.uml.ForkNode) uml_activitynode);
			}
			if (uml_activitynode instanceof org.eclipse.uml2.uml.JoinNode) {
				return new JoinNode(
						(org.eclipse.uml2.uml.JoinNode) uml_activitynode);
			}
			if (uml_activitynode instanceof org.eclipse.uml2.uml.DecisionNode) {
				return new DecisionNode(
						(org.eclipse.uml2.uml.DecisionNode) uml_activitynode);
			}
			if (uml_activitynode instanceof org.eclipse.uml2.uml.MergeNode) {
				return new MergeNode(
						(org.eclipse.uml2.uml.MergeNode) uml_activitynode);
			}
			if (uml_activitynode instanceof org.eclipse.uml2.uml.CallBehaviorAction) {
				return new SequenceDiagramNode(
						(org.eclipse.uml2.uml.CallBehaviorAction) uml_activitynode);
			}
			if (uml_activitynode instanceof org.eclipse.uml2.uml.AcceptEventAction){
				return new AcceptEventAction((org.eclipse.uml2.uml.AcceptEventAction)uml_activitynode);
			}
			throw new Exception("Activity node not supported");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
