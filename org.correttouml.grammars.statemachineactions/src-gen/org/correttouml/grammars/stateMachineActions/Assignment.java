/**
 */
package org.correttouml.grammars.stateMachineActions;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Assignment</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.Assignment#getLeftvar <em>Leftvar</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.Assignment#getExpression <em>Expression</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getAssignment()
 * @model
 * @generated
 */
public interface Assignment extends EObject
{
  /**
   * Returns the value of the '<em><b>Leftvar</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Leftvar</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Leftvar</em>' attribute.
   * @see #setLeftvar(String)
   * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getAssignment_Leftvar()
   * @model
   * @generated
   */
  String getLeftvar();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineActions.Assignment#getLeftvar <em>Leftvar</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Leftvar</em>' attribute.
   * @see #getLeftvar()
   * @generated
   */
  void setLeftvar(String value);

  /**
   * Returns the value of the '<em><b>Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Expression</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Expression</em>' containment reference.
   * @see #setExpression(EXPRESSION)
   * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getAssignment_Expression()
   * @model containment="true"
   * @generated
   */
  EXPRESSION getExpression();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineActions.Assignment#getExpression <em>Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Expression</em>' containment reference.
   * @see #getExpression()
   * @generated
   */
  void setExpression(EXPRESSION value);

} // Assignment
