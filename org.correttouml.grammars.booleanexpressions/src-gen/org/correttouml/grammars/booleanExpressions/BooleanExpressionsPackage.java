/**
 */
package org.correttouml.grammars.booleanExpressions;

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
 * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsFactory
 * @model kind="package"
 * @generated
 */
public interface BooleanExpressionsPackage extends EPackage
{
  /**
   * The package name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNAME = "booleanExpressions";

  /**
   * The package namespace URI.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_URI = "http://www.correttouml.org/grammars/BooleanExpressions";

  /**
   * The package namespace name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_PREFIX = "booleanExpressions";

  /**
   * The singleton instance of the package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  BooleanExpressionsPackage eINSTANCE = org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl.init();

  /**
   * The meta object id for the '{@link org.correttouml.grammars.booleanExpressions.impl.ModelImpl <em>Model</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.booleanExpressions.impl.ModelImpl
   * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getModel()
   * @generated
   */
  int MODEL = 0;

  /**
   * The feature id for the '<em><b>Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODEL__EXPRESSION = 0;

  /**
   * The number of structural features of the '<em>Model</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODEL_FEATURE_COUNT = 1;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.booleanExpressions.impl.booleanExpressionImpl <em>boolean Expression</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.booleanExpressions.impl.booleanExpressionImpl
   * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getbooleanExpression()
   * @generated
   */
  int BOOLEAN_EXPRESSION = 1;

  /**
   * The feature id for the '<em><b>Not Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BOOLEAN_EXPRESSION__NOT_EXPRESSION = 0;

  /**
   * The feature id for the '<em><b>Or Left</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BOOLEAN_EXPRESSION__OR_LEFT = 1;

  /**
   * The feature id for the '<em><b>Or Right</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BOOLEAN_EXPRESSION__OR_RIGHT = 2;

  /**
   * The feature id for the '<em><b>And Left</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BOOLEAN_EXPRESSION__AND_LEFT = 3;

  /**
   * The feature id for the '<em><b>And Right</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BOOLEAN_EXPRESSION__AND_RIGHT = 4;

  /**
   * The feature id for the '<em><b>Boolean Term</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BOOLEAN_EXPRESSION__BOOLEAN_TERM = 5;

  /**
   * The number of structural features of the '<em>boolean Expression</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BOOLEAN_EXPRESSION_FEATURE_COUNT = 6;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.booleanExpressions.impl.booleanTermImpl <em>boolean Term</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.booleanExpressions.impl.booleanTermImpl
   * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getbooleanTerm()
   * @generated
   */
  int BOOLEAN_TERM = 2;

  /**
   * The number of structural features of the '<em>boolean Term</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BOOLEAN_TERM_FEATURE_COUNT = 0;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.booleanExpressions.impl.TimeConstraintImpl <em>Time Constraint</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.booleanExpressions.impl.TimeConstraintImpl
   * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getTimeConstraint()
   * @generated
   */
  int TIME_CONSTRAINT = 3;

  /**
   * The feature id for the '<em><b>Event2</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TIME_CONSTRAINT__EVENT2 = BOOLEAN_TERM_FEATURE_COUNT + 0;

  /**
   * The feature id for the '<em><b>Event1</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TIME_CONSTRAINT__EVENT1 = BOOLEAN_TERM_FEATURE_COUNT + 1;

  /**
   * The feature id for the '<em><b>Op</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TIME_CONSTRAINT__OP = BOOLEAN_TERM_FEATURE_COUNT + 2;

  /**
   * The feature id for the '<em><b>Value</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TIME_CONSTRAINT__VALUE = BOOLEAN_TERM_FEATURE_COUNT + 3;

  /**
   * The number of structural features of the '<em>Time Constraint</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TIME_CONSTRAINT_FEATURE_COUNT = BOOLEAN_TERM_FEATURE_COUNT + 4;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.booleanExpressions.impl.BooleanVariableImpl <em>Boolean Variable</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.booleanExpressions.impl.BooleanVariableImpl
   * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getBooleanVariable()
   * @generated
   */
  int BOOLEAN_VARIABLE = 4;

  /**
   * The feature id for the '<em><b>Variable</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BOOLEAN_VARIABLE__VARIABLE = BOOLEAN_TERM_FEATURE_COUNT + 0;

  /**
   * The number of structural features of the '<em>Boolean Variable</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BOOLEAN_VARIABLE_FEATURE_COUNT = BOOLEAN_TERM_FEATURE_COUNT + 1;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.booleanExpressions.impl.VariableConditionImpl <em>Variable Condition</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.booleanExpressions.impl.VariableConditionImpl
   * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getVariableCondition()
   * @generated
   */
  int VARIABLE_CONDITION = 5;

