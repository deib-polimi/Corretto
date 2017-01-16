/**
 */
package org.correttouml.grammars.property;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>TRIOL</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.TRIOL#getTrioVar <em>Trio Var</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.TRIOL#getOpName <em>Op Name</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.TRIOL#getArithBool <em>Arith Bool</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.TRIOL#getTrioNot <em>Trio Not</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.TRIOL#getTrioOpF <em>Trio Op F</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.TRIOL#getTrioOpF1 <em>Trio Op F1</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.TRIOL#getTrioOpFF <em>Trio Op FF</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.TRIOL#getTrioOpFF1 <em>Trio Op FF1</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.TRIOL#getTrioOpFF2 <em>Trio Op FF2</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.TRIOL#getTrioOpFN <em>Trio Op FN</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.TRIOL#getTrioOpFN1 <em>Trio Op FN1</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.TRIOL#getInt <em>Int</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.property.PropertyPackage#getTRIOL()
 * @model
 * @generated
 */
public interface TRIOL extends EObject
{
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
   * @see org.correttouml.grammars.property.PropertyPackage#getTRIOL_TrioVar()
   * @model
   * @generated
   */
  String getTrioVar();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.TRIOL#getTrioVar <em>Trio Var</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Trio Var</em>' attribute.
   * @see #getTrioVar()
   * @generated
   */
  void setTrioVar(String value);

  /**
   * Returns the value of the '<em><b>Op Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Op Name</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Op Name</em>' attribute.
   * @see #setOpName(String)
   * @see org.correttouml.grammars.property.PropertyPackage#getTRIOL_OpName()
   * @model
   * @generated
   */
  String getOpName();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.TRIOL#getOpName <em>Op Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Op Name</em>' attribute.
   * @see #getOpName()
   * @generated
   */
  void setOpName(String value);

  /**
   * Returns the value of the '<em><b>Arith Bool</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Arith Bool</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Arith Bool</em>' containment reference.
   * @see #setArithBool(ArithBool)
   * @see org.correttouml.grammars.property.PropertyPackage#getTRIOL_ArithBool()
   * @model containment="true"
   * @generated
   */
  ArithBool getArithBool();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.TRIOL#getArithBool <em>Arith Bool</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Arith Bool</em>' containment reference.
   * @see #getArithBool()
   * @generated
   */
  void setArithBool(ArithBool value);

  /**
   * Returns the value of the '<em><b>Trio Not</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Trio Not</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Trio Not</em>' containment reference.
   * @see #setTrioNot(TRIO)
   * @see org.correttouml.grammars.property.PropertyPackage#getTRIOL_TrioNot()
   * @model containment="true"
   * @generated
   */
  TRIO getTrioNot();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.TRIOL#getTrioNot <em>Trio Not</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Trio Not</em>' containment reference.
   * @see #getTrioNot()
   * @generated
   */
  void setTrioNot(TRIO value);

  /**
   * Returns the value of the '<em><b>Trio Op F</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Trio Op F</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Trio Op F</em>' attribute.
   * @see #setTrioOpF(String)
   * @see org.correttouml.grammars.property.PropertyPackage#getTRIOL_TrioOpF()
   * @model
   * @generated
   */
  String getTrioOpF();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.TRIOL#getTrioOpF <em>Trio Op F</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Trio Op F</em>' attribute.
   * @see #getTrioOpF()
   * @generated
   */
  void setTrioOpF(String value);

  /**
   * Returns the value of the '<em><b>Trio Op F1</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Trio Op F1</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Trio Op F1</em>' containment reference.
   * @see #setTrioOpF1(TRIO)
   * @see org.correttouml.grammars.property.PropertyPackage#getTRIOL_TrioOpF1()
   * @model containment="true"
   * @generated
   */
  TRIO getTrioOpF1();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.TRIOL#getTrioOpF1 <em>Trio Op F1</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Trio Op F1</em>' containment reference.
   * @see #getTrioOpF1()
   * @generated
   */
  void setTrioOpF1(TRIO value);

  /**
   * Returns the value of the '<em><b>Trio Op FF</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Trio Op FF</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Trio Op FF</em>' attribute.
   * @see #setTrioOpFF(String)
   * @see org.correttouml.grammars.property.PropertyPackage#getTRIOL_TrioOpFF()
   * @model
   * @generated
   */
  String getTrioOpFF();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.TRIOL#getTrioOpFF <em>Trio Op FF</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Trio Op FF</em>' attribute.
   * @see #getTrioOpFF()
   * @generated
   */
  void setTrioOpFF(String value);

  /**
   * Returns the value of the '<em><b>Trio Op FF1</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Trio Op FF1</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Trio Op FF1</em>' containment reference.
   * @see #setTrioOpFF1(TRIO)
   * @see org.correttouml.grammars.property.PropertyPackage#getTRIOL_TrioOpFF1()
   * @model containment="true"
   * @generated
   */
  TRIO getTrioOpFF1();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.TRIOL#getTrioOpFF1 <em>Trio Op FF1</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Trio Op FF1</em>' containment reference.
   * @see #getTrioOpFF1()
   * @generated
   */
  void setTrioOpFF1(TRIO value);

  /**
   * Returns the value of the '<em><b>Trio Op FF2</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Trio Op FF2</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Trio Op FF2</em>' containment reference.
   * @see #setTrioOpFF2(TRIO)
   * @see org.correttouml.grammars.property.PropertyPackage#getTRIOL_TrioOpFF2()
   * @model containment="true"
   * @generated
   */
  TRIO getTrioOpFF2();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.TRIOL#getTrioOpFF2 <em>Trio Op FF2</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Trio Op FF2</em>' containment reference.
   * @see #getTrioOpFF2()
   * @generated
   */
  void setTrioOpFF2(TRIO value);

  /**
   * Returns the value of the '<em><b>Trio Op FN</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Trio Op FN</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Trio Op FN</em>' attribute.
   * @see #setTrioOpFN(String)
   * @see org.correttouml.grammars.property.PropertyPackage#getTRIOL_TrioOpFN()
   * @model
   * @generated
   */
  String getTrioOpFN();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.TRIOL#getTrioOpFN <em>Trio Op FN</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Trio Op FN</em>' attribute.
   * @see #getTrioOpFN()
   * @generated
   */
  void setTrioOpFN(String value);

  /**
   * Returns the value of the '<em><b>Trio Op FN1</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Trio Op FN1</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Trio Op FN1</em>' containment reference.
   * @see #setTrioOpFN1(TRIO)
   * @see org.correttouml.grammars.property.PropertyPackage#getTRIOL_TrioOpFN1()
   * @model containment="true"
   * @generated
   */
  TRIO getTrioOpFN1();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.TRIOL#getTrioOpFN1 <em>Trio Op FN1</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Trio Op FN1</em>' containment reference.
   * @see #getTrioOpFN1()
   * @generated
   */
  void setTrioOpFN1(TRIO value);

  /**
   * Returns the value of the '<em><b>Int</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Int</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Int</em>' attribute.
   * @see #setInt(int)
   * @see org.correttouml.grammars.property.PropertyPackage#getTRIOL_Int()
   * @model
   * @generated
   */
  int getInt();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.TRIOL#getInt <em>Int</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Int</em>' attribute.
   * @see #getInt()
   * @generated
   */
  void setInt(int value);

} // TRIOL
