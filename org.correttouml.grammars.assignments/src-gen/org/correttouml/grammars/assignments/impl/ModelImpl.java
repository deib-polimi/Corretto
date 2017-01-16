/**
 */
package org.correttouml.grammars.assignments.impl;

import org.correttouml.grammars.assignments.ASSIGNMENT;
import org.correttouml.grammars.assignments.AssignmentsPackage;
import org.correttouml.grammars.assignments.Model;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Model</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.assignments.impl.ModelImpl#getAssignment <em>Assignment</em>}</li>
 * </ul>
 *
 * @generated
 */
public class ModelImpl extends MinimalEObjectImpl.Container implements Model
{
  /**
   * The cached value of the '{@link #getAssignment() <em>Assignment</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getAssignment()
   * @generated
   * @ordered
   */
  protected ASSIGNMENT assignment;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ModelImpl()
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
    return AssignmentsPackage.Literals.MODEL;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ASSIGNMENT getAssignment()
  {
    return assignment;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetAssignment(ASSIGNMENT newAssignment, NotificationChain msgs)
  {
    ASSIGNMENT oldAssignment = assignment;
    assignment = newAssignment;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, AssignmentsPackage.MODEL__ASSIGNMENT, oldAssignment, newAssignment);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setAssignment(ASSIGNMENT newAssignment)
  {
    if (newAssignment != assignment)
    {
      NotificationChain msgs = null;
      if (assignment != null)
        msgs = ((InternalEObject)assignment).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - AssignmentsPackage.MODEL__ASSIGNMENT, null, msgs);
      if (newAssignment != null)
        msgs = ((InternalEObject)newAssignment).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - AssignmentsPackage.MODEL__ASSIGNMENT, null, msgs);
      msgs = basicSetAssignment(newAssignment, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, AssignmentsPackage.MODEL__ASSIGNMENT, newAssignment, newAssignment));
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
      case AssignmentsPackage.MODEL__ASSIGNMENT:
        return basicSetAssignment(null, msgs);
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
      case AssignmentsPackage.MODEL__ASSIGNMENT:
        return getAssignment();
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
      case AssignmentsPackage.MODEL__ASSIGNMENT:
        setAssignment((ASSIGNMENT)newValue);
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
      case AssignmentsPackage.MODEL__ASSIGNMENT:
        setAssignment((ASSIGNMENT)null);
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
      case AssignmentsPackage.MODEL__ASSIGNMENT:
        return assignment != null;
    }
    return super.eIsSet(featureID);
  }

} //ModelImpl
