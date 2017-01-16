/**
 */
package org.correttouml.grammars.stateMachineActions.impl;

import org.correttouml.grammars.stateMachineActions.Link;
import org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage;

import org.eclipse.emf.common.notify.Notification;

import org.eclipse.emf.ecore.EClass;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Link</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.impl.LinkImpl#getLinkName <em>Link Name</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.impl.LinkImpl#getAssociationEnd <em>Association End</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.impl.LinkImpl#getSelf <em>Self</em>}</li>
 * </ul>
 *
 * @generated
 */
public class LinkImpl extends MinimalEObjectImpl.Container implements Link
{
  /**
   * The default value of the '{@link #getLinkName() <em>Link Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getLinkName()
   * @generated
   * @ordered
   */
  protected static final String LINK_NAME_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getLinkName() <em>Link Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getLinkName()
   * @generated
   * @ordered
   */
  protected String linkName = LINK_NAME_EDEFAULT;

  /**
   * The default value of the '{@link #getAssociationEnd() <em>Association End</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getAssociationEnd()
   * @generated
   * @ordered
   */
  protected static final String ASSOCIATION_END_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getAssociationEnd() <em>Association End</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getAssociationEnd()
   * @generated
   * @ordered
   */
  protected String associationEnd = ASSOCIATION_END_EDEFAULT;

  /**
   * The default value of the '{@link #getSelf() <em>Self</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getSelf()
   * @generated
   * @ordered
   */
  protected static final String SELF_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getSelf() <em>Self</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getSelf()
   * @generated
   * @ordered
   */
  protected String self = SELF_EDEFAULT;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected LinkImpl()
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
    return StateMachineActionsPackage.Literals.LINK;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getLinkName()
  {
    return linkName;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setLinkName(String newLinkName)
  {
    String oldLinkName = linkName;
    linkName = newLinkName;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.LINK__LINK_NAME, oldLinkName, linkName));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getAssociationEnd()
  {
    return associationEnd;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setAssociationEnd(String newAssociationEnd)
  {
    String oldAssociationEnd = associationEnd;
    associationEnd = newAssociationEnd;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.LINK__ASSOCIATION_END, oldAssociationEnd, associationEnd));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getSelf()
  {
    return self;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setSelf(String newSelf)
  {
    String oldSelf = self;
    self = newSelf;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, StateMachineActionsPackage.LINK__SELF, oldSelf, self));
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
      case StateMachineActionsPackage.LINK__LINK_NAME:
        return getLinkName();
      case StateMachineActionsPackage.LINK__ASSOCIATION_END:
        return getAssociationEnd();
      case StateMachineActionsPackage.LINK__SELF:
        return getSelf();
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
      case StateMachineActionsPackage.LINK__LINK_NAME:
        setLinkName((String)newValue);
        return;
      case StateMachineActionsPackage.LINK__ASSOCIATION_END:
        setAssociationEnd((String)newValue);
        return;
      case StateMachineActionsPackage.LINK__SELF:
        setSelf((String)newValue);
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
      case StateMachineActionsPackage.LINK__LINK_NAME:
        setLinkName(LINK_NAME_EDEFAULT);
        return;
      case StateMachineActionsPackage.LINK__ASSOCIATION_END:
        setAssociationEnd(ASSOCIATION_END_EDEFAULT);
        return;
      case StateMachineActionsPackage.LINK__SELF:
        setSelf(SELF_EDEFAULT);
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
      case StateMachineActionsPackage.LINK__LINK_NAME:
        return LINK_NAME_EDEFAULT == null ? linkName != null : !LINK_NAME_EDEFAULT.equals(linkName);
      case StateMachineActionsPackage.LINK__ASSOCIATION_END:
        return ASSOCIATION_END_EDEFAULT == null ? associationEnd != null : !ASSOCIATION_END_EDEFAULT.equals(associationEnd);
      case StateMachineActionsPackage.LINK__SELF:
        return SELF_EDEFAULT == null ? self != null : !SELF_EDEFAULT.equals(self);
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
    result.append(" (linkName: ");
    result.append(linkName);
    result.append(", associationEnd: ");
    result.append(associationEnd);
    result.append(", self: ");
    result.append(self);
    result.append(')');
    return result.toString();
  }

} //LinkImpl
