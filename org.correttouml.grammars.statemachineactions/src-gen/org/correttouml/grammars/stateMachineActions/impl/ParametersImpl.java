/**
 */
package org.correttouml.grammars.stateMachineActions.impl;

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
 * An implementation of the model object '<em><b>Parameters</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.impl.ParametersImpl#getIsPast <em>Is Past</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.impl.ParametersImpl#getIsFuture <em>Is Future</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.impl.ParametersImpl#getParam <em>Param</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.impl.ParametersImpl#getParameters <em>Parameters</em>}</li>
 * </ul>
 *
 * @generated
 */
public class ParametersImpl extends MinimalEObjectImpl.Container implements Parameters
{
  /**
   * The default value of the '{@link #getIsPast() <em>Is Past</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getIsPast()
   * @generated
   * @ordered
   */
  protected static final String IS_PAST_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getIsPast() <em>Is Past</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getIsPast()
   * @generated
   * @ordered
   */
  protected String isPast = IS_PAST_EDEFAULT;

  /**
   * The default value of the '{@link #getIsFuture() <em>Is Future</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getIsFuture()
   * @generated
   * @ordered
   */
  protected static final String IS_FUTURE_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getIsFuture() <em>Is Future</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getIsFuture()
   * @generated
   * @ordered
   */
  protected String isFuture = IS_FUTURE_EDEFAULT;

  /**
   * The default value of the '{@link #getParam() <em>Param</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getParam()
   * @generated
   * @ordered
   */
  protected static final String PARAM_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getParam() <em>Param</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getParam()
   * @generated
   * @ordered
   */
  protected String param = PARAM_EDEFAULT;

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
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ParametersImpl()
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
    return StateMachineActionsPackage.Literals.PARAMETERS;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getIsPast()
  {
    return isPast;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setIsPast(String newIsPast)
  {
    String oldIsPast = isPast;
    isPast = newIsPast;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.PARAMETERS__IS_PAST, oldIsPast, isPast));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getIsFuture()
  {
    return isFuture;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setIsFuture(String newIsFuture)
  {
    String oldIsFuture = isFuture;
    isFuture = newIsFuture;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.PARAMETERS__IS_FUTURE, oldIsFuture, isFuture));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getParam()
  {
    return param;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setParam(String newParam)
  {
    String oldParam = param;
    param = newParam;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.PARAMETERS__PARAM, oldParam, param));
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
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.PARAMETERS__PARAMETERS, oldParameters, newParameters);
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
        msgs = ((InternalEObject)parameters).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - StateMachineActionsPackage.PARAMETERS__PARAMETERS, null, msgs);
      if (newParameters != null)
        msgs = ((InternalEObject)newParameters).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - StateMachineActionsPackage.PARAMETERS__PARAMETERS, null, msgs);
      msgs = basicSetParameters(newParameters, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.PARAMETERS__PARAMETERS, newParameters, newParameters));
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
      case StateMachineActionsPackage.PARAMETERS__PARAMETERS:
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
      case StateMachineActionsPackage.PARAMETERS__IS_PAST:
        return getIsPast();
      case StateMachineActionsPackage.PARAMETERS__IS_FUTURE:
        return getIsFuture();
      case StateMachineActionsPackage.PARAMETERS__PARAM:
        return getParam();
      case StateMachineActionsPackage.PARAMETERS__PARAMETERS:
        return getParameters();
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
      case StateMachineActionsPackage.PARAMETERS__IS_PAST:
        setIsPast((String)newValue);
        return;
      case StateMachineActionsPackage.PARAMETERS__IS_FUTURE:
        setIsFuture((String)newValue);
        return;
      case StateMachineActionsPackage.PARAMETERS__PARAM:
        setParam((String)newValue);
        return;
      case StateMachineActionsPackage.PARAMETERS__PARAMETERS:
        setParameters((Parameters)newValue);
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
      case StateMachineActionsPackage.PARAMETERS__IS_PAST:
        setIsPast(IS_PAST_EDEFAULT);
        return;
      case StateMachineActionsPackage.PARAMETERS__IS_FUTURE:
        setIsFuture(IS_FUTURE_EDEFAULT);
        return;
      case StateMachineActionsPackage.PARAMETERS__PARAM:
        setParam(PARAM_EDEFAULT);
        return;
      case StateMachineActionsPackage.PARAMETERS__PARAMETERS:
        setParameters((Parameters)null);
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
      case StateMachineActionsPackage.PARAMETERS__IS_PAST:
        return IS_PAST_EDEFAULT == null ? isPast != null : !IS_PAST_EDEFAULT.equals(isPast);
      case StateMachineActionsPackage.PARAMETERS__IS_FUTURE:
        return IS_FUTURE_EDEFAULT == null ? isFuture != null : !IS_FUTURE_EDEFAULT.equals(isFuture);
      case StateMachineActionsPackage.PARAMETERS__PARAM:
        return PARAM_EDEFAULT == null ? param != null : !PARAM_EDEFAULT.equals(param);
      case StateMachineActionsPackage.PARAMETERS__PARAMETERS:
        return parameters != null;
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
    result.append(" (isPast: ");
    result.append(isPast);
    result.append(", isFuture: ");
    result.append(isFuture);
    result.append(", param: ");
    result.append(param);
    result.append(')');
    return result.toString();
  }

} //ParametersImpl
