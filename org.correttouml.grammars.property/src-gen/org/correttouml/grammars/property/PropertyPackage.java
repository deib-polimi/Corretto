/**
 */
package org.correttouml.grammars.property;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

/**
 * <!-- begin-user-doc -->
 * The <b>Package</b> for the model.
 * It contains accessors for the meta objects to represent
 * <ul>
 *   <li>each class,</li>
 *   <li>each feature of each class,</li>
 *   <li>each enum,</li>
 *   <li>and each data type</li>
 * </ul>
 * <!-- end-user-doc -->
 * @see org.correttouml.grammars.property.PropertyFactory
 * @model kind="package"
 * @generated
 */
public interface PropertyPackage extends EPackage
{
  /**
   * The package name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNAME = "property";

  /**
   * The package namespace URI.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_URI = "http://www.correttouml.org/grammars/Property";

  /**
   * The package namespace name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_PREFIX = "property";

  /**
   * The singleton instance of the package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  PropertyPackage eINSTANCE = org.correttouml.grammars.property.impl.PropertyPackageImpl.init();

  /**
   * The meta object id for the '{@link org.correttouml.grammars.property.impl.ModelImpl <em>Model</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.property.impl.ModelImpl
   * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getModel()
   * @generated
   */
  int MODEL = 0;

  /**
   * The feature id for the '<em><b>Declarations</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODEL__DECLARATIONS = 0;

  /**
   * The feature id for the '<em><b>Corretto Command</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODEL__CORRETTO_COMMAND = 1;

  /**
   * The number of structural features of the '<em>Model</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODEL_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.property.impl.CorrettoImpl <em>Corretto</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.property.impl.CorrettoImpl
   * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getCorretto()
   * @generated
   */
  int CORRETTO = 1;

  /**
   * The feature id for the '<em><b>Verify</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CORRETTO__VERIFY = 0;

  /**
   * The feature id for the '<em><b>Execute</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CORRETTO__EXECUTE = 1;

  /**
   * The number of structural features of the '<em>Corretto</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CORRETTO_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.property.impl.VerifyImpl <em>Verify</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.property.impl.VerifyImpl
   * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getVerify()
   * @generated
   */
  int VERIFY = 2;

  /**
   * The feature id for the '<em><b>Trio</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int VERIFY__TRIO = 0;

  /**
   * The number of structural features of the '<em>Verify</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int VERIFY_FEATURE_COUNT = 1;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.property.impl.DeclarationImpl <em>Declaration</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.property.impl.DeclarationImpl
   * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getDeclaration()
   * @generated
   */
  int DECLARATION = 3;

  /**
   * The feature id for the '<em><b>State Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int DECLARATION__STATE_NAME = 0;

  /**
   * The feature id for the '<em><b>Obj</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int DECLARATION__OBJ = 1;

  /**
   * The feature id for the '<em><b>Std</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int DECLARATION__STD = 2;

  /**
   * The feature id for the '<em><b>UML State Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int DECLARATION__UML_STATE_NAME = 3;

  /**
   * The feature id for the '<em><b>Trio Var</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int DECLARATION__TRIO_VAR = 4;

  /**
   * The feature id for the '<em><b>Trio</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int DECLARATION__TRIO = 5;

  /**
   * The number of structural features of the '<em>Declaration</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int DECLARATION_FEATURE_COUNT = 6;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.property.impl.TRIOImpl <em>TRIO</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.property.impl.TRIOImpl
   * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getTRIO()
   * @generated
   */
  int TRIO = 4;

  /**
   * The feature id for the '<em><b>Trio L</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIO__TRIO_L = 0;

  /**
   * The feature id for the '<em><b>Trio R</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIO__TRIO_R = 1;

  /**
   * The number of structural features of the '<em>TRIO</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIO_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.property.impl.TRIOLImpl <em>TRIOL</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.property.impl.TRIOLImpl
   * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getTRIOL()
   * @generated
   */
  int TRIOL = 5;

