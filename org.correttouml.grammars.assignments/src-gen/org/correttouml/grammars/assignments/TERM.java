/**
 */
package org.correttouml.grammars.assignments;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>TERM</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link org.correttouml.grammars.assignments.TERM#getVariable <em>Variable</em>}</li>
 *   <li>{@link org.correttouml.grammars.assignments.TERM#getConstant <em>Constant</em>}</li>
 * </ul>
 * </p>
 *
 * @see org.correttouml.grammars.assignments.AssignmentsPackage#getTERM()
 * @model
 * @generated
 */
public interface TERM extends EObject
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
   * @see org.correttouml.grammars.assignments.AssignmentsPackage#getTERM_Variable()
   * @model
   * @generated
   */
  String getVariable();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.assignments.TERM#getVariable <em>Variable</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Variable</em>' attribute.
   * @see #getVariable()
   * @generated
   */
  void setVariable(String value);

  /**
   * Returns the value of the '<em><b>Constant</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Constant</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Constant</em>' attribute.
   * @see #setConstant(int)
   * @see org.correttouml.grammars.assignments.AssignmentsPackage#getTERM_Constant()
   * @model
   * @generated
   */
  int getConstant();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.assignments.TERM#getConstant <em>Constant</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Constant</em>' attribute.
   * @see #getConstant()
   * @generated
   */
  void setConstant(int value);

} // TERM
