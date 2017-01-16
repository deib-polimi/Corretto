/**
 */
package org.correttouml.grammars.booleanExpressions;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Or Expression</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.OrExpression#getLeftExpression <em>Left Expression</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.OrExpression#getOr <em>Or</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.OrExpression#getRightExpression <em>Right Expression</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getOrExpression()
 * @model
 * @generated
 */
public interface OrExpression extends EObject
{
  /**
   * Returns the value of the '<em><b>Left Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Left Expression</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Left Expression</em>' containment reference.
   * @see #setLeftExpression(AndExpression)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getOrExpression_LeftExpression()
   * @model containment="true"
   * @generated
   */
  AndExpression getLeftExpression();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.OrExpression#getLeftExpression <em>Left Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Left Expression</em>' containment reference.
   * @see #getLeftExpression()
   * @generated
   */
  void setLeftExpression(AndExpression value);

  /**
   * Returns the value of the '<em><b>Or</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Or</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Or</em>' attribute.
   * @see #setOr(String)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getOrExpression_Or()
   * @model
   * @generated
   */
  String getOr();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.OrExpression#getOr <em>Or</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Or</em>' attribute.
   * @see #getOr()
   * @generated
   */
  void setOr(String value);

  /**
   * Returns the value of the '<em><b>Right Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Right Expression</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Right Expression</em>' containment reference.
   * @see #setRightExpression(OrExpression)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getOrExpression_RightExpression()
   * @model containment="true"
   * @generated
   */
  OrExpression getRightExpression();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.OrExpression#getRightExpression <em>Right Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Right Expression</em>' containment reference.
   * @see #getRightExpression()
   * @generated
   */
  void setRightExpression(OrExpression value);

} // OrExpression
