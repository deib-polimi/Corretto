/**
 */
package org.correttouml.grammars.stateMachineActions.impl;

import org.correttouml.grammars.stateMachineActions.Event;
import org.correttouml.grammars.stateMachineActions.Parameters;
import org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Event</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.impl.EventImpl#getEventName <em>Event Name</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.impl.EventImpl#getAssociationEnd <em>Association End</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.impl.EventImpl#getOpName <em>Op Name</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.impl.EventImpl#getParameters <em>Parameters</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.impl.EventImpl#getEventExtension <em>Event Extension</em>}</li>
 * </ul>
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
   * The default value of the '{@link #getAssociationEnd() <em>Association End</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getAssociationEnd()
   * @generated
   * @ordered
   */
  protected static final String ASSOCIATION_END_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getAssociationEnd() <em>Association End</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getAssociationEnd()
   * @generated
   * @ordered
   */
  protected String associationEnd = ASSOCIATION_END_EDEFAULT;

  /**
   * The default value of the '{@link #getOpName() <em>Op Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getOpName()
   * @generated
   * @ordered
   */
  protected static final String OP_NAME_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getOpName() <em>Op Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getOpName()
   * @generated
   * @ordered
   */
  protected String opName = OP_NAME_EDEFAULT;

  /**
   * The cached value of the '{@link #getParameters() <em>Parameters</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getParameters()
   * @generated
   * @ordered
   */
  protected Parameters parameters;

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
    return StateMachineActionsPackage.Literals.EVENT;
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
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.EVENT__EVENT_NAME, oldEventName, eventName));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getAssociationEnd()
  {
    return associationEnd;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setAssociationEnd(String newAssociationEnd)
  {
    String oldAssociationEnd = associationEnd;
    associationEnd = newAssociationEnd;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.EVENT__ASSOCIATION_END, oldAssociationEnd, associationEnd));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getOpName()
  {
    return opName;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setOpName(String newOpName)
  {
    String oldOpName = opName;
    opName = newOpName;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.EVENT__OP_NAME, oldOpName, opName));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Parameters getParameters()
  {
    return parameters;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetParameters(Parameters newParameters, NotificationChain msgs)
  {
    Parameters oldParameters = parameters;
    parameters = newParameters;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.EVENT__PARAMETERS, oldParameters, newParameters);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setParameters(Parameters newParameters)
  {
    if (newParameters != parameters)
    {
      NotificationChain msgs = null;
      if (parameters != null)
        msgs = ((InternalEObject)parameters).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - StateMachineActionsPackage.EVENT__PARAMETERS, null, msgs);
      if (newParameters != null)
        msgs = ((InternalEObject)newParameters).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - StateMachineActionsPackage.EVENT__PARAMETERS, null, msgs);
      msgs = basicSetParameters(newParameters, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.EVENT__PARAMETERS, newParameters, newParameters));
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
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.EVENT__EVENT_EXTENSION, oldEventExtension, eventExtension));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs)
  {
    switch (featureID)
    {
      case StateMachineActionsPackage.EVENT__PARAMETERS:
        return basicSetParameters(null, msgs);
    }
    return super.eInverseRemove(otherEnd, featureID, msgs);
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
      case StateMachineActionsPackage.EVENT__EVENT_NAME:
        return getEventName();
      case StateMachineActionsPackage.EVENT__ASSOCIATION_END:
        return getAssociationEnd();
      case StateMachineActionsPackage.EVENT__OP_NAME:
        return getOpName();
      case StateMachineActionsPackage.EVENT__PARAMETERS:
        return getParameters();
      case StateMachineActionsPackage.EVENT__EVENT_EXTENSION:
        return getEventExtension();
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
      case StateMachineActionsPackage.EVENT__EVENT_NAME:
        setEventName((String)newValue);
        return;
      case StateMachineActionsPackage.EVENT__ASSOCIATION_END:
        setAssociationEnd((String)newValue);
        return;
      case StateMachineActionsPackage.EVENT__OP_NAME:
        setOpName((String)newValue);
        return;
      case StateMachineActionsPackage.EVENT__PARAMETERS:
        setParameters((Parameters)newValue);
        return;
      case StateMachineActionsPackage.EVENT__EVENT_EXTENSION:
        setEventExtension((String)newValue);
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
      case StateMachineActionsPackage.EVENT__EVENT_NAME:
        setEventName(EVENT_NAME_EDEFAULT);
        return;
      case StateMachineActionsPackage.EVENT__ASSOCIATION_END:
        setAssociationEnd(ASSOCIATION_END_EDEFAULT);
        return;
      case StateMachineActionsPackage.EVENT__OP_NAME:
        setOpName(OP_NAME_EDEFAULT);
        return;
      case StateMachineActionsPackage.EVENT__PARAMETERS:
        setParameters((Parameters)null);
        return;
      case StateMachineActionsPackage.EVENT__EVENT_EXTENSION:
        setEventExtension(EVENT_EXTENSION_EDEFAULT);
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
      case StateMachineActionsPackage.EVENT__EVENT_NAME:
        return EVENT_NAME_EDEFAULT == null ? eventName != null : !EVENT_NAME_EDEFAULT.equals(eventName);
      case StateMachineActionsPackage.EVENT__ASSOCIATION_END:
        return ASSOCIATION_END_EDEFAULT == null ? associationEnd != null : !ASSOCIATION_END_EDEFAULT.equals(associationEnd);
      case StateMachineActionsPackage.EVENT__OP_NAME:
        return OP_NAME_EDEFAULT == null ? opName != null : !OP_NAME_EDEFAULT.equals(opName);
      case StateMachineActionsPackage.EVENT__PARAMETERS:
        return parameters != null;
      case StateMachineActionsPackage.EVENT__EVENT_EXTENSION:
        return EVENT_EXTENSION_EDEFAULT == null ? eventExtension != null : !EVENT_EXTENSION_EDEFAULT.equals(eventExtension);
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
    result.append(", associationEnd: ");
    result.append(associationEnd);
    result.append(", opName: ");
    result.append(opName);
    result.append(", eventExtension: ");
    result.append(eventExtension);
    result.append(')');
    return result.toString();
  }

} //EventImpl
