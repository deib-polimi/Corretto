/**
 */
package org.correttouml.grammars.booleanExpressions.util;

import org.correttouml.grammars.booleanExpressions.*;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;

import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * The <b>Adapter Factory</b> for the model.
 * It provides an adapter <code>createXXX</code> method for each class of the model.
 * <!-- end-user-doc -->
 * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage
 * @generated
 */
public class BooleanExpressionsAdapterFactory extends AdapterFactoryImpl
{
  /**
   * The cached model package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected static BooleanExpressionsPackage modelPackage;

  /**
   * Creates an instance of the adapter factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public BooleanExpressionsAdapterFactory()
  {
    if (modelPackage == null)
    {
      modelPackage = BooleanExpressionsPackage.eINSTANCE;
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
  protected BooleanExpressionsSwitch<Adapter> modelSwitch =
    new BooleanExpressionsSwitch<Adapter>()
    {
      @Override
      public Adapter caseModel(Model object)
      {
        return createModelAdapter();
      }
      @Override
      public Adapter caseOrExpression(OrExpression object)
      {
        return createOrExpressionAdapter();
      }
      @Override
      public Adapter caseAndExpression(AndExpression object)
      {
        return createAndExpressionAdapter();
      }
      @Override
      public Adapter caseBaseExpression(BaseExpression object)
      {
        return createBaseExpressionAdapter();
      }
      @Override
      public Adapter casebooleanTerm(booleanTerm object)
      {
        return createbooleanTermAdapter();
      }
      @Override
      public Adapter caseTimeConstraint(TimeConstraint object)
      {
        return createTimeConstraintAdapter();
      }
      @Override
      public Adapter caseBooleanVariable(BooleanVariable object)
      {
        return createBooleanVariableAdapter();
      }
      @Override
      public Adapter caseVariableCondition(VariableCondition object)
      {
        return createVariableConditionAdapter();
      }
      @Override
      public Adapter caseEXPRESSION(EXPRESSION object)
      {
        return createEXPRESSIONAdapter();
      }
      @Override
      public Adapter caseTERM(TERM object)
      {
        return createTERMAdapter();
      }
      @Override
      public Adapter caseEvent(Event object)
      {
        return createEventAdapter();
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
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.booleanExpressions.Model <em>Model</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.booleanExpressions.Model
   * @generated
   */
  public Adapter createModelAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.booleanExpressions.OrExpression <em>Or Expression</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.booleanExpressions.OrExpression
   * @generated
   */
  public Adapter createOrExpressionAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.booleanExpressions.AndExpression <em>And Expression</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.booleanExpressions.AndExpression
   * @generated
   */
  public Adapter createAndExpressionAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.booleanExpressions.BaseExpression <em>Base Expression</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.booleanExpressions.BaseExpression
   * @generated
   */
  public Adapter createBaseExpressionAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.booleanExpressions.booleanTerm <em>boolean Term</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.booleanExpressions.booleanTerm
   * @generated
   */
  public Adapter createbooleanTermAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.booleanExpressions.TimeConstraint <em>Time Constraint</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.booleanExpressions.TimeConstraint
   * @generated
   */
  public Adapter createTimeConstraintAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.booleanExpressions.BooleanVariable <em>Boolean Variable</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.booleanExpressions.BooleanVariable
   * @generated
   */
  public Adapter createBooleanVariableAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.booleanExpressions.VariableCondition <em>Variable Condition</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.booleanExpressions.VariableCondition
   * @generated
   */
  public Adapter createVariableConditionAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.booleanExpressions.EXPRESSION <em>EXPRESSION</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.booleanExpressions.EXPRESSION
   * @generated
   */
  public Adapter createEXPRESSIONAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.booleanExpressions.TERM <em>TERM</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.booleanExpressions.TERM
   * @generated
   */
  public Adapter createTERMAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.correttouml.grammars.booleanExpressions.Event <em>Event</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.correttouml.grammars.booleanExpressions.Event
   * @generated
   */
  public Adapter createEventAdapter()
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

} //BooleanExpressionsAdapterFactory
