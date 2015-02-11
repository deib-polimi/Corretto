/**
 */
package org.correttouml.grammars.booleanExpressions.impl;

import org.correttouml.grammars.booleanExpressions.*;

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
public class BooleanExpressionsFactoryImpl extends EFactoryImpl implements BooleanExpressionsFactory
{
  /**
   * Creates the default factory implementation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static BooleanExpressionsFactory init()
  {
    try
    {
      BooleanExpressionsFactory theBooleanExpressionsFactory = (BooleanExpressionsFactory)EPackage.Registry.INSTANCE.getEFactory("http://www.correttouml.org/grammars/BooleanExpressions"); 
      if (theBooleanExpressionsFactory != null)
      {
        return theBooleanExpressionsFactory;
      }
    }
    catch (Exception exception)
    {
      EcorePlugin.INSTANCE.log(exception);
    }
    return new BooleanExpressionsFactoryImpl();
  }

  /**
   * Creates an instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public BooleanExpressionsFactoryImpl()
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
      case BooleanExpressionsPackage.MODEL: return createModel();
      case BooleanExpressionsPackage.BOOLEAN_EXPRESSION: return createbooleanExpression();
      case BooleanExpressionsPackage.BOOLEAN_TERM: return createbooleanTerm();
      case BooleanExpressionsPackage.TIME_CONSTRAINT: return createTimeConstraint();
      case BooleanExpressionsPackage.BOOLEAN_VARIABLE: return createBooleanVariable();
      case BooleanExpressionsPackage.VARIABLE_CONDITION: return createVariableCondition();
      case BooleanExpressionsPackage.EVENT: return createEvent();
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
  public booleanExpression createbooleanExpression()
  {
    booleanExpressionImpl booleanExpression = new booleanExpressionImpl();
    return booleanExpression;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public booleanTerm createbooleanTerm()
  {
    booleanTermImpl booleanTerm = new booleanTermImpl();
    return booleanTerm;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public TimeConstraint createTimeConstraint()
  {
    TimeConstraintImpl timeConstraint = new TimeConstraintImpl();
    return timeConstraint;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public BooleanVariable createBooleanVariable()
  {
    BooleanVariableImpl booleanVariable = new BooleanVariableImpl();
    return booleanVariable;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public VariableCondition createVariableCondition()
  {
    VariableConditionImpl variableCondition = new VariableConditionImpl();
    return variableCondition;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Event createEvent()
  {
    EventImpl event = new EventImpl();
    return event;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public BooleanExpressionsPackage getBooleanExpressionsPackage()
  {
    return (BooleanExpressionsPackage)getEPackage();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @deprecated
   * @generated
   */
  @Deprecated
  public static BooleanExpressionsPackage getPackage()
  {
    return BooleanExpressionsPackage.eINSTANCE;
  }

} //BooleanExpressionsFactoryImpl
