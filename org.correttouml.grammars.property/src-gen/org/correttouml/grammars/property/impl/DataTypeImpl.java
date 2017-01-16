/**
 */
package org.correttouml.grammars.property.impl;

import org.correttouml.grammars.property.DataType;
import org.correttouml.grammars.property.PropertyPackage;

import org.eclipse.emf.common.notify.Notification;

import org.eclipse.emf.ecore.EClass;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Data Type</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.impl.DataTypeImpl#getI <em>I</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.DataTypeImpl#getFloat <em>Float</em>}</li>
 * </ul>
 *
 * @generated
 */
public class DataTypeImpl extends MinimalEObjectImpl.Container implements DataType
{
  /**
   * The default value of the '{@link #getI() <em>I</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getI()
   * @generated
   * @ordered
   */
  protected static final int I_EDEFAULT = 0;

  /**
   * The cached value of the '{@link #getI() <em>I</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getI()
   * @generated
   * @ordered
   */
  protected int i = I_EDEFAULT;

  /**
   * The default value of the '{@link #getFloat() <em>Float</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getFloat()
   * @generated
   * @ordered
   */
  protected static final String FLOAT_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getFloat() <em>Float</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getFloat()
   * @generated
   * @ordered
   */
  protected String float_ = FLOAT_EDEFAULT;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected DataTypeImpl()
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
    return PropertyPackage.Literals.DATA_TYPE;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public int getI()
  {
    return i;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setI(int newI)
  {
    int oldI = i;
    i = newI;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.DATA_TYPE__I, oldI, i));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getFloat()
  {
    return float_;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setFloat(String newFloat)
  {
    String oldFloat = float_;
    float_ = newFloat;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.DATA_TYPE__FLOAT, oldFloat, float_));
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
      case PropertyPackage.DATA_TYPE__I:
        return getI();
      case PropertyPackage.DATA_TYPE__FLOAT:
        return getFloat();
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
      case PropertyPackage.DATA_TYPE__I:
        setI((Integer)newValue);
        return;
      case PropertyPackage.DATA_TYPE__FLOAT:
        setFloat((String)newValue);
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
      case PropertyPackage.DATA_TYPE__I:
        setI(I_EDEFAULT);
        return;
      case PropertyPackage.DATA_TYPE__FLOAT:
        setFloat(FLOAT_EDEFAULT);
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
      case PropertyPackage.DATA_TYPE__I:
        return i != I_EDEFAULT;
      case PropertyPackage.DATA_TYPE__FLOAT:
        return FLOAT_EDEFAULT == null ? float_ != null : !FLOAT_EDEFAULT.equals(float_);
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
    result.append(" (i: ");
    result.append(i);
    result.append(", float: ");
    result.append(float_);
    result.append(')');
    return result.toString();
  }

} //DataTypeImpl
