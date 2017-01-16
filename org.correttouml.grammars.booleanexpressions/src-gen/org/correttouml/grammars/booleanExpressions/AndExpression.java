/**
 */
package org.correttouml.grammars.booleanExpressions;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>And Expression</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.AndExpression#getLeftExpression <em>Left Expression</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.AndExpression#getAnd <em>And</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.AndExpression#getRightExpression <em>Right Expression</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getAndExpression()
 * @model
 * @generated
 */
public interface AndExpression extends EObject
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
   * @see #setLeftExpression(BaseExpression)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getAndExpression_LeftExpression()
   * @model containment="true"
   * @generated
   */
  BaseExpression getLeftExpression();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.AndExpression#getLeftExpression <em>Left Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Left Expression</em>' containment reference.
   * @see #getLeftExpression()
   * @generated
   */
  void setLeftExpression(BaseExpression value);

  /**
   * Returns the value of the '<em><b>And</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>And</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>And</em>' attribute.
   * @see #setAnd(String)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getAndExpression_And()
   * @model
   * @generated
   */
  String getAnd();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.AndExpression#getAnd <em>And</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>And</em>' attribute.
   * @see #getAnd()
   * @generated
   */
  void setAnd(String value);

  /**
   * Returns the value of the '<em><b>Right Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Right Expression</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Right Expression</em>' containment reference.
   * @see #setRightExpression(AndExpression)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getAndExpression_RightExpression()
   * @model containment="true"
   * @generated
   */
  AndExpression getRightExpression();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.AndExpression#getRightExpression <em>Right Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Right Expression</em>' containment reference.
   * @see #getRightExpression()
   * @generated
   */
  void setRightExpression(AndExpression value);

} // AndExpression
