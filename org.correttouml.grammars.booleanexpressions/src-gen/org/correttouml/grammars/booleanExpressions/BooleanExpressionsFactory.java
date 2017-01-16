/**
 */
package org.correttouml.grammars.booleanExpressions;

import org.eclipse.emf.ecore.EFactory;

/**
 * <!-- begin-user-doc -->
 * The <b>Factory</b> for the model.
 * It provides a create method for each non-abstract class of the model.
 * <!-- end-user-doc -->
 * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage
 * @generated
 */
public interface BooleanExpressionsFactory extends EFactory
{
  /**
   * The singleton instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  BooleanExpressionsFactory eINSTANCE = org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsFactoryImpl.init();

  /**
   * Returns a new object of class '<em>Model</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Model</em>'.
   * @generated
   */
  Model createModel();

  /**
   * Returns a new object of class '<em>Or Expression</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Or Expression</em>'.
   * @generated
   */
  OrExpression createOrExpression();

  /**
   * Returns a new object of class '<em>And Expression</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>And Expression</em>'.
   * @generated
   */
  AndExpression createAndExpression();

  /**
   * Returns a new object of class '<em>Base Expression</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Base Expression</em>'.
   * @generated
   */
  BaseExpression createBaseExpression();

  /**
   * Returns a new object of class '<em>boolean Term</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>boolean Term</em>'.
   * @generated
   */
  booleanTerm createbooleanTerm();

  /**
   * Returns a new object of class '<em>Time Constraint</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Time Constraint</em>'.
   * @generated
   */
  TimeConstraint createTimeConstraint();

  /**
   * Returns a new object of class '<em>Boolean Variable</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Boolean Variable</em>'.
   * @generated
   */
  BooleanVariable createBooleanVariable();

  /**
   * Returns a new object of class '<em>Variable Condition</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Variable Condition</em>'.
   * @generated
   */
  VariableCondition createVariableCondition();

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
   * Returns a new object of class '<em>Event</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Event</em>'.
   * @generated
   */
  Event createEvent();

  /**
   * Returns the package supported by this factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the package supported by this factory.
   * @generated
   */
  BooleanExpressionsPackage getBooleanExpressionsPackage();

} //BooleanExpressionsFactory
