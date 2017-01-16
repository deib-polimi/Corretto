/**
 */
package org.correttouml.grammars.property.impl;

import org.correttouml.grammars.property.*;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EFactoryImpl;

import org.eclipse.emf.ecore.plugin.EcorePlugin;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Factory</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class PropertyFactoryImpl extends EFactoryImpl implements PropertyFactory
{
  /**
   * Creates the default factory implementation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static PropertyFactory init()
  {
    try
    {
      PropertyFactory thePropertyFactory = (PropertyFactory)EPackage.Registry.INSTANCE.getEFactory(PropertyPackage.eNS_URI);
      if (thePropertyFactory != null)
      {
        return thePropertyFactory;
      }
    }
    catch (Exception exception)
    {
      EcorePlugin.INSTANCE.log(exception);
    }
    return new PropertyFactoryImpl();
  }

  /**
   * Creates an instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public PropertyFactoryImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EObject create(EClass eClass)
  {
    switch (eClass.getClassifierID())
    {
      case PropertyPackage.MODEL: return createModel();
      case PropertyPackage.CORRETTO: return createCorretto();
      case PropertyPackage.VERIFY: return createVerify();
      case PropertyPackage.DECLARATION: return createDeclaration();
      case PropertyPackage.TRIO: return createTRIO();
      case PropertyPackage.TRIOL: return createTRIOL();
      case PropertyPackage.TRIOR: return createTRIOR();
      case PropertyPackage.ARITH_BOOL: return createArithBool();
      case PropertyPackage.ARITH_TERM: return createArithTerm();
      case PropertyPackage.ARITH_TERM_L: return createArithTermL();
      case PropertyPackage.ARITH_TERM_R: return createArithTermR();
      case PropertyPackage.ARITH_VAR: return createArithVar();
      case PropertyPackage.DATA_TYPE: return createDataType();
      default:
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Model createModel()
  {
    ModelImpl model = new ModelImpl();
    return model;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Corretto createCorretto()
  {
    CorrettoImpl corretto = new CorrettoImpl();
    return corretto;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Verify createVerify()
  {
    VerifyImpl verify = new VerifyImpl();
    return verify;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Declaration createDeclaration()
  {
    DeclarationImpl declaration = new DeclarationImpl();
    return declaration;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public TRIO createTRIO()
  {
    TRIOImpl trio = new TRIOImpl();
    return trio;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public TRIOL createTRIOL()
  {
    TRIOLImpl triol = new TRIOLImpl();
    return triol;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public TRIOR createTRIOR()
  {
    TRIORImpl trior = new TRIORImpl();
    return trior;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ArithBool createArithBool()
  {
    ArithBoolImpl arithBool = new ArithBoolImpl();
    return arithBool;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ArithTerm createArithTerm()
  {
    ArithTermImpl arithTerm = new ArithTermImpl();
    return arithTerm;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ArithTermL createArithTermL()
  {
    ArithTermLImpl arithTermL = new ArithTermLImpl();
    return arithTermL;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ArithTermR createArithTermR()
  {
    ArithTermRImpl arithTermR = new ArithTermRImpl();
    return arithTermR;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ArithVar createArithVar()
  {
    ArithVarImpl arithVar = new ArithVarImpl();
    return arithVar;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public DataType createDataType()
  {
    DataTypeImpl dataType = new DataTypeImpl();
    return dataType;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public PropertyPackage getPropertyPackage()
  {
    return (PropertyPackage)getEPackage();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @deprecated
   * @generated
   */
  @Deprecated
  public static PropertyPackage getPackage()
  {
    return PropertyPackage.eINSTANCE;
  }

} //PropertyFactoryImpl
