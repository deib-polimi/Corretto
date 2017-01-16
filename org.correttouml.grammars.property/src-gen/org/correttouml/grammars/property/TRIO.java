/**
 */
package org.correttouml.grammars.property;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>TRIO</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.TRIO#getTrioL <em>Trio L</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.TRIO#getTrioR <em>Trio R</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.property.PropertyPackage#getTRIO()
 * @model
 * @generated
 */
public interface TRIO extends EObject
{
  /**
   * Returns the value of the '<em><b>Trio L</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Trio L</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Trio L</em>' containment reference.
   * @see #setTrioL(TRIOL)
   * @see org.correttouml.grammars.property.PropertyPackage#getTRIO_TrioL()
   * @model containment="true"
   * @generated
   */
  TRIOL getTrioL();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.TRIO#getTrioL <em>Trio L</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Trio L</em>' containment reference.
   * @see #getTrioL()
   * @generated
   */
  void setTrioL(TRIOL value);

  /**
   * Returns the value of the '<em><b>Trio R</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Trio R</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Trio R</em>' containment reference.
   * @see #setTrioR(TRIOR)
   * @see org.correttouml.grammars.property.PropertyPackage#getTRIO_TrioR()
   * @model containment="true"
   * @generated
   */
  TRIOR getTrioR();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.TRIO#getTrioR <em>Trio R</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Trio R</em>' containment reference.
   * @see #getTrioR()
   * @generated
   */
  void setTrioR(TRIOR value);

} // TRIO
