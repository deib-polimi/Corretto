/**
 */
package org.correttouml.grammars.booleanExpressions;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Time Constraint</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.TimeConstraint#getEvent2 <em>Event2</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.TimeConstraint#getEvent1 <em>Event1</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.TimeConstraint#getOp <em>Op</em>}</li>
 *   <li>{@link org.correttouml.grammars.booleanExpressions.TimeConstraint#getValue <em>Value</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getTimeConstraint()
 * @model
 * @generated
 */
public interface TimeConstraint extends EObject
{
  /**
   * Returns the value of the '<em><b>Event2</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Event2</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Event2</em>' containment reference.
   * @see #setEvent2(Event)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getTimeConstraint_Event2()
   * @model containment="true"
   * @generated
   */
  Event getEvent2();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.TimeConstraint#getEvent2 <em>Event2</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Event2</em>' containment reference.
   * @see #getEvent2()
   * @generated
   */
  void setEvent2(Event value);

  /**
   * Returns the value of the '<em><b>Event1</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Event1</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Event1</em>' containment reference.
   * @see #setEvent1(Event)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getTimeConstraint_Event1()
   * @model containment="true"
   * @generated
   */
  Event getEvent1();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.TimeConstraint#getEvent1 <em>Event1</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Event1</em>' containment reference.
   * @see #getEvent1()
   * @generated
   */
  void setEvent1(Event value);

  /**
   * Returns the value of the '<em><b>Op</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Op</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Op</em>' attribute.
   * @see #setOp(String)
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getTimeConstraint_Op()
   * @model
   * @generated
   */
  String getOp();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.TimeConstraint#getOp <em>Op</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Op</em>' attribute.
   * @see #getOp()
   * @generated
   */
  void setOp(String value);

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
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#getTimeConstraint_Value()
   * @model
   * @generated
   */
  int getValue();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.booleanExpressions.TimeConstraint#getValue <em>Value</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Value</em>' attribute.
   * @see #getValue()
   * @generated
   */
  void setValue(int value);

} // TimeConstraint