  /**
   * The feature id for the '<em><b>Variable</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int VARIABLE_CONDITION__VARIABLE = BOOLEAN_TERM_FEATURE_COUNT + 0;

  /**
   * The feature id for the '<em><b>Relation</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int VARIABLE_CONDITION__RELATION = BOOLEAN_TERM_FEATURE_COUNT + 1;

  /**
   * The feature id for the '<em><b>Value</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int VARIABLE_CONDITION__VALUE = BOOLEAN_TERM_FEATURE_COUNT + 2;

  /**
   * The number of structural features of the '<em>Variable Condition</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int VARIABLE_CONDITION_FEATURE_COUNT = BOOLEAN_TERM_FEATURE_COUNT + 3;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.booleanExpressions.impl.EventImpl <em>Event</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.booleanExpressions.impl.EventImpl
   * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getEvent()
   * @generated
   */
  int EVENT = 6;

  /**
   * The feature id for the '<em><b>Event Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EVENT__EVENT_NAME = 0;

  /**
   * The feature id for the '<em><b>Event Extension</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EVENT__EVENT_EXTENSION = 1;

  /**
   * The feature id for the '<em><b>Now Event</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EVENT__NOW_EVENT = 2;

  /**
   * The number of structural features of the '<em>Event</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EVENT_FEATURE_COUNT = 3;


  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.booleanExpressions.Model <em>Model</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Model</em>'.
   * @see org.correttouml.grammars.booleanExpressions.Model
   * @generated
   */
  EClass getModel();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.Model#getExpression <em>Expression</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Expression</em>'.
   * @see org.correttouml.grammars.booleanExpressions.Model#getExpression()
   * @see #getModel()
   * @generated
   */
  EReference getModel_Expression();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.booleanExpressions.booleanExpression <em>boolean Expression</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>boolean Expression</em>'.
   * @see org.correttouml.grammars.booleanExpressions.booleanExpression
   * @generated
   */
  EClass getbooleanExpression();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.booleanExpression#getNotExpression <em>Not Expression</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Not Expression</em>'.
   * @see org.correttouml.grammars.booleanExpressions.booleanExpression#getNotExpression()
   * @see #getbooleanExpression()
   * @generated
   */
  EReference getbooleanExpression_NotExpression();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.booleanExpression#getOrLeft <em>Or Left</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Or Left</em>'.
   * @see org.correttouml.grammars.booleanExpressions.booleanExpression#getOrLeft()
   * @see #getbooleanExpression()
   * @generated
   */
  EReference getbooleanExpression_OrLeft();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.booleanExpression#getOrRight <em>Or Right</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Or Right</em>'.
   * @see org.correttouml.grammars.booleanExpressions.booleanExpression#getOrRight()
   * @see #getbooleanExpression()
   * @generated
   */
  EReference getbooleanExpression_OrRight();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.booleanExpression#getAndLeft <em>And Left</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>And Left</em>'.
   * @see org.correttouml.grammars.booleanExpressions.booleanExpression#getAndLeft()
   * @see #getbooleanExpression()
   * @generated
   */
  EReference getbooleanExpression_AndLeft();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.booleanExpression#getAndRight <em>And Right</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>And Right</em>'.
   * @see org.correttouml.grammars.booleanExpressions.booleanExpression#getAndRight()
   * @see #getbooleanExpression()
   * @generated
   */
  EReference getbooleanExpression_AndRight();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.booleanExpression#getBooleanTerm <em>Boolean Term</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Boolean Term</em>'.
   * @see org.correttouml.grammars.booleanExpressions.booleanExpression#getBooleanTerm()
   * @see #getbooleanExpression()
   * @generated
   */
  EReference getbooleanExpression_BooleanTerm();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.booleanExpressions.booleanTerm <em>boolean Term</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>boolean Term</em>'.
   * @see org.correttouml.grammars.booleanExpressions.booleanTerm
   * @generated
   */
  EClass getbooleanTerm();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.booleanExpressions.TimeConstraint <em>Time Constraint</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Time Constraint</em>'.
   * @see org.correttouml.grammars.booleanExpressions.TimeConstraint
   * @generated
   */
  EClass getTimeConstraint();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.TimeConstraint#getEvent2 <em>Event2</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Event2</em>'.
   * @see org.correttouml.grammars.booleanExpressions.TimeConstraint#getEvent2()
   * @see #getTimeConstraint()
   * @generated
   */
  EReference getTimeConstraint_Event2();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.TimeConstraint#getEvent1 <em>Event1</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Event1</em>'.
   * @see org.correttouml.grammars.booleanExpressions.TimeConstraint#getEvent1()
   * @see #getTimeConstraint()
   * @generated
   */
  EReference getTimeConstraint_Event1();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.booleanExpressions.TimeConstraint#getOp <em>Op</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Op</em>'.
   * @see org.correttouml.grammars.booleanExpressions.TimeConstraint#getOp()
   * @see #getTimeConstraint()
   * @generated
   */
  EAttribute getTimeConstraint_Op();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.booleanExpressions.TimeConstraint#getValue <em>Value</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Value</em>'.
   * @see org.correttouml.grammars.booleanExpressions.TimeConstraint#getValue()
   * @see #getTimeConstraint()
   * @generated
   */
  EAttribute getTimeConstraint_Value();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.booleanExpressions.BooleanVariable <em>Boolean Variable</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Boolean Variable</em>'.
   * @see org.correttouml.grammars.booleanExpressions.BooleanVariable
   * @generated
   */
  EClass getBooleanVariable();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.booleanExpressions.BooleanVariable#getVariable <em>Variable</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Variable</em>'.
   * @see org.correttouml.grammars.booleanExpressions.BooleanVariable#getVariable()
   * @see #getBooleanVariable()
   * @generated
   */
  EAttribute getBooleanVariable_Variable();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.booleanExpressions.VariableCondition <em>Variable Condition</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Variable Condition</em>'.
   * @see org.correttouml.grammars.booleanExpressions.VariableCondition
   * @generated
   */
  EClass getVariableCondition();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.booleanExpressions.VariableCondition#getVariable <em>Variable</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Variable</em>'.
   * @see org.correttouml.grammars.booleanExpressions.VariableCondition#getVariable()
   * @see #getVariableCondition()
   * @generated
   */
  EAttribute getVariableCondition_Variable();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.booleanExpressions.VariableCondition#getRelation <em>Relation</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Relation</em>'.
   * @see org.correttouml.grammars.booleanExpressions.VariableCondition#getRelation()
   * @see #getVariableCondition()
   * @generated
   */
  EAttribute getVariableCondition_Relation();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.booleanExpressions.VariableCondition#getValue <em>Value</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Value</em>'.
   * @see org.correttouml.grammars.booleanExpressions.VariableCondition#getValue()
   * @see #getVariableCondition()
   * @generated
   */
  EAttribute getVariableCondition_Value();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.booleanExpressions.Event <em>Event</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Event</em>'.
   * @see org.correttouml.grammars.booleanExpressions.Event
   * @generated
   */
  EClass getEvent();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.booleanExpressions.Event#getEventName <em>Event Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Event Name</em>'.
   * @see org.correttouml.grammars.booleanExpressions.Event#getEventName()
   * @see #getEvent()
   * @generated
   */
  EAttribute getEvent_EventName();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.booleanExpressions.Event#getEventExtension <em>Event Extension</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Event Extension</em>'.
   * @see org.correttouml.grammars.booleanExpressions.Event#getEventExtension()
   * @see #getEvent()
   * @generated
   */
  EAttribute getEvent_EventExtension();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.booleanExpressions.Event#isNowEvent <em>Now Event</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Now Event</em>'.
   * @see org.correttouml.grammars.booleanExpressions.Event#isNowEvent()
   * @see #getEvent()
   * @generated
   */
  EAttribute getEvent_NowEvent();

