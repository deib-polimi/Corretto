/**
 */
package org.correttouml.grammars.booleanExpressions;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Model</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.Model#getExpression <em>Expression</em>}</li>
 * </ul>
 * </p>
 *
 * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getModel()
 * @model
 * @generated
 */
public interface Model extends EObject
{
  /**
   * Returns the value of the '<em><b>Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Expression</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Expression</em>' containment reference.
   * @see #setExpression(booleanExpression)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getModel_Expression()
   * @model containment="true"
   * @generated
   */
  booleanExpression getExpression();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.Model#getExpression <em>Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Expression</em>' containment reference.
   * @see #getExpression()
   * @generated
   */
  void setExpression(booleanExpression value);

} // Model
