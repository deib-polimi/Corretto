/**
 */
package org.correttouml.grammars.booleanExpressions;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Variable Condition</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.VariableCondition#getExpression_left <em>Expression left</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.VariableCondition#getRelation <em>Relation</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.VariableCondition#getExpression_right <em>Expression right</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getVariableCondition()
 * @model
 * @generated
 */
public interface VariableCondition extends EObject
{
  /**
   * Returns the value of the '<em><b>Expression left</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Expression left</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Expression left</em>' containment reference.
   * @see #setExpression_left(EXPRESSION)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getVariableCondition_Expression_left()
   * @model containment="true"
   * @generated
   */
  EXPRESSION getExpression_left();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.VariableCondition#getExpression_left <em>Expression left</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Expression left</em>' containment reference.
   * @see #getExpression_left()
   * @generated
   */
  void setExpression_left(EXPRESSION value);

  /**
   * Returns the value of the '<em><b>Relation</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Relation</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Relation</em>' attribute.
   * @see #setRelation(String)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getVariableCondition_Relation()
   * @model
   * @generated
   */
  String getRelation();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.VariableCondition#getRelation <em>Relation</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Relation</em>' attribute.
   * @see #getRelation()
   * @generated
   */
  void setRelation(String value);

  /**
   * Returns the value of the '<em><b>Expression right</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Expression right</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Expression right</em>' containment reference.
   * @see #setExpression_right(EXPRESSION)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getVariableCondition_Expression_right()
   * @model containment="true"
   * @generated
   */
  EXPRESSION getExpression_right();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.VariableCondition#getExpression_right <em>Expression right</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Expression right</em>' containment reference.
   * @see #getExpression_right()
   * @generated
   */
  void setExpression_right(EXPRESSION value);

} // VariableCondition
