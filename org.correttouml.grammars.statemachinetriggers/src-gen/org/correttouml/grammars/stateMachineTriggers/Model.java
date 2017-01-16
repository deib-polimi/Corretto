/**
 */
package org.correttouml.grammars.stateMachineTriggers;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Model</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.stateMachineTriggers.Model#getTrigger <em>Trigger</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.stateMachineTriggers.StateMachineTriggersPackage#getModel()
 * @model
 * @generated
 */
public interface Model extends EObject
{
  /**
   * Returns the value of the '<em><b>Trigger</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Trigger</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Trigger</em>' containment reference.
   * @see #setTrigger(Trigger)
   * @see org.correttouml.grammars.stateMachineTriggers.StateMachineTriggersPackage#getModel_Trigger()
   * @model containment="true"
   * @generated
   */
  Trigger getTrigger();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineTriggers.Model#getTrigger <em>Trigger</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Trigger</em>' containment reference.
   * @see #getTrigger()
   * @generated
   */
  void setTrigger(Trigger value);

} // Model
