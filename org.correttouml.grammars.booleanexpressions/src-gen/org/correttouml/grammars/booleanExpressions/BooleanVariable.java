/**
 */
package org.correttouml.grammars.booleanExpressions;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Boolean Variable</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.BooleanVariable#getVariable <em>Variable</em>}</li>
 * </ul>
 * </p>
 *
 * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getBooleanVariable()
 * @model
 * @generated
 */
public interface BooleanVariable extends booleanTerm
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
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getBooleanVariable_Variable()
   * @model
   * @generated
   */
  String getVariable();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.BooleanVariable#getVariable <em>Variable</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Variable</em>' attribute.
   * @see #getVariable()
   * @generated
   */
  void setVariable(String value);

} // BooleanVariable
