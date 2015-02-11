/**
 */
package org.correttouml.grammars.booleanExpressions.impl;

import org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage;
import org.correttouml.grammars.booleanExpressions.booleanExpression;
import org.correttouml.grammars.booleanExpressions.booleanTerm;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>boolean Expression</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * <ul>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.booleanExpressionImpl#getNotExpression <em>Not Expression</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.booleanExpressionImpl#getOrLeft <em>Or Left</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.booleanExpressionImpl#getOrRight <em>Or Right</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.booleanExpressionImpl#getAndLeft <em>And Left</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.booleanExpressionImpl#getAndRight <em>And Right</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.booleanExpressionImpl#getBooleanTerm <em>Boolean Term</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public class booleanExpressionImpl extends MinimalEObjectImpl.Container implements booleanExpression
{
  /**
   * The cached value of the '{@link #getNotExpression() <em>Not Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getNotExpression()
   * @generated
   * @ordered
   */
  protected booleanExpression notExpression;

  /**
   * The cached value of the '{@link #getOrLeft() <em>Or Left</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getOrLeft()
   * @generated
   * @ordered
   */
  protected booleanTerm orLeft;

  /**
   * The cached value of the '{@link #getOrRight() <em>Or Right</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getOrRight()
   * @generated
   * @ordered
   */
  protected booleanTerm orRight;

  /**
   * The cached value of the '{@link #getAndLeft() <em>And Left</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getAndLeft()
   * @generated
   * @ordered
   */
  protected booleanTerm andLeft;

  /**
   * The cached value of the '{@link #getAndRight() <em>And Right</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getAndRight()
   * @generated
   * @ordered
   */
  protected booleanTerm andRight;

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
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected booleanExpressionImpl()
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
    return BooleanExpressionsPackage.Literals.BOOLEAN_EXPRESSION;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public booleanExpression getNotExpression()
  {
    return notExpression;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetNotExpression(booleanExpression newNotExpression, NotificationChain msgs)
  {
    booleanExpression oldNotExpression = notExpression;
    notExpression = newNotExpression;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BOOLEAN_EXPRESSION__NOT_EXPRESSION, oldNotExpression, newNotExpression);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setNotExpression(booleanExpression newNotExpression)
  {
    if (newNotExpression != notExpression)
    {
      NotificationChain msgs = null;
      if (notExpression != null)
        msgs = ((InternalEObject)notExpression).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BOOLEAN_EXPRESSION__NOT_EXPRESSION, null, msgs);
      if (newNotExpression != null)
        msgs = ((InternalEObject)newNotExpression).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BOOLEAN_EXPRESSION__NOT_EXPRESSION, null, msgs);
      msgs = basicSetNotExpression(newNotExpression, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BOOLEAN_EXPRESSION__NOT_EXPRESSION, newNotExpression, newNotExpression));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public booleanTerm getOrLeft()
  {
    return orLeft;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetOrLeft(booleanTerm newOrLeft, NotificationChain msgs)
  {
    booleanTerm oldOrLeft = orLeft;
    orLeft = newOrLeft;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BOOLEAN_EXPRESSION__OR_LEFT, oldOrLeft, newOrLeft);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setOrLeft(booleanTerm newOrLeft)
  {
    if (newOrLeft != orLeft)
    {
      NotificationChain msgs = null;
      if (orLeft != null)
        msgs = ((InternalEObject)orLeft).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BOOLEAN_EXPRESSION__OR_LEFT, null, msgs);
      if (newOrLeft != null)
        msgs = ((InternalEObject)newOrLeft).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BOOLEAN_EXPRESSION__OR_LEFT, null, msgs);
      msgs = basicSetOrLeft(newOrLeft, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BOOLEAN_EXPRESSION__OR_LEFT, newOrLeft, newOrLeft));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public booleanTerm getOrRight()
  {
    return orRight;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetOrRight(booleanTerm newOrRight, NotificationChain msgs)
  {
    booleanTerm oldOrRight = orRight;
    orRight = newOrRight;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BOOLEAN_EXPRESSION__OR_RIGHT, oldOrRight, newOrRight);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setOrRight(booleanTerm newOrRight)
  {
    if (newOrRight != orRight)
    {
      NotificationChain msgs = null;
      if (orRight != null)
        msgs = ((InternalEObject)orRight).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BOOLEAN_EXPRESSION__OR_RIGHT, null, msgs);
      if (newOrRight != null)
        msgs = ((InternalEObject)newOrRight).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BOOLEAN_EXPRESSION__OR_RIGHT, null, msgs);
      msgs = basicSetOrRight(newOrRight, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BOOLEAN_EXPRESSION__OR_RIGHT, newOrRight, newOrRight));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public booleanTerm getAndLeft()
  {
    return andLeft;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetAndLeft(booleanTerm newAndLeft, NotificationChain msgs)
  {
    booleanTerm oldAndLeft = andLeft;
    andLeft = newAndLeft;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BOOLEAN_EXPRESSION__AND_LEFT, oldAndLeft, newAndLeft);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setAndLeft(booleanTerm newAndLeft)
  {
    if (newAndLeft != andLeft)
    {
      NotificationChain msgs = null;
      if (andLeft != null)
        msgs = ((InternalEObject)andLeft).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BOOLEAN_EXPRESSION__AND_LEFT, null, msgs);
      if (newAndLeft != null)
        msgs = ((InternalEObject)newAndLeft).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BOOLEAN_EXPRESSION__AND_LEFT, null, msgs);
      msgs = basicSetAndLeft(newAndLeft, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BOOLEAN_EXPRESSION__AND_LEFT, newAndLeft, newAndLeft));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public booleanTerm getAndRight()
  {
    return andRight;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetAndRight(booleanTerm newAndRight, NotificationChain msgs)
  {
    booleanTerm oldAndRight = andRight;
    andRight = newAndRight;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BOOLEAN_EXPRESSION__AND_RIGHT, oldAndRight, newAndRight);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setAndRight(booleanTerm newAndRight)
  {
    if (newAndRight != andRight)
    {
      NotificationChain msgs = null;
      if (andRight != null)
        msgs = ((InternalEObject)andRight).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BOOLEAN_EXPRESSION__AND_RIGHT, null, msgs);
      if (newAndRight != null)
        msgs = ((InternalEObject)newAndRight).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BOOLEAN_EXPRESSION__AND_RIGHT, null, msgs);
      msgs = basicSetAndRight(newAndRight, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BOOLEAN_EXPRESSION__AND_RIGHT, newAndRight, newAndRight));
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
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BOOLEAN_EXPRESSION__BOOLEAN_TERM, oldBooleanTerm, newBooleanTerm);
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
        msgs = ((InternalEObject)booleanTerm).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BOOLEAN_EXPRESSION__BOOLEAN_TERM, null, msgs);
      if (newBooleanTerm != null)
        msgs = ((InternalEObject)newBooleanTerm).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BOOLEAN_EXPRESSION__BOOLEAN_TERM, null, msgs);
      msgs = basicSetBooleanTerm(newBooleanTerm, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BOOLEAN_EXPRESSION__BOOLEAN_TERM, newBooleanTerm, newBooleanTerm));
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
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__NOT_EXPRESSION:
        return basicSetNotExpression(null, msgs);
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__OR_LEFT:
        return basicSetOrLeft(null, msgs);
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__OR_RIGHT:
        return basicSetOrRight(null, msgs);
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__AND_LEFT:
        return basicSetAndLeft(null, msgs);
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__AND_RIGHT:
        return basicSetAndRight(null, msgs);
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__BOOLEAN_TERM:
        return basicSetBooleanTerm(null, msgs);
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
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__NOT_EXPRESSION:
        return getNotExpression();
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__OR_LEFT:
        return getOrLeft();
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__OR_RIGHT:
        return getOrRight();
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__AND_LEFT:
        return getAndLeft();
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__AND_RIGHT:
        return getAndRight();
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__BOOLEAN_TERM:
        return getBooleanTerm();
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
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__NOT_EXPRESSION:
        setNotExpression((booleanExpression)newValue);
        return;
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__OR_LEFT:
        setOrLeft((booleanTerm)newValue);
        return;
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__OR_RIGHT:
        setOrRight((booleanTerm)newValue);
        return;
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__AND_LEFT:
        setAndLeft((booleanTerm)newValue);
        return;
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__AND_RIGHT:
        setAndRight((booleanTerm)newValue);
        return;
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__BOOLEAN_TERM:
        setBooleanTerm((booleanTerm)newValue);
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
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__NOT_EXPRESSION:
        setNotExpression((booleanExpression)null);
        return;
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__OR_LEFT:
        setOrLeft((booleanTerm)null);
        return;
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__OR_RIGHT:
        setOrRight((booleanTerm)null);
        return;
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__AND_LEFT:
        setAndLeft((booleanTerm)null);
        return;
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__AND_RIGHT:
        setAndRight((booleanTerm)null);
        return;
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__BOOLEAN_TERM:
        setBooleanTerm((booleanTerm)null);
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
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__NOT_EXPRESSION:
        return notExpression != null;
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__OR_LEFT:
        return orLeft != null;
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__OR_RIGHT:
        return orRight != null;
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__AND_LEFT:
        return andLeft != null;
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__AND_RIGHT:
        return andRight != null;
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION__BOOLEAN_TERM:
        return booleanTerm != null;
    }
    return super.eIsSet(featureID);
  }

} //booleanExpressionImpl
