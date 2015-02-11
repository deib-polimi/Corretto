/**
 */
package org.correttouml.grammars.booleanExpressions;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>boolean Expression</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.booleanExpression#getNotExpression <em>Not Expression</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.booleanExpression#getOrLeft <em>Or Left</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.booleanExpression#getOrRight <em>Or Right</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.booleanExpression#getAndLeft <em>And Left</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.booleanExpression#getAndRight <em>And Right</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.booleanExpression#getBooleanTerm <em>Boolean Term</em>}</li>
 * </ul>
 * </p>
 *
 * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getbooleanExpression()
 * @model
 * @generated
 */
public interface booleanExpression extends EObject
{
  /**
   * Returns the value of the '<em><b>Not Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Not Expression</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Not Expression</em>' containment reference.
   * @see #setNotExpression(booleanExpression)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getbooleanExpression_NotExpression()
   * @model containment="true"
   * @generated
   */
  booleanExpression getNotExpression();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.booleanExpression#getNotExpression <em>Not Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Not Expression</em>' containment reference.
   * @see #getNotExpression()
   * @generated
   */
  void setNotExpression(booleanExpression value);

  /**
   * Returns the value of the '<em><b>Or Left</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Or Left</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Or Left</em>' containment reference.
   * @see #setOrLeft(booleanTerm)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getbooleanExpression_OrLeft()
   * @model containment="true"
   * @generated
   */
  booleanTerm getOrLeft();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.booleanExpression#getOrLeft <em>Or Left</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Or Left</em>' containment reference.
   * @see #getOrLeft()
   * @generated
   */
  void setOrLeft(booleanTerm value);

  /**
   * Returns the value of the '<em><b>Or Right</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Or Right</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Or Right</em>' containment reference.
   * @see #setOrRight(booleanTerm)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getbooleanExpression_OrRight()
   * @model containment="true"
   * @generated
   */
  booleanTerm getOrRight();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.booleanExpression#getOrRight <em>Or Right</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Or Right</em>' containment reference.
   * @see #getOrRight()
   * @generated
   */
  void setOrRight(booleanTerm value);

  /**
   * Returns the value of the '<em><b>And Left</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>And Left</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>And Left</em>' containment reference.
   * @see #setAndLeft(booleanTerm)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getbooleanExpression_AndLeft()
   * @model containment="true"
   * @generated
   */
  booleanTerm getAndLeft();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.booleanExpression#getAndLeft <em>And Left</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>And Left</em>' containment reference.
   * @see #getAndLeft()
   * @generated
   */
  void setAndLeft(booleanTerm value);

  /**
   * Returns the value of the '<em><b>And Right</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>And Right</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>And Right</em>' containment reference.
   * @see #setAndRight(booleanTerm)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getbooleanExpression_AndRight()
   * @model containment="true"
   * @generated
   */
  booleanTerm getAndRight();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.booleanExpression#getAndRight <em>And Right</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>And Right</em>' containment reference.
   * @see #getAndRight()
   * @generated
   */
  void setAndRight(booleanTerm value);

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
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getbooleanExpression_BooleanTerm()
   * @model containment="true"
   * @generated
   */
  booleanTerm getBooleanTerm();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.booleanExpression#getBooleanTerm <em>Boolean Term</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Boolean Term</em>' containment reference.
   * @see #getBooleanTerm()
   * @generated
   */
  void setBooleanTerm(booleanTerm value);

} // booleanExpression
