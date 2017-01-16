/**
 */
package org.correttouml.grammars.property.impl;

import org.correttouml.grammars.property.ArithBool;
import org.correttouml.grammars.property.PropertyPackage;
import org.correttouml.grammars.property.TRIO;
import org.correttouml.grammars.property.TRIOL;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>TRIOL</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.impl.TRIOLImpl#getTrioVar <em>Trio Var</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.TRIOLImpl#getOpName <em>Op Name</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.TRIOLImpl#getArithBool <em>Arith Bool</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.TRIOLImpl#getTrioNot <em>Trio Not</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.TRIOLImpl#getTrioOpF <em>Trio Op F</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.TRIOLImpl#getTrioOpF1 <em>Trio Op F1</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.TRIOLImpl#getTrioOpFF <em>Trio Op FF</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.TRIOLImpl#getTrioOpFF1 <em>Trio Op FF1</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.TRIOLImpl#getTrioOpFF2 <em>Trio Op FF2</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.TRIOLImpl#getTrioOpFN <em>Trio Op FN</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.TRIOLImpl#getTrioOpFN1 <em>Trio Op FN1</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.TRIOLImpl#getInt <em>Int</em>}</li>
 * </ul>
 *
 * @generated
 */
public class TRIOLImpl extends MinimalEObjectImpl.Container implements TRIOL
{
  /**
   * The default value of the '{@link #getTrioVar() <em>Trio Var</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTrioVar()
   * @generated
   * @ordered
   */
  protected static final String TRIO_VAR_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getTrioVar() <em>Trio Var</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTrioVar()
   * @generated
   * @ordered
   */
  protected String trioVar = TRIO_VAR_EDEFAULT;

  /**
   * The default value of the '{@link #getOpName() <em>Op Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getOpName()
   * @generated
   * @ordered
   */
  protected static final String OP_NAME_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getOpName() <em>Op Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getOpName()
   * @generated
   * @ordered
   */
  protected String opName = OP_NAME_EDEFAULT;

  /**
   * The cached value of the '{@link #getArithBool() <em>Arith Bool</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getArithBool()
   * @generated
   * @ordered
   */
  protected ArithBool arithBool;

  /**
   * The cached value of the '{@link #getTrioNot() <em>Trio Not</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTrioNot()
   * @generated
   * @ordered
   */
  protected TRIO trioNot;

  /**
   * The default value of the '{@link #getTrioOpF() <em>Trio Op F</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTrioOpF()
   * @generated
   * @ordered
   */
  protected static final String TRIO_OP_F_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getTrioOpF() <em>Trio Op F</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTrioOpF()
   * @generated
   * @ordered
   */
  protected String trioOpF = TRIO_OP_F_EDEFAULT;

  /**
   * The cached value of the '{@link #getTrioOpF1() <em>Trio Op F1</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTrioOpF1()
   * @generated
   * @ordered
   */
  protected TRIO trioOpF1;

  /**
   * The default value of the '{@link #getTrioOpFF() <em>Trio Op FF</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTrioOpFF()
   * @generated
   * @ordered
   */
  protected static final String TRIO_OP_FF_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getTrioOpFF() <em>Trio Op FF</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTrioOpFF()
   * @generated
   * @ordered
   */
  protected String trioOpFF = TRIO_OP_FF_EDEFAULT;

  /**
   * The cached value of the '{@link #getTrioOpFF1() <em>Trio Op FF1</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTrioOpFF1()
   * @generated
   * @ordered
   */
  protected TRIO trioOpFF1;

  /**
   * The cached value of the '{@link #getTrioOpFF2() <em>Trio Op FF2</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTrioOpFF2()
   * @generated
   * @ordered
   */
  protected TRIO trioOpFF2;

  /**
   * The default value of the '{@link #getTrioOpFN() <em>Trio Op FN</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTrioOpFN()
   * @generated
   * @ordered
   */
  protected static final String TRIO_OP_FN_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getTrioOpFN() <em>Trio Op FN</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTrioOpFN()
   * @generated
   * @ordered
   */
  protected String trioOpFN = TRIO_OP_FN_EDEFAULT;

  /**
   * The cached value of the '{@link #getTrioOpFN1() <em>Trio Op FN1</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTrioOpFN1()
   * @generated
   * @ordered
   */
  protected TRIO trioOpFN1;

  /**
   * The default value of the '{@link #getInt() <em>Int</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getInt()
   * @generated
   * @ordered
   */
  protected static final int INT_EDEFAULT = 0;

