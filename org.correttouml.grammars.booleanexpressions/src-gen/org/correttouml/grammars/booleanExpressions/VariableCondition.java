/**
 */
package org.correttouml.grammars.booleanExpressions;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Variable Condition</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.VariableCondition#getVariable <em>Variable</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.VariableCondition#getRelation <em>Relation</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.VariableCondition#getValue <em>Value</em>}</li>
 * </ul>
 * </p>
 *
 * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getVariableCondition()
 * @model
 * @generated
 */
public interface VariableCondition extends booleanTerm
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
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getVariableCondition_Variable()
   * @model
   * @generated
   */
  String getVariable();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.VariableCondition#getVariable <em>Variable</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Variable</em>' attribute.
   * @see #getVariable()
   * @generated
   */
  void setVariable(String value);

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
   * Returns the value of the '<em><b>Value</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Value</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Value</em>' attribute.
   * @see #setValue(int)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getVariableCondition_Value()
   * @model
   * @generated
   */
  int getValue();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.VariableCondition#getValue <em>Value</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Value</em>' attribute.
   * @see #getValue()
   * @generated
   */
  void setValue(int value);

} // VariableCondition
