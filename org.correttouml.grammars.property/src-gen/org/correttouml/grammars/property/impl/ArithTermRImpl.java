/**
 */
package org.correttouml.grammars.property.impl;

import org.correttouml.grammars.property.ArithTerm;
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
 * An implementation of the model object '<em><b>Arith Term R</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.impl.ArithTermRImpl#getArithOP <em>Arith OP</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.ArithTermRImpl#getArithTerm <em>Arith Term</em>}</li>
 * </ul>
 *
 * @generated
 */
public class ArithTermRImpl extends MinimalEObjectImpl.Container implements ArithTermR
{
  /**
   * The default value of the '{@link #getArithOP() <em>Arith OP</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getArithOP()
   * @generated
   * @ordered
   */
  protected static final String ARITH_OP_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getArithOP() <em>Arith OP</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getArithOP()
   * @generated
   * @ordered
   */
  protected String arithOP = ARITH_OP_EDEFAULT;

  /**
   * The cached value of the '{@link #getArithTerm() <em>Arith Term</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getArithTerm()
   * @generated
   * @ordered
   */
  protected ArithTerm arithTerm;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ArithTermRImpl()
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
    return PropertyPackage.Literals.ARITH_TERM_R;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getArithOP()
  {
    return arithOP;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setArithOP(String newArithOP)
  {
    String oldArithOP = arithOP;
    arithOP = newArithOP;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_TERM_R__ARITH_OP, oldArithOP, arithOP));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ArithTerm getArithTerm()
  {
    return arithTerm;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetArithTerm(ArithTerm newArithTerm, NotificationChain msgs)
  {
    ArithTerm oldArithTerm = arithTerm;
    arithTerm = newArithTerm;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_TERM_R__ARITH_TERM, oldArithTerm, newArithTerm);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setArithTerm(ArithTerm newArithTerm)
  {
    if (newArithTerm != arithTerm)
    {
      NotificationChain msgs = null;
      if (arithTerm != null)
        msgs = ((InternalEObject)arithTerm).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_TERM_R__ARITH_TERM, null, msgs);
      if (newArithTerm != null)
        msgs = ((InternalEObject)newArithTerm).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_TERM_R__ARITH_TERM, null, msgs);
      msgs = basicSetArithTerm(newArithTerm, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_TERM_R__ARITH_TERM, newArithTerm, newArithTerm));
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
      case PropertyPackage.ARITH_TERM_R__ARITH_TERM:
        return basicSetArithTerm(null, msgs);
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
      case PropertyPackage.ARITH_TERM_R__ARITH_OP:
        return getArithOP();
      case PropertyPackage.ARITH_TERM_R__ARITH_TERM:
        return getArithTerm();
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
      case PropertyPackage.ARITH_TERM_R__ARITH_OP:
        setArithOP((String)newValue);
        return;
      case PropertyPackage.ARITH_TERM_R__ARITH_TERM:
        setArithTerm((ArithTerm)newValue);
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
      case PropertyPackage.ARITH_TERM_R__ARITH_OP:
        setArithOP(ARITH_OP_EDEFAULT);
        return;
      case PropertyPackage.ARITH_TERM_R__ARITH_TERM:
        setArithTerm((ArithTerm)null);
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
      case PropertyPackage.ARITH_TERM_R__ARITH_OP:
        return ARITH_OP_EDEFAULT == null ? arithOP != null : !ARITH_OP_EDEFAULT.equals(arithOP);
      case PropertyPackage.ARITH_TERM_R__ARITH_TERM:
        return arithTerm != null;
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
    result.append(" (arithOP: ");
    result.append(arithOP);
    result.append(')');
    return result.toString();
  }

} //ArithTermRImpl
