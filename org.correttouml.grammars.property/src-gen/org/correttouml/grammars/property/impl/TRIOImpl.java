/**
 */
package org.correttouml.grammars.property.impl;

import org.correttouml.grammars.property.PropertyPackage;
import org.correttouml.grammars.property.TRIO;
import org.correttouml.grammars.property.TRIOL;
import org.correttouml.grammars.property.TRIOR;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>TRIO</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.impl.TRIOImpl#getTrioL <em>Trio L</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.TRIOImpl#getTrioR <em>Trio R</em>}</li>
 * </ul>
 *
 * @generated
 */
public class TRIOImpl extends MinimalEObjectImpl.Container implements TRIO
{
  /**
   * The cached value of the '{@link #getTrioL() <em>Trio L</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTrioL()
   * @generated
   * @ordered
   */
  protected TRIOL trioL;

  /**
   * The cached value of the '{@link #getTrioR() <em>Trio R</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTrioR()
   * @generated
   * @ordered
   */
  protected TRIOR trioR;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected TRIOImpl()
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
    return PropertyPackage.Literals.TRIO;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public TRIOL getTrioL()
  {
    return trioL;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetTrioL(TRIOL newTrioL, NotificationChain msgs)
  {
    TRIOL oldTrioL = trioL;
    trioL = newTrioL;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIO__TRIO_L, oldTrioL, newTrioL);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setTrioL(TRIOL newTrioL)
  {
    if (newTrioL != trioL)
    {
      NotificationChain msgs = null;
      if (trioL != null)
        msgs = ((InternalEObject)trioL).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.TRIO__TRIO_L, null, msgs);
      if (newTrioL != null)
        msgs = ((InternalEObject)newTrioL).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.TRIO__TRIO_L, null, msgs);
      msgs = basicSetTrioL(newTrioL, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIO__TRIO_L, newTrioL, newTrioL));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public TRIOR getTrioR()
  {
    return trioR;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetTrioR(TRIOR newTrioR, NotificationChain msgs)
  {
    TRIOR oldTrioR = trioR;
    trioR = newTrioR;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIO__TRIO_R, oldTrioR, newTrioR);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setTrioR(TRIOR newTrioR)
  {
    if (newTrioR != trioR)
    {
      NotificationChain msgs = null;
      if (trioR != null)
        msgs = ((InternalEObject)trioR).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.TRIO__TRIO_R, null, msgs);
      if (newTrioR != null)
        msgs = ((InternalEObject)newTrioR).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.TRIO__TRIO_R, null, msgs);
      msgs = basicSetTrioR(newTrioR, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIO__TRIO_R, newTrioR, newTrioR));
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
      case PropertyPackage.TRIO__TRIO_L:
        return basicSetTrioL(null, msgs);
      case PropertyPackage.TRIO__TRIO_R:
        return basicSetTrioR(null, msgs);
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
      case PropertyPackage.TRIO__TRIO_L:
        return getTrioL();
      case PropertyPackage.TRIO__TRIO_R:
        return getTrioR();
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
      case PropertyPackage.TRIO__TRIO_L:
        setTrioL((TRIOL)newValue);
        return;
      case PropertyPackage.TRIO__TRIO_R:
        setTrioR((TRIOR)newValue);
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
      case PropertyPackage.TRIO__TRIO_L:
        setTrioL((TRIOL)null);
        return;
      case PropertyPackage.TRIO__TRIO_R:
        setTrioR((TRIOR)null);
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
      case PropertyPackage.TRIO__TRIO_L:
        return trioL != null;
      case PropertyPackage.TRIO__TRIO_R:
        return trioR != null;
    }
    return super.eIsSet(featureID);
  }

} //TRIOImpl
