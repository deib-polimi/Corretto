/**
 */
package org.correttouml.grammars.booleanExpressions;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Base Expression</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.BaseExpression#getNot <em>Not</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.BaseExpression#getBooleanTerm <em>Boolean Term</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.BaseExpression#getRootExpression <em>Root Expression</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getBaseExpression()
 * @model
 * @generated
 */
public interface BaseExpression extends EObject
{
  /**
   * Returns the value of the '<em><b>Not</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Not</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Not</em>' attribute.
   * @see #setNot(String)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getBaseExpression_Not()
   * @model
   * @generated
   */
  String getNot();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.BaseExpression#getNot <em>Not</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Not</em>' attribute.
   * @see #getNot()
   * @generated
   */
  void setNot(String value);

  /**
   * Returns the value of the '<em><b>Boolean Term</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Boolean Term</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Boolean Term</em>' containment reference.
   * @see #setBooleanTerm(booleanTerm)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getBaseExpression_BooleanTerm()
   * @model containment="true"
   * @generated
   */
  booleanTerm getBooleanTerm();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.BaseExpression#getBooleanTerm <em>Boolean Term</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Boolean Term</em>' containment reference.
   * @see #getBooleanTerm()
   * @generated
   */
  void setBooleanTerm(booleanTerm value);

  /**
   * Returns the value of the '<em><b>Root Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Root Expression</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Root Expression</em>' containment reference.
   * @see #setRootExpression(OrExpression)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getBaseExpression_RootExpression()
   * @model containment="true"
   * @generated
   */
  OrExpression getRootExpression();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.BaseExpression#getRootExpression <em>Root Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Root Expression</em>' containment reference.
   * @see #getRootExpression()
   * @generated
   */
  void setRootExpression(OrExpression value);

} // BaseExpression
