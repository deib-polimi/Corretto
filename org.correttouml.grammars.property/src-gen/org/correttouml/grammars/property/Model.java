/**
 */
package org.correttouml.grammars.property;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Model</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.Model#getDeclarations <em>Declarations</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.Model#getCorrettoCommand <em>Corretto Command</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.property.PropertyPackage#getModel()
 * @model
 * @generated
 */
public interface Model extends EObject
{
  /**
   * Returns the value of the '<em><b>Declarations</b></em>' containment reference list.
   * The list contents are of type {@link org.correttouml.grammars.property.Declaration}.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Declarations</em>' containment reference list isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Declarations</em>' containment reference list.
   * @see org.correttouml.grammars.property.PropertyPackage#getModel_Declarations()
   * @model containment="true"
   * @generated
   */
  EList<Declaration> getDeclarations();

  /**
   * Returns the value of the '<em><b>Corretto Command</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Corretto Command</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Corretto Command</em>' containment reference.
   * @see #setCorrettoCommand(Corretto)
   * @see org.correttouml.grammars.property.PropertyPackage#getModel_CorrettoCommand()
   * @model containment="true"
   * @generated
   */
  Corretto getCorrettoCommand();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.Model#getCorrettoCommand <em>Corretto Command</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Corretto Command</em>' containment reference.
   * @see #getCorrettoCommand()
   * @generated
   */
  void setCorrettoCommand(Corretto value);

} // Model
