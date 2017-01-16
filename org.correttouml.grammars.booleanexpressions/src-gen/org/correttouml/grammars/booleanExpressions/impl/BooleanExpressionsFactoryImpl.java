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
      BooleanExpressionsFactory theBooleanExpressionsFactory = (BooleanExpressionsFactory)EPackage.Registry.INSTANCE.getEFactory(BooleanExpressionsPackage.eNS_URI);
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
      case BooleanExpressionsPackage.OR_EXPRESSION: return createOrExpression();
      case BooleanExpressionsPackage.AND_EXPRESSION: return createAndExpression();
      case BooleanExpressionsPackage.BASE_EXPRESSION: return createBaseExpression();
      case BooleanExpressionsPackage.BOOLEAN_TERM: return createbooleanTerm();
      case BooleanExpressionsPackage.TIME_CONSTRAINT: return createTimeConstraint();
      case BooleanExpressionsPackage.BOOLEAN_VARIABLE: return createBooleanVariable();
      case BooleanExpressionsPackage.VARIABLE_CONDITION: return createVariableCondition();
      case BooleanExpressionsPackage.EXPRESSION: return createEXPRESSION();
      case BooleanExpressionsPackage.TERM: return createTERM();
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
  public OrExpression createOrExpression()
  {
    OrExpressionImpl orExpression = new OrExpressionImpl();
    return orExpression;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public AndExpression createAndExpression()
  {
    AndExpressionImpl andExpression = new AndExpressionImpl();
    return andExpression;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public BaseExpression createBaseExpression()
  {
    BaseExpressionImpl baseExpression = new BaseExpressionImpl();
    return baseExpression;
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
  public EXPRESSION createEXPRESSION()
  {
    EXPRESSIONImpl expression = new EXPRESSIONImpl();
    return expression;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public TERM createTERM()
  {
    TERMImpl term = new TERMImpl();
    return term;
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
