/**
 */
package org.correttouml.grammars.stateMachineTriggers;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Event</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.stateMachineTriggers.Event#getObjName <em>Obj Name</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineTriggers.Event#getEventName <em>Event Name</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineTriggers.Event#getEventExtension <em>Event Extension</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineTriggers.Event#isNowEvent <em>Now Event</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.stateMachineTriggers.StateMachineTriggersPackage#getEvent()
 * @model
 * @generated
 */
public interface Event extends EObject
{
  /**
   * Returns the value of the '<em><b>Obj Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Obj Name</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Obj Name</em>' attribute.
   * @see #setObjName(String)
   * @see org.correttouml.grammars.stateMachineTriggers.StateMachineTriggersPackage#getEvent_ObjName()
   * @model
   * @generated
   */
  String getObjName();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineTriggers.Event#getObjName <em>Obj Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Obj Name</em>' attribute.
   * @see #getObjName()
   * @generated
   */
  void setObjName(String value);

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
   * @see org.correttouml.grammars.stateMachineTriggers.StateMachineTriggersPackage#getEvent_EventName()
   * @model
   * @generated
   */
  String getEventName();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineTriggers.Event#getEventName <em>Event Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Event Name</em>' attribute.
   * @see #getEventName()
   * @generated
   */
  void setEventName(String value);

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
   * @see org.correttouml.grammars.stateMachineTriggers.StateMachineTriggersPackage#getEvent_EventExtension()
   * @model
   * @generated
   */
  String getEventExtension();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineTriggers.Event#getEventExtension <em>Event Extension</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Event Extension</em>' attribute.
   * @see #getEventExtension()
   * @generated
   */
  void setEventExtension(String value);

  /**
   * Returns the value of the '<em><b>Now Event</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Now Event</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Now Event</em>' attribute.
   * @see #setNowEvent(boolean)
   * @see org.correttouml.grammars.stateMachineTriggers.StateMachineTriggersPackage#getEvent_NowEvent()
   * @model
   * @generated
   */
  boolean isNowEvent();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineTriggers.Event#isNowEvent <em>Now Event</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Now Event</em>' attribute.
   * @see #isNowEvent()
   * @generated
   */
  void setNowEvent(boolean value);

} // Event
