/**
 */
package org.correttouml.grammars.booleanExpressions.impl;

import org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage;
import org.correttouml.grammars.booleanExpressions.Event;
import org.correttouml.grammars.booleanExpressions.TimeConstraint;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Time Constraint</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * <ul>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.TimeConstraintImpl#getEvent2 <em>Event2</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.TimeConstraintImpl#getEvent1 <em>Event1</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.TimeConstraintImpl#getOp <em>Op</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.TimeConstraintImpl#getValue <em>Value</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public class TimeConstraintImpl extends booleanTermImpl implements TimeConstraint
{
  /**
   * The cached value of the '{@link #getEvent2() <em>Event2</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getEvent2()
   * @generated
   * @ordered
   */
  protected Event event2;

  /**
   * The cached value of the '{@link #getEvent1() <em>Event1</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getEvent1()
   * @generated
   * @ordered
   */
  protected Event event1;

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
   * The default value of the '{@link #getValue() <em>Value</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getValue()
   * @generated
   * @ordered
   */
  protected static final int VALUE_EDEFAULT = 0;

  /**
   * The cached value of the '{@link #getValue() <em>Value</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getValue()
   * @generated
   * @ordered
   */
  protected int value = VALUE_EDEFAULT;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected TimeConstraintImpl()
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
    return BooleanExpressionsPackage.Literals.TIME_CONSTRAINT;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Event getEvent2()
  {
    return event2;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetEvent2(Event newEvent2, NotificationChain msgs)
  {
    Event oldEvent2 = event2;
    event2 = newEvent2;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.TIME_CONSTRAINT__EVENT2, oldEvent2, newEvent2);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setEvent2(Event newEvent2)
  {
    if (newEvent2 != event2)
    {
      NotificationChain msgs = null;
      if (event2 != null)
        msgs = ((InternalEObject)event2).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.TIME_CONSTRAINT__EVENT2, null, msgs);
      if (newEvent2 != null)
        msgs = ((InternalEObject)newEvent2).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.TIME_CONSTRAINT__EVENT2, null, msgs);
      msgs = basicSetEvent2(newEvent2, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.TIME_CONSTRAINT__EVENT2, newEvent2, newEvent2));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Event getEvent1()
  {
    return event1;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetEvent1(Event newEvent1, NotificationChain msgs)
  {
    Event oldEvent1 = event1;
    event1 = newEvent1;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.TIME_CONSTRAINT__EVENT1, oldEvent1, newEvent1);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setEvent1(Event newEvent1)
  {
    if (newEvent1 != event1)
    {
      NotificationChain msgs = null;
      if (event1 != null)
        msgs = ((InternalEObject)event1).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.TIME_CONSTRAINT__EVENT1, null, msgs);
      if (newEvent1 != null)
        msgs = ((InternalEObject)newEvent1).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.TIME_CONSTRAINT__EVENT1, null, msgs);
      msgs = basicSetEvent1(newEvent1, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.TIME_CONSTRAINT__EVENT1, newEvent1, newEvent1));
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
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.TIME_CONSTRAINT__OP, oldOp, op));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public int getValue()
  {
    return value;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setValue(int newValue)
  {
    int oldValue = value;
    value = newValue;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.TIME_CONSTRAINT__VALUE, oldValue, value));
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
      case BooleanExpressionsPackage.TIME_CONSTRAINT__EVENT2:
        return basicSetEvent2(null, msgs);
      case BooleanExpressionsPackage.TIME_CONSTRAINT__EVENT1:
        return basicSetEvent1(null, msgs);
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
      case BooleanExpressionsPackage.TIME_CONSTRAINT__EVENT2:
        return getEvent2();
      case BooleanExpressionsPackage.TIME_CONSTRAINT__EVENT1:
        return getEvent1();
      case BooleanExpressionsPackage.TIME_CONSTRAINT__OP:
        return getOp();
      case BooleanExpressionsPackage.TIME_CONSTRAINT__VALUE:
        return getValue();
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
      case BooleanExpressionsPackage.TIME_CONSTRAINT__EVENT2:
        setEvent2((Event)newValue);
        return;
      case BooleanExpressionsPackage.TIME_CONSTRAINT__EVENT1:
        setEvent1((Event)newValue);
        return;
      case BooleanExpressionsPackage.TIME_CONSTRAINT__OP:
        setOp((String)newValue);
        return;
      case BooleanExpressionsPackage.TIME_CONSTRAINT__VALUE:
        setValue((Integer)newValue);
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
      case BooleanExpressionsPackage.TIME_CONSTRAINT__EVENT2:
        setEvent2((Event)null);
        return;
      case BooleanExpressionsPackage.TIME_CONSTRAINT__EVENT1:
        setEvent1((Event)null);
        return;
      case BooleanExpressionsPackage.TIME_CONSTRAINT__OP:
        setOp(OP_EDEFAULT);
        return;
      case BooleanExpressionsPackage.TIME_CONSTRAINT__VALUE:
        setValue(VALUE_EDEFAULT);
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
      case BooleanExpressionsPackage.TIME_CONSTRAINT__EVENT2:
        return event2 != null;
      case BooleanExpressionsPackage.TIME_CONSTRAINT__EVENT1:
        return event1 != null;
      case BooleanExpressionsPackage.TIME_CONSTRAINT__OP:
        return OP_EDEFAULT == null ? op != null : !OP_EDEFAULT.equals(op);
      case BooleanExpressionsPackage.TIME_CONSTRAINT__VALUE:
        return value != VALUE_EDEFAULT;
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
    result.append(" (op: ");
    result.append(op);
    result.append(", value: ");
    result.append(value);
    result.append(')');
    return result.toString();
  }

} //TimeConstraintImpl