  /**
   * The feature id for the '<em><b>Trio Var</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIOL__TRIO_VAR = 0;

  /**
   * The feature id for the '<em><b>Op Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIOL__OP_NAME = 1;

  /**
   * The feature id for the '<em><b>Arith Bool</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIOL__ARITH_BOOL = 2;

  /**
   * The feature id for the '<em><b>Trio Not</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIOL__TRIO_NOT = 3;

  /**
   * The feature id for the '<em><b>Trio Op F</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIOL__TRIO_OP_F = 4;

  /**
   * The feature id for the '<em><b>Trio Op F1</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIOL__TRIO_OP_F1 = 5;

  /**
   * The feature id for the '<em><b>Trio Op FF</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIOL__TRIO_OP_FF = 6;

  /**
   * The feature id for the '<em><b>Trio Op FF1</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIOL__TRIO_OP_FF1 = 7;

  /**
   * The feature id for the '<em><b>Trio Op FF2</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIOL__TRIO_OP_FF2 = 8;

  /**
   * The feature id for the '<em><b>Trio Op FN</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIOL__TRIO_OP_FN = 9;

  /**
   * The feature id for the '<em><b>Trio Op FN1</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIOL__TRIO_OP_FN1 = 10;

  /**
   * The feature id for the '<em><b>Int</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIOL__INT = 11;

  /**
   * The number of structural features of the '<em>TRIOL</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIOL_FEATURE_COUNT = 12;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.property.impl.TRIORImpl <em>TRIOR</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.property.impl.TRIORImpl
   * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getTRIOR()
   * @generated
   */
  int TRIOR = 6;

  /**
   * The feature id for the '<em><b>Trio OP2</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIOR__TRIO_OP2 = 0;

  /**
   * The feature id for the '<em><b>Trio</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIOR__TRIO = 1;

  /**
   * The number of structural features of the '<em>TRIOR</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIOR_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.property.impl.ArithBoolImpl <em>Arith Bool</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.property.impl.ArithBoolImpl
   * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getArithBool()
   * @generated
   */
  int ARITH_BOOL = 7;

  /**
   * The feature id for the '<em><b>Arith Term1</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_BOOL__ARITH_TERM1 = 0;

  /**
   * The feature id for the '<em><b>Arith COP</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_BOOL__ARITH_COP = 1;

  /**
   * The feature id for the '<em><b>Arith Term2</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_BOOL__ARITH_TERM2 = 2;

  /**
   * The number of structural features of the '<em>Arith Bool</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_BOOL_FEATURE_COUNT = 3;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.property.impl.ArithTermImpl <em>Arith Term</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.property.impl.ArithTermImpl
   * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getArithTerm()
   * @generated
   */
  int ARITH_TERM = 8;

  /**
   * The feature id for the '<em><b>Arith Term L</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_TERM__ARITH_TERM_L = 0;

  /**
   * The feature id for the '<em><b>Arith Term R</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_TERM__ARITH_TERM_R = 1;

  /**
   * The number of structural features of the '<em>Arith Term</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_TERM_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.property.impl.ArithTermLImpl <em>Arith Term L</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.property.impl.ArithTermLImpl
   * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getArithTermL()
   * @generated
   */
  int ARITH_TERM_L = 9;

  /**
   * The feature id for the '<em><b>Trio</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_TERM_L__TRIO = 0;

  /**
   * The feature id for the '<em><b>Constant</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_TERM_L__CONSTANT = 1;

  /**
   * The feature id for the '<em><b>Arith Var</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_TERM_L__ARITH_VAR = 2;

  /**
   * The feature id for the '<em><b>Arith Term F</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_TERM_L__ARITH_TERM_F = 3;

  /**
   * The feature id for the '<em><b>Int F</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_TERM_L__INT_F = 4;

  /**
   * The feature id for the '<em><b>Arith Term P</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_TERM_L__ARITH_TERM_P = 5;

  /**
   * The feature id for the '<em><b>Int P</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_TERM_L__INT_P = 6;

  /**
   * The number of structural features of the '<em>Arith Term L</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_TERM_L_FEATURE_COUNT = 7;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.property.impl.ArithTermRImpl <em>Arith Term R</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.property.impl.ArithTermRImpl
   * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getArithTermR()
   * @generated
   */
  int ARITH_TERM_R = 10;

  /**
   * The feature id for the '<em><b>Arith OP</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_TERM_R__ARITH_OP = 0;

  /**
   * The feature id for the '<em><b>Arith Term</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_TERM_R__ARITH_TERM = 1;

  /**
   * The number of structural features of the '<em>Arith Term R</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_TERM_R_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.property.impl.ArithVarImpl <em>Arith Var</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.property.impl.ArithVarImpl
   * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getArithVar()
   * @generated
   */
  int ARITH_VAR = 11;

