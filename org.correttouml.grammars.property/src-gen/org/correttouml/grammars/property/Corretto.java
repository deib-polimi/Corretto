/**
 */
package org.correttouml.grammars.property;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Corretto</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.Corretto#getVerify <em>Verify</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.Corretto#getExecute <em>Execute</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.property.PropertyPackage#getCorretto()
 * @model
 * @generated
 */
public interface Corretto extends EObject
{
  /**
   * Returns the value of the '<em><b>Verify</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Verify</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Verify</em>' containment reference.
   * @see #setVerify(Verify)
   * @see org.correttouml.grammars.property.PropertyPackage#getCorretto_Verify()
   * @model containment="true"
   * @generated
   */
  Verify getVerify();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.Corretto#getVerify <em>Verify</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Verify</em>' containment reference.
   * @see #getVerify()
   * @generated
   */
  void setVerify(Verify value);

  /**
   * Returns the value of the '<em><b>Execute</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Execute</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Execute</em>' attribute.
   * @see #setExecute(String)
   * @see org.correttouml.grammars.property.PropertyPackage#getCorretto_Execute()
   * @model
   * @generated
   */
  String getExecute();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.Corretto#getExecute <em>Execute</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Execute</em>' attribute.
   * @see #getExecute()
   * @generated
   */
  void setExecute(String value);

} // Corretto
