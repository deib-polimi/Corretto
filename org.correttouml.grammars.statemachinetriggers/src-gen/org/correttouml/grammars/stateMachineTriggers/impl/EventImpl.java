/**
 */
package org.correttouml.grammars.stateMachineTriggers.impl;

import org.correttouml.grammars.stateMachineTriggers.Event;
import org.correttouml.grammars.stateMachineTriggers.StateMachineTriggersPackage;

import org.eclipse.emf.common.notify.Notification;

import org.eclipse.emf.ecore.EClass;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Event</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * <ul>
 *   <li>{@link org.correttouml.grammars.stateMachineTriggers.impl.EventImpl#getEventName <em>Event Name</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineTriggers.impl.EventImpl#getEventExtension <em>Event Extension</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineTriggers.impl.EventImpl#isNowEvent <em>Now Event</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public class EventImpl extends MinimalEObjectImpl.Container implements Event
{
  /**
   * The default value of the '{@link #getEventName() <em>Event Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getEventName()
   * @generated
   * @ordered
   */
  protected static final String EVENT_NAME_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getEventName() <em>Event Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getEventName()
   * @generated
   * @ordered
   */
  protected String eventName = EVENT_NAME_EDEFAULT;

  /**
   * The default value of the '{@link #getEventExtension() <em>Event Extension</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getEventExtension()
   * @generated
   * @ordered
   */
  protected static final String EVENT_EXTENSION_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getEventExtension() <em>Event Extension</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getEventExtension()
   * @generated
   * @ordered
   */
  protected String eventExtension = EVENT_EXTENSION_EDEFAULT;

  /**
   * The default value of the '{@link #isNowEvent() <em>Now Event</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #isNowEvent()
   * @generated
   * @ordered
   */
  protected static final boolean NOW_EVENT_EDEFAULT = false;

  /**
   * The cached value of the '{@link #isNowEvent() <em>Now Event</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #isNowEvent()
   * @generated
   * @ordered
   */
  protected boolean nowEvent = NOW_EVENT_EDEFAULT;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected EventImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  protected EClass eStaticClass()
  {
    return StateMachineTriggersPackage.Literals.EVENT;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getEventName()
  {
    return eventName;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setEventName(String newEventName)
  {
    String oldEventName = eventName;
    eventName = newEventName;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineTriggersPackage.EVENT__EVENT_NAME, oldEventName, eventName));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getEventExtension()
  {
    return eventExtension;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setEventExtension(String newEventExtension)
  {
    String oldEventExtension = eventExtension;
    eventExtension = newEventExtension;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineTriggersPackage.EVENT__EVENT_EXTENSION, oldEventExtension, eventExtension));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public boolean isNowEvent()
  {
    return nowEvent;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setNowEvent(boolean newNowEvent)
  {
    boolean oldNowEvent = nowEvent;
    nowEvent = newNowEvent;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineTriggersPackage.EVENT__NOW_EVENT, oldNowEvent, nowEvent));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Object eGet(int featureID, boolean resolve, boolean coreType)
  {
    switch (featureID)
    {
      case StateMachineTriggersPackage.EVENT__EVENT_NAME:
        return getEventName();
      case StateMachineTriggersPackage.EVENT__EVENT_EXTENSION:
        return getEventExtension();
      case StateMachineTriggersPackage.EVENT__NOW_EVENT:
        return isNowEvent();
    }
    return super.eGet(featureID, resolve, coreType);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eSet(int featureID, Object newValue)
  {
    switch (featureID)
    {
      case StateMachineTriggersPackage.EVENT__EVENT_NAME:
        setEventName((String)newValue);
        return;
      case StateMachineTriggersPackage.EVENT__EVENT_EXTENSION:
        setEventExtension((String)newValue);
        return;
      case StateMachineTriggersPackage.EVENT__NOW_EVENT:
        setNowEvent((Boolean)newValue);
        return;
    }
    super.eSet(featureID, newValue);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eUnset(int featureID)
  {
    switch (featureID)
    {
      case StateMachineTriggersPackage.EVENT__EVENT_NAME:
        setEventName(EVENT_NAME_EDEFAULT);
        return;
      case StateMachineTriggersPackage.EVENT__EVENT_EXTENSION:
        setEventExtension(EVENT_EXTENSION_EDEFAULT);
        return;
      case StateMachineTriggersPackage.EVENT__NOW_EVENT:
        setNowEvent(NOW_EVENT_EDEFAULT);
        return;
    }
    super.eUnset(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public boolean eIsSet(int featureID)
  {
    switch (featureID)
    {
      case StateMachineTriggersPackage.EVENT__EVENT_NAME:
        return EVENT_NAME_EDEFAULT == null ? eventName != null : !EVENT_NAME_EDEFAULT.equals(eventName);
      case StateMachineTriggersPackage.EVENT__EVENT_EXTENSION:
        return EVENT_EXTENSION_EDEFAULT == null ? eventExtension != null : !EVENT_EXTENSION_EDEFAULT.equals(eventExtension);
      case StateMachineTriggersPackage.EVENT__NOW_EVENT:
        return nowEvent != NOW_EVENT_EDEFAULT;
    }
    return super.eIsSet(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String toString()
  {
    if (eIsProxy()) return super.toString();

    StringBuffer result = new StringBuffer(super.toString());
    result.append(" (eventName: ");
    result.append(eventName);
    result.append(", eventExtension: ");
    result.append(eventExtension);
    result.append(", nowEvent: ");
    result.append(nowEvent);
    result.append(')');
    return result.toString();
  }

} //EventImpl
