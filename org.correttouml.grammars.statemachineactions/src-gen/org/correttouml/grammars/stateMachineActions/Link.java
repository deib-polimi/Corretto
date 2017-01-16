/**
 */
package org.correttouml.grammars.stateMachineActions;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Link</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.Link#getLinkName <em>Link Name</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.Link#getAssociationEnd <em>Association End</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.Link#getSelf <em>Self</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getLink()
 * @model
 * @generated
 */
public interface Link extends EObject
{
  /**
   * Returns the value of the '<em><b>Link Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Link Name</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Link Name</em>' attribute.
   * @see #setLinkName(String)
   * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getLink_LinkName()
   * @model
   * @generated
   */
  String getLinkName();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineActions.Link#getLinkName <em>Link Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Link Name</em>' attribute.
   * @see #getLinkName()
   * @generated
   */
  void setLinkName(String value);

  /**
   * Returns the value of the '<em><b>Association End</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Association End</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Association End</em>' attribute.
   * @see #setAssociationEnd(String)
   * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getLink_AssociationEnd()
   * @model
   * @generated
   */
  String getAssociationEnd();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineActions.Link#getAssociationEnd <em>Association End</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Association End</em>' attribute.
   * @see #getAssociationEnd()
   * @generated
   */
  void setAssociationEnd(String value);

  /**
   * Returns the value of the '<em><b>Self</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Self</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Self</em>' attribute.
   * @see #setSelf(String)
   * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getLink_Self()
   * @model
   * @generated
   */
  String getSelf();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineActions.Link#getSelf <em>Self</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Self</em>' attribute.
   * @see #getSelf()
   * @generated
   */
  void setSelf(String value);

} // Link
