/**
 */
package org.correttouml.grammars.property;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>TRIOR</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.TRIOR#getTrioOP2 <em>Trio OP2</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.TRIOR#getTrio <em>Trio</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.property.PropertyPackage#getTRIOR()
 * @model
 * @generated
 */
public interface TRIOR extends EObject
{
  /**
   * Returns the value of the '<em><b>Trio OP2</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Trio OP2</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Trio OP2</em>' attribute.
   * @see #setTrioOP2(String)
   * @see org.correttouml.grammars.property.PropertyPackage#getTRIOR_TrioOP2()
   * @model
   * @generated
   */
  String getTrioOP2();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.TRIOR#getTrioOP2 <em>Trio OP2</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Trio OP2</em>' attribute.
   * @see #getTrioOP2()
   * @generated
   */
  void setTrioOP2(String value);

  /**
   * Returns the value of the '<em><b>Trio</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Trio</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Trio</em>' containment reference.
   * @see #setTrio(TRIO)
   * @see org.correttouml.grammars.property.PropertyPackage#getTRIOR_Trio()
   * @model containment="true"
   * @generated
   */
  TRIO getTrio();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.TRIOR#getTrio <em>Trio</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Trio</em>' containment reference.
   * @see #getTrio()
   * @generated
   */
  void setTrio(TRIO value);

} // TRIOR
