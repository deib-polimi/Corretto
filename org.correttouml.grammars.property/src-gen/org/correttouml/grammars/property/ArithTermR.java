/**
 */
package org.correttouml.grammars.property;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Arith Term R</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.ArithTermR#getArithOP <em>Arith OP</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.ArithTermR#getArithTerm <em>Arith Term</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.property.PropertyPackage#getArithTermR()
 * @model
 * @generated
 */
public interface ArithTermR extends EObject
{
  /**
   * Returns the value of the '<em><b>Arith OP</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Arith OP</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Arith OP</em>' attribute.
   * @see #setArithOP(String)
   * @see org.correttouml.grammars.property.PropertyPackage#getArithTermR_ArithOP()
   * @model
   * @generated
   */
  String getArithOP();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.ArithTermR#getArithOP <em>Arith OP</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Arith OP</em>' attribute.
   * @see #getArithOP()
   * @generated
   */
  void setArithOP(String value);

  /**
   * Returns the value of the '<em><b>Arith Term</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Arith Term</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Arith Term</em>' containment reference.
   * @see #setArithTerm(ArithTerm)
   * @see org.correttouml.grammars.property.PropertyPackage#getArithTermR_ArithTerm()
   * @model containment="true"
   * @generated
   */
  ArithTerm getArithTerm();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.ArithTermR#getArithTerm <em>Arith Term</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Arith Term</em>' containment reference.
   * @see #getArithTerm()
   * @generated
   */
  void setArithTerm(ArithTerm value);

} // ArithTermR
