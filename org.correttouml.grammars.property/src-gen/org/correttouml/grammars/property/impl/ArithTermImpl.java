/**
 */
package org.correttouml.grammars.property.impl;

import org.correttouml.grammars.property.ArithTerm;
import org.correttouml.grammars.property.ArithTermL;
import org.correttouml.grammars.property.ArithTermR;
import org.correttouml.grammars.property.PropertyPackage;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Arith Term</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.impl.ArithTermImpl#getArithTermL <em>Arith Term L</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.ArithTermImpl#getArithTermR <em>Arith Term R</em>}</li>
 * </ul>
 *
 * @generated
 */
public class ArithTermImpl extends MinimalEObjectImpl.Container implements ArithTerm
{
  /**
   * The cached value of the '{@link #getArithTermL() <em>Arith Term L</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getArithTermL()
   * @generated
   * @ordered
   */
  protected ArithTermL arithTermL;

  /**
   * The cached value of the '{@link #getArithTermR() <em>Arith Term R</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getArithTermR()
   * @generated
   * @ordered
   */
  protected ArithTermR arithTermR;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ArithTermImpl()
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
    return PropertyPackage.Literals.ARITH_TERM;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ArithTermL getArithTermL()
  {
    return arithTermL;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetArithTermL(ArithTermL newArithTermL, NotificationChain msgs)
  {
    ArithTermL oldArithTermL = arithTermL;
    arithTermL = newArithTermL;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_TERM__ARITH_TERM_L, oldArithTermL, newArithTermL);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setArithTermL(ArithTermL newArithTermL)
  {
    if (newArithTermL != arithTermL)
    {
      NotificationChain msgs = null;
      if (arithTermL != null)
        msgs = ((InternalEObject)arithTermL).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_TERM__ARITH_TERM_L, null, msgs);
      if (newArithTermL != null)
        msgs = ((InternalEObject)newArithTermL).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_TERM__ARITH_TERM_L, null, msgs);
      msgs = basicSetArithTermL(newArithTermL, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_TERM__ARITH_TERM_L, newArithTermL, newArithTermL));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ArithTermR getArithTermR()
  {
    return arithTermR;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetArithTermR(ArithTermR newArithTermR, NotificationChain msgs)
  {
    ArithTermR oldArithTermR = arithTermR;
    arithTermR = newArithTermR;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_TERM__ARITH_TERM_R, oldArithTermR, newArithTermR);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setArithTermR(ArithTermR newArithTermR)
  {
    if (newArithTermR != arithTermR)
    {
      NotificationChain msgs = null;
      if (arithTermR != null)
        msgs = ((InternalEObject)arithTermR).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_TERM__ARITH_TERM_R, null, msgs);
      if (newArithTermR != null)
        msgs = ((InternalEObject)newArithTermR).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_TERM__ARITH_TERM_R, null, msgs);
      msgs = basicSetArithTermR(newArithTermR, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_TERM__ARITH_TERM_R, newArithTermR, newArithTermR));
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
      case PropertyPackage.ARITH_TERM__ARITH_TERM_L:
        return basicSetArithTermL(null, msgs);
      case PropertyPackage.ARITH_TERM__ARITH_TERM_R:
        return basicSetArithTermR(null, msgs);
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
      case PropertyPackage.ARITH_TERM__ARITH_TERM_L:
        return getArithTermL();
      case PropertyPackage.ARITH_TERM__ARITH_TERM_R:
        return getArithTermR();
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
      case PropertyPackage.ARITH_TERM__ARITH_TERM_L:
        setArithTermL((ArithTermL)newValue);
        return;
      case PropertyPackage.ARITH_TERM__ARITH_TERM_R:
        setArithTermR((ArithTermR)newValue);
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
      case PropertyPackage.ARITH_TERM__ARITH_TERM_L:
        setArithTermL((ArithTermL)null);
        return;
      case PropertyPackage.ARITH_TERM__ARITH_TERM_R:
        setArithTermR((ArithTermR)null);
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
      case PropertyPackage.ARITH_TERM__ARITH_TERM_L:
        return arithTermL != null;
      case PropertyPackage.ARITH_TERM__ARITH_TERM_R:
        return arithTermR != null;
    }
    return super.eIsSet(featureID);
  }

} //ArithTermImpl
