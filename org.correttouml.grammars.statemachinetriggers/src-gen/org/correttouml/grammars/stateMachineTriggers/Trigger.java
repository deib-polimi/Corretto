/**
 */
package org.correttouml.grammars.stateMachineTriggers;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Trigger</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link org.correttouml.grammars.stateMachineTriggers.Trigger#getLeft <em>Left</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineTriggers.Trigger#getRight <em>Right</em>}</li>
 * </ul>
 * </p>
 *
 * @see org.correttouml.grammars.stateMachineTriggers.StateMachineTriggersPackage#getTrigger()
 * @model
 * @generated
 */
public interface Trigger extends EObject
{
  /**
   * Returns the value of the '<em><b>Left</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Left</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Left</em>' containment reference.
   * @see #setLeft(Left)
   * @see org.correttouml.grammars.stateMachineTriggers.StateMachineTriggersPackage#getTrigger_Left()
   * @model containment="true"
   * @generated
   */
  Left getLeft();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineTriggers.Trigger#getLeft <em>Left</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Left</em>' containment reference.
   * @see #getLeft()
   * @generated
   */
  void setLeft(Left value);

  /**
   * Returns the value of the '<em><b>Right</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Right</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Right</em>' containment reference.
   * @see #setRight(Right)
   * @see org.correttouml.grammars.stateMachineTriggers.StateMachineTriggersPackage#getTrigger_Right()
   * @model containment="true"
   * @generated
   */
  Right getRight();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineTriggers.Trigger#getRight <em>Right</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Right</em>' containment reference.
   * @see #getRight()
   * @generated
   */
  void setRight(Right value);

} // Trigger
