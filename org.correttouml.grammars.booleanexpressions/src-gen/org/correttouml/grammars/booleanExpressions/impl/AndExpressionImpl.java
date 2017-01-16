/**
 */
package org.correttouml.grammars.booleanExpressions.impl;

import org.correttouml.grammars.booleanExpressions.AndExpression;
import org.correttouml.grammars.booleanExpressions.BaseExpression;
import org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>And Expression</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.AndExpressionImpl#getLeftExpression <em>Left Expression</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.AndExpressionImpl#getAnd <em>And</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.AndExpressionImpl#getRightExpression <em>Right Expression</em>}</li>
 * </ul>
 *
 * @generated
 */
public class AndExpressionImpl extends MinimalEObjectImpl.Container implements AndExpression
{
  /**
   * The cached value of the '{@link #getLeftExpression() <em>Left Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getLeftExpression()
   * @generated
   * @ordered
   */
  protected BaseExpression leftExpression;

  /**
   * The default value of the '{@link #getAnd() <em>And</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getAnd()
   * @generated
   * @ordered
   */
  protected static final String AND_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getAnd() <em>And</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getAnd()
   * @generated
   * @ordered
   */
  protected String and = AND_EDEFAULT;

  /**
   * The cached value of the '{@link #getRightExpression() <em>Right Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getRightExpression()
   * @generated
   * @ordered
   */
  protected AndExpression rightExpression;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected AndExpressionImpl()
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
    return BooleanExpressionsPackage.Literals.AND_EXPRESSION;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public BaseExpression getLeftExpression()
  {
    return leftExpression;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetLeftExpression(BaseExpression newLeftExpression, NotificationChain msgs)
  {
    BaseExpression oldLeftExpression = leftExpression;
    leftExpression = newLeftExpression;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.AND_EXPRESSION__LEFT_EXPRESSION, oldLeftExpression, newLeftExpression);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setLeftExpression(BaseExpression newLeftExpression)
  {
    if (newLeftExpression != leftExpression)
    {
      NotificationChain msgs = null;
      if (leftExpression != null)
        msgs = ((InternalEObject)leftExpression).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.AND_EXPRESSION__LEFT_EXPRESSION, null, msgs);
      if (newLeftExpression != null)
        msgs = ((InternalEObject)newLeftExpression).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.AND_EXPRESSION__LEFT_EXPRESSION, null, msgs);
      msgs = basicSetLeftExpression(newLeftExpression, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.AND_EXPRESSION__LEFT_EXPRESSION, newLeftExpression, newLeftExpression));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getAnd()
  {
    return and;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setAnd(String newAnd)
  {
    String oldAnd = and;
    and = newAnd;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.AND_EXPRESSION__AND, oldAnd, and));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public AndExpression getRightExpression()
  {
    return rightExpression;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetRightExpression(AndExpression newRightExpression, NotificationChain msgs)
  {
    AndExpression oldRightExpression = rightExpression;
    rightExpression = newRightExpression;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.AND_EXPRESSION__RIGHT_EXPRESSION, oldRightExpression, newRightExpression);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setRightExpression(AndExpression newRightExpression)
  {
    if (newRightExpression != rightExpression)
    {
      NotificationChain msgs = null;
      if (rightExpression != null)
        msgs = ((InternalEObject)rightExpression).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.AND_EXPRESSION__RIGHT_EXPRESSION, null, msgs);
      if (newRightExpression != null)
        msgs = ((InternalEObject)newRightExpression).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.AND_EXPRESSION__RIGHT_EXPRESSION, null, msgs);
      msgs = basicSetRightExpression(newRightExpression, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.AND_EXPRESSION__RIGHT_EXPRESSION, newRightExpression, newRightExpression));
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
      case BooleanExpressionsPackage.AND_EXPRESSION__LEFT_EXPRESSION:
        return basicSetLeftExpression(null, msgs);
      case BooleanExpressionsPackage.AND_EXPRESSION__RIGHT_EXPRESSION:
        return basicSetRightExpression(null, msgs);
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
      case BooleanExpressionsPackage.AND_EXPRESSION__LEFT_EXPRESSION:
        return getLeftExpression();
      case BooleanExpressionsPackage.AND_EXPRESSION__AND:
        return getAnd();
      case BooleanExpressionsPackage.AND_EXPRESSION__RIGHT_EXPRESSION:
        return getRightExpression();
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
      case BooleanExpressionsPackage.AND_EXPRESSION__LEFT_EXPRESSION:
        setLeftExpression((BaseExpression)newValue);
        return;
      case BooleanExpressionsPackage.AND_EXPRESSION__AND:
        setAnd((String)newValue);
        return;
      case BooleanExpressionsPackage.AND_EXPRESSION__RIGHT_EXPRESSION:
        setRightExpression((AndExpression)newValue);
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
      case BooleanExpressionsPackage.AND_EXPRESSION__LEFT_EXPRESSION:
        setLeftExpression((BaseExpression)null);
        return;
      case BooleanExpressionsPackage.AND_EXPRESSION__AND:
        setAnd(AND_EDEFAULT);
        return;
      case BooleanExpressionsPackage.AND_EXPRESSION__RIGHT_EXPRESSION:
        setRightExpression((AndExpression)null);
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
      case BooleanExpressionsPackage.AND_EXPRESSION__LEFT_EXPRESSION:
        return leftExpression != null;
      case BooleanExpressionsPackage.AND_EXPRESSION__AND:
        return AND_EDEFAULT == null ? and != null : !AND_EDEFAULT.equals(and);
      case BooleanExpressionsPackage.AND_EXPRESSION__RIGHT_EXPRESSION:
        return rightExpression != null;
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
    result.append(" (and: ");
    result.append(and);
    result.append(')');
    return result.toString();
  }

} //AndExpressionImpl
