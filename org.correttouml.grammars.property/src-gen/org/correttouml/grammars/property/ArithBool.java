/**
 */
package org.correttouml.grammars.property;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Arith Bool</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.ArithBool#getArithTerm1 <em>Arith Term1</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.ArithBool#getArithCOP <em>Arith COP</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.ArithBool#getArithTerm2 <em>Arith Term2</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.property.PropertyPackage#getArithBool()
 * @model
 * @generated
 */
public interface ArithBool extends EObject
{
  /**
   * Returns the value of the '<em><b>Arith Term1</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Arith Term1</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Arith Term1</em>' containment reference.
   * @see #setArithTerm1(ArithTerm)
   * @see org.correttouml.grammars.property.PropertyPackage#getArithBool_ArithTerm1()
   * @model containment="true"
   * @generated
   */
  ArithTerm getArithTerm1();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.ArithBool#getArithTerm1 <em>Arith Term1</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Arith Term1</em>' containment reference.
   * @see #getArithTerm1()
   * @generated
   */
  void setArithTerm1(ArithTerm value);

  /**
   * Returns the value of the '<em><b>Arith COP</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Arith COP</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Arith COP</em>' attribute.
   * @see #setArithCOP(String)
   * @see org.correttouml.grammars.property.PropertyPackage#getArithBool_ArithCOP()
   * @model
   * @generated
   */
  String getArithCOP();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.ArithBool#getArithCOP <em>Arith COP</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Arith COP</em>' attribute.
   * @see #getArithCOP()
   * @generated
   */
  void setArithCOP(String value);

  /**
   * Returns the value of the '<em><b>Arith Term2</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Arith Term2</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Arith Term2</em>' containment reference.
   * @see #setArithTerm2(ArithTerm)
   * @see org.correttouml.grammars.property.PropertyPackage#getArithBool_ArithTerm2()
   * @model containment="true"
   * @generated
   */
  ArithTerm getArithTerm2();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.ArithBool#getArithTerm2 <em>Arith Term2</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Arith Term2</em>' containment reference.
   * @see #getArithTerm2()
   * @generated
   */
  void setArithTerm2(ArithTerm value);

} // ArithBool