  /**
   * The feature id for the '<em><b>Obj</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_VAR__OBJ = 0;

  /**
   * The feature id for the '<em><b>Atr</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_VAR__ATR = 1;

  /**
   * The feature id for the '<em><b>Op</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_VAR__OP = 2;

  /**
   * The feature id for the '<em><b>Param</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_VAR__PARAM = 3;

  /**
   * The feature id for the '<em><b>Sd</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_VAR__SD = 4;

  /**
   * The number of structural features of the '<em>Arith Var</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ARITH_VAR_FEATURE_COUNT = 5;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.property.impl.DataTypeImpl <em>Data Type</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.property.impl.DataTypeImpl
   * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getDataType()
   * @generated
   */
  int DATA_TYPE = 12;

  /**
   * The feature id for the '<em><b>I</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int DATA_TYPE__I = 0;

  /**
   * The feature id for the '<em><b>Float</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int DATA_TYPE__FLOAT = 1;

  /**
   * The number of structural features of the '<em>Data Type</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int DATA_TYPE_FEATURE_COUNT = 2;


  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.property.Model <em>Model</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Model</em>'.
   * @see org.correttouml.grammars.property.Model
   * @generated
   */
  EClass getModel();

  /**
   * Returns the meta object for the containment reference list '{@link org.correttouml.grammars.property.Model#getDeclarations <em>Declarations</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Declarations</em>'.
   * @see org.correttouml.grammars.property.Model#getDeclarations()
   * @see #getModel()
   * @generated
   */
  EReference getModel_Declarations();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.Model#getCorrettoCommand <em>Corretto Command</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Corretto Command</em>'.
   * @see org.correttouml.grammars.property.Model#getCorrettoCommand()
   * @see #getModel()
   * @generated
   */
  EReference getModel_CorrettoCommand();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.property.Corretto <em>Corretto</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Corretto</em>'.
   * @see org.correttouml.grammars.property.Corretto
   * @generated
   */
  EClass getCorretto();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.Corretto#getVerify <em>Verify</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Verify</em>'.
   * @see org.correttouml.grammars.property.Corretto#getVerify()
   * @see #getCorretto()
   * @generated
   */
  EReference getCorretto_Verify();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.Corretto#getExecute <em>Execute</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Execute</em>'.
   * @see org.correttouml.grammars.property.Corretto#getExecute()
   * @see #getCorretto()
   * @generated
   */
  EAttribute getCorretto_Execute();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.property.Verify <em>Verify</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Verify</em>'.
   * @see org.correttouml.grammars.property.Verify
   * @generated
   */
  EClass getVerify();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.Verify#getTrio <em>Trio</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Trio</em>'.
   * @see org.correttouml.grammars.property.Verify#getTrio()
   * @see #getVerify()
   * @generated
   */
  EReference getVerify_Trio();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.property.Declaration <em>Declaration</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Declaration</em>'.
   * @see org.correttouml.grammars.property.Declaration
   * @generated
   */
  EClass getDeclaration();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.Declaration#getStateName <em>State Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>State Name</em>'.
   * @see org.correttouml.grammars.property.Declaration#getStateName()
   * @see #getDeclaration()
   * @generated
   */
  EAttribute getDeclaration_StateName();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.Declaration#getObj <em>Obj</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Obj</em>'.
   * @see org.correttouml.grammars.property.Declaration#getObj()
   * @see #getDeclaration()
   * @generated
   */
  EAttribute getDeclaration_Obj();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.Declaration#getStd <em>Std</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Std</em>'.
   * @see org.correttouml.grammars.property.Declaration#getStd()
   * @see #getDeclaration()
   * @generated
   */
  EAttribute getDeclaration_Std();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.Declaration#getUMLStateName <em>UML State Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>UML State Name</em>'.
   * @see org.correttouml.grammars.property.Declaration#getUMLStateName()
   * @see #getDeclaration()
   * @generated
   */
  EAttribute getDeclaration_UMLStateName();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.Declaration#getTrioVar <em>Trio Var</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Trio Var</em>'.
   * @see org.correttouml.grammars.property.Declaration#getTrioVar()
   * @see #getDeclaration()
   * @generated
   */
  EAttribute getDeclaration_TrioVar();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.Declaration#getTrio <em>Trio</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Trio</em>'.
   * @see org.correttouml.grammars.property.Declaration#getTrio()
   * @see #getDeclaration()
   * @generated
   */
  EReference getDeclaration_Trio();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.property.TRIO <em>TRIO</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>TRIO</em>'.
   * @see org.correttouml.grammars.property.TRIO
   * @generated
   */
  EClass getTRIO();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.TRIO#getTrioL <em>Trio L</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Trio L</em>'.
   * @see org.correttouml.grammars.property.TRIO#getTrioL()
   * @see #getTRIO()
   * @generated
   */
  EReference getTRIO_TrioL();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.TRIO#getTrioR <em>Trio R</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Trio R</em>'.
   * @see org.correttouml.grammars.property.TRIO#getTrioR()
   * @see #getTRIO()
   * @generated
   */
  EReference getTRIO_TrioR();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.property.TRIOL <em>TRIOL</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>TRIOL</em>'.
   * @see org.correttouml.grammars.property.TRIOL
   * @generated
   */
  EClass getTRIOL();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.TRIOL#getTrioVar <em>Trio Var</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Trio Var</em>'.
   * @see org.correttouml.grammars.property.TRIOL#getTrioVar()
   * @see #getTRIOL()
   * @generated
   */
  EAttribute getTRIOL_TrioVar();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.TRIOL#getOpName <em>Op Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Op Name</em>'.
   * @see org.correttouml.grammars.property.TRIOL#getOpName()
   * @see #getTRIOL()
   * @generated
   */
  EAttribute getTRIOL_OpName();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.TRIOL#getArithBool <em>Arith Bool</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Arith Bool</em>'.
   * @see org.correttouml.grammars.property.TRIOL#getArithBool()
   * @see #getTRIOL()
   * @generated
   */
  EReference getTRIOL_ArithBool();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.TRIOL#getTrioNot <em>Trio Not</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Trio Not</em>'.
   * @see org.correttouml.grammars.property.TRIOL#getTrioNot()
   * @see #getTRIOL()
   * @generated
   */
  EReference getTRIOL_TrioNot();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.TRIOL#getTrioOpF <em>Trio Op F</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Trio Op F</em>'.
   * @see org.correttouml.grammars.property.TRIOL#getTrioOpF()
   * @see #getTRIOL()
   * @generated
   */
  EAttribute getTRIOL_TrioOpF();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.TRIOL#getTrioOpF1 <em>Trio Op F1</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Trio Op F1</em>'.
   * @see org.correttouml.grammars.property.TRIOL#getTrioOpF1()
   * @see #getTRIOL()
   * @generated
   */
  EReference getTRIOL_TrioOpF1();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.TRIOL#getTrioOpFF <em>Trio Op FF</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Trio Op FF</em>'.
   * @see org.correttouml.grammars.property.TRIOL#getTrioOpFF()
   * @see #getTRIOL()
   * @generated
   */
  EAttribute getTRIOL_TrioOpFF();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.TRIOL#getTrioOpFF1 <em>Trio Op FF1</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Trio Op FF1</em>'.
   * @see org.correttouml.grammars.property.TRIOL#getTrioOpFF1()
   * @see #getTRIOL()
   * @generated
   */
  EReference getTRIOL_TrioOpFF1();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.TRIOL#getTrioOpFF2 <em>Trio Op FF2</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Trio Op FF2</em>'.
   * @see org.correttouml.grammars.property.TRIOL#getTrioOpFF2()
   * @see #getTRIOL()
   * @generated
   */
  EReference getTRIOL_TrioOpFF2();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.TRIOL#getTrioOpFN <em>Trio Op FN</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Trio Op FN</em>'.
   * @see org.correttouml.grammars.property.TRIOL#getTrioOpFN()
   * @see #getTRIOL()
   * @generated
   */
  EAttribute getTRIOL_TrioOpFN();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.TRIOL#getTrioOpFN1 <em>Trio Op FN1</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Trio Op FN1</em>'.
   * @see org.correttouml.grammars.property.TRIOL#getTrioOpFN1()
   * @see #getTRIOL()
   * @generated
   */
  EReference getTRIOL_TrioOpFN1();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.TRIOL#getInt <em>Int</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Int</em>'.
   * @see org.correttouml.grammars.property.TRIOL#getInt()
   * @see #getTRIOL()
   * @generated
   */
  EAttribute getTRIOL_Int();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.property.TRIOR <em>TRIOR</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>TRIOR</em>'.
   * @see org.correttouml.grammars.property.TRIOR
   * @generated
   */
  EClass getTRIOR();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.TRIOR#getTrioOP2 <em>Trio OP2</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Trio OP2</em>'.
   * @see org.correttouml.grammars.property.TRIOR#getTrioOP2()
   * @see #getTRIOR()
   * @generated
   */
  EAttribute getTRIOR_TrioOP2();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.TRIOR#getTrio <em>Trio</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Trio</em>'.
   * @see org.correttouml.grammars.property.TRIOR#getTrio()
   * @see #getTRIOR()
   * @generated
   */
  EReference getTRIOR_Trio();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.property.ArithBool <em>Arith Bool</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Arith Bool</em>'.
   * @see org.correttouml.grammars.property.ArithBool
   * @generated
   */
  EClass getArithBool();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.ArithBool#getArithTerm1 <em>Arith Term1</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Arith Term1</em>'.
   * @see org.correttouml.grammars.property.ArithBool#getArithTerm1()
   * @see #getArithBool()
   * @generated
   */
  EReference getArithBool_ArithTerm1();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.ArithBool#getArithCOP <em>Arith COP</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Arith COP</em>'.
   * @see org.correttouml.grammars.property.ArithBool#getArithCOP()
   * @see #getArithBool()
   * @generated
   */
  EAttribute getArithBool_ArithCOP();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.ArithBool#getArithTerm2 <em>Arith Term2</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Arith Term2</em>'.
   * @see org.correttouml.grammars.property.ArithBool#getArithTerm2()
   * @see #getArithBool()
   * @generated
   */
  EReference getArithBool_ArithTerm2();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.property.ArithTerm <em>Arith Term</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Arith Term</em>'.
   * @see org.correttouml.grammars.property.ArithTerm
   * @generated
   */
  EClass getArithTerm();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.ArithTerm#getArithTermL <em>Arith Term L</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Arith Term L</em>'.
   * @see org.correttouml.grammars.property.ArithTerm#getArithTermL()
   * @see #getArithTerm()
   * @generated
   */
  EReference getArithTerm_ArithTermL();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.ArithTerm#getArithTermR <em>Arith Term R</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Arith Term R</em>'.
   * @see org.correttouml.grammars.property.ArithTerm#getArithTermR()
   * @see #getArithTerm()
   * @generated
   */
  EReference getArithTerm_ArithTermR();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.property.ArithTermL <em>Arith Term L</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Arith Term L</em>'.
   * @see org.correttouml.grammars.property.ArithTermL
   * @generated
   */
  EClass getArithTermL();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.ArithTermL#getTrio <em>Trio</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Trio</em>'.
   * @see org.correttouml.grammars.property.ArithTermL#getTrio()
   * @see #getArithTermL()
   * @generated
   */
  EReference getArithTermL_Trio();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.ArithTermL#getConstant <em>Constant</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Constant</em>'.
   * @see org.correttouml.grammars.property.ArithTermL#getConstant()
   * @see #getArithTermL()
   * @generated
   */
  EReference getArithTermL_Constant();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.ArithTermL#getArithVar <em>Arith Var</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Arith Var</em>'.
   * @see org.correttouml.grammars.property.ArithTermL#getArithVar()
   * @see #getArithTermL()
   * @generated
   */
  EReference getArithTermL_ArithVar();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.ArithTermL#getArithTermF <em>Arith Term F</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Arith Term F</em>'.
   * @see org.correttouml.grammars.property.ArithTermL#getArithTermF()
   * @see #getArithTermL()
   * @generated
   */
  EReference getArithTermL_ArithTermF();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.ArithTermL#getIntF <em>Int F</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Int F</em>'.
   * @see org.correttouml.grammars.property.ArithTermL#getIntF()
   * @see #getArithTermL()
   * @generated
   */
  EAttribute getArithTermL_IntF();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.ArithTermL#getArithTermP <em>Arith Term P</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Arith Term P</em>'.
   * @see org.correttouml.grammars.property.ArithTermL#getArithTermP()
   * @see #getArithTermL()
   * @generated
   */
  EReference getArithTermL_ArithTermP();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.ArithTermL#getIntP <em>Int P</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Int P</em>'.
   * @see org.correttouml.grammars.property.ArithTermL#getIntP()
   * @see #getArithTermL()
   * @generated
   */
  EAttribute getArithTermL_IntP();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.property.ArithTermR <em>Arith Term R</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Arith Term R</em>'.
   * @see org.correttouml.grammars.property.ArithTermR
   * @generated
   */
  EClass getArithTermR();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.ArithTermR#getArithOP <em>Arith OP</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Arith OP</em>'.
   * @see org.correttouml.grammars.property.ArithTermR#getArithOP()
   * @see #getArithTermR()
   * @generated
   */
  EAttribute getArithTermR_ArithOP();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.property.ArithTermR#getArithTerm <em>Arith Term</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Arith Term</em>'.
   * @see org.correttouml.grammars.property.ArithTermR#getArithTerm()
   * @see #getArithTermR()
   * @generated
   */
  EReference getArithTermR_ArithTerm();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.property.ArithVar <em>Arith Var</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Arith Var</em>'.
   * @see org.correttouml.grammars.property.ArithVar
   * @generated
   */
  EClass getArithVar();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.ArithVar#getObj <em>Obj</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Obj</em>'.
   * @see org.correttouml.grammars.property.ArithVar#getObj()
   * @see #getArithVar()
   * @generated
   */
  EAttribute getArithVar_Obj();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.ArithVar#getAtr <em>Atr</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Atr</em>'.
   * @see org.correttouml.grammars.property.ArithVar#getAtr()
   * @see #getArithVar()
   * @generated
   */
  EAttribute getArithVar_Atr();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.ArithVar#getOp <em>Op</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Op</em>'.
   * @see org.correttouml.grammars.property.ArithVar#getOp()
   * @see #getArithVar()
   * @generated
   */
  EAttribute getArithVar_Op();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.ArithVar#getParam <em>Param</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Param</em>'.
   * @see org.correttouml.grammars.property.ArithVar#getParam()
   * @see #getArithVar()
   * @generated
   */
  EAttribute getArithVar_Param();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.ArithVar#getSd <em>Sd</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Sd</em>'.
   * @see org.correttouml.grammars.property.ArithVar#getSd()
   * @see #getArithVar()
   * @generated
   */
  EAttribute getArithVar_Sd();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.property.DataType <em>Data Type</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Data Type</em>'.
   * @see org.correttouml.grammars.property.DataType
   * @generated
   */
  EClass getDataType();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.DataType#getI <em>I</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>I</em>'.
   * @see org.correttouml.grammars.property.DataType#getI()
   * @see #getDataType()
   * @generated
   */
  EAttribute getDataType_I();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.property.DataType#getFloat <em>Float</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Float</em>'.
   * @see org.correttouml.grammars.property.DataType#getFloat()
   * @see #getDataType()
   * @generated
   */
  EAttribute getDataType_Float();

