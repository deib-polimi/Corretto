/**
 */
package org.correttouml.grammars.stateMachineActions;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Event Action</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.EventAction#getLink <em>Link</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.EventAction#getEvent <em>Event</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getEventAction()
 * @model
 * @generated
 */
public interface EventAction extends EObject
{
  /**
   * Returns the value of the '<em><b>Link</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Link</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Link</em>' containment reference.
   * @see #setLink(Link)
   * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getEventAction_Link()
   * @model containment="true"
   * @generated
   */
  Link getLink();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineActions.EventAction#getLink <em>Link</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Link</em>' containment reference.
   * @see #getLink()
   * @generated
   */
  void setLink(Link value);

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
   * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getEventAction_Event()
   * @model containment="true"
   * @generated
   */
  Event getEvent();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineActions.EventAction#getEvent <em>Event</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Event</em>' containment reference.
   * @see #getEvent()
   * @generated
   */
  void setEvent(Event value);

} // EventAction
