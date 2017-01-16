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
   * The meta object id for the '{@link org.correttouml.grammars.booleanExpressions.impl.OrExpressionImpl <em>Or Expression</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.booleanExpressions.impl.OrExpressionImpl
   * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getOrExpression()
   * @generated
   */
  int OR_EXPRESSION = 1;

  /**
   * The feature id for the '<em><b>Left Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int OR_EXPRESSION__LEFT_EXPRESSION = 0;

  /**
   * The feature id for the '<em><b>Or</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int OR_EXPRESSION__OR = 1;

  /**
   * The feature id for the '<em><b>Right Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int OR_EXPRESSION__RIGHT_EXPRESSION = 2;

  /**
   * The number of structural features of the '<em>Or Expression</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int OR_EXPRESSION_FEATURE_COUNT = 3;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.booleanExpressions.impl.AndExpressionImpl <em>And Expression</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.booleanExpressions.impl.AndExpressionImpl
   * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getAndExpression()
   * @generated
   */
  int AND_EXPRESSION = 2;

  /**
   * The feature id for the '<em><b>Left Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int AND_EXPRESSION__LEFT_EXPRESSION = 0;

  /**
   * The feature id for the '<em><b>And</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int AND_EXPRESSION__AND = 1;

  /**
   * The feature id for the '<em><b>Right Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int AND_EXPRESSION__RIGHT_EXPRESSION = 2;

  /**
   * The number of structural features of the '<em>And Expression</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int AND_EXPRESSION_FEATURE_COUNT = 3;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.booleanExpressions.impl.BaseExpressionImpl <em>Base Expression</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.booleanExpressions.impl.BaseExpressionImpl
   * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getBaseExpression()
   * @generated
   */
  int BASE_EXPRESSION = 3;

  /**
   * The feature id for the '<em><b>Not</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BASE_EXPRESSION__NOT = 0;

  /**
   * The feature id for the '<em><b>Boolean Term</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BASE_EXPRESSION__BOOLEAN_TERM = 1;

  /**
   * The feature id for the '<em><b>Root Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BASE_EXPRESSION__ROOT_EXPRESSION = 2;

  /**
   * The number of structural features of the '<em>Base Expression</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BASE_EXPRESSION_FEATURE_COUNT = 3;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.booleanExpressions.impl.booleanTermImpl <em>boolean Term</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.booleanExpressions.impl.booleanTermImpl
   * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getbooleanTerm()
   * @generated
   */
  int BOOLEAN_TERM = 4;

  /**
   * The feature id for the '<em><b>Time Constraint</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BOOLEAN_TERM__TIME_CONSTRAINT = 0;

  /**
   * The feature id for the '<em><b>Boolean Variable</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BOOLEAN_TERM__BOOLEAN_VARIABLE = 1;

  /**
   * The feature id for the '<em><b>Variable Condition</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BOOLEAN_TERM__VARIABLE_CONDITION = 2;

  /**
   * The number of structural features of the '<em>boolean Term</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BOOLEAN_TERM_FEATURE_COUNT = 3;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.booleanExpressions.impl.TimeConstraintImpl <em>Time Constraint</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.booleanExpressions.impl.TimeConstraintImpl
   * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getTimeConstraint()
   * @generated
   */
  int TIME_CONSTRAINT = 5;

  /**
   * The feature id for the '<em><b>Event2</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TIME_CONSTRAINT__EVENT2 = 0;

  /**
   * The feature id for the '<em><b>Event1</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TIME_CONSTRAINT__EVENT1 = 1;

  /**
   * The feature id for the '<em><b>Op</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TIME_CONSTRAINT__OP = 2;

  /**
   * The feature id for the '<em><b>Value</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TIME_CONSTRAINT__VALUE = 3;

  /**
   * The number of structural features of the '<em>Time Constraint</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TIME_CONSTRAINT_FEATURE_COUNT = 4;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.booleanExpressions.impl.BooleanVariableImpl <em>Boolean Variable</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.booleanExpressions.impl.BooleanVariableImpl
   * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getBooleanVariable()
   * @generated
   */
  int BOOLEAN_VARIABLE = 6;

  /**
   * The feature id for the '<em><b>Variable</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BOOLEAN_VARIABLE__VARIABLE = 0;

  /**
   * The number of structural features of the '<em>Boolean Variable</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BOOLEAN_VARIABLE_FEATURE_COUNT = 1;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.booleanExpressions.impl.VariableConditionImpl <em>Variable Condition</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.booleanExpressions.impl.VariableConditionImpl
   * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getVariableCondition()
   * @generated
   */
  int VARIABLE_CONDITION = 7;

  /**
   * The feature id for the '<em><b>Expression left</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int VARIABLE_CONDITION__EXPRESSION_LEFT = 0;

  /**
   * The feature id for the '<em><b>Relation</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int VARIABLE_CONDITION__RELATION = 1;

  /**
   * The feature id for the '<em><b>Expression right</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int VARIABLE_CONDITION__EXPRESSION_RIGHT = 2;

  /**
   * The number of structural features of the '<em>Variable Condition</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int VARIABLE_CONDITION_FEATURE_COUNT = 3;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.booleanExpressions.impl.EXPRESSIONImpl <em>EXPRESSION</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.booleanExpressions.impl.EXPRESSIONImpl
   * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getEXPRESSION()
   * @generated
   */
  int EXPRESSION = 8;

  /**
   * The feature id for the '<em><b>First Term</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EXPRESSION__FIRST_TERM = 0;

  /**
   * The feature id for the '<em><b>Operator</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EXPRESSION__OPERATOR = 1;

  /**
   * The feature id for the '<em><b>Second Term</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EXPRESSION__SECOND_TERM = 2;

  /**
   * The feature id for the '<em><b>Alone</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EXPRESSION__ALONE = 3;

  /**
   * The number of structural features of the '<em>EXPRESSION</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EXPRESSION_FEATURE_COUNT = 4;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.booleanExpressions.impl.TERMImpl <em>TERM</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.booleanExpressions.impl.TERMImpl
   * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getTERM()
   * @generated
   */
  int TERM = 9;

  /**
   * The feature id for the '<em><b>Variable</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TERM__VARIABLE = 0;

  /**
   * The feature id for the '<em><b>Constant</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TERM__CONSTANT = 1;

  /**
   * The number of structural features of the '<em>TERM</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TERM_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.booleanExpressions.impl.EventImpl <em>Event</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.booleanExpressions.impl.EventImpl
   * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getEvent()
   * @generated
   */
  int EVENT = 10;

  /**
   * The feature id for the '<em><b>Obj Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EVENT__OBJ_NAME = 0;

  /**
   * The feature id for the '<em><b>Event Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EVENT__EVENT_NAME = 1;

  /**
   * The feature id for the '<em><b>Event Extension</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EVENT__EVENT_EXTENSION = 2;

  /**
   * The feature id for the '<em><b>Now Event</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EVENT__NOW_EVENT = 3;

  /**
   * The number of structural features of the '<em>Event</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EVENT_FEATURE_COUNT = 4;


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
   * Returns the meta object for class '{@link org.correttouml.grammars.booleanExpressions.OrExpression <em>Or Expression</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Or Expression</em>'.
   * @see org.correttouml.grammars.booleanExpressions.OrExpression
   * @generated
   */
  EClass getOrExpression();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.OrExpression#getLeftExpression <em>Left Expression</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Left Expression</em>'.
   * @see org.correttouml.grammars.booleanExpressions.OrExpression#getLeftExpression()
   * @see #getOrExpression()
   * @generated
   */
  EReference getOrExpression_LeftExpression();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.booleanExpressions.OrExpression#getOr <em>Or</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Or</em>'.
   * @see org.correttouml.grammars.booleanExpressions.OrExpression#getOr()
   * @see #getOrExpression()
   * @generated
   */
  EAttribute getOrExpression_Or();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.OrExpression#getRightExpression <em>Right Expression</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Right Expression</em>'.
   * @see org.correttouml.grammars.booleanExpressions.OrExpression#getRightExpression()
   * @see #getOrExpression()
   * @generated
   */
  EReference getOrExpression_RightExpression();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.booleanExpressions.AndExpression <em>And Expression</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>And Expression</em>'.
   * @see org.correttouml.grammars.booleanExpressions.AndExpression
   * @generated
   */
  EClass getAndExpression();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.AndExpression#getLeftExpression <em>Left Expression</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Left Expression</em>'.
   * @see org.correttouml.grammars.booleanExpressions.AndExpression#getLeftExpression()
   * @see #getAndExpression()
   * @generated
   */
  EReference getAndExpression_LeftExpression();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.booleanExpressions.AndExpression#getAnd <em>And</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>And</em>'.
   * @see org.correttouml.grammars.booleanExpressions.AndExpression#getAnd()
   * @see #getAndExpression()
   * @generated
   */
  EAttribute getAndExpression_And();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.AndExpression#getRightExpression <em>Right Expression</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Right Expression</em>'.
   * @see org.correttouml.grammars.booleanExpressions.AndExpression#getRightExpression()
   * @see #getAndExpression()
   * @generated
   */
  EReference getAndExpression_RightExpression();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.booleanExpressions.BaseExpression <em>Base Expression</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Base Expression</em>'.
   * @see org.correttouml.grammars.booleanExpressions.BaseExpression
   * @generated
   */
  EClass getBaseExpression();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.booleanExpressions.BaseExpression#getNot <em>Not</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Not</em>'.
   * @see org.correttouml.grammars.booleanExpressions.BaseExpression#getNot()
   * @see #getBaseExpression()
   * @generated
   */
  EAttribute getBaseExpression_Not();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.BaseExpression#getBooleanTerm <em>Boolean Term</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Boolean Term</em>'.
   * @see org.correttouml.grammars.booleanExpressions.BaseExpression#getBooleanTerm()
   * @see #getBaseExpression()
   * @generated
   */
  EReference getBaseExpression_BooleanTerm();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.BaseExpression#getRootExpression <em>Root Expression</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Root Expression</em>'.
   * @see org.correttouml.grammars.booleanExpressions.BaseExpression#getRootExpression()
   * @see #getBaseExpression()
   * @generated
   */
  EReference getBaseExpression_RootExpression();

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
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.booleanTerm#getTimeConstraint <em>Time Constraint</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Time Constraint</em>'.
   * @see org.correttouml.grammars.booleanExpressions.booleanTerm#getTimeConstraint()
   * @see #getbooleanTerm()
   * @generated
   */
  EReference getbooleanTerm_TimeConstraint();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.booleanTerm#getBooleanVariable <em>Boolean Variable</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Boolean Variable</em>'.
   * @see org.correttouml.grammars.booleanExpressions.booleanTerm#getBooleanVariable()
   * @see #getbooleanTerm()
   * @generated
   */
  EReference getbooleanTerm_BooleanVariable();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.booleanTerm#getVariableCondition <em>Variable Condition</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Variable Condition</em>'.
   * @see org.correttouml.grammars.booleanExpressions.booleanTerm#getVariableCondition()
   * @see #getbooleanTerm()
   * @generated
   */
  EReference getbooleanTerm_VariableCondition();

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
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.VariableCondition#getExpression_left <em>Expression left</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Expression left</em>'.
   * @see org.correttouml.grammars.booleanExpressions.VariableCondition#getExpression_left()
   * @see #getVariableCondition()
   * @generated
   */
  EReference getVariableCondition_Expression_left();

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
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.VariableCondition#getExpression_right <em>Expression right</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Expression right</em>'.
   * @see org.correttouml.grammars.booleanExpressions.VariableCondition#getExpression_right()
   * @see #getVariableCondition()
   * @generated
   */
  EReference getVariableCondition_Expression_right();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.booleanExpressions.EXPRESSION <em>EXPRESSION</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>EXPRESSION</em>'.
   * @see org.correttouml.grammars.booleanExpressions.EXPRESSION
   * @generated
   */
  EClass getEXPRESSION();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.EXPRESSION#getFirstTerm <em>First Term</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>First Term</em>'.
   * @see org.correttouml.grammars.booleanExpressions.EXPRESSION#getFirstTerm()
   * @see #getEXPRESSION()
   * @generated
   */
  EReference getEXPRESSION_FirstTerm();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.booleanExpressions.EXPRESSION#getOperator <em>Operator</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Operator</em>'.
   * @see org.correttouml.grammars.booleanExpressions.EXPRESSION#getOperator()
   * @see #getEXPRESSION()
   * @generated
   */
  EAttribute getEXPRESSION_Operator();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.EXPRESSION#getSecondTerm <em>Second Term</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Second Term</em>'.
   * @see org.correttouml.grammars.booleanExpressions.EXPRESSION#getSecondTerm()
   * @see #getEXPRESSION()
   * @generated
   */
  EReference getEXPRESSION_SecondTerm();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.booleanExpressions.EXPRESSION#getAlone <em>Alone</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Alone</em>'.
   * @see org.correttouml.grammars.booleanExpressions.EXPRESSION#getAlone()
   * @see #getEXPRESSION()
   * @generated
   */
  EReference getEXPRESSION_Alone();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.booleanExpressions.TERM <em>TERM</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>TERM</em>'.
   * @see org.correttouml.grammars.booleanExpressions.TERM
   * @generated
   */
  EClass getTERM();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.booleanExpressions.TERM#getVariable <em>Variable</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Variable</em>'.
   * @see org.correttouml.grammars.booleanExpressions.TERM#getVariable()
   * @see #getTERM()
   * @generated
   */
  EAttribute getTERM_Variable();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.booleanExpressions.TERM#getConstant <em>Constant</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Constant</em>'.
   * @see org.correttouml.grammars.booleanExpressions.TERM#getConstant()
   * @see #getTERM()
   * @generated
   */
  EAttribute getTERM_Constant();

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
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.booleanExpressions.Event#getObjName <em>Obj Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Obj Name</em>'.
   * @see org.correttouml.grammars.booleanExpressions.Event#getObjName()
   * @see #getEvent()
   * @generated
   */
  EAttribute getEvent_ObjName();

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
     * The meta object literal for the '{@link org.correttouml.grammars.booleanExpressions.impl.OrExpressionImpl <em>Or Expression</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.booleanExpressions.impl.OrExpressionImpl
     * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getOrExpression()
     * @generated
     */
    EClass OR_EXPRESSION = eINSTANCE.getOrExpression();

    /**
     * The meta object literal for the '<em><b>Left Expression</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference OR_EXPRESSION__LEFT_EXPRESSION = eINSTANCE.getOrExpression_LeftExpression();

    /**
     * The meta object literal for the '<em><b>Or</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute OR_EXPRESSION__OR = eINSTANCE.getOrExpression_Or();

    /**
     * The meta object literal for the '<em><b>Right Expression</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference OR_EXPRESSION__RIGHT_EXPRESSION = eINSTANCE.getOrExpression_RightExpression();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.booleanExpressions.impl.AndExpressionImpl <em>And Expression</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.booleanExpressions.impl.AndExpressionImpl
     * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getAndExpression()
     * @generated
     */
    EClass AND_EXPRESSION = eINSTANCE.getAndExpression();

    /**
     * The meta object literal for the '<em><b>Left Expression</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference AND_EXPRESSION__LEFT_EXPRESSION = eINSTANCE.getAndExpression_LeftExpression();

    /**
     * The meta object literal for the '<em><b>And</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute AND_EXPRESSION__AND = eINSTANCE.getAndExpression_And();

    /**
     * The meta object literal for the '<em><b>Right Expression</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference AND_EXPRESSION__RIGHT_EXPRESSION = eINSTANCE.getAndExpression_RightExpression();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.booleanExpressions.impl.BaseExpressionImpl <em>Base Expression</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.booleanExpressions.impl.BaseExpressionImpl
     * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getBaseExpression()
     * @generated
     */
    EClass BASE_EXPRESSION = eINSTANCE.getBaseExpression();

    /**
     * The meta object literal for the '<em><b>Not</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute BASE_EXPRESSION__NOT = eINSTANCE.getBaseExpression_Not();

    /**
     * The meta object literal for the '<em><b>Boolean Term</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference BASE_EXPRESSION__BOOLEAN_TERM = eINSTANCE.getBaseExpression_BooleanTerm();

    /**
     * The meta object literal for the '<em><b>Root Expression</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference BASE_EXPRESSION__ROOT_EXPRESSION = eINSTANCE.getBaseExpression_RootExpression();

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
     * The meta object literal for the '<em><b>Time Constraint</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference BOOLEAN_TERM__TIME_CONSTRAINT = eINSTANCE.getbooleanTerm_TimeConstraint();

    /**
     * The meta object literal for the '<em><b>Boolean Variable</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference BOOLEAN_TERM__BOOLEAN_VARIABLE = eINSTANCE.getbooleanTerm_BooleanVariable();

    /**
     * The meta object literal for the '<em><b>Variable Condition</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference BOOLEAN_TERM__VARIABLE_CONDITION = eINSTANCE.getbooleanTerm_VariableCondition();

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
     * The meta object literal for the '<em><b>Expression left</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference VARIABLE_CONDITION__EXPRESSION_LEFT = eINSTANCE.getVariableCondition_Expression_left();

    /**
     * The meta object literal for the '<em><b>Relation</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute VARIABLE_CONDITION__RELATION = eINSTANCE.getVariableCondition_Relation();

    /**
     * The meta object literal for the '<em><b>Expression right</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference VARIABLE_CONDITION__EXPRESSION_RIGHT = eINSTANCE.getVariableCondition_Expression_right();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.booleanExpressions.impl.EXPRESSIONImpl <em>EXPRESSION</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.booleanExpressions.impl.EXPRESSIONImpl
     * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getEXPRESSION()
     * @generated
     */
    EClass EXPRESSION = eINSTANCE.getEXPRESSION();

    /**
     * The meta object literal for the '<em><b>First Term</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference EXPRESSION__FIRST_TERM = eINSTANCE.getEXPRESSION_FirstTerm();

    /**
     * The meta object literal for the '<em><b>Operator</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute EXPRESSION__OPERATOR = eINSTANCE.getEXPRESSION_Operator();

    /**
     * The meta object literal for the '<em><b>Second Term</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference EXPRESSION__SECOND_TERM = eINSTANCE.getEXPRESSION_SecondTerm();

    /**
     * The meta object literal for the '<em><b>Alone</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference EXPRESSION__ALONE = eINSTANCE.getEXPRESSION_Alone();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.booleanExpressions.impl.TERMImpl <em>TERM</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.booleanExpressions.impl.TERMImpl
     * @see org.correttouml.grammars.booleanExpressions.impl.BooleanExpressionsPackageImpl#getTERM()
     * @generated
     */
    EClass TERM = eINSTANCE.getTERM();

    /**
     * The meta object literal for the '<em><b>Variable</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute TERM__VARIABLE = eINSTANCE.getTERM_Variable();

    /**
     * The meta object literal for the '<em><b>Constant</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute TERM__CONSTANT = eINSTANCE.getTERM_Constant();

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
     * The meta object literal for the '<em><b>Obj Name</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute EVENT__OBJ_NAME = eINSTANCE.getEvent_ObjName();

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
