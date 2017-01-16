/**
 */
package org.correttouml.grammars.property;

import org.eclipse.emf.ecore.EFactory;

/**
 * <!-- begin-user-doc -->
 * The <b>Factory</b> for the model.
 * It provides a create method for each non-abstract class of the model.
 * <!-- end-user-doc -->
 * @see org.correttouml.grammars.property.PropertyPackage
 * @generated
 */
public interface PropertyFactory extends EFactory
{
  /**
   * The singleton instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  PropertyFactory eINSTANCE = org.correttouml.grammars.property.impl.PropertyFactoryImpl.init();

  /**
   * Returns a new object of class '<em>Model</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Model</em>'.
   * @generated
   */
  Model createModel();

  /**
   * Returns a new object of class '<em>Corretto</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Corretto</em>'.
   * @generated
   */
  Corretto createCorretto();

  /**
   * Returns a new object of class '<em>Verify</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Verify</em>'.
   * @generated
   */
  Verify createVerify();

  /**
   * Returns a new object of class '<em>Declaration</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Declaration</em>'.
   * @generated
   */
  Declaration createDeclaration();

  /**
   * Returns a new object of class '<em>TRIO</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>TRIO</em>'.
   * @generated
   */
  TRIO createTRIO();

  /**
   * Returns a new object of class '<em>TRIOL</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>TRIOL</em>'.
   * @generated
   */
  TRIOL createTRIOL();

  /**
   * Returns a new object of class '<em>TRIOR</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>TRIOR</em>'.
   * @generated
   */
  TRIOR createTRIOR();

  /**
   * Returns a new object of class '<em>Arith Bool</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Arith Bool</em>'.
   * @generated
   */
  ArithBool createArithBool();

  /**
   * Returns a new object of class '<em>Arith Term</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Arith Term</em>'.
   * @generated
   */
  ArithTerm createArithTerm();

  /**
   * Returns a new object of class '<em>Arith Term L</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Arith Term L</em>'.
   * @generated
   */
  ArithTermL createArithTermL();

  /**
   * Returns a new object of class '<em>Arith Term R</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Arith Term R</em>'.
   * @generated
   */
  ArithTermR createArithTermR();

  /**
   * Returns a new object of class '<em>Arith Var</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Arith Var</em>'.
   * @generated
   */
  ArithVar createArithVar();

  /**
   * Returns a new object of class '<em>Data Type</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Data Type</em>'.
   * @generated
   */
  DataType createDataType();

  /**
   * Returns the package supported by this factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the package supported by this factory.
   * @generated
   */
  PropertyPackage getPropertyPackage();

} //PropertyFactory