  /**
   * Returns the factory that creates the instances of the model.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the factory that creates the instances of the model.
   * @generated
   */
  PropertyFactory getPropertyFactory();

  /**
   * <!-- begin-user-doc -->
   * Defines literals for the meta objects that represent
   * <ul>
   *   <li>each class,</li>
   *   <li>each feature of each class,</li>
   *   <li>each enum,</li>
   *   <li>and each data type</li>
   * </ul>
   * <!-- end-user-doc -->
   * @generated
   */
  interface Literals
  {
    /**
     * The meta object literal for the '{@link org.correttouml.grammars.property.impl.ModelImpl <em>Model</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.property.impl.ModelImpl
     * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getModel()
     * @generated
     */
    EClass MODEL = eINSTANCE.getModel();

    /**
     * The meta object literal for the '<em><b>Declarations</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference MODEL__DECLARATIONS = eINSTANCE.getModel_Declarations();

    /**
     * The meta object literal for the '<em><b>Corretto Command</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference MODEL__CORRETTO_COMMAND = eINSTANCE.getModel_CorrettoCommand();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.property.impl.CorrettoImpl <em>Corretto</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.property.impl.CorrettoImpl
     * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getCorretto()
     * @generated
     */
    EClass CORRETTO = eINSTANCE.getCorretto();

