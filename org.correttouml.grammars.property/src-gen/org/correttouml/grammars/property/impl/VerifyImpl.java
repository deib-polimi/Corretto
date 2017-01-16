/**
 */
package org.correttouml.grammars.property.impl;

import org.correttouml.grammars.property.PropertyPackage;
import org.correttouml.grammars.property.TRIO;
import org.correttouml.grammars.property.Verify;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Verify</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.impl.VerifyImpl#getTrio <em>Trio</em>}</li>
 * </ul>
 *
 * @generated
 */
public class VerifyImpl extends MinimalEObjectImpl.Container implements Verify
{
  /**
   * The cached value of the '{@link #getTrio() <em>Trio</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTrio()
   * @generated
   * @ordered
   */
  protected TRIO trio;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected VerifyImpl()
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
    return PropertyPackage.Literals.VERIFY;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public TRIO getTrio()
  {
    return trio;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetTrio(TRIO newTrio, NotificationChain msgs)
  {
    TRIO oldTrio = trio;
    trio = newTrio;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.VERIFY__TRIO, oldTrio, newTrio);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setTrio(TRIO newTrio)
  {
    if (newTrio != trio)
    {
      NotificationChain msgs = null;
      if (trio != null)
        msgs = ((InternalEObject)trio).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.VERIFY__TRIO, null, msgs);
      if (newTrio != null)
        msgs = ((InternalEObject)newTrio).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.VERIFY__TRIO, null, msgs);
      msgs = basicSetTrio(newTrio, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.VERIFY__TRIO, newTrio, newTrio));
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
      case PropertyPackage.VERIFY__TRIO:
        return basicSetTrio(null, msgs);
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
      case PropertyPackage.VERIFY__TRIO:
        return getTrio();
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
      case PropertyPackage.VERIFY__TRIO:
        setTrio((TRIO)newValue);
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
      case PropertyPackage.VERIFY__TRIO:
        setTrio((TRIO)null);
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
      case PropertyPackage.VERIFY__TRIO:
        return trio != null;
    }
    return super.eIsSet(featureID);
  }

} //VerifyImpl