  /**
   * Returns the factory that creates the instances of the model.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the factory that creates the instances of the model.
   * @generated
   */
  BooleanExpressionsFactory getBooleanExpressionsFactory();

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
     * The meta object literal for the '{@link org.correttouml.grammars.booleanExpressions.impl.ModelImpl <em>Model</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.booleanExpressions.impl.ModelImpl
     * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getModel()
     * @generated
     */
    EClass MODEL = eINSTANCE.getModel();

    /**
     * The meta object literal for the '<em><b>Expression</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference MODEL__EXPRESSION = eINSTANCE.getModel_Expression();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.booleanExpressions.impl.booleanExpressionImpl <em>boolean Expression</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.booleanExpressions.impl.booleanExpressionImpl
     * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getbooleanExpression()
     * @generated
     */
    EClass BOOLEAN_EXPRESSION = eINSTANCE.getbooleanExpression();

    /**
     * The meta object literal for the '<em><b>Not Expression</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference BOOLEAN_EXPRESSION__NOT_EXPRESSION = eINSTANCE.getbooleanExpression_NotExpression();

    /**
     * The meta object literal for the '<em><b>Or Left</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference BOOLEAN_EXPRESSION__OR_LEFT = eINSTANCE.getbooleanExpression_OrLeft();

    /**
     * The meta object literal for the '<em><b>Or Right</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference BOOLEAN_EXPRESSION__OR_RIGHT = eINSTANCE.getbooleanExpression_OrRight();

    /**
     * The meta object literal for the '<em><b>And Left</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference BOOLEAN_EXPRESSION__AND_LEFT = eINSTANCE.getbooleanExpression_AndLeft();

    /**
     * The meta object literal for the '<em><b>And Right</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference BOOLEAN_EXPRESSION__AND_RIGHT = eINSTANCE.getbooleanExpression_AndRight();

    /**
     * The meta object literal for the '<em><b>Boolean Term</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference BOOLEAN_EXPRESSION__BOOLEAN_TERM = eINSTANCE.getbooleanExpression_BooleanTerm();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.booleanExpressions.impl.booleanTermImpl <em>boolean Term</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.booleanExpressions.impl.booleanTermImpl
     * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getbooleanTerm()
     * @generated
     */
    EClass BOOLEAN_TERM = eINSTANCE.getbooleanTerm();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.booleanExpressions.impl.TimeConstraintImpl <em>Time Constraint</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.booleanExpressions.impl.TimeConstraintImpl
     * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getTimeConstraint()
     * @generated
     */
    EClass TIME_CONSTRAINT = eINSTANCE.getTimeConstraint();

