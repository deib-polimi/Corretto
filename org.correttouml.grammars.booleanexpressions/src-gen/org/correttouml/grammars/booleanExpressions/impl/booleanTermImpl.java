/**
 */
package org.correttouml.grammars.booleanExpressions.impl;

import org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage;
import org.correttouml.grammars.booleanExpressions.BooleanVariable;
import org.correttouml.grammars.booleanExpressions.TimeConstraint;
import org.correttouml.grammars.booleanExpressions.VariableCondition;
import org.correttouml.grammars.booleanExpressions.booleanTerm;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>boolean Term</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.booleanTermImpl#getTimeConstraint <em>Time Constraint</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.booleanTermImpl#getBooleanVariable <em>Boolean Variable</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.impl.booleanTermImpl#getVariableCondition <em>Variable Condition</em>}</li>
 * </ul>
 *
 * @generated
 */
public class booleanTermImpl extends MinimalEObjectImpl.Container implements booleanTerm
{
  /**
   * The cached value of the '{@link #getTimeConstraint() <em>Time Constraint</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTimeConstraint()
   * @generated
   * @ordered
   */
  protected TimeConstraint timeConstraint;

  /**
   * The cached value of the '{@link #getBooleanVariable() <em>Boolean Variable</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getBooleanVariable()
   * @generated
   * @ordered
   */
  protected BooleanVariable booleanVariable;

  /**
   * The cached value of the '{@link #getVariableCondition() <em>Variable Condition</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getVariableCondition()
   * @generated
   * @ordered
   */
  protected VariableCondition variableCondition;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected booleanTermImpl()
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
    return BooleanExpressionsPackage.Literals.BOOLEAN_TERM;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public TimeConstraint getTimeConstraint()
  {
    return timeConstraint;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetTimeConstraint(TimeConstraint newTimeConstraint, NotificationChain msgs)
  {
    TimeConstraint oldTimeConstraint = timeConstraint;
    timeConstraint = newTimeConstraint;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BOOLEAN_TERM__TIME_CONSTRAINT, oldTimeConstraint, newTimeConstraint);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setTimeConstraint(TimeConstraint newTimeConstraint)
  {
    if (newTimeConstraint != timeConstraint)
    {
      NotificationChain msgs = null;
      if (timeConstraint != null)
        msgs = ((InternalEObject)timeConstraint).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BOOLEAN_TERM__TIME_CONSTRAINT, null, msgs);
      if (newTimeConstraint != null)
        msgs = ((InternalEObject)newTimeConstraint).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BOOLEAN_TERM__TIME_CONSTRAINT, null, msgs);
      msgs = basicSetTimeConstraint(newTimeConstraint, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BOOLEAN_TERM__TIME_CONSTRAINT, newTimeConstraint, newTimeConstraint));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public BooleanVariable getBooleanVariable()
  {
    return booleanVariable;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetBooleanVariable(BooleanVariable newBooleanVariable, NotificationChain msgs)
  {
    BooleanVariable oldBooleanVariable = booleanVariable;
    booleanVariable = newBooleanVariable;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BOOLEAN_TERM__BOOLEAN_VARIABLE, oldBooleanVariable, newBooleanVariable);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setBooleanVariable(BooleanVariable newBooleanVariable)
  {
    if (newBooleanVariable != booleanVariable)
    {
      NotificationChain msgs = null;
      if (booleanVariable != null)
        msgs = ((InternalEObject)booleanVariable).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BOOLEAN_TERM__BOOLEAN_VARIABLE, null, msgs);
      if (newBooleanVariable != null)
        msgs = ((InternalEObject)newBooleanVariable).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BOOLEAN_TERM__BOOLEAN_VARIABLE, null, msgs);
      msgs = basicSetBooleanVariable(newBooleanVariable, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BOOLEAN_TERM__BOOLEAN_VARIABLE, newBooleanVariable, newBooleanVariable));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public VariableCondition getVariableCondition()
  {
    return variableCondition;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetVariableCondition(VariableCondition newVariableCondition, NotificationChain msgs)
  {
    VariableCondition oldVariableCondition = variableCondition;
    variableCondition = newVariableCondition;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BOOLEAN_TERM__VARIABLE_CONDITION, oldVariableCondition, newVariableCondition);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setVariableCondition(VariableCondition newVariableCondition)
  {
    if (newVariableCondition != variableCondition)
    {
      NotificationChain msgs = null;
      if (variableCondition != null)
        msgs = ((InternalEObject)variableCondition).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BOOLEAN_TERM__VARIABLE_CONDITION, null, msgs);
      if (newVariableCondition != null)
        msgs = ((InternalEObject)newVariableCondition).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BooleanExpressionsPackage.BOOLEAN_TERM__VARIABLE_CONDITION, null, msgs);
      msgs = basicSetVariableCondition(newVariableCondition, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, BooleanExpressionsPackage.BOOLEAN_TERM__VARIABLE_CONDITION, newVariableCondition, newVariableCondition));
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
      case BooleanExpressionsPackage.BOOLEAN_TERM__TIME_CONSTRAINT:
        return basicSetTimeConstraint(null, msgs);
      case BooleanExpressionsPackage.BOOLEAN_TERM__BOOLEAN_VARIABLE:
        return basicSetBooleanVariable(null, msgs);
      case BooleanExpressionsPackage.BOOLEAN_TERM__VARIABLE_CONDITION:
        return basicSetVariableCondition(null, msgs);
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
      case BooleanExpressionsPackage.BOOLEAN_TERM__TIME_CONSTRAINT:
        return getTimeConstraint();
      case BooleanExpressionsPackage.BOOLEAN_TERM__BOOLEAN_VARIABLE:
        return getBooleanVariable();
      case BooleanExpressionsPackage.BOOLEAN_TERM__VARIABLE_CONDITION:
        return getVariableCondition();
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
      case BooleanExpressionsPackage.BOOLEAN_TERM__TIME_CONSTRAINT:
        setTimeConstraint((TimeConstraint)newValue);
        return;
      case BooleanExpressionsPackage.BOOLEAN_TERM__BOOLEAN_VARIABLE:
        setBooleanVariable((BooleanVariable)newValue);
        return;
      case BooleanExpressionsPackage.BOOLEAN_TERM__VARIABLE_CONDITION:
        setVariableCondition((VariableCondition)newValue);
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
      case BooleanExpressionsPackage.BOOLEAN_TERM__TIME_CONSTRAINT:
        setTimeConstraint((TimeConstraint)null);
        return;
      case BooleanExpressionsPackage.BOOLEAN_TERM__BOOLEAN_VARIABLE:
        setBooleanVariable((BooleanVariable)null);
        return;
      case BooleanExpressionsPackage.BOOLEAN_TERM__VARIABLE_CONDITION:
        setVariableCondition((VariableCondition)null);
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
      case BooleanExpressionsPackage.BOOLEAN_TERM__TIME_CONSTRAINT:
        return timeConstraint != null;
      case BooleanExpressionsPackage.BOOLEAN_TERM__BOOLEAN_VARIABLE:
        return booleanVariable != null;
      case BooleanExpressionsPackage.BOOLEAN_TERM__VARIABLE_CONDITION:
        return variableCondition != null;
    }
    return super.eIsSet(featureID);
  }

} //booleanTermImpl
