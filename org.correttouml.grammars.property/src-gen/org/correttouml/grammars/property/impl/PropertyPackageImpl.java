/**
 */
package org.correttouml.grammars.property.impl;

import org.correttouml.grammars.property.ArithBool;
import org.correttouml.grammars.property.ArithTerm;
import org.correttouml.grammars.property.ArithTermL;
import org.correttouml.grammars.property.ArithTermR;
import org.correttouml.grammars.property.ArithVar;
import org.correttouml.grammars.property.Corretto;
import org.correttouml.grammars.property.DataType;
import org.correttouml.grammars.property.Declaration;
import org.correttouml.grammars.property.Model;
import org.correttouml.grammars.property.PropertyFactory;
import org.correttouml.grammars.property.PropertyPackage;
import org.correttouml.grammars.property.Verify;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

import org.eclipse.emf.ecore.impl.EPackageImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Package</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class PropertyPackageImpl extends EPackageImpl implements PropertyPackage
{
  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass modelEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass correttoEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass verifyEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass declarationEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass trioEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass triolEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass triorEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass arithBoolEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass arithTermEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass arithTermLEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass arithTermREClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass arithVarEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass dataTypeEClass = null;

  /**
   * Creates an instance of the model <b>Package</b>, registered with
   * {@link org.eclipse.emf.ecore.EPackage.Registry EPackage.Registry} by the package
   * package URI value.
   * <p>Note: the correct way to create the package is via the static
   * factory method {@link #init init()}, which also performs
   * initialization of the package, or returns the registered package,
   * if one already exists.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.eclipse.emf.ecore.EPackage.Registry
   * @see org.correttouml.grammars.property.PropertyPackage#eNS_URI
   * @see #init()
   * @generated
   */
  private PropertyPackageImpl()
  {
    super(eNS_URI, PropertyFactory.eINSTANCE);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private static boolean isInited = false;

  /**
   * Creates, registers, and initializes the <b>Package</b> for this model, and for any others upon which it depends.
   * 
   * <p>This method is used to initialize {@link PropertyPackage#eINSTANCE} when that field is accessed.
   * Clients should not invoke it directly. Instead, they should simply access that field to obtain the package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #eNS_URI
   * @see #createPackageContents()
   * @see #initializePackageContents()
   * @generated
   */
  public static PropertyPackage init()
  {
    if (isInited) return (PropertyPackage)EPackage.Registry.INSTANCE.getEPackage(PropertyPackage.eNS_URI);

    // Obtain or create and register package
    PropertyPackageImpl thePropertyPackage = (PropertyPackageImpl)(EPackage.Registry.INSTANCE.get(eNS_URI) instanceof PropertyPackageImpl ? EPackage.Registry.INSTANCE.get(eNS_URI) : new PropertyPackageImpl());

    isInited = true;

    // Create package meta-data objects
    thePropertyPackage.createPackageContents();

    // Initialize created meta-data
    thePropertyPackage.initializePackageContents();

    // Mark meta-data to indicate it can't be changed
    thePropertyPackage.freeze();

  
    // Update the registry and return the package
    EPackage.Registry.INSTANCE.put(PropertyPackage.eNS_URI, thePropertyPackage);
    return thePropertyPackage;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getModel()
  {
    return modelEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getModel_Declarations()
  {
    return (EReference)modelEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getModel_CorrettoCommand()
  {
    return (EReference)modelEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getCorretto()
  {
    return correttoEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getCorretto_Verify()
  {
    return (EReference)correttoEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getCorretto_Execute()
  {
    return (EAttribute)correttoEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getVerify()
  {
    return verifyEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getVerify_Trio()
  {
    return (EReference)verifyEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getDeclaration()
  {
    return declarationEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getDeclaration_StateName()
  {
    return (EAttribute)declarationEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getDeclaration_Obj()
  {
    return (EAttribute)declarationEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getDeclaration_Std()
  {
    return (EAttribute)declarationEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getDeclaration_UMLStateName()
  {
    return (EAttribute)declarationEClass.getEStructuralFeatures().get(3);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getDeclaration_TrioVar()
  {
    return (EAttribute)declarationEClass.getEStructuralFeatures().get(4);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getDeclaration_Trio()
  {
    return (EReference)declarationEClass.getEStructuralFeatures().get(5);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getTRIO()
  {
    return trioEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getTRIO_TrioL()
  {
    return (EReference)trioEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getTRIO_TrioR()
  {
    return (EReference)trioEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getTRIOL()
  {
    return triolEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getTRIOL_TrioVar()
  {
    return (EAttribute)triolEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getTRIOL_OpName()
  {
    return (EAttribute)triolEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getTRIOL_ArithBool()
  {
    return (EReference)triolEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getTRIOL_TrioNot()
  {
    return (EReference)triolEClass.getEStructuralFeatures().get(3);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getTRIOL_TrioOpF()
  {
    return (EAttribute)triolEClass.getEStructuralFeatures().get(4);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getTRIOL_TrioOpF1()
  {
    return (EReference)triolEClass.getEStructuralFeatures().get(5);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getTRIOL_TrioOpFF()
  {
    return (EAttribute)triolEClass.getEStructuralFeatures().get(6);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getTRIOL_TrioOpFF1()
  {
    return (EReference)triolEClass.getEStructuralFeatures().get(7);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getTRIOL_TrioOpFF2()
  {
    return (EReference)triolEClass.getEStructuralFeatures().get(8);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getTRIOL_TrioOpFN()
  {
    return (EAttribute)triolEClass.getEStructuralFeatures().get(9);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getTRIOL_TrioOpFN1()
  {
    return (EReference)triolEClass.getEStructuralFeatures().get(10);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getTRIOL_Int()
  {
    return (EAttribute)triolEClass.getEStructuralFeatures().get(11);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getTRIOR()
  {
    return triorEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getTRIOR_TrioOP2()
  {
    return (EAttribute)triorEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getTRIOR_Trio()
  {
    return (EReference)triorEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getArithBool()
  {
    return arithBoolEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getArithBool_ArithTerm1()
  {
    return (EReference)arithBoolEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getArithBool_ArithCOP()
  {
    return (EAttribute)arithBoolEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getArithBool_ArithTerm2()
  {
    return (EReference)arithBoolEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getArithTerm()
  {
    return arithTermEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getArithTerm_ArithTermL()
  {
    return (EReference)arithTermEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getArithTerm_ArithTermR()
  {
    return (EReference)arithTermEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getArithTermL()
  {
    return arithTermLEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getArithTermL_Trio()
  {
    return (EReference)arithTermLEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getArithTermL_Constant()
  {
    return (EReference)arithTermLEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getArithTermL_ArithVar()
  {
    return (EReference)arithTermLEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getArithTermL_ArithTermF()
  {
    return (EReference)arithTermLEClass.getEStructuralFeatures().get(3);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getArithTermL_IntF()
  {
    return (EAttribute)arithTermLEClass.getEStructuralFeatures().get(4);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getArithTermL_ArithTermP()
  {
    return (EReference)arithTermLEClass.getEStructuralFeatures().get(5);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getArithTermL_IntP()
  {
    return (EAttribute)arithTermLEClass.getEStructuralFeatures().get(6);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getArithTermR()
  {
    return arithTermREClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getArithTermR_ArithOP()
  {
    return (EAttribute)arithTermREClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getArithTermR_ArithTerm()
  {
    return (EReference)arithTermREClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getArithVar()
  {
    return arithVarEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getArithVar_Obj()
  {
    return (EAttribute)arithVarEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getArithVar_Atr()
  {
    return (EAttribute)arithVarEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getArithVar_Op()
  {
    return (EAttribute)arithVarEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getArithVar_Param()
  {
    return (EAttribute)arithVarEClass.getEStructuralFeatures().get(3);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getArithVar_Sd()
  {
    return (EAttribute)arithVarEClass.getEStructuralFeatures().get(4);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getDataType()
  {
    return dataTypeEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getDataType_I()
  {
    return (EAttribute)dataTypeEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getDataType_Float()
  {
    return (EAttribute)dataTypeEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public PropertyFactory getPropertyFactory()
  {
    return (PropertyFactory)getEFactoryInstance();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private boolean isCreated = false;

  /**
   * Creates the meta-model objects for the package.  This method is
   * guarded to have no affect on any invocation but its first.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void createPackageContents()
  {
    if (isCreated) return;
    isCreated = true;

    // Create classes and their features
    modelEClass = createEClass(MODEL);
    createEReference(modelEClass, MODEL__DECLARATIONS);
    createEReference(modelEClass, MODEL__CORRETTO_COMMAND);

    correttoEClass = createEClass(CORRETTO);
    createEReference(correttoEClass, CORRETTO__VERIFY);
    createEAttribute(correttoEClass, CORRETTO__EXECUTE);

    verifyEClass = createEClass(VERIFY);
    createEReference(verifyEClass, VERIFY__TRIO);

    declarationEClass = createEClass(DECLARATION);
    createEAttribute(declarationEClass, DECLARATION__STATE_NAME);
    createEAttribute(declarationEClass, DECLARATION__OBJ);
    createEAttribute(declarationEClass, DECLARATION__STD);
    createEAttribute(declarationEClass, DECLARATION__UML_STATE_NAME);
    createEAttribute(declarationEClass, DECLARATION__TRIO_VAR);
    createEReference(declarationEClass, DECLARATION__TRIO);

    trioEClass = createEClass(TRIO);
    createEReference(trioEClass, TRIO__TRIO_L);
    createEReference(trioEClass, TRIO__TRIO_R);

    triolEClass = createEClass(TRIOL);
    createEAttribute(triolEClass, TRIOL__TRIO_VAR);
    createEAttribute(triolEClass, TRIOL__OP_NAME);
    createEReference(triolEClass, TRIOL__ARITH_BOOL);
    createEReference(triolEClass, TRIOL__TRIO_NOT);
    createEAttribute(triolEClass, TRIOL__TRIO_OP_F);
    createEReference(triolEClass, TRIOL__TRIO_OP_F1);
    createEAttribute(triolEClass, TRIOL__TRIO_OP_FF);
    createEReference(triolEClass, TRIOL__TRIO_OP_FF1);
    createEReference(triolEClass, TRIOL__TRIO_OP_FF2);
    createEAttribute(triolEClass, TRIOL__TRIO_OP_FN);
    createEReference(triolEClass, TRIOL__TRIO_OP_FN1);
    createEAttribute(triolEClass, TRIOL__INT);

    triorEClass = createEClass(TRIOR);
    createEAttribute(triorEClass, TRIOR__TRIO_OP2);
    createEReference(triorEClass, TRIOR__TRIO);

    arithBoolEClass = createEClass(ARITH_BOOL);
    createEReference(arithBoolEClass, ARITH_BOOL__ARITH_TERM1);
    createEAttribute(arithBoolEClass, ARITH_BOOL__ARITH_COP);
    createEReference(arithBoolEClass, ARITH_BOOL__ARITH_TERM2);

    arithTermEClass = createEClass(ARITH_TERM);
    createEReference(arithTermEClass, ARITH_TERM__ARITH_TERM_L);
    createEReference(arithTermEClass, ARITH_TERM__ARITH_TERM_R);

    arithTermLEClass = createEClass(ARITH_TERM_L);
    createEReference(arithTermLEClass, ARITH_TERM_L__TRIO);
    createEReference(arithTermLEClass, ARITH_TERM_L__CONSTANT);
    createEReference(arithTermLEClass, ARITH_TERM_L__ARITH_VAR);
    createEReference(arithTermLEClass, ARITH_TERM_L__ARITH_TERM_F);
    createEAttribute(arithTermLEClass, ARITH_TERM_L__INT_F);
    createEReference(arithTermLEClass, ARITH_TERM_L__ARITH_TERM_P);
    createEAttribute(arithTermLEClass, ARITH_TERM_L__INT_P);

    arithTermREClass = createEClass(ARITH_TERM_R);
    createEAttribute(arithTermREClass, ARITH_TERM_R__ARITH_OP);
    createEReference(arithTermREClass, ARITH_TERM_R__ARITH_TERM);

    arithVarEClass = createEClass(ARITH_VAR);
    createEAttribute(arithVarEClass, ARITH_VAR__OBJ);
    createEAttribute(arithVarEClass, ARITH_VAR__ATR);
    createEAttribute(arithVarEClass, ARITH_VAR__OP);
    createEAttribute(arithVarEClass, ARITH_VAR__PARAM);
    createEAttribute(arithVarEClass, ARITH_VAR__SD);

    dataTypeEClass = createEClass(DATA_TYPE);
    createEAttribute(dataTypeEClass, DATA_TYPE__I);
    createEAttribute(dataTypeEClass, DATA_TYPE__FLOAT);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private boolean isInitialized = false;

  /**
   * Complete the initialization of the package and its meta-model.  This
   * method is guarded to have no affect on any invocation but its first.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void initializePackageContents()
  {
    if (isInitialized) return;
    isInitialized = true;

    // Initialize package
    setName(eNAME);
    setNsPrefix(eNS_PREFIX);
    setNsURI(eNS_URI);

    // Create type parameters

    // Set bounds for type parameters

    // Add supertypes to classes

    // Initialize classes and features; add operations and parameters
    initEClass(modelEClass, Model.class, "Model", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getModel_Declarations(), this.getDeclaration(), null, "declarations", null, 0, -1, Model.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getModel_CorrettoCommand(), this.getCorretto(), null, "correttoCommand", null, 0, 1, Model.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(correttoEClass, Corretto.class, "Corretto", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getCorretto_Verify(), this.getVerify(), null, "verify", null, 0, 1, Corretto.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getCorretto_Execute(), ecorePackage.getEString(), "execute", null, 0, 1, Corretto.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(verifyEClass, Verify.class, "Verify", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getVerify_Trio(), this.getTRIO(), null, "trio", null, 0, 1, Verify.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(declarationEClass, Declaration.class, "Declaration", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getDeclaration_StateName(), ecorePackage.getEString(), "stateName", null, 0, 1, Declaration.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getDeclaration_Obj(), ecorePackage.getEString(), "obj", null, 0, 1, Declaration.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getDeclaration_Std(), ecorePackage.getEString(), "std", null, 0, 1, Declaration.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getDeclaration_UMLStateName(), ecorePackage.getEString(), "uMLStateName", null, 0, 1, Declaration.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getDeclaration_TrioVar(), ecorePackage.getEString(), "trioVar", null, 0, 1, Declaration.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getDeclaration_Trio(), this.getTRIO(), null, "trio", null, 0, 1, Declaration.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(trioEClass, org.correttouml.grammars.property.TRIO.class, "TRIO", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getTRIO_TrioL(), this.getTRIOL(), null, "trioL", null, 0, 1, org.correttouml.grammars.property.TRIO.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getTRIO_TrioR(), this.getTRIOR(), null, "trioR", null, 0, 1, org.correttouml.grammars.property.TRIO.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(triolEClass, org.correttouml.grammars.property.TRIOL.class, "TRIOL", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getTRIOL_TrioVar(), ecorePackage.getEString(), "trioVar", null, 0, 1, org.correttouml.grammars.property.TRIOL.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getTRIOL_OpName(), ecorePackage.getEString(), "opName", null, 0, 1, org.correttouml.grammars.property.TRIOL.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getTRIOL_ArithBool(), this.getArithBool(), null, "arithBool", null, 0, 1, org.correttouml.grammars.property.TRIOL.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getTRIOL_TrioNot(), this.getTRIO(), null, "trioNot", null, 0, 1, org.correttouml.grammars.property.TRIOL.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getTRIOL_TrioOpF(), ecorePackage.getEString(), "trioOpF", null, 0, 1, org.correttouml.grammars.property.TRIOL.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getTRIOL_TrioOpF1(), this.getTRIO(), null, "trioOpF1", null, 0, 1, org.correttouml.grammars.property.TRIOL.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getTRIOL_TrioOpFF(), ecorePackage.getEString(), "trioOpFF", null, 0, 1, org.correttouml.grammars.property.TRIOL.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getTRIOL_TrioOpFF1(), this.getTRIO(), null, "trioOpFF1", null, 0, 1, org.correttouml.grammars.property.TRIOL.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getTRIOL_TrioOpFF2(), this.getTRIO(), null, "trioOpFF2", null, 0, 1, org.correttouml.grammars.property.TRIOL.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getTRIOL_TrioOpFN(), ecorePackage.getEString(), "trioOpFN", null, 0, 1, org.correttouml.grammars.property.TRIOL.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getTRIOL_TrioOpFN1(), this.getTRIO(), null, "trioOpFN1", null, 0, 1, org.correttouml.grammars.property.TRIOL.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getTRIOL_Int(), ecorePackage.getEInt(), "int", null, 0, 1, org.correttouml.grammars.property.TRIOL.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(triorEClass, org.correttouml.grammars.property.TRIOR.class, "TRIOR", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getTRIOR_TrioOP2(), ecorePackage.getEString(), "trioOP2", null, 0, 1, org.correttouml.grammars.property.TRIOR.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getTRIOR_Trio(), this.getTRIO(), null, "trio", null, 0, 1, org.correttouml.grammars.property.TRIOR.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(arithBoolEClass, ArithBool.class, "ArithBool", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getArithBool_ArithTerm1(), this.getArithTerm(), null, "arithTerm1", null, 0, 1, ArithBool.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getArithBool_ArithCOP(), ecorePackage.getEString(), "arithCOP", null, 0, 1, ArithBool.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getArithBool_ArithTerm2(), this.getArithTerm(), null, "arithTerm2", null, 0, 1, ArithBool.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(arithTermEClass, ArithTerm.class, "ArithTerm", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getArithTerm_ArithTermL(), this.getArithTermL(), null, "arithTermL", null, 0, 1, ArithTerm.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getArithTerm_ArithTermR(), this.getArithTermR(), null, "arithTermR", null, 0, 1, ArithTerm.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(arithTermLEClass, ArithTermL.class, "ArithTermL", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getArithTermL_Trio(), this.getTRIO(), null, "trio", null, 0, 1, ArithTermL.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getArithTermL_Constant(), this.getDataType(), null, "constant", null, 0, 1, ArithTermL.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getArithTermL_ArithVar(), this.getArithVar(), null, "arithVar", null, 0, 1, ArithTermL.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getArithTermL_ArithTermF(), this.getArithTerm(), null, "arithTermF", null, 0, 1, ArithTermL.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getArithTermL_IntF(), ecorePackage.getEInt(), "intF", null, 0, 1, ArithTermL.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getArithTermL_ArithTermP(), this.getArithTerm(), null, "arithTermP", null, 0, 1, ArithTermL.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getArithTermL_IntP(), ecorePackage.getEInt(), "intP", null, 0, 1, ArithTermL.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(arithTermREClass, ArithTermR.class, "ArithTermR", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getArithTermR_ArithOP(), ecorePackage.getEString(), "arithOP", null, 0, 1, ArithTermR.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getArithTermR_ArithTerm(), this.getArithTerm(), null, "arithTerm", null, 0, 1, ArithTermR.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(arithVarEClass, ArithVar.class, "ArithVar", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getArithVar_Obj(), ecorePackage.getEString(), "obj", null, 0, 1, ArithVar.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getArithVar_Atr(), ecorePackage.getEString(), "atr", null, 0, 1, ArithVar.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getArithVar_Op(), ecorePackage.getEString(), "op", null, 0, 1, ArithVar.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getArithVar_Param(), ecorePackage.getEString(), "param", null, 0, 1, ArithVar.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getArithVar_Sd(), ecorePackage.getEString(), "sd", null, 0, 1, ArithVar.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(dataTypeEClass, DataType.class, "DataType", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getDataType_I(), ecorePackage.getEInt(), "i", null, 0, 1, DataType.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getDataType_Float(), ecorePackage.getEString(), "float", null, 0, 1, DataType.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    // Create resource
    createResource(eNS_URI);
  }

} //PropertyPackageImpl
