/**
 */
package org.correttouml.grammars.stateMachineActions.impl;

import org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage;
import org.correttouml.grammars.stateMachineActions.TERM;

import org.eclipse.emf.common.notify.Notification;

import org.eclipse.emf.ecore.EClass;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>TERM</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.impl.TERMImpl#getIsPast <em>Is Past</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.impl.TERMImpl#getIsFuture <em>Is Future</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.impl.TERMImpl#getVariable <em>Variable</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.impl.TERMImpl#getConstant <em>Constant</em>}</li>
 * </ul>
 *
 * @generated
 */
public class TERMImpl extends MinimalEObjectImpl.Container implements TERM
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
   * The default value of the '{@link #getVariable() <em>Variable</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getVariable()
   * @generated
   * @ordered
   */
  protected static final String VARIABLE_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getVariable() <em>Variable</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getVariable()
   * @generated
   * @ordered
   */
  protected String variable = VARIABLE_EDEFAULT;

  /**
   * The default value of the '{@link #getConstant() <em>Constant</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getConstant()
   * @generated
   * @ordered
   */
  protected static final int CONSTANT_EDEFAULT = 0;

  /**
   * The cached value of the '{@link #getConstant() <em>Constant</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getConstant()
   * @generated
   * @ordered
   */
  protected int constant = CONSTANT_EDEFAULT;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected TERMImpl()
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
    return StateMachineActionsPackage.Literals.TERM;
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
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.TERM__IS_PAST, oldIsPast, isPast));
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
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.TERM__IS_FUTURE, oldIsFuture, isFuture));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getVariable()
  {
    return variable;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setVariable(String newVariable)
  {
    String oldVariable = variable;
    variable = newVariable;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.TERM__VARIABLE, oldVariable, variable));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public int getConstant()
  {
    return constant;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setConstant(int newConstant)
  {
    int oldConstant = constant;
    constant = newConstant;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.TERM__CONSTANT, oldConstant, constant));
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
      case StateMachineActionsPackage.TERM__IS_PAST:
        return getIsPast();
      case StateMachineActionsPackage.TERM__IS_FUTURE:
        return getIsFuture();
      case StateMachineActionsPackage.TERM__VARIABLE:
        return getVariable();
      case StateMachineActionsPackage.TERM__CONSTANT:
        return getConstant();
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
      case StateMachineActionsPackage.TERM__IS_PAST:
        setIsPast((String)newValue);
        return;
      case StateMachineActionsPackage.TERM__IS_FUTURE:
        setIsFuture((String)newValue);
        return;
      case StateMachineActionsPackage.TERM__VARIABLE:
        setVariable((String)newValue);
        return;
      case StateMachineActionsPackage.TERM__CONSTANT:
        setConstant((Integer)newValue);
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
      case StateMachineActionsPackage.TERM__IS_PAST:
        setIsPast(IS_PAST_EDEFAULT);
        return;
      case StateMachineActionsPackage.TERM__IS_FUTURE:
        setIsFuture(IS_FUTURE_EDEFAULT);
        return;
      case StateMachineActionsPackage.TERM__VARIABLE:
        setVariable(VARIABLE_EDEFAULT);
        return;
      case StateMachineActionsPackage.TERM__CONSTANT:
        setConstant(CONSTANT_EDEFAULT);
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
      case StateMachineActionsPackage.TERM__IS_PAST:
        return IS_PAST_EDEFAULT == null ? isPast != null : !IS_PAST_EDEFAULT.equals(isPast);
      case StateMachineActionsPackage.TERM__IS_FUTURE:
        return IS_FUTURE_EDEFAULT == null ? isFuture != null : !IS_FUTURE_EDEFAULT.equals(isFuture);
      case StateMachineActionsPackage.TERM__VARIABLE:
        return VARIABLE_EDEFAULT == null ? variable != null : !VARIABLE_EDEFAULT.equals(variable);
      case StateMachineActionsPackage.TERM__CONSTANT:
        return constant != CONSTANT_EDEFAULT;
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
    result.append(", variable: ");
    result.append(variable);
    result.append(", constant: ");
    result.append(constant);
    result.append(')');
    return result.toString();
  }

} //TERMImpl
