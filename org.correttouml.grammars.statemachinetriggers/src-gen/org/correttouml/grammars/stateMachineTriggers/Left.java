/**
 */
package org.correttouml.grammars.stateMachineTriggers;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Left</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.stateMachineTriggers.Left#getEvent <em>Event</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.stateMachineTriggers.StateMachineTriggersPackage#getLeft()
 * @model
 * @generated
 */
public interface Left extends EObject
{
  /**
   * Returns the value of the '<em><b>Event</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Event</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Event</em>' containment reference.
   * @see #setEvent(Event)
   * @see org.correttouml.grammars.stateMachineTriggers.StateMachineTriggersPackage#getLeft_Event()
   * @model containment="true"
   * @generated
   */
  Event getEvent();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineTriggers.Left#getEvent <em>Event</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Event</em>' containment reference.
   * @see #getEvent()
   * @generated
   */
  void setEvent(Event value);

} // Left