    /**
     * The meta object literal for the '<em><b>Verify</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference CORRETTO__VERIFY = eINSTANCE.getCorretto_Verify();

    /**
     * The meta object literal for the '<em><b>Execute</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute CORRETTO__EXECUTE = eINSTANCE.getCorretto_Execute();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.property.impl.VerifyImpl <em>Verify</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.property.impl.VerifyImpl
     * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getVerify()
     * @generated
     */
    EClass VERIFY = eINSTANCE.getVerify();

    /**
     * The meta object literal for the '<em><b>Trio</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference VERIFY__TRIO = eINSTANCE.getVerify_Trio();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.property.impl.DeclarationImpl <em>Declaration</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.property.impl.DeclarationImpl
     * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getDeclaration()
     * @generated
     */
    EClass DECLARATION = eINSTANCE.getDeclaration();

    /**
     * The meta object literal for the '<em><b>State Name</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute DECLARATION__STATE_NAME = eINSTANCE.getDeclaration_StateName();

    /**
     * The meta object literal for the '<em><b>Obj</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute DECLARATION__OBJ = eINSTANCE.getDeclaration_Obj();

    /**
     * The meta object literal for the '<em><b>Std</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute DECLARATION__STD = eINSTANCE.getDeclaration_Std();

    /**
     * The meta object literal for the '<em><b>UML State Name</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute DECLARATION__UML_STATE_NAME = eINSTANCE.getDeclaration_UMLStateName();

    /**
     * The meta object literal for the '<em><b>Trio Var</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute DECLARATION__TRIO_VAR = eINSTANCE.getDeclaration_TrioVar();

    /**
     * The meta object literal for the '<em><b>Trio</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference DECLARATION__TRIO = eINSTANCE.getDeclaration_Trio();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.property.impl.TRIOImpl <em>TRIO</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.property.impl.TRIOImpl
     * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getTRIO()
     * @generated
     */
    EClass TRIO = eINSTANCE.getTRIO();

