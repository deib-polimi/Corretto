/**
 */
package org.correttouml.grammars.property;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Arith Term</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.ArithTerm#getArithTermL <em>Arith Term L</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.ArithTerm#getArithTermR <em>Arith Term R</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.property.PropertyPackage#getArithTerm()
 * @model
 * @generated
 */
public interface ArithTerm extends EObject
{
  /**
   * Returns the value of the '<em><b>Arith Term L</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Arith Term L</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Arith Term L</em>' containment reference.
   * @see #setArithTermL(ArithTermL)
   * @see org.correttouml.grammars.property.PropertyPackage#getArithTerm_ArithTermL()
   * @model containment="true"
   * @generated
   */
  ArithTermL getArithTermL();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.ArithTerm#getArithTermL <em>Arith Term L</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Arith Term L</em>' containment reference.
   * @see #getArithTermL()
   * @generated
   */
  void setArithTermL(ArithTermL value);

  /**
   * Returns the value of the '<em><b>Arith Term R</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Arith Term R</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Arith Term R</em>' containment reference.
   * @see #setArithTermR(ArithTermR)
   * @see org.correttouml.grammars.property.PropertyPackage#getArithTerm_ArithTermR()
   * @model containment="true"
   * @generated
   */
  ArithTermR getArithTermR();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.ArithTerm#getArithTermR <em>Arith Term R</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Arith Term R</em>' containment reference.
   * @see #getArithTermR()
   * @generated
   */
  void setArithTermR(ArithTermR value);

} // ArithTerm