  /**
   * The cached value of the '{@link #getInt() <em>Int</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getInt()
   * @generated
   * @ordered
   */
  protected int int_ = INT_EDEFAULT;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected TRIOLImpl()
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
    return PropertyPackage.Literals.TRIOL;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getTrioVar()
  {
    return trioVar;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setTrioVar(String newTrioVar)
  {
    String oldTrioVar = trioVar;
    trioVar = newTrioVar;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOL__TRIO_VAR, oldTrioVar, trioVar));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getOpName()
  {
    return opName;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setOpName(String newOpName)
  {
    String oldOpName = opName;
    opName = newOpName;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOL__OP_NAME, oldOpName, opName));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ArithBool getArithBool()
  {
    return arithBool;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetArithBool(ArithBool newArithBool, NotificationChain msgs)
  {
    ArithBool oldArithBool = arithBool;
    arithBool = newArithBool;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOL__ARITH_BOOL, oldArithBool, newArithBool);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setArithBool(ArithBool newArithBool)
  {
    if (newArithBool != arithBool)
    {
      NotificationChain msgs = null;
      if (arithBool != null)
        msgs = ((InternalEObject)arithBool).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.TRIOL__ARITH_BOOL, null, msgs);
      if (newArithBool != null)
        msgs = ((InternalEObject)newArithBool).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.TRIOL__ARITH_BOOL, null, msgs);
      msgs = basicSetArithBool(newArithBool, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOL__ARITH_BOOL, newArithBool, newArithBool));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public TRIO getTrioNot()
  {
    return trioNot;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetTrioNot(TRIO newTrioNot, NotificationChain msgs)
  {
    TRIO oldTrioNot = trioNot;
    trioNot = newTrioNot;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOL__TRIO_NOT, oldTrioNot, newTrioNot);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setTrioNot(TRIO newTrioNot)
  {
    if (newTrioNot != trioNot)
    {
      NotificationChain msgs = null;
      if (trioNot != null)
        msgs = ((InternalEObject)trioNot).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.TRIOL__TRIO_NOT, null, msgs);
      if (newTrioNot != null)
        msgs = ((InternalEObject)newTrioNot).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.TRIOL__TRIO_NOT, null, msgs);
      msgs = basicSetTrioNot(newTrioNot, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOL__TRIO_NOT, newTrioNot, newTrioNot));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getTrioOpF()
  {
    return trioOpF;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setTrioOpF(String newTrioOpF)
  {
    String oldTrioOpF = trioOpF;
    trioOpF = newTrioOpF;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOL__TRIO_OP_F, oldTrioOpF, trioOpF));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public TRIO getTrioOpF1()
  {
    return trioOpF1;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetTrioOpF1(TRIO newTrioOpF1, NotificationChain msgs)
  {
    TRIO oldTrioOpF1 = trioOpF1;
    trioOpF1 = newTrioOpF1;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOL__TRIO_OP_F1, oldTrioOpF1, newTrioOpF1);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setTrioOpF1(TRIO newTrioOpF1)
  {
    if (newTrioOpF1 != trioOpF1)
    {
      NotificationChain msgs = null;
      if (trioOpF1 != null)
        msgs = ((InternalEObject)trioOpF1).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.TRIOL__TRIO_OP_F1, null, msgs);
      if (newTrioOpF1 != null)
        msgs = ((InternalEObject)newTrioOpF1).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.TRIOL__TRIO_OP_F1, null, msgs);
      msgs = basicSetTrioOpF1(newTrioOpF1, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOL__TRIO_OP_F1, newTrioOpF1, newTrioOpF1));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getTrioOpFF()
  {
    return trioOpFF;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setTrioOpFF(String newTrioOpFF)
  {
    String oldTrioOpFF = trioOpFF;
    trioOpFF = newTrioOpFF;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOL__TRIO_OP_FF, oldTrioOpFF, trioOpFF));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public TRIO getTrioOpFF1()
  {
    return trioOpFF1;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetTrioOpFF1(TRIO newTrioOpFF1, NotificationChain msgs)
  {
    TRIO oldTrioOpFF1 = trioOpFF1;
    trioOpFF1 = newTrioOpFF1;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOL__TRIO_OP_FF1, oldTrioOpFF1, newTrioOpFF1);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setTrioOpFF1(TRIO newTrioOpFF1)
  {
    if (newTrioOpFF1 != trioOpFF1)
    {
      NotificationChain msgs = null;
      if (trioOpFF1 != null)
        msgs = ((InternalEObject)trioOpFF1).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.TRIOL__TRIO_OP_FF1, null, msgs);
      if (newTrioOpFF1 != null)
        msgs = ((InternalEObject)newTrioOpFF1).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.TRIOL__TRIO_OP_FF1, null, msgs);
      msgs = basicSetTrioOpFF1(newTrioOpFF1, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOL__TRIO_OP_FF1, newTrioOpFF1, newTrioOpFF1));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public TRIO getTrioOpFF2()
  {
    return trioOpFF2;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetTrioOpFF2(TRIO newTrioOpFF2, NotificationChain msgs)
  {
    TRIO oldTrioOpFF2 = trioOpFF2;
    trioOpFF2 = newTrioOpFF2;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOL__TRIO_OP_FF2, oldTrioOpFF2, newTrioOpFF2);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setTrioOpFF2(TRIO newTrioOpFF2)
  {
    if (newTrioOpFF2 != trioOpFF2)
    {
      NotificationChain msgs = null;
      if (trioOpFF2 != null)
        msgs = ((InternalEObject)trioOpFF2).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.TRIOL__TRIO_OP_FF2, null, msgs);
      if (newTrioOpFF2 != null)
        msgs = ((InternalEObject)newTrioOpFF2).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.TRIOL__TRIO_OP_FF2, null, msgs);
      msgs = basicSetTrioOpFF2(newTrioOpFF2, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOL__TRIO_OP_FF2, newTrioOpFF2, newTrioOpFF2));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getTrioOpFN()
  {
    return trioOpFN;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setTrioOpFN(String newTrioOpFN)
  {
    String oldTrioOpFN = trioOpFN;
    trioOpFN = newTrioOpFN;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOL__TRIO_OP_FN, oldTrioOpFN, trioOpFN));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public TRIO getTrioOpFN1()
  {
    return trioOpFN1;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetTrioOpFN1(TRIO newTrioOpFN1, NotificationChain msgs)
  {
    TRIO oldTrioOpFN1 = trioOpFN1;
    trioOpFN1 = newTrioOpFN1;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOL__TRIO_OP_FN1, oldTrioOpFN1, newTrioOpFN1);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setTrioOpFN1(TRIO newTrioOpFN1)
  {
    if (newTrioOpFN1 != trioOpFN1)
    {
      NotificationChain msgs = null;
      if (trioOpFN1 != null)
        msgs = ((InternalEObject)trioOpFN1).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.TRIOL__TRIO_OP_FN1, null, msgs);
      if (newTrioOpFN1 != null)
        msgs = ((InternalEObject)newTrioOpFN1).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.TRIOL__TRIO_OP_FN1, null, msgs);
      msgs = basicSetTrioOpFN1(newTrioOpFN1, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOL__TRIO_OP_FN1, newTrioOpFN1, newTrioOpFN1));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public int getInt()
  {
    return int_;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setInt(int newInt)
  {
    int oldInt = int_;
    int_ = newInt;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.TRIOL__INT, oldInt, int_));
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
      case PropertyPackage.TRIOL__ARITH_BOOL:
        return basicSetArithBool(null, msgs);
      case PropertyPackage.TRIOL__TRIO_NOT:
        return basicSetTrioNot(null, msgs);
      case PropertyPackage.TRIOL__TRIO_OP_F1:
        return basicSetTrioOpF1(null, msgs);
      case PropertyPackage.TRIOL__TRIO_OP_FF1:
        return basicSetTrioOpFF1(null, msgs);
      case PropertyPackage.TRIOL__TRIO_OP_FF2:
        return basicSetTrioOpFF2(null, msgs);
      case PropertyPackage.TRIOL__TRIO_OP_FN1:
        return basicSetTrioOpFN1(null, msgs);
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
      case PropertyPackage.TRIOL__TRIO_VAR:
        return getTrioVar();
      case PropertyPackage.TRIOL__OP_NAME:
        return getOpName();
      case PropertyPackage.TRIOL__ARITH_BOOL:
        return getArithBool();
      case PropertyPackage.TRIOL__TRIO_NOT:
        return getTrioNot();
      case PropertyPackage.TRIOL__TRIO_OP_F:
        return getTrioOpF();
      case PropertyPackage.TRIOL__TRIO_OP_F1:
        return getTrioOpF1();
      case PropertyPackage.TRIOL__TRIO_OP_FF:
        return getTrioOpFF();
      case PropertyPackage.TRIOL__TRIO_OP_FF1:
        return getTrioOpFF1();
      case PropertyPackage.TRIOL__TRIO_OP_FF2:
        return getTrioOpFF2();
      case PropertyPackage.TRIOL__TRIO_OP_FN:
        return getTrioOpFN();
      case PropertyPackage.TRIOL__TRIO_OP_FN1:
        return getTrioOpFN1();
      case PropertyPackage.TRIOL__INT:
        return getInt();
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
      case PropertyPackage.TRIOL__TRIO_VAR:
        setTrioVar((String)newValue);
        return;
      case PropertyPackage.TRIOL__OP_NAME:
        setOpName((String)newValue);
        return;
      case PropertyPackage.TRIOL__ARITH_BOOL:
        setArithBool((ArithBool)newValue);
        return;
      case PropertyPackage.TRIOL__TRIO_NOT:
        setTrioNot((TRIO)newValue);
        return;
      case PropertyPackage.TRIOL__TRIO_OP_F:
        setTrioOpF((String)newValue);
        return;
      case PropertyPackage.TRIOL__TRIO_OP_F1:
        setTrioOpF1((TRIO)newValue);
        return;
      case PropertyPackage.TRIOL__TRIO_OP_FF:
        setTrioOpFF((String)newValue);
        return;
      case PropertyPackage.TRIOL__TRIO_OP_FF1:
        setTrioOpFF1((TRIO)newValue);
        return;
      case PropertyPackage.TRIOL__TRIO_OP_FF2:
        setTrioOpFF2((TRIO)newValue);
        return;
      case PropertyPackage.TRIOL__TRIO_OP_FN:
        setTrioOpFN((String)newValue);
        return;
      case PropertyPackage.TRIOL__TRIO_OP_FN1:
        setTrioOpFN1((TRIO)newValue);
        return;
      case PropertyPackage.TRIOL__INT:
        setInt((Integer)newValue);
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
      case PropertyPackage.TRIOL__TRIO_VAR:
        setTrioVar(TRIO_VAR_EDEFAULT);
        return;
      case PropertyPackage.TRIOL__OP_NAME:
        setOpName(OP_NAME_EDEFAULT);
        return;
      case PropertyPackage.TRIOL__ARITH_BOOL:
        setArithBool((ArithBool)null);
        return;
      case PropertyPackage.TRIOL__TRIO_NOT:
        setTrioNot((TRIO)null);
        return;
      case PropertyPackage.TRIOL__TRIO_OP_F:
        setTrioOpF(TRIO_OP_F_EDEFAULT);
        return;
      case PropertyPackage.TRIOL__TRIO_OP_F1:
        setTrioOpF1((TRIO)null);
        return;
      case PropertyPackage.TRIOL__TRIO_OP_FF:
        setTrioOpFF(TRIO_OP_FF_EDEFAULT);
        return;
      case PropertyPackage.TRIOL__TRIO_OP_FF1:
        setTrioOpFF1((TRIO)null);
        return;
      case PropertyPackage.TRIOL__TRIO_OP_FF2:
        setTrioOpFF2((TRIO)null);
        return;
      case PropertyPackage.TRIOL__TRIO_OP_FN:
        setTrioOpFN(TRIO_OP_FN_EDEFAULT);
        return;
      case PropertyPackage.TRIOL__TRIO_OP_FN1:
        setTrioOpFN1((TRIO)null);
        return;
      case PropertyPackage.TRIOL__INT:
        setInt(INT_EDEFAULT);
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
      case PropertyPackage.TRIOL__TRIO_VAR:
        return TRIO_VAR_EDEFAULT == null ? trioVar != null : !TRIO_VAR_EDEFAULT.equals(trioVar);
      case PropertyPackage.TRIOL__OP_NAME:
        return OP_NAME_EDEFAULT == null ? opName != null : !OP_NAME_EDEFAULT.equals(opName);
      case PropertyPackage.TRIOL__ARITH_BOOL:
        return arithBool != null;
      case PropertyPackage.TRIOL__TRIO_NOT:
        return trioNot != null;
      case PropertyPackage.TRIOL__TRIO_OP_F:
        return TRIO_OP_F_EDEFAULT == null ? trioOpF != null : !TRIO_OP_F_EDEFAULT.equals(trioOpF);
      case PropertyPackage.TRIOL__TRIO_OP_F1:
        return trioOpF1 != null;
      case PropertyPackage.TRIOL__TRIO_OP_FF:
        return TRIO_OP_FF_EDEFAULT == null ? trioOpFF != null : !TRIO_OP_FF_EDEFAULT.equals(trioOpFF);
      case PropertyPackage.TRIOL__TRIO_OP_FF1:
        return trioOpFF1 != null;
      case PropertyPackage.TRIOL__TRIO_OP_FF2:
        return trioOpFF2 != null;
      case PropertyPackage.TRIOL__TRIO_OP_FN:
        return TRIO_OP_FN_EDEFAULT == null ? trioOpFN != null : !TRIO_OP_FN_EDEFAULT.equals(trioOpFN);
      case PropertyPackage.TRIOL__TRIO_OP_FN1:
        return trioOpFN1 != null;
      case PropertyPackage.TRIOL__INT:
        return int_ != INT_EDEFAULT;
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
    result.append(" (trioVar: ");
    result.append(trioVar);
    result.append(", opName: ");
    result.append(opName);
    result.append(", trioOpF: ");
    result.append(trioOpF);
    result.append(", trioOpFF: ");
    result.append(trioOpFF);
    result.append(", trioOpFN: ");
    result.append(trioOpFN);
    result.append(", int: ");
    result.append(int_);
    result.append(')');
    return result.toString();
  }

} //TRIOLImpl
