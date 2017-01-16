/**
 */
package org.correttouml.grammars.property;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Verify</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.Verify#getTrio <em>Trio</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.property.PropertyPackage#getVerify()
 * @model
 * @generated
 */
public interface Verify extends EObject
{
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
   * @see org.correttouml.grammars.property.PropertyPackage#getVerify_Trio()
   * @model containment="true"
   * @generated
   */
  TRIO getTrio();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.Verify#getTrio <em>Trio</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Trio</em>' containment reference.
   * @see #getTrio()
   * @generated
   */
  void setTrio(TRIO value);

} // Verify
