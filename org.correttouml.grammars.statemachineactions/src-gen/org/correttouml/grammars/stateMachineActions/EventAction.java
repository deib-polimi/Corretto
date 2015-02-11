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
 * <ul>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.EventAction#getEventName <em>Event Name</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.EventAction#getParameters <em>Parameters</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.EventAction#getEventExtension <em>Event Extension</em>}</li>
 * </ul>
 * </p>
 *
 * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getEventAction()
 * @model
 * @generated
 */
public interface EventAction extends EObject
{
  /**
   * Returns the value of the '<em><b>Event Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Event Name</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Event Name</em>' attribute.
   * @see #setEventName(String)
   * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getEventAction_EventName()
   * @model
   * @generated
   */
  String getEventName();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineActions.EventAction#getEventName <em>Event Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Event Name</em>' attribute.
   * @see #getEventName()
   * @generated
   */
  void setEventName(String value);

  /**
   * Returns the value of the '<em><b>Parameters</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Parameters</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Parameters</em>' containment reference.
   * @see #setParameters(Parameters)
   * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getEventAction_Parameters()
   * @model containment="true"
   * @generated
   */
  Parameters getParameters();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineActions.EventAction#getParameters <em>Parameters</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Parameters</em>' containment reference.
   * @see #getParameters()
   * @generated
   */
  void setParameters(Parameters value);

  /**
   * Returns the value of the '<em><b>Event Extension</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Event Extension</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Event Extension</em>' attribute.
   * @see #setEventExtension(String)
   * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getEventAction_EventExtension()
   * @model
   * @generated
   */
  String getEventExtension();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineActions.EventAction#getEventExtension <em>Event Extension</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Event Extension</em>' attribute.
   * @see #getEventExtension()
   * @generated
   */
  void setEventExtension(String value);

} // EventAction
