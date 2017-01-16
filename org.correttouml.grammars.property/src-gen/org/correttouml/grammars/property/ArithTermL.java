/**
 */
package org.correttouml.grammars.property;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Arith Term L</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.ArithTermL#getTrio <em>Trio</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.ArithTermL#getConstant <em>Constant</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.ArithTermL#getArithVar <em>Arith Var</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.ArithTermL#getArithTermF <em>Arith Term F</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.ArithTermL#getIntF <em>Int F</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.ArithTermL#getArithTermP <em>Arith Term P</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.ArithTermL#getIntP <em>Int P</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.property.PropertyPackage#getArithTermL()
 * @model
 * @generated
 */
public interface ArithTermL extends EObject
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
   * @see org.correttouml.grammars.property.PropertyPackage#getArithTermL_Trio()
   * @model containment="true"
   * @generated
   */
  TRIO getTrio();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.ArithTermL#getTrio <em>Trio</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Trio</em>' containment reference.
   * @see #getTrio()
   * @generated
   */
  void setTrio(TRIO value);

  /**
   * Returns the value of the '<em><b>Constant</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Constant</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Constant</em>' containment reference.
   * @see #setConstant(DataType)
   * @see org.correttouml.grammars.property.PropertyPackage#getArithTermL_Constant()
   * @model containment="true"
   * @generated
   */
  DataType getConstant();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.ArithTermL#getConstant <em>Constant</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Constant</em>' containment reference.
   * @see #getConstant()
   * @generated
   */
  void setConstant(DataType value);

  /**
   * Returns the value of the '<em><b>Arith Var</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Arith Var</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Arith Var</em>' containment reference.
   * @see #setArithVar(ArithVar)
   * @see org.correttouml.grammars.property.PropertyPackage#getArithTermL_ArithVar()
   * @model containment="true"
   * @generated
   */
  ArithVar getArithVar();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.ArithTermL#getArithVar <em>Arith Var</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Arith Var</em>' containment reference.
   * @see #getArithVar()
   * @generated
   */
  void setArithVar(ArithVar value);

  /**
   * Returns the value of the '<em><b>Arith Term F</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Arith Term F</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Arith Term F</em>' containment reference.
   * @see #setArithTermF(ArithTerm)
   * @see org.correttouml.grammars.property.PropertyPackage#getArithTermL_ArithTermF()
   * @model containment="true"
   * @generated
   */
  ArithTerm getArithTermF();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.ArithTermL#getArithTermF <em>Arith Term F</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Arith Term F</em>' containment reference.
   * @see #getArithTermF()
   * @generated
   */
  void setArithTermF(ArithTerm value);

  /**
   * Returns the value of the '<em><b>Int F</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Int F</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Int F</em>' attribute.
   * @see #setIntF(int)
   * @see org.correttouml.grammars.property.PropertyPackage#getArithTermL_IntF()
   * @model
   * @generated
   */
  int getIntF();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.ArithTermL#getIntF <em>Int F</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Int F</em>' attribute.
   * @see #getIntF()
   * @generated
   */
  void setIntF(int value);

  /**
   * Returns the value of the '<em><b>Arith Term P</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Arith Term P</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Arith Term P</em>' containment reference.
   * @see #setArithTermP(ArithTerm)
   * @see org.correttouml.grammars.property.PropertyPackage#getArithTermL_ArithTermP()
   * @model containment="true"
   * @generated
   */
  ArithTerm getArithTermP();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.ArithTermL#getArithTermP <em>Arith Term P</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Arith Term P</em>' containment reference.
   * @see #getArithTermP()
   * @generated
   */
  void setArithTermP(ArithTerm value);

  /**
   * Returns the value of the '<em><b>Int P</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Int P</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Int P</em>' attribute.
   * @see #setIntP(int)
   * @see org.correttouml.grammars.property.PropertyPackage#getArithTermL_IntP()
   * @model
   * @generated
   */
  int getIntP();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.property.ArithTermL#getIntP <em>Int P</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Int P</em>' attribute.
   * @see #getIntP()
   * @generated
   */
  void setIntP(int value);

} // ArithTermL
