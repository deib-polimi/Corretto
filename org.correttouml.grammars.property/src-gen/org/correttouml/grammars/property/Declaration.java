/**
 */
package org.correttouml.grammars.property;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Declaration</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.Declaration#getStateName <em>State Name</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.Declaration#getObj <em>Obj</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.Declaration#getStd <em>Std</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.Declaration#getUMLStateName <em>UML State Name</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.Declaration#getTrioVar <em>Trio Var</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.Declaration#getTrio <em>Trio</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.property.PropertyPackage#getDeclaration()
 * @model
 * @generated
 */
public interface Declaration extends EObject
{
  /**
   * Returns the value of the '<em><b>State Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>State Name</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>State Name</em>' attribute.
   * @see #setStateName(String)
   * @see org.correttouml.grammars.property.PropertyPackage#getDeclaration_StateName()
   * @model
   * @generated
   */
  String getStateName();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.Declaration#getStateName <em>State Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>State Name</em>' attribute.
   * @see #getStateName()
   * @generated
   */
  void setStateName(String value);

  /**
   * Returns the value of the '<em><b>Obj</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Obj</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Obj</em>' attribute.
   * @see #setObj(String)
   * @see org.correttouml.grammars.property.PropertyPackage#getDeclaration_Obj()
   * @model
   * @generated
   */
  String getObj();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.Declaration#getObj <em>Obj</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Obj</em>' attribute.
   * @see #getObj()
   * @generated
   */
  void setObj(String value);

  /**
   * Returns the value of the '<em><b>Std</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Std</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Std</em>' attribute.
   * @see #setStd(String)
   * @see org.correttouml.grammars.property.PropertyPackage#getDeclaration_Std()
   * @model
   * @generated
   */
  String getStd();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.Declaration#getStd <em>Std</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Std</em>' attribute.
   * @see #getStd()
   * @generated
   */
  void setStd(String value);

  /**
   * Returns the value of the '<em><b>UML State Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>UML State Name</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>UML State Name</em>' attribute.
   * @see #setUMLStateName(String)
   * @see org.correttouml.grammars.property.PropertyPackage#getDeclaration_UMLStateName()
   * @model
   * @generated
   */
  String getUMLStateName();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.Declaration#getUMLStateName <em>UML State Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>UML State Name</em>' attribute.
   * @see #getUMLStateName()
   * @generated
   */
  void setUMLStateName(String value);

  /**
   * Returns the value of the '<em><b>Trio Var</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Trio Var</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Trio Var</em>' attribute.
   * @see #setTrioVar(String)
   * @see org.correttouml.grammars.property.PropertyPackage#getDeclaration_TrioVar()
   * @model
   * @generated
   */
  String getTrioVar();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.Declaration#getTrioVar <em>Trio Var</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Trio Var</em>' attribute.
   * @see #getTrioVar()
   * @generated
   */
  void setTrioVar(String value);

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
   * @see org.correttouml.grammars.property.PropertyPackage#getDeclaration_Trio()
   * @model containment="true"
   * @generated
   */
  TRIO getTrio();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.Declaration#getTrio <em>Trio</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Trio</em>' containment reference.
   * @see #getTrio()
   * @generated
   */
  void setTrio(TRIO value);

} // Declaration
