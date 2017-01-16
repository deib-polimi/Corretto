/**
 */
package org.correttouml.grammars.property;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Data Type</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.DataType#getI <em>I</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.DataType#getFloat <em>Float</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.property.PropertyPackage#getDataType()
 * @model
 * @generated
 */
public interface DataType extends EObject
{
  /**
   * Returns the value of the '<em><b>I</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>I</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>I</em>' attribute.
   * @see #setI(int)
   * @see org.correttouml.grammars.property.PropertyPackage#getDataType_I()
   * @model
   * @generated
   */
  int getI();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.DataType#getI <em>I</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>I</em>' attribute.
   * @see #getI()
   * @generated
   */
  void setI(int value);

  /**
   * Returns the value of the '<em><b>Float</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Float</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Float</em>' attribute.
   * @see #setFloat(String)
   * @see org.correttouml.grammars.property.PropertyPackage#getDataType_Float()
   * @model
   * @generated
   */
  String getFloat();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.DataType#getFloat <em>Float</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Float</em>' attribute.
   * @see #getFloat()
   * @generated
   */
  void setFloat(String value);

} // DataType