    /**
     * The meta object literal for the '<em><b>Trio L</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference TRIO__TRIO_L = eINSTANCE.getTRIO_TrioL();

    /**
     * The meta object literal for the '<em><b>Trio R</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference TRIO__TRIO_R = eINSTANCE.getTRIO_TrioR();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.property.impl.TRIOLImpl <em>TRIOL</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.property.impl.TRIOLImpl
     * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getTRIOL()
     * @generated
     */
    EClass TRIOL = eINSTANCE.getTRIOL();

    /**
     * The meta object literal for the '<em><b>Trio Var</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute TRIOL__TRIO_VAR = eINSTANCE.getTRIOL_TrioVar();

    /**
     * The meta object literal for the '<em><b>Op Name</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute TRIOL__OP_NAME = eINSTANCE.getTRIOL_OpName();

    /**
     * The meta object literal for the '<em><b>Arith Bool</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference TRIOL__ARITH_BOOL = eINSTANCE.getTRIOL_ArithBool();

    /**
     * The meta object literal for the '<em><b>Trio Not</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference TRIOL__TRIO_NOT = eINSTANCE.getTRIOL_TrioNot();

    /**
     * The meta object literal for the '<em><b>Trio Op F</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute TRIOL__TRIO_OP_F = eINSTANCE.getTRIOL_TrioOpF();

    /**
     * The meta object literal for the '<em><b>Trio Op F1</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference TRIOL__TRIO_OP_F1 = eINSTANCE.getTRIOL_TrioOpF1();

    /**
     * The meta object literal for the '<em><b>Trio Op FF</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute TRIOL__TRIO_OP_FF = eINSTANCE.getTRIOL_TrioOpFF();

    /**
     * The meta object literal for the '<em><b>Trio Op FF1</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference TRIOL__TRIO_OP_FF1 = eINSTANCE.getTRIOL_TrioOpFF1();

    /**
     * The meta object literal for the '<em><b>Trio Op FF2</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference TRIOL__TRIO_OP_FF2 = eINSTANCE.getTRIOL_TrioOpFF2();

    /**
     * The meta object literal for the '<em><b>Trio Op FN</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute TRIOL__TRIO_OP_FN = eINSTANCE.getTRIOL_TrioOpFN();

    /**
     * The meta object literal for the '<em><b>Trio Op FN1</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference TRIOL__TRIO_OP_FN1 = eINSTANCE.getTRIOL_TrioOpFN1();

    /**
     * The meta object literal for the '<em><b>Int</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute TRIOL__INT = eINSTANCE.getTRIOL_Int();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.property.impl.TRIORImpl <em>TRIOR</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.property.impl.TRIORImpl
     * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getTRIOR()
     * @generated
     */
    EClass TRIOR = eINSTANCE.getTRIOR();

