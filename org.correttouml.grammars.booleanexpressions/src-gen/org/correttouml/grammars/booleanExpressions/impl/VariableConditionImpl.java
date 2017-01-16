/**
 */
package org.correttouml.grammars.booleanExpressions.impl;

import org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage;
import org.correttouml.grammars.booleanExpressions.EXPRESSION;
import org.correttouml.grammars.booleanExpressions.VariableCondition;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Variable Condition</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.VariableConditionImpl#getExpression_left <em>Expression left</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.VariableConditionImpl#getRelation <em>Relation</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.VariableConditionImpl#getExpression_right <em>Expression right</em>}</li>
 * </ul>
 *
 * @generated
 */
public class VariableConditionImpl extends MinimalEObjectImpl.Container implements VariableCondition
{
  /**
   * The cached value of the '{@link #getExpression_left() <em>Expression left</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getExpression_left()
   * @generated
   * @ordered
   */
  protected EXPRESSION expression_left;

  /**
   * The default value of the '{@link #getRelation() <em>Relation</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getRelation()
   * @generated
   * @ordered
   */
  protected static final String RELATION_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getRelation() <em>Relation</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getRelation()
   * @generated
   * @ordered
   */
  protected String relation = RELATION_EDEFAULT;

  /**
   * The cached value of the '{@link #getExpression_right() <em>Expression right</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getExpression_right()
   * @generated
   * @ordered
   */
  protected EXPRESSION expression_right;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected VariableConditionImpl()
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
    return BooleanExpressionsPackage.Literals.VARIABLE_CONDITION;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EXPRESSION getExpression_left()
  {
    return expression_left;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetExpression_left(EXPRESSION newExpression_left, NotificationChain msgs)
  {
    EXPRESSION oldExpression_left = expression_left;
    expression_left = newExpression_left;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.VARIABLE_CONDITION__EXPRESSION_LEFT, oldExpression_left, newExpression_left);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setExpression_left(EXPRESSION newExpression_left)
  {
    if (newExpression_left != expression_left)
    {
      NotificationChain msgs = null;
      if (expression_left != null)
        msgs = ((InternalEObject)expression_left).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.VARIABLE_CONDITION__EXPRESSION_LEFT, null, msgs);
      if (newExpression_left != null)
        msgs = ((InternalEObject)newExpression_left).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.VARIABLE_CONDITION__EXPRESSION_LEFT, null, msgs);
      msgs = basicSetExpression_left(newExpression_left, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.VARIABLE_CONDITION__EXPRESSION_LEFT, newExpression_left, newExpression_left));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getRelation()
  {
    return relation;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setRelation(String newRelation)
  {
    String oldRelation = relation;
    relation = newRelation;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.VARIABLE_CONDITION__RELATION, oldRelation, relation));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EXPRESSION getExpression_right()
  {
    return expression_right;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetExpression_right(EXPRESSION newExpression_right, NotificationChain msgs)
  {
    EXPRESSION oldExpression_right = expression_right;
    expression_right = newExpression_right;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.VARIABLE_CONDITION__EXPRESSION_RIGHT, oldExpression_right, newExpression_right);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setExpression_right(EXPRESSION newExpression_right)
  {
    if (newExpression_right != expression_right)
    {
      NotificationChain msgs = null;
      if (expression_right != null)
        msgs = ((InternalEObject)expression_right).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.VARIABLE_CONDITION__EXPRESSION_RIGHT, null, msgs);
      if (newExpression_right != null)
        msgs = ((InternalEObject)newExpression_right).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.VARIABLE_CONDITION__EXPRESSION_RIGHT, null, msgs);
      msgs = basicSetExpression_right(newExpression_right, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.VARIABLE_CONDITION__EXPRESSION_RIGHT, newExpression_right, newExpression_right));
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
      case BooleanExpressionsPackage.VARIABLE_CONDITION__EXPRESSION_LEFT:
        return basicSetExpression_left(null, msgs);
      case BooleanExpressionsPackage.VARIABLE_CONDITION__EXPRESSION_RIGHT:
        return basicSetExpression_right(null, msgs);
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
      case BooleanExpressionsPackage.VARIABLE_CONDITION__EXPRESSION_LEFT:
        return getExpression_left();
      case BooleanExpressionsPackage.VARIABLE_CONDITION__RELATION:
        return getRelation();
      case BooleanExpressionsPackage.VARIABLE_CONDITION__EXPRESSION_RIGHT:
        return getExpression_right();
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
      case BooleanExpressionsPackage.VARIABLE_CONDITION__EXPRESSION_LEFT:
        setExpression_left((EXPRESSION)newValue);
        return;
      case BooleanExpressionsPackage.VARIABLE_CONDITION__RELATION:
        setRelation((String)newValue);
        return;
      case BooleanExpressionsPackage.VARIABLE_CONDITION__EXPRESSION_RIGHT:
        setExpression_right((EXPRESSION)newValue);
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
      case BooleanExpressionsPackage.VARIABLE_CONDITION__EXPRESSION_LEFT:
        setExpression_left((EXPRESSION)null);
        return;
      case BooleanExpressionsPackage.VARIABLE_CONDITION__RELATION:
        setRelation(RELATION_EDEFAULT);
        return;
      case BooleanExpressionsPackage.VARIABLE_CONDITION__EXPRESSION_RIGHT:
        setExpression_right((EXPRESSION)null);
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
      case BooleanExpressionsPackage.VARIABLE_CONDITION__EXPRESSION_LEFT:
        return expression_left != null;
      case BooleanExpressionsPackage.VARIABLE_CONDITION__RELATION:
        return RELATION_EDEFAULT == null ? relation != null : !RELATION_EDEFAULT.equals(relation);
      case BooleanExpressionsPackage.VARIABLE_CONDITION__EXPRESSION_RIGHT:
        return expression_right != null;
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
    result.append(" (relation: ");
    result.append(relation);
    result.append(')');
    return result.toString();
  }

} //VariableConditionImpl
