/**
 */
package org.correttouml.grammars.property.impl;

import org.correttouml.grammars.property.ArithTerm;
import org.correttouml.grammars.property.ArithTermL;
import org.correttouml.grammars.property.ArithVar;
import org.correttouml.grammars.property.DataType;
import org.correttouml.grammars.property.PropertyPackage;
import org.correttouml.grammars.property.TRIO;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Arith Term L</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.impl.ArithTermLImpl#getTrio <em>Trio</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.ArithTermLImpl#getConstant <em>Constant</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.ArithTermLImpl#getArithVar <em>Arith Var</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.ArithTermLImpl#getArithTermF <em>Arith Term F</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.ArithTermLImpl#getIntF <em>Int F</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.ArithTermLImpl#getArithTermP <em>Arith Term P</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.ArithTermLImpl#getIntP <em>Int P</em>}</li>
 * </ul>
 *
 * @generated
 */
public class ArithTermLImpl extends MinimalEObjectImpl.Container implements ArithTermL
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
   * The cached value of the '{@link #getConstant() <em>Constant</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getConstant()
   * @generated
   * @ordered
   */
  protected DataType constant;

  /**
   * The cached value of the '{@link #getArithVar() <em>Arith Var</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getArithVar()
   * @generated
   * @ordered
   */
  protected ArithVar arithVar;

  /**
   * The cached value of the '{@link #getArithTermF() <em>Arith Term F</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getArithTermF()
   * @generated
   * @ordered
   */
  protected ArithTerm arithTermF;

  /**
   * The default value of the '{@link #getIntF() <em>Int F</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getIntF()
   * @generated
   * @ordered
   */
  protected static final int INT_F_EDEFAULT = 0;

  /**
   * The cached value of the '{@link #getIntF() <em>Int F</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getIntF()
   * @generated
   * @ordered
   */
  protected int intF = INT_F_EDEFAULT;

  /**
   * The cached value of the '{@link #getArithTermP() <em>Arith Term P</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getArithTermP()
   * @generated
   * @ordered
   */
  protected ArithTerm arithTermP;

  /**
   * The default value of the '{@link #getIntP() <em>Int P</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getIntP()
   * @generated
   * @ordered
   */
  protected static final int INT_P_EDEFAULT = 0;

  /**
   * The cached value of the '{@link #getIntP() <em>Int P</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getIntP()
   * @generated
   * @ordered
   */
  protected int intP = INT_P_EDEFAULT;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ArithTermLImpl()
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
    return PropertyPackage.Literals.ARITH_TERM_L;
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
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_TERM_L__TRIO, oldTrio, newTrio);
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
        msgs = ((InternalEObject)trio).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_TERM_L__TRIO, null, msgs);
      if (newTrio != null)
        msgs = ((InternalEObject)newTrio).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_TERM_L__TRIO, null, msgs);
      msgs = basicSetTrio(newTrio, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_TERM_L__TRIO, newTrio, newTrio));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public DataType getConstant()
  {
    return constant;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetConstant(DataType newConstant, NotificationChain msgs)
  {
    DataType oldConstant = constant;
    constant = newConstant;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_TERM_L__CONSTANT, oldConstant, newConstant);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setConstant(DataType newConstant)
  {
    if (newConstant != constant)
    {
      NotificationChain msgs = null;
      if (constant != null)
        msgs = ((InternalEObject)constant).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_TERM_L__CONSTANT, null, msgs);
      if (newConstant != null)
        msgs = ((InternalEObject)newConstant).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_TERM_L__CONSTANT, null, msgs);
      msgs = basicSetConstant(newConstant, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_TERM_L__CONSTANT, newConstant, newConstant));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ArithVar getArithVar()
  {
    return arithVar;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetArithVar(ArithVar newArithVar, NotificationChain msgs)
  {
    ArithVar oldArithVar = arithVar;
    arithVar = newArithVar;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_TERM_L__ARITH_VAR, oldArithVar, newArithVar);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setArithVar(ArithVar newArithVar)
  {
    if (newArithVar != arithVar)
    {
      NotificationChain msgs = null;
      if (arithVar != null)
        msgs = ((InternalEObject)arithVar).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_TERM_L__ARITH_VAR, null, msgs);
      if (newArithVar != null)
        msgs = ((InternalEObject)newArithVar).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_TERM_L__ARITH_VAR, null, msgs);
      msgs = basicSetArithVar(newArithVar, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_TERM_L__ARITH_VAR, newArithVar, newArithVar));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ArithTerm getArithTermF()
  {
    return arithTermF;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetArithTermF(ArithTerm newArithTermF, NotificationChain msgs)
  {
    ArithTerm oldArithTermF = arithTermF;
    arithTermF = newArithTermF;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_TERM_L__ARITH_TERM_F, oldArithTermF, newArithTermF);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setArithTermF(ArithTerm newArithTermF)
  {
    if (newArithTermF != arithTermF)
    {
      NotificationChain msgs = null;
      if (arithTermF != null)
        msgs = ((InternalEObject)arithTermF).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_TERM_L__ARITH_TERM_F, null, msgs);
      if (newArithTermF != null)
        msgs = ((InternalEObject)newArithTermF).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_TERM_L__ARITH_TERM_F, null, msgs);
      msgs = basicSetArithTermF(newArithTermF, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_TERM_L__ARITH_TERM_F, newArithTermF, newArithTermF));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public int getIntF()
  {
    return intF;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setIntF(int newIntF)
  {
    int oldIntF = intF;
    intF = newIntF;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_TERM_L__INT_F, oldIntF, intF));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ArithTerm getArithTermP()
  {
    return arithTermP;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetArithTermP(ArithTerm newArithTermP, NotificationChain msgs)
  {
    ArithTerm oldArithTermP = arithTermP;
    arithTermP = newArithTermP;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_TERM_L__ARITH_TERM_P, oldArithTermP, newArithTermP);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setArithTermP(ArithTerm newArithTermP)
  {
    if (newArithTermP != arithTermP)
    {
      NotificationChain msgs = null;
      if (arithTermP != null)
        msgs = ((InternalEObject)arithTermP).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_TERM_L__ARITH_TERM_P, null, msgs);
      if (newArithTermP != null)
        msgs = ((InternalEObject)newArithTermP).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.ARITH_TERM_L__ARITH_TERM_P, null, msgs);
      msgs = basicSetArithTermP(newArithTermP, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_TERM_L__ARITH_TERM_P, newArithTermP, newArithTermP));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public int getIntP()
  {
    return intP;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setIntP(int newIntP)
  {
    int oldIntP = intP;
    intP = newIntP;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_TERM_L__INT_P, oldIntP, intP));
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
      case PropertyPackage.ARITH_TERM_L__TRIO:
        return basicSetTrio(null, msgs);
      case PropertyPackage.ARITH_TERM_L__CONSTANT:
        return basicSetConstant(null, msgs);
      case PropertyPackage.ARITH_TERM_L__ARITH_VAR:
        return basicSetArithVar(null, msgs);
      case PropertyPackage.ARITH_TERM_L__ARITH_TERM_F:
        return basicSetArithTermF(null, msgs);
      case PropertyPackage.ARITH_TERM_L__ARITH_TERM_P:
        return basicSetArithTermP(null, msgs);
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
      case PropertyPackage.ARITH_TERM_L__TRIO:
        return getTrio();
      case PropertyPackage.ARITH_TERM_L__CONSTANT:
        return getConstant();
      case PropertyPackage.ARITH_TERM_L__ARITH_VAR:
        return getArithVar();
      case PropertyPackage.ARITH_TERM_L__ARITH_TERM_F:
        return getArithTermF();
      case PropertyPackage.ARITH_TERM_L__INT_F:
        return getIntF();
      case PropertyPackage.ARITH_TERM_L__ARITH_TERM_P:
        return getArithTermP();
      case PropertyPackage.ARITH_TERM_L__INT_P:
        return getIntP();
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
      case PropertyPackage.ARITH_TERM_L__TRIO:
        setTrio((TRIO)newValue);
        return;
      case PropertyPackage.ARITH_TERM_L__CONSTANT:
        setConstant((DataType)newValue);
        return;
      case PropertyPackage.ARITH_TERM_L__ARITH_VAR:
        setArithVar((ArithVar)newValue);
        return;
      case PropertyPackage.ARITH_TERM_L__ARITH_TERM_F:
        setArithTermF((ArithTerm)newValue);
        return;
      case PropertyPackage.ARITH_TERM_L__INT_F:
        setIntF((Integer)newValue);
        return;
      case PropertyPackage.ARITH_TERM_L__ARITH_TERM_P:
        setArithTermP((ArithTerm)newValue);
        return;
      case PropertyPackage.ARITH_TERM_L__INT_P:
        setIntP((Integer)newValue);
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
      case PropertyPackage.ARITH_TERM_L__TRIO:
        setTrio((TRIO)null);
        return;
      case PropertyPackage.ARITH_TERM_L__CONSTANT:
        setConstant((DataType)null);
        return;
      case PropertyPackage.ARITH_TERM_L__ARITH_VAR:
        setArithVar((ArithVar)null);
        return;
      case PropertyPackage.ARITH_TERM_L__ARITH_TERM_F:
        setArithTermF((ArithTerm)null);
        return;
      case PropertyPackage.ARITH_TERM_L__INT_F:
        setIntF(INT_F_EDEFAULT);
        return;
      case PropertyPackage.ARITH_TERM_L__ARITH_TERM_P:
        setArithTermP((ArithTerm)null);
        return;
      case PropertyPackage.ARITH_TERM_L__INT_P:
        setIntP(INT_P_EDEFAULT);
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
      case PropertyPackage.ARITH_TERM_L__TRIO:
        return trio != null;
      case PropertyPackage.ARITH_TERM_L__CONSTANT:
        return constant != null;
      case PropertyPackage.ARITH_TERM_L__ARITH_VAR:
        return arithVar != null;
      case PropertyPackage.ARITH_TERM_L__ARITH_TERM_F:
        return arithTermF != null;
      case PropertyPackage.ARITH_TERM_L__INT_F:
        return intF != INT_F_EDEFAULT;
      case PropertyPackage.ARITH_TERM_L__ARITH_TERM_P:
        return arithTermP != null;
      case PropertyPackage.ARITH_TERM_L__INT_P:
        return intP != INT_P_EDEFAULT;
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
    result.append(" (intF: ");
    result.append(intF);
    result.append(", intP: ");
    result.append(intP);
    result.append(')');
    return result.toString();
  }

} //ArithTermLImpl
