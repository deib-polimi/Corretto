/**
 */
package org.correttouml.grammars.booleanExpressions.impl;

import org.correttouml.grammars.booleanExpressions.BaseExpression;
import org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage;
import org.correttouml.grammars.booleanExpressions.OrExpression;
import org.correttouml.grammars.booleanExpressions.booleanTerm;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Base Expression</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.BaseExpressionImpl#getNot <em>Not</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.BaseExpressionImpl#getBooleanTerm <em>Boolean Term</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.BaseExpressionImpl#getRootExpression <em>Root Expression</em>}</li>
 * </ul>
 *
 * @generated
 */
public class BaseExpressionImpl extends MinimalEObjectImpl.Container implements BaseExpression
{
  /**
   * The default value of the '{@link #getNot() <em>Not</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getNot()
   * @generated
   * @ordered
   */
  protected static final String NOT_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getNot() <em>Not</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getNot()
   * @generated
   * @ordered
   */
  protected String not = NOT_EDEFAULT;

  /**
   * The cached value of the '{@link #getBooleanTerm() <em>Boolean Term</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getBooleanTerm()
   * @generated
   * @ordered
   */
  protected booleanTerm booleanTerm;

  /**
   * The cached value of the '{@link #getRootExpression() <em>Root Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getRootExpression()
   * @generated
   * @ordered
   */
  protected OrExpression rootExpression;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected BaseExpressionImpl()
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
    return BooleanExpressionsPackage.Literals.BASE_EXPRESSION;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getNot()
  {
    return not;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setNot(String newNot)
  {
    String oldNot = not;
    not = newNot;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BASE_EXPRESSION__NOT, oldNot, not));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public booleanTerm getBooleanTerm()
  {
    return booleanTerm;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetBooleanTerm(booleanTerm newBooleanTerm, NotificationChain msgs)
  {
    booleanTerm oldBooleanTerm = booleanTerm;
    booleanTerm = newBooleanTerm;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BASE_EXPRESSION__BOOLEAN_TERM, oldBooleanTerm, newBooleanTerm);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setBooleanTerm(booleanTerm newBooleanTerm)
  {
    if (newBooleanTerm != booleanTerm)
    {
      NotificationChain msgs = null;
      if (booleanTerm != null)
        msgs = ((InternalEObject)booleanTerm).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BASE_EXPRESSION__BOOLEAN_TERM, null, msgs);
      if (newBooleanTerm != null)
        msgs = ((InternalEObject)newBooleanTerm).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BASE_EXPRESSION__BOOLEAN_TERM, null, msgs);
      msgs = basicSetBooleanTerm(newBooleanTerm, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BASE_EXPRESSION__BOOLEAN_TERM, newBooleanTerm, newBooleanTerm));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public OrExpression getRootExpression()
  {
    return rootExpression;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetRootExpression(OrExpression newRootExpression, NotificationChain msgs)
  {
    OrExpression oldRootExpression = rootExpression;
    rootExpression = newRootExpression;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BASE_EXPRESSION__ROOT_EXPRESSION, oldRootExpression, newRootExpression);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setRootExpression(OrExpression newRootExpression)
  {
    if (newRootExpression != rootExpression)
    {
      NotificationChain msgs = null;
      if (rootExpression != null)
        msgs = ((InternalEObject)rootExpression).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BASE_EXPRESSION__ROOT_EXPRESSION, null, msgs);
      if (newRootExpression != null)
        msgs = ((InternalEObject)newRootExpression).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BASE_EXPRESSION__ROOT_EXPRESSION, null, msgs);
      msgs = basicSetRootExpression(newRootExpression, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BASE_EXPRESSION__ROOT_EXPRESSION, newRootExpression, newRootExpression));
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
      case BooleanExpressionsPackage.BASE_EXPRESSION__BOOLEAN_TERM:
        return basicSetBooleanTerm(null, msgs);
      case BooleanExpressionsPackage.BASE_EXPRESSION__ROOT_EXPRESSION:
        return basicSetRootExpression(null, msgs);
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
      case BooleanExpressionsPackage.BASE_EXPRESSION__NOT:
        return getNot();
      case BooleanExpressionsPackage.BASE_EXPRESSION__BOOLEAN_TERM:
        return getBooleanTerm();
      case BooleanExpressionsPackage.BASE_EXPRESSION__ROOT_EXPRESSION:
        return getRootExpression();
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
      case BooleanExpressionsPackage.BASE_EXPRESSION__NOT:
        setNot((String)newValue);
        return;
      case BooleanExpressionsPackage.BASE_EXPRESSION__BOOLEAN_TERM:
        setBooleanTerm((booleanTerm)newValue);
        return;
      case BooleanExpressionsPackage.BASE_EXPRESSION__ROOT_EXPRESSION:
        setRootExpression((OrExpression)newValue);
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
      case BooleanExpressionsPackage.BASE_EXPRESSION__NOT:
        setNot(NOT_EDEFAULT);
        return;
      case BooleanExpressionsPackage.BASE_EXPRESSION__BOOLEAN_TERM:
        setBooleanTerm((booleanTerm)null);
        return;
      case BooleanExpressionsPackage.BASE_EXPRESSION__ROOT_EXPRESSION:
        setRootExpression((OrExpression)null);
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
      case BooleanExpressionsPackage.BASE_EXPRESSION__NOT:
        return NOT_EDEFAULT == null ? not != null : !NOT_EDEFAULT.equals(not);
      case BooleanExpressionsPackage.BASE_EXPRESSION__BOOLEAN_TERM:
        return booleanTerm != null;
      case BooleanExpressionsPackage.BASE_EXPRESSION__ROOT_EXPRESSION:
        return rootExpression != null;
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
    result.append(" (not: ");
    result.append(not);
    result.append(')');
    return result.toString();
  }

} //BaseExpressionImpl
