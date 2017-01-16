/**
 */
package org.correttouml.grammars.property.impl;

import org.correttouml.grammars.property.ArithBool;
import org.correttouml.grammars.property.ArithTerm;
import org.correttouml.grammars.property.PropertyPackage;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Arith Bool</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.impl.ArithBoolImpl#getArithTerm1 <em>Arith Term1</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.ArithBoolImpl#getArithCOP <em>Arith COP</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.ArithBoolImpl#getArithTerm2 <em>Arith Term2</em>}</li>
 * </ul>
 *
 * @generated
 */
public class ArithBoolImpl extends MinimalEObjectImpl.Container implements ArithBool
{
  /**
   * The cached value of the '{@link #getArithTerm1() <em>Arith Term1</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getArithTerm1()
   * @generated
   * @ordered
   */
  protected ArithTerm arithTerm1;

  /**
   * The default value of the '{@link #getArithCOP() <em>Arith COP</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getArithCOP()
   * @generated
   * @ordered
   */
  protected static final String ARITH_COP_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getArithCOP() <em>Arith COP</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getArithCOP()
   * @generated
   * @ordered
   */
  protected String arithCOP = ARITH_COP_EDEFAULT;

  /**
   * The cached value of the '{@link #getArithTerm2() <em>Arith Term2</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getArithTerm2()
   * @generated
   * @ordered
   */
  protected ArithTerm arithTerm2;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ArithBoolImpl()
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
    return PropertyPackage.Literals.ARITH_BOOL;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ArithTerm getArithTerm1()
  {
    return arithTerm1;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetArithTerm1(ArithTerm newArithTerm1, NotificationChain msgs)
  {
    ArithTerm oldArithTerm1 = arithTerm1;
    arithTerm1 = newArithTerm1;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_BOOL__ARITH_TERM1, oldArithTerm1, newArithTerm1);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setArithTerm1(ArithTerm newArithTerm1)
  {
    if (newArithTerm1 != arithTerm1)
    {
      NotificationChain msgs = null;
      if (arithTerm1 != null)
        msgs = ((InternalEObject)arithTerm1).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_BOOL__ARITH_TERM1, null, msgs);
      if (newArithTerm1 != null)
        msgs = ((InternalEObject)newArithTerm1).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_BOOL__ARITH_TERM1, null, msgs);
      msgs = basicSetArithTerm1(newArithTerm1, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_BOOL__ARITH_TERM1, newArithTerm1, newArithTerm1));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getArithCOP()
  {
    return arithCOP;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setArithCOP(String newArithCOP)
  {
    String oldArithCOP = arithCOP;
    arithCOP = newArithCOP;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_BOOL__ARITH_COP, oldArithCOP, arithCOP));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ArithTerm getArithTerm2()
  {
    return arithTerm2;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetArithTerm2(ArithTerm newArithTerm2, NotificationChain msgs)
  {
    ArithTerm oldArithTerm2 = arithTerm2;
    arithTerm2 = newArithTerm2;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_BOOL__ARITH_TERM2, oldArithTerm2, newArithTerm2);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setArithTerm2(ArithTerm newArithTerm2)
  {
    if (newArithTerm2 != arithTerm2)
    {
      NotificationChain msgs = null;
      if (arithTerm2 != null)
        msgs = ((InternalEObject)arithTerm2).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_BOOL__ARITH_TERM2, null, msgs);
      if (newArithTerm2 != null)
        msgs = ((InternalEObject)newArithTerm2).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_BOOL__ARITH_TERM2, null, msgs);
      msgs = basicSetArithTerm2(newArithTerm2, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_BOOL__ARITH_TERM2, newArithTerm2, newArithTerm2));
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
      case PropertyPackage.ARITH_BOOL__ARITH_TERM1:
        return basicSetArithTerm1(null, msgs);
      case PropertyPackage.ARITH_BOOL__ARITH_TERM2:
        return basicSetArithTerm2(null, msgs);
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
      case PropertyPackage.ARITH_BOOL__ARITH_TERM1:
        return getArithTerm1();
      case PropertyPackage.ARITH_BOOL__ARITH_COP:
        return getArithCOP();
      case PropertyPackage.ARITH_BOOL__ARITH_TERM2:
        return getArithTerm2();
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
      case PropertyPackage.ARITH_BOOL__ARITH_TERM1:
        setArithTerm1((ArithTerm)newValue);
        return;
      case PropertyPackage.ARITH_BOOL__ARITH_COP:
        setArithCOP((String)newValue);
        return;
      case PropertyPackage.ARITH_BOOL__ARITH_TERM2:
        setArithTerm2((ArithTerm)newValue);
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
      case PropertyPackage.ARITH_BOOL__ARITH_TERM1:
        setArithTerm1((ArithTerm)null);
        return;
      case PropertyPackage.ARITH_BOOL__ARITH_COP:
        setArithCOP(ARITH_COP_EDEFAULT);
        return;
      case PropertyPackage.ARITH_BOOL__ARITH_TERM2:
        setArithTerm2((ArithTerm)null);
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
      case PropertyPackage.ARITH_BOOL__ARITH_TERM1:
        return arithTerm1 != null;
      case PropertyPackage.ARITH_BOOL__ARITH_COP:
        return ARITH_COP_EDEFAULT == null ? arithCOP != null : !ARITH_COP_EDEFAULT.equals(arithCOP);
      case PropertyPackage.ARITH_BOOL__ARITH_TERM2:
        return arithTerm2 != null;
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
    result.append(" (arithCOP: ");
    result.append(arithCOP);
    result.append(')');
    return result.toString();
  }

} //ArithBoolImpl
