/**
 */
package org.correttouml.grammars.property.impl;

import org.correttouml.grammars.property.ArithVar;
import org.correttouml.grammars.property.PropertyPackage;

import org.eclipse.emf.common.notify.Notification;

import org.eclipse.emf.ecore.EClass;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Arith Var</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.impl.ArithVarImpl#getObj <em>Obj</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.ArithVarImpl#getAtr <em>Atr</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.ArithVarImpl#getOp <em>Op</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.ArithVarImpl#getParam <em>Param</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.ArithVarImpl#getSd <em>Sd</em>}</li>
 * </ul>
 *
 * @generated
 */
public class ArithVarImpl extends MinimalEObjectImpl.Container implements ArithVar
{
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
   * The default value of the '{@link #getAtr() <em>Atr</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getAtr()
   * @generated
   * @ordered
   */
  protected static final String ATR_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getAtr() <em>Atr</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getAtr()
   * @generated
   * @ordered
   */
  protected String atr = ATR_EDEFAULT;

  /**
   * The default value of the '{@link #getOp() <em>Op</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getOp()
   * @generated
   * @ordered
   */
  protected static final String OP_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getOp() <em>Op</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getOp()
   * @generated
   * @ordered
   */
  protected String op = OP_EDEFAULT;

  /**
   * The default value of the '{@link #getParam() <em>Param</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getParam()
   * @generated
   * @ordered
   */
  protected static final String PARAM_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getParam() <em>Param</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getParam()
   * @generated
   * @ordered
   */
  protected String param = PARAM_EDEFAULT;

  /**
   * The default value of the '{@link #getSd() <em>Sd</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getSd()
   * @generated
   * @ordered
   */
  protected static final String SD_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getSd() <em>Sd</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getSd()
   * @generated
   * @ordered
   */
  protected String sd = SD_EDEFAULT;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ArithVarImpl()
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
    return PropertyPackage.Literals.ARITH_VAR;
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
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_VAR__OBJ, oldObj, obj));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getAtr()
  {
    return atr;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setAtr(String newAtr)
  {
    String oldAtr = atr;
    atr = newAtr;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_VAR__ATR, oldAtr, atr));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getOp()
  {
    return op;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setOp(String newOp)
  {
    String oldOp = op;
    op = newOp;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_VAR__OP, oldOp, op));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getParam()
  {
    return param;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setParam(String newParam)
  {
    String oldParam = param;
    param = newParam;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_VAR__PARAM, oldParam, param));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getSd()
  {
    return sd;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setSd(String newSd)
  {
    String oldSd = sd;
    sd = newSd;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.ARITH_VAR__SD, oldSd, sd));
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
      case PropertyPackage.ARITH_VAR__OBJ:
        return getObj();
      case PropertyPackage.ARITH_VAR__ATR:
        return getAtr();
      case PropertyPackage.ARITH_VAR__OP:
        return getOp();
      case PropertyPackage.ARITH_VAR__PARAM:
        return getParam();
      case PropertyPackage.ARITH_VAR__SD:
        return getSd();
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
      case PropertyPackage.ARITH_VAR__OBJ:
        setObj((String)newValue);
        return;
      case PropertyPackage.ARITH_VAR__ATR:
        setAtr((String)newValue);
        return;
      case PropertyPackage.ARITH_VAR__OP:
        setOp((String)newValue);
        return;
      case PropertyPackage.ARITH_VAR__PARAM:
        setParam((String)newValue);
        return;
      case PropertyPackage.ARITH_VAR__SD:
        setSd((String)newValue);
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
      case PropertyPackage.ARITH_VAR__OBJ:
        setObj(OBJ_EDEFAULT);
        return;
      case PropertyPackage.ARITH_VAR__ATR:
        setAtr(ATR_EDEFAULT);
        return;
      case PropertyPackage.ARITH_VAR__OP:
        setOp(OP_EDEFAULT);
        return;
      case PropertyPackage.ARITH_VAR__PARAM:
        setParam(PARAM_EDEFAULT);
        return;
      case PropertyPackage.ARITH_VAR__SD:
        setSd(SD_EDEFAULT);
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
      case PropertyPackage.ARITH_VAR__OBJ:
        return OBJ_EDEFAULT == null ? obj != null : !OBJ_EDEFAULT.equals(obj);
      case PropertyPackage.ARITH_VAR__ATR:
        return ATR_EDEFAULT == null ? atr != null : !ATR_EDEFAULT.equals(atr);
      case PropertyPackage.ARITH_VAR__OP:
        return OP_EDEFAULT == null ? op != null : !OP_EDEFAULT.equals(op);
      case PropertyPackage.ARITH_VAR__PARAM:
        return PARAM_EDEFAULT == null ? param != null : !PARAM_EDEFAULT.equals(param);
      case PropertyPackage.ARITH_VAR__SD:
        return SD_EDEFAULT == null ? sd != null : !SD_EDEFAULT.equals(sd);
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
    result.append(" (obj: ");
    result.append(obj);
    result.append(", atr: ");
    result.append(atr);
    result.append(", op: ");
    result.append(op);
    result.append(", param: ");
    result.append(param);
    result.append(", sd: ");
    result.append(sd);
    result.append(')');
    return result.toString();
  }

} //ArithVarImpl
