/**
 */
package org.correttouml.grammars.stateMachineActions;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Action</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.Action#getAssignment <em>Assignment</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.Action#getEventAction <em>Event Action</em>}</li>
 * </ul>
 * </p>
 *
 * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getAction()
 * @model
 * @generated
 */
public interface Action extends EObject
{
  /**
   * Returns the value of the '<em><b>Assignment</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Assignment</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Assignment</em>' containment reference.
   * @see #setAssignment(Assignment)
   * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getAction_Assignment()
   * @model containment="true"
   * @generated
   */
  Assignment getAssignment();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineActions.Action#getAssignment <em>Assignment</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Assignment</em>' containment reference.
   * @see #getAssignment()
   * @generated
   */
  void setAssignment(Assignment value);

  /**
   * Returns the value of the '<em><b>Event Action</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Event Action</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Event Action</em>' containment reference.
   * @see #setEventAction(EventAction)
   * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getAction_EventAction()
   * @model containment="true"
   * @generated
   */
  EventAction getEventAction();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineActions.Action#getEventAction <em>Event Action</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Event Action</em>' containment reference.
   * @see #getEventAction()
   * @generated
   */
  void setEventAction(EventAction value);

} // Action
