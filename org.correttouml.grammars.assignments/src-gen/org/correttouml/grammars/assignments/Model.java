/**
 */
package org.correttouml.grammars.assignments;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Model</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.assignments.Model#getAssignment <em>Assignment</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.assignments.AssignmentsPackage#getModel()
 * @model
 * @generated
 */
public interface Model extends EObject
{
  /**
   * Returns the value of the '<em><b>Assignment</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Assignment</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Assignment</em>' containment reference.
   * @see #setAssignment(ASSIGNMENT)
   * @see org.correttouml.grammars.assignments.AssignmentsPackage#getModel_Assignment()
   * @model containment="true"
   * @generated
   */
  ASSIGNMENT getAssignment();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.assignments.Model#getAssignment <em>Assignment</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Assignment</em>' containment reference.
   * @see #getAssignment()
   * @generated
   */
  void setAssignment(ASSIGNMENT value);

} // Model
