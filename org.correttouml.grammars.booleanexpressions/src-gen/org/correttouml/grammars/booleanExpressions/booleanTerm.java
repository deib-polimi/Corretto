/**
 */
package org.correttouml.grammars.booleanExpressions;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>boolean Term</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.booleanTerm#getTimeConstraint <em>Time Constraint</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.booleanTerm#getBooleanVariable <em>Boolean Variable</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.booleanTerm#getVariableCondition <em>Variable Condition</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getbooleanTerm()
 * @model
 * @generated
 */
public interface booleanTerm extends EObject
{
  /**
   * Returns the value of the '<em><b>Time Constraint</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Time Constraint</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Time Constraint</em>' containment reference.
   * @see #setTimeConstraint(TimeConstraint)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getbooleanTerm_TimeConstraint()
   * @model containment="true"
   * @generated
   */
  TimeConstraint getTimeConstraint();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.booleanTerm#getTimeConstraint <em>Time Constraint</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Time Constraint</em>' containment reference.
   * @see #getTimeConstraint()
   * @generated
   */
  void setTimeConstraint(TimeConstraint value);

  /**
   * Returns the value of the '<em><b>Boolean Variable</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Boolean Variable</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Boolean Variable</em>' containment reference.
   * @see #setBooleanVariable(BooleanVariable)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getbooleanTerm_BooleanVariable()
   * @model containment="true"
   * @generated
   */
  BooleanVariable getBooleanVariable();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.booleanTerm#getBooleanVariable <em>Boolean Variable</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Boolean Variable</em>' containment reference.
   * @see #getBooleanVariable()
   * @generated
   */
  void setBooleanVariable(BooleanVariable value);

  /**
   * Returns the value of the '<em><b>Variable Condition</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Variable Condition</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Variable Condition</em>' containment reference.
   * @see #setVariableCondition(VariableCondition)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getbooleanTerm_VariableCondition()
   * @model containment="true"
   * @generated
   */
  VariableCondition getVariableCondition();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.booleanTerm#getVariableCondition <em>Variable Condition</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Variable Condition</em>' containment reference.
   * @see #getVariableCondition()
   * @generated
   */
  void setVariableCondition(VariableCondition value);

} // booleanTerm
