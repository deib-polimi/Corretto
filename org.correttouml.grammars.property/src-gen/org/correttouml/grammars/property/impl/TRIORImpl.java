/**
 */
package org.correttouml.grammars.property.impl;

import org.correttouml.grammars.property.PropertyPackage;
import org.correttouml.grammars.property.TRIO;
import org.correttouml.grammars.property.TRIOR;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>TRIOR</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.impl.TRIORImpl#getTrioOP2 <em>Trio OP2</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.TRIORImpl#getTrio <em>Trio</em>}</li>
 * </ul>
 *
 * @generated
 */
public class TRIORImpl extends MinimalEObjectImpl.Container implements TRIOR
{
  /**
   * The default value of the '{@link #getTrioOP2() <em>Trio OP2</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTrioOP2()
   * @generated
   * @ordered
   */
  protected static final String TRIO_OP2_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getTrioOP2() <em>Trio OP2</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTrioOP2()
   * @generated
   * @ordered
   */
  protected String trioOP2 = TRIO_OP2_EDEFAULT;

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
  protected TRIORImpl()
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
    return PropertyPackage.Literals.TRIOR;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getTrioOP2()
  {
    return trioOP2;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setTrioOP2(String newTrioOP2)
  {
    String oldTrioOP2 = trioOP2;
    trioOP2 = newTrioOP2;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOR__TRIO_OP2, oldTrioOP2, trioOP2));
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
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOR__TRIO, oldTrio, newTrio);
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
        msgs = ((InternalEObject)trio).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.TRIOR__TRIO, null, msgs);
      if (newTrio != null)
        msgs = ((InternalEObject)newTrio).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.TRIOR__TRIO, null, msgs);
      msgs = basicSetTrio(newTrio, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOR__TRIO, newTrio, newTrio));
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
      case PropertyPackage.TRIOR__TRIO:
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
      case PropertyPackage.TRIOR__TRIO_OP2:
        return getTrioOP2();
      case PropertyPackage.TRIOR__TRIO:
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
      case PropertyPackage.TRIOR__TRIO_OP2:
        setTrioOP2((String)newValue);
        return;
      case PropertyPackage.TRIOR__TRIO:
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
      case PropertyPackage.TRIOR__TRIO_OP2:
        setTrioOP2(TRIO_OP2_EDEFAULT);
        return;
      case PropertyPackage.TRIOR__TRIO:
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
      case PropertyPackage.TRIOR__TRIO_OP2:
        return TRIO_OP2_EDEFAULT == null ? trioOP2 != null : !TRIO_OP2_EDEFAULT.equals(trioOP2);
      case PropertyPackage.TRIOR__TRIO:
        return trio != null;
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
    result.append(" (trioOP2: ");
    result.append(trioOP2);
    result.append(')');
    return result.toString();
  }

} //TRIORImpl