    /**
     * The meta object literal for the '<em><b>Trio OP2</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute TRIOR__TRIO_OP2 = eINSTANCE.getTRIOR_TrioOP2();

    /**
     * The meta object literal for the '<em><b>Trio</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference TRIOR__TRIO = eINSTANCE.getTRIOR_Trio();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.property.impl.ArithBoolImpl <em>Arith Bool</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.property.impl.ArithBoolImpl
     * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getArithBool()
     * @generated
     */
    EClass ARITH_BOOL = eINSTANCE.getArithBool();

    /**
     * The meta object literal for the '<em><b>Arith Term1</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ARITH_BOOL__ARITH_TERM1 = eINSTANCE.getArithBool_ArithTerm1();

    /**
     * The meta object literal for the '<em><b>Arith COP</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute ARITH_BOOL__ARITH_COP = eINSTANCE.getArithBool_ArithCOP();

    /**
     * The meta object literal for the '<em><b>Arith Term2</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ARITH_BOOL__ARITH_TERM2 = eINSTANCE.getArithBool_ArithTerm2();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.property.impl.ArithTermImpl <em>Arith Term</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.property.impl.ArithTermImpl
     * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getArithTerm()
     * @generated
     */
    EClass ARITH_TERM = eINSTANCE.getArithTerm();

