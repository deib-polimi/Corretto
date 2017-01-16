/**
 */
package org.correttouml.grammars.property.impl;

import org.correttouml.grammars.property.Corretto;
import org.correttouml.grammars.property.PropertyPackage;
import org.correttouml.grammars.property.Verify;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Corretto</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.impl.CorrettoImpl#getVerify <em>Verify</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.CorrettoImpl#getExecute <em>Execute</em>}</li>
 * </ul>
 *
 * @generated
 */
public class CorrettoImpl extends MinimalEObjectImpl.Container implements Corretto
{
  /**
   * The cached value of the '{@link #getVerify() <em>Verify</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getVerify()
   * @generated
   * @ordered
   */
  protected Verify verify;

  /**
   * The default value of the '{@link #getExecute() <em>Execute</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getExecute()
   * @generated
   * @ordered
   */
  protected static final String EXECUTE_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getExecute() <em>Execute</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getExecute()
   * @generated
   * @ordered
   */
  protected String execute = EXECUTE_EDEFAULT;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected CorrettoImpl()
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
    return PropertyPackage.Literals.CORRETTO;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Verify getVerify()
  {
    return verify;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetVerify(Verify newVerify, NotificationChain msgs)
  {
    Verify oldVerify = verify;
    verify = newVerify;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.CORRETTO__VERIFY, oldVerify, newVerify);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setVerify(Verify newVerify)
  {
    if (newVerify != verify)
    {
      NotificationChain msgs = null;
      if (verify != null)
        msgs = ((InternalEObject)verify).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.CORRETTO__VERIFY, null, msgs);
      if (newVerify != null)
        msgs = ((InternalEObject)newVerify).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.CORRETTO__VERIFY, null, msgs);
      msgs = basicSetVerify(newVerify, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.CORRETTO__VERIFY, newVerify, newVerify));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getExecute()
  {
    return execute;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setExecute(String newExecute)
  {
    String oldExecute = execute;
    execute = newExecute;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.CORRETTO__EXECUTE, oldExecute, execute));
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
      case PropertyPackage.CORRETTO__VERIFY:
        return basicSetVerify(null, msgs);
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
      case PropertyPackage.CORRETTO__VERIFY:
        return getVerify();
      case PropertyPackage.CORRETTO__EXECUTE:
        return getExecute();
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
      case PropertyPackage.CORRETTO__VERIFY:
        setVerify((Verify)newValue);
        return;
      case PropertyPackage.CORRETTO__EXECUTE:
        setExecute((String)newValue);
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
      case PropertyPackage.CORRETTO__VERIFY:
        setVerify((Verify)null);
        return;
      case PropertyPackage.CORRETTO__EXECUTE:
        setExecute(EXECUTE_EDEFAULT);
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
      case PropertyPackage.CORRETTO__VERIFY:
        return verify != null;
      case PropertyPackage.CORRETTO__EXECUTE:
        return EXECUTE_EDEFAULT == null ? execute != null : !EXECUTE_EDEFAULT.equals(execute);
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
    result.append(" (execute: ");
    result.append(execute);
    result.append(')');
    return result.toString();
  }

} //CorrettoImpl
