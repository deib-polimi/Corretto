/**
 */
package org.correttouml.grammars.property.impl;

import org.correttouml.grammars.property.Declaration;
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
 * An implementation of the model object '<em><b>Declaration</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.impl.DeclarationImpl#getStateName <em>State Name</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.DeclarationImpl#getObj <em>Obj</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.DeclarationImpl#getStd <em>Std</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.DeclarationImpl#getUMLStateName <em>UML State Name</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.DeclarationImpl#getTrioVar <em>Trio Var</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.DeclarationImpl#getTrio <em>Trio</em>}</li>
 * </ul>
 *
 * @generated
 */
public class DeclarationImpl extends MinimalEObjectImpl.Container implements Declaration
{
  /**
   * The default value of the '{@link #getStateName() <em>State Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getStateName()
   * @generated
   * @ordered
   */
  protected static final String STATE_NAME_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getStateName() <em>State Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getStateName()
   * @generated
   * @ordered
   */
  protected String stateName = STATE_NAME_EDEFAULT;

  /**
   * The default value of the '{@link #getObj() <em>Obj</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getObj()
   * @generated
   * @ordered
   */
  protected static final String OBJ_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getObj() <em>Obj</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getObj()
   * @generated
   * @ordered
   */
  protected String obj = OBJ_EDEFAULT;

  /**
   * The default value of the '{@link #getStd() <em>Std</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getStd()
   * @generated
   * @ordered
   */
  protected static final String STD_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getStd() <em>Std</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getStd()
   * @generated
   * @ordered
   */
  protected String std = STD_EDEFAULT;

  /**
   * The default value of the '{@link #getUMLStateName() <em>UML State Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getUMLStateName()
   * @generated
   * @ordered
   */
  protected static final String UML_STATE_NAME_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getUMLStateName() <em>UML State Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getUMLStateName()
   * @generated
   * @ordered
   */
  protected String uMLStateName = UML_STATE_NAME_EDEFAULT;

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
  protected DeclarationImpl()
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
    return PropertyPackage.Literals.DECLARATION;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getStateName()
  {
    return stateName;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setStateName(String newStateName)
  {
    String oldStateName = stateName;
    stateName = newStateName;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.DECLARATION__STATE_NAME, oldStateName, stateName));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getObj()
  {
    return obj;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setObj(String newObj)
  {
    String oldObj = obj;
    obj = newObj;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.DECLARATION__OBJ, oldObj, obj));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getStd()
  {
    return std;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setStd(String newStd)
  {
    String oldStd = std;
    std = newStd;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.DECLARATION__STD, oldStd, std));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getUMLStateName()
  {
    return uMLStateName;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setUMLStateName(String newUMLStateName)
  {
    String oldUMLStateName = uMLStateName;
    uMLStateName = newUMLStateName;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.DECLARATION__UML_STATE_NAME, oldUMLStateName, uMLStateName));
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
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.DECLARATION__TRIO_VAR, oldTrioVar, trioVar));
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
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.DECLARATION__TRIO, oldTrio, newTrio);
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
        msgs = ((InternalEObject)trio).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.DECLARATION__TRIO, null, msgs);
      if (newTrio != null)
        msgs = ((InternalEObject)newTrio).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.DECLARATION__TRIO, null, msgs);
      msgs = basicSetTrio(newTrio, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.DECLARATION__TRIO, newTrio, newTrio));
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
      case PropertyPackage.DECLARATION__TRIO:
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
      case PropertyPackage.DECLARATION__STATE_NAME:
        return getStateName();
      case PropertyPackage.DECLARATION__OBJ:
        return getObj();
      case PropertyPackage.DECLARATION__STD:
        return getStd();
      case PropertyPackage.DECLARATION__UML_STATE_NAME:
        return getUMLStateName();
      case PropertyPackage.DECLARATION__TRIO_VAR:
        return getTrioVar();
      case PropertyPackage.DECLARATION__TRIO:
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
      case PropertyPackage.DECLARATION__STATE_NAME:
        setStateName((String)newValue);
        return;
      case PropertyPackage.DECLARATION__OBJ:
        setObj((String)newValue);
        return;
      case PropertyPackage.DECLARATION__STD:
        setStd((String)newValue);
        return;
      case PropertyPackage.DECLARATION__UML_STATE_NAME:
        setUMLStateName((String)newValue);
        return;
      case PropertyPackage.DECLARATION__TRIO_VAR:
        setTrioVar((String)newValue);
        return;
      case PropertyPackage.DECLARATION__TRIO:
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
      case PropertyPackage.DECLARATION__STATE_NAME:
        setStateName(STATE_NAME_EDEFAULT);
        return;
      case PropertyPackage.DECLARATION__OBJ:
        setObj(OBJ_EDEFAULT);
        return;
      case PropertyPackage.DECLARATION__STD:
        setStd(STD_EDEFAULT);
        return;
      case PropertyPackage.DECLARATION__UML_STATE_NAME:
        setUMLStateName(UML_STATE_NAME_EDEFAULT);
        return;
      case PropertyPackage.DECLARATION__TRIO_VAR:
        setTrioVar(TRIO_VAR_EDEFAULT);
        return;
      case PropertyPackage.DECLARATION__TRIO:
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
      case PropertyPackage.DECLARATION__STATE_NAME:
        return STATE_NAME_EDEFAULT == null ? stateName != null : !STATE_NAME_EDEFAULT.equals(stateName);
      case PropertyPackage.DECLARATION__OBJ:
        return OBJ_EDEFAULT == null ? obj != null : !OBJ_EDEFAULT.equals(obj);
      case PropertyPackage.DECLARATION__STD:
        return STD_EDEFAULT == null ? std != null : !STD_EDEFAULT.equals(std);
      case PropertyPackage.DECLARATION__UML_STATE_NAME:
        return UML_STATE_NAME_EDEFAULT == null ? uMLStateName != null : !UML_STATE_NAME_EDEFAULT.equals(uMLStateName);
      case PropertyPackage.DECLARATION__TRIO_VAR:
        return TRIO_VAR_EDEFAULT == null ? trioVar != null : !TRIO_VAR_EDEFAULT.equals(trioVar);
      case PropertyPackage.DECLARATION__TRIO:
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
    result.append(" (stateName: ");
    result.append(stateName);
    result.append(", obj: ");
    result.append(obj);
    result.append(", std: ");
    result.append(std);
    result.append(", uMLStateName: ");
    result.append(uMLStateName);
    result.append(", trioVar: ");
    result.append(trioVar);
    result.append(')');
    return result.toString();
  }

} //DeclarationImpl
