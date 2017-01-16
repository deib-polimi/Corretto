/**
 */
package org.correttouml.grammars.stateMachineActions.impl;

import org.correttouml.grammars.stateMachineActions.Action;
import org.correttouml.grammars.stateMachineActions.Model;
import org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage;

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
 *   <li>{@link org.correttouml.grammars.stateMachineActions.impl.ModelImpl#getAction <em>Action</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.impl.ModelImpl#getActions <em>Actions</em>}</li>
 * </ul>
 *
 * @generated
 */
public class ModelImpl extends MinimalEObjectImpl.Container implements Model
{
  /**
   * The cached value of the '{@link #getAction() <em>Action</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getAction()
   * @generated
   * @ordered
   */
  protected Action action;

  /**
   * The cached value of the '{@link #getActions() <em>Actions</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getActions()
   * @generated
   * @ordered
   */
  protected Model actions;

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
    return StateMachineActionsPackage.Literals.MODEL;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Action getAction()
  {
    return action;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetAction(Action newAction, NotificationChain msgs)
  {
    Action oldAction = action;
    action = newAction;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.MODEL__ACTION, oldAction, newAction);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setAction(Action newAction)
  {
    if (newAction != action)
    {
      NotificationChain msgs = null;
      if (action != null)
        msgs = ((InternalEObject)action).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - StateMachineActionsPackage.MODEL__ACTION, null, msgs);
      if (newAction != null)
        msgs = ((InternalEObject)newAction).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - StateMachineActionsPackage.MODEL__ACTION, null, msgs);
      msgs = basicSetAction(newAction, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.MODEL__ACTION, newAction, newAction));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Model getActions()
  {
    return actions;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetActions(Model newActions, NotificationChain msgs)
  {
    Model oldActions = actions;
    actions = newActions;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.MODEL__ACTIONS, oldActions, newActions);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setActions(Model newActions)
  {
    if (newActions != actions)
    {
      NotificationChain msgs = null;
      if (actions != null)
        msgs = ((InternalEObject)actions).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - StateMachineActionsPackage.MODEL__ACTIONS, null, msgs);
      if (newActions != null)
        msgs = ((InternalEObject)newActions).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - StateMachineActionsPackage.MODEL__ACTIONS, null, msgs);
      msgs = basicSetActions(newActions, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.MODEL__ACTIONS, newActions, newActions));
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
      case StateMachineActionsPackage.MODEL__ACTION:
        return basicSetAction(null, msgs);
      case StateMachineActionsPackage.MODEL__ACTIONS:
        return basicSetActions(null, msgs);
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
      case StateMachineActionsPackage.MODEL__ACTION:
        return getAction();
      case StateMachineActionsPackage.MODEL__ACTIONS:
        return getActions();
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
      case StateMachineActionsPackage.MODEL__ACTION:
        setAction((Action)newValue);
        return;
      case StateMachineActionsPackage.MODEL__ACTIONS:
        setActions((Model)newValue);
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
      case StateMachineActionsPackage.MODEL__ACTION:
        setAction((Action)null);
        return;
      case StateMachineActionsPackage.MODEL__ACTIONS:
        setActions((Model)null);
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
      case StateMachineActionsPackage.MODEL__ACTION:
        return action != null;
      case StateMachineActionsPackage.MODEL__ACTIONS:
        return actions != null;
    }
    return super.eIsSet(featureID);
  }

} //ModelImpl
