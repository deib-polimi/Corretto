/**
 */
package org.correttouml.grammars.booleanExpressions.impl;

import org.correttouml.grammars.booleanExpressions.AndExpression;
import org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage;
import org.correttouml.grammars.booleanExpressions.OrExpression;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Or Expression</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.OrExpressionImpl#getLeftExpression <em>Left Expression</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.OrExpressionImpl#getOr <em>Or</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.OrExpressionImpl#getRightExpression <em>Right Expression</em>}</li>
 * </ul>
 *
 * @generated
 */
public class OrExpressionImpl extends MinimalEObjectImpl.Container implements OrExpression
{
  /**
   * The cached value of the '{@link #getLeftExpression() <em>Left Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getLeftExpression()
   * @generated
   * @ordered
   */
  protected AndExpression leftExpression;

  /**
   * The default value of the '{@link #getOr() <em>Or</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getOr()
   * @generated
   * @ordered
   */
  protected static final String OR_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getOr() <em>Or</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getOr()
   * @generated
   * @ordered
   */
  protected String or = OR_EDEFAULT;

  /**
   * The cached value of the '{@link #getRightExpression() <em>Right Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getRightExpression()
   * @generated
   * @ordered
   */
  protected OrExpression rightExpression;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected OrExpressionImpl()
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
    return BooleanExpressionsPackage.Literals.OR_EXPRESSION;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public AndExpression getLeftExpression()
  {
    return leftExpression;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetLeftExpression(AndExpression newLeftExpression, NotificationChain msgs)
  {
    AndExpression oldLeftExpression = leftExpression;
    leftExpression = newLeftExpression;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.OR_EXPRESSION__LEFT_EXPRESSION, oldLeftExpression, newLeftExpression);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setLeftExpression(AndExpression newLeftExpression)
  {
    if (newLeftExpression != leftExpression)
    {
      NotificationChain msgs = null;
      if (leftExpression != null)
        msgs = ((InternalEObject)leftExpression).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.OR_EXPRESSION__LEFT_EXPRESSION, null, msgs);
      if (newLeftExpression != null)
        msgs = ((InternalEObject)newLeftExpression).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.OR_EXPRESSION__LEFT_EXPRESSION, null, msgs);
      msgs = basicSetLeftExpression(newLeftExpression, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.OR_EXPRESSION__LEFT_EXPRESSION, newLeftExpression, newLeftExpression));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getOr()
  {
    return or;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setOr(String newOr)
  {
    String oldOr = or;
    or = newOr;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.OR_EXPRESSION__OR, oldOr, or));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public OrExpression getRightExpression()
  {
    return rightExpression;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetRightExpression(OrExpression newRightExpression, NotificationChain msgs)
  {
    OrExpression oldRightExpression = rightExpression;
    rightExpression = newRightExpression;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.OR_EXPRESSION__RIGHT_EXPRESSION, oldRightExpression, newRightExpression);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setRightExpression(OrExpression newRightExpression)
  {
    if (newRightExpression != rightExpression)
    {
      NotificationChain msgs = null;
      if (rightExpression != null)
        msgs = ((InternalEObject)rightExpression).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.OR_EXPRESSION__RIGHT_EXPRESSION, null, msgs);
      if (newRightExpression != null)
        msgs = ((InternalEObject)newRightExpression).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.OR_EXPRESSION__RIGHT_EXPRESSION, null, msgs);
      msgs = basicSetRightExpression(newRightExpression, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.OR_EXPRESSION__RIGHT_EXPRESSION, newRightExpression, newRightExpression));
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
      case BooleanExpressionsPackage.OR_EXPRESSION__LEFT_EXPRESSION:
        return basicSetLeftExpression(null, msgs);
      case BooleanExpressionsPackage.OR_EXPRESSION__RIGHT_EXPRESSION:
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
      case BooleanExpressionsPackage.OR_EXPRESSION__LEFT_EXPRESSION:
        return getLeftExpression();
      case BooleanExpressionsPackage.OR_EXPRESSION__OR:
        return getOr();
      case BooleanExpressionsPackage.OR_EXPRESSION__RIGHT_EXPRESSION:
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
      case BooleanExpressionsPackage.OR_EXPRESSION__LEFT_EXPRESSION:
        setLeftExpression((AndExpression)newValue);
        return;
      case BooleanExpressionsPackage.OR_EXPRESSION__OR:
        setOr((String)newValue);
        return;
      case BooleanExpressionsPackage.OR_EXPRESSION__RIGHT_EXPRESSION:
        setRightExpression((OrExpression)newValue);
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
      case BooleanExpressionsPackage.OR_EXPRESSION__LEFT_EXPRESSION:
        setLeftExpression((AndExpression)null);
        return;
      case BooleanExpressionsPackage.OR_EXPRESSION__OR:
        setOr(OR_EDEFAULT);
        return;
      case BooleanExpressionsPackage.OR_EXPRESSION__RIGHT_EXPRESSION:
        setRightExpression((OrExpression)null);
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
      case BooleanExpressionsPackage.OR_EXPRESSION__LEFT_EXPRESSION:
        return leftExpression != null;
      case BooleanExpressionsPackage.OR_EXPRESSION__OR:
        return OR_EDEFAULT == null ? or != null : !OR_EDEFAULT.equals(or);
      case BooleanExpressionsPackage.OR_EXPRESSION__RIGHT_EXPRESSION:
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
    result.append(" (or: ");
    result.append(or);
    result.append(')');
    return result.toString();
  }

} //OrExpressionImpl