    /**
     * The meta object literal for the '<em><b>Event2</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference TIME_CONSTRAINT__EVENT2 = eINSTANCE.getTimeConstraint_Event2();

    /**
     * The meta object literal for the '<em><b>Event1</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference TIME_CONSTRAINT__EVENT1 = eINSTANCE.getTimeConstraint_Event1();

    /**
     * The meta object literal for the '<em><b>Op</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute TIME_CONSTRAINT__OP = eINSTANCE.getTimeConstraint_Op();

    /**
     * The meta object literal for the '<em><b>Value</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute TIME_CONSTRAINT__VALUE = eINSTANCE.getTimeConstraint_Value();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.booleanExpressions.impl.BooleanVariableImpl <em>Boolean Variable</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.booleanExpressions.impl.BooleanVariableImpl
     * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getBooleanVariable()
     * @generated
     */
    EClass BOOLEAN_VARIABLE = eINSTANCE.getBooleanVariable();

    /**
     * The meta object literal for the '<em><b>Variable</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute BOOLEAN_VARIABLE__VARIABLE = eINSTANCE.getBooleanVariable_Variable();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.booleanExpressions.impl.VariableConditionImpl <em>Variable Condition</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.booleanExpressions.impl.VariableConditionImpl
     * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getVariableCondition()
     * @generated
     */
    EClass VARIABLE_CONDITION = eINSTANCE.getVariableCondition();

    /**
     * The meta object literal for the '<em><b>Variable</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute VARIABLE_CONDITION__VARIABLE = eINSTANCE.getVariableCondition_Variable();

    /**
     * The meta object literal for the '<em><b>Relation</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute VARIABLE_CONDITION__RELATION = eINSTANCE.getVariableCondition_Relation();

    /**
     * The meta object literal for the '<em><b>Value</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute VARIABLE_CONDITION__VALUE = eINSTANCE.getVariableCondition_Value();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.booleanExpressions.impl.EventImpl <em>Event</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.booleanExpressions.impl.EventImpl
     * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getEvent()
     * @generated
     */
    EClass EVENT = eINSTANCE.getEvent();

    /**
     * The meta object literal for the '<em><b>Event Name</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute EVENT__EVENT_NAME = eINSTANCE.getEvent_EventName();

    /**
     * The meta object literal for the '<em><b>Event Extension</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute EVENT__EVENT_EXTENSION = eINSTANCE.getEvent_EventExtension();

    /**
     * The meta object literal for the '<em><b>Now Event</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute EVENT__NOW_EVENT = eINSTANCE.getEvent_NowEvent();

  }

} //BooleanExpressionsPackage
