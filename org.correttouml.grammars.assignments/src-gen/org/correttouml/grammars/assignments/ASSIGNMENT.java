/**
 */
package org.correttouml.grammars.assignments;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>ASSIGNMENT</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.assignments.ASSIGNMENT#getVariable <em>Variable</em>}</li>
 *   <li>{@link org.correttouml.grammars.assignments.ASSIGNMENT#getExpression <em>Expression</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.assignments.AssignmentsPackage#getASSIGNMENT()
 * @model
 * @generated
 */
public interface ASSIGNMENT extends EObject
{
  /**
   * Returns the value of the '<em><b>Variable</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Variable</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Variable</em>' attribute.
   * @see #setVariable(String)
   * @see org.correttouml.grammars.assignments.AssignmentsPackage#getASSIGNMENT_Variable()
   * @model
   * @generated
   */
  String getVariable();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.assignments.ASSIGNMENT#getVariable <em>Variable</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Variable</em>' attribute.
   * @see #getVariable()
   * @generated
   */
  void setVariable(String value);

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
   * @see org.correttouml.grammars.assignments.AssignmentsPackage#getASSIGNMENT_Expression()
   * @model containment="true"
   * @generated
   */
  EXPRESSION getExpression();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.assignments.ASSIGNMENT#getExpression <em>Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Expression</em>' containment reference.
   * @see #getExpression()
   * @generated
   */
  void setExpression(EXPRESSION value);

} // ASSIGNMENT
