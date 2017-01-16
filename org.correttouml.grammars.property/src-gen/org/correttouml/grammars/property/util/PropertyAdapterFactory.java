/**
 */
package org.correttouml.grammars.property.util;

import org.correttouml.grammars.property.*;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;

import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * The <b>Adapter Factory</b> for the model.
 * It provides an adapter <code>createXXX</code> method for each class of the model.
 * <!-- end-user-doc -->
 * @see org.correttouml.grammars.property.PropertyPackage
 * @generated
 */
public class PropertyAdapterFactory extends AdapterFactoryImpl
{
  /**
   * The cached model package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected static PropertyPackage modelPackage;

  /**
   * Creates an instance of the adapter factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public PropertyAdapterFactory()
  {
    if (modelPackage == null)
    {
      modelPackage = PropertyPackage.eINSTANCE;
    }
  }

  /**
   * Returns whether this factory is applicable for the type of the object.
   * <!-- begin-user-doc -->
   * This implementation returns <code>true</code> if the object is either the model's package or is an instance object of the model.
   * <!-- end-user-doc -->
   * @return whether this factory is applicable for the type of the object.
   * @generated
   */
  @Override
  public boolean isFactoryForType(Object object)
  {
    if (object == modelPackage)
    {
      return true;
    }
    if (object instanceof EObject)
    {
      return ((EObject)object).eClass().getEPackage() == modelPackage;
    }
    return false;
  }

  /**
   * The switch that delegates to the <code>createXXX</code> methods.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected PropertySwitch<Adapter> modelSwitch =
    new PropertySwitch<Adapter>()
    {
      @Override
      public Adapter caseModel(Model object)
      {
        return createModelAdapter();
      }
      @Override
      public Adapter caseCorretto(Corretto object)
      {
        return createCorrettoAdapter();
      }
      @Override
      public Adapter caseVerify(Verify object)
      {
        return createVerifyAdapter();
      }
      @Override
      public Adapter caseDeclaration(Declaration object)
      {
        return createDeclarationAdapter();
      }
      @Override
      public Adapter caseTRIO(TRIO object)
      {
        return createTRIOAdapter();
      }
      @Override
      public Adapter caseTRIOL(TRIOL object)
      {
        return createTRIOLAdapter();
      }
      @Override
      public Adapter caseTRIOR(TRIOR object)
      {
        return createTRIORAdapter();
      }
      @Override
      public Adapter caseArithBool(ArithBool object)
      {
        return createArithBoolAdapter();
      }
      @Override
      public Adapter caseArithTerm(ArithTerm object)
      {
        return createArithTermAdapter();
      }
      @Override
      public Adapter caseArithTermL(ArithTermL object)
      {
        return createArithTermLAdapter();
      }
      @Override
      public Adapter caseArithTermR(ArithTermR object)
      {
        return createArithTermRAdapter();
      }
      @Override
      public Adapter caseArithVar(ArithVar object)
      {
        return createArithVarAdapter();
      }
      @Override
      public Adapter caseDataType(DataType object)
      {
        return createDataTypeAdapter();
      }
      @Override
      public Adapter defaultCase(EObject object)
      {
        return createEObjectAdapter();
      }
    };

  /**
   * Creates an adapter for the <code>target</code>.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param target the object to adapt.
   * @return the adapter for the <code>target</code>.
   * @generated
   */
  @Override
  public Adapter createAdapter(Notifier target)
  {
    return modelSwitch.doSwitch((EObject)target);
  }


  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.property.Model <em>Model</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.property.Model
   * @generated
   */
  public Adapter createModelAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.property.Corretto <em>Corretto</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.property.Corretto
   * @generated
   */
  public Adapter createCorrettoAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.property.Verify <em>Verify</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.property.Verify
   * @generated
   */
  public Adapter createVerifyAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.property.Declaration <em>Declaration</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.property.Declaration
   * @generated
   */
  public Adapter createDeclarationAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.property.TRIO <em>TRIO</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.property.TRIO
   * @generated
   */
  public Adapter createTRIOAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.property.TRIOL <em>TRIOL</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.property.TRIOL
   * @generated
   */
  public Adapter createTRIOLAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.property.TRIOR <em>TRIOR</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.property.TRIOR
   * @generated
   */
  public Adapter createTRIORAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.property.ArithBool <em>Arith Bool</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.property.ArithBool
   * @generated
   */
  public Adapter createArithBoolAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.property.ArithTerm <em>Arith Term</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.property.ArithTerm
   * @generated
   */
  public Adapter createArithTermAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.property.ArithTermL <em>Arith Term L</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.property.ArithTermL
   * @generated
   */
  public Adapter createArithTermLAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.property.ArithTermR <em>Arith Term R</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.property.ArithTermR
   * @generated
   */
  public Adapter createArithTermRAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.property.ArithVar <em>Arith Var</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.property.ArithVar
   * @generated
   */
  public Adapter createArithVarAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.property.DataType <em>Data Type</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.property.DataType
   * @generated
   */
  public Adapter createDataTypeAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for the default case.
   * <!-- begin-user-doc -->
   * This default implementation returns null.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @generated
   */
  public Adapter createEObjectAdapter()
  {
    return null;
  }

} //PropertyAdapterFactory
