/**
 */
package org.correttouml.grammars.assignments;

import org.eclipse.emf.ecore.EFactory;

/**
 * <!-- begin-user-doc -->
 * The <b>Factory</b> for the model.
 * It provides a create method for each non-abstract class of the model.
 * <!-- end-user-doc -->
 * @see org.correttouml.grammars.assignments.AssignmentsPackage
 * @generated
 */
public interface AssignmentsFactory extends EFactory
{
  /**
   * The singleton instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  AssignmentsFactory eINSTANCE = org.correttouml.grammars.assignments.impl.AssignmentsFactoryImpl.init();

  /**
   * Returns a new object of class '<em>Model</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Model</em>'.
   * @generated
   */
  Model createModel();

  /**
   * Returns a new object of class '<em>ASSIGNMENT</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>ASSIGNMENT</em>'.
   * @generated
   */
  ASSIGNMENT createASSIGNMENT();

  /**
   * Returns a new object of class '<em>EXPRESSION</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>EXPRESSION</em>'.
   * @generated
   */
  EXPRESSION createEXPRESSION();

  /**
   * Returns a new object of class '<em>TERM</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>TERM</em>'.
   * @generated
   */
  TERM createTERM();

  /**
   * Returns the package supported by this factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the package supported by this factory.
   * @generated
   */
  AssignmentsPackage getAssignmentsPackage();

} //AssignmentsFactory