    /**
     * The meta object literal for the '<em><b>Arith Term L</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ARITH_TERM__ARITH_TERM_L = eINSTANCE.getArithTerm_ArithTermL();

    /**
     * The meta object literal for the '<em><b>Arith Term R</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ARITH_TERM__ARITH_TERM_R = eINSTANCE.getArithTerm_ArithTermR();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.property.impl.ArithTermLImpl <em>Arith Term L</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.property.impl.ArithTermLImpl
     * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getArithTermL()
     * @generated
     */
    EClass ARITH_TERM_L = eINSTANCE.getArithTermL();

    /**
     * The meta object literal for the '<em><b>Trio</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ARITH_TERM_L__TRIO = eINSTANCE.getArithTermL_Trio();

    /**
     * The meta object literal for the '<em><b>Constant</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ARITH_TERM_L__CONSTANT = eINSTANCE.getArithTermL_Constant();

    /**
     * The meta object literal for the '<em><b>Arith Var</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ARITH_TERM_L__ARITH_VAR = eINSTANCE.getArithTermL_ArithVar();

    /**
     * The meta object literal for the '<em><b>Arith Term F</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ARITH_TERM_L__ARITH_TERM_F = eINSTANCE.getArithTermL_ArithTermF();

    /**
     * The meta object literal for the '<em><b>Int F</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute ARITH_TERM_L__INT_F = eINSTANCE.getArithTermL_IntF();

    /**
     * The meta object literal for the '<em><b>Arith Term P</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ARITH_TERM_L__ARITH_TERM_P = eINSTANCE.getArithTermL_ArithTermP();

    /**
     * The meta object literal for the '<em><b>Int P</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute ARITH_TERM_L__INT_P = eINSTANCE.getArithTermL_IntP();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.property.impl.ArithTermRImpl <em>Arith Term R</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.property.impl.ArithTermRImpl
     * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getArithTermR()
     * @generated
     */
    EClass ARITH_TERM_R = eINSTANCE.getArithTermR();

    /**
     * The meta object literal for the '<em><b>Arith OP</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute ARITH_TERM_R__ARITH_OP = eINSTANCE.getArithTermR_ArithOP();

    /**
     * The meta object literal for the '<em><b>Arith Term</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ARITH_TERM_R__ARITH_TERM = eINSTANCE.getArithTermR_ArithTerm();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.property.impl.ArithVarImpl <em>Arith Var</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.property.impl.ArithVarImpl
     * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getArithVar()
     * @generated
     */
    EClass ARITH_VAR = eINSTANCE.getArithVar();

    /**
     * The meta object literal for the '<em><b>Obj</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute ARITH_VAR__OBJ = eINSTANCE.getArithVar_Obj();

    /**
     * The meta object literal for the '<em><b>Atr</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute ARITH_VAR__ATR = eINSTANCE.getArithVar_Atr();

    /**
     * The meta object literal for the '<em><b>Op</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute ARITH_VAR__OP = eINSTANCE.getArithVar_Op();

    /**
     * The meta object literal for the '<em><b>Param</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute ARITH_VAR__PARAM = eINSTANCE.getArithVar_Param();

    /**
     * The meta object literal for the '<em><b>Sd</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute ARITH_VAR__SD = eINSTANCE.getArithVar_Sd();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.property.impl.DataTypeImpl <em>Data Type</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.property.impl.DataTypeImpl
     * @see org.correttouml.grammars.property.impl.PropertyPackageImpl#getDataType()
     * @generated
     */
    EClass DATA_TYPE = eINSTANCE.getDataType();

    /**
     * The meta object literal for the '<em><b>I</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute DATA_TYPE__I = eINSTANCE.getDataType_I();

    /**
     * The meta object literal for the '<em><b>Float</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute DATA_TYPE__FLOAT = eINSTANCE.getDataType_Float();

  }

} //PropertyPackage
