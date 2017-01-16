/**
 */
package org.correttouml.grammars.stateMachineActions;

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
 * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsFactory
 * @model kind="package"
 * @generated
 */
public interface StateMachineActionsPackage extends EPackage
{
  /**
   * The package name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNAME = "stateMachineActions";

  /**
   * The package namespace URI.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_URI = "http://www.correttouml.org/grammars/StateMachineActions";

  /**
   * The package namespace name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_PREFIX = "stateMachineActions";

  /**
   * The singleton instance of the package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  StateMachineActionsPackage eINSTANCE = org.correttouml.grammars.stateMachineActions.impl.StateMachineActionsPackageImpl.init();

  /**
   * The meta object id for the '{@link org.correttouml.grammars.stateMachineActions.impl.ModelImpl <em>Model</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.stateMachineActions.impl.ModelImpl
   * @see org.correttouml.grammars.stateMachineActions.impl.StateMachineActionsPackageImpl#getModel()
   * @generated
   */
  int MODEL = 0;

  /**
   * The feature id for the '<em><b>Action</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODEL__ACTION = 0;

  /**
   * The feature id for the '<em><b>Actions</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODEL__ACTIONS = 1;

  /**
   * The number of structural features of the '<em>Model</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODEL_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.stateMachineActions.impl.ActionImpl <em>Action</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.stateMachineActions.impl.ActionImpl
   * @see org.correttouml.grammars.stateMachineActions.impl.StateMachineActionsPackageImpl#getAction()
   * @generated
   */
  int ACTION = 1;

  /**
   * The feature id for the '<em><b>Assignment</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ACTION__ASSIGNMENT = 0;

  /**
   * The feature id for the '<em><b>Event Action</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ACTION__EVENT_ACTION = 1;

  /**
   * The number of structural features of the '<em>Action</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ACTION_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.stateMachineActions.impl.AssignmentImpl <em>Assignment</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.stateMachineActions.impl.AssignmentImpl
   * @see org.correttouml.grammars.stateMachineActions.impl.StateMachineActionsPackageImpl#getAssignment()
   * @generated
   */
  int ASSIGNMENT = 2;

  /**
   * The feature id for the '<em><b>Leftvar</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ASSIGNMENT__LEFTVAR = 0;

  /**
   * The feature id for the '<em><b>Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ASSIGNMENT__EXPRESSION = 1;

  /**
   * The number of structural features of the '<em>Assignment</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ASSIGNMENT_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.stateMachineActions.impl.EXPRESSIONImpl <em>EXPRESSION</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.stateMachineActions.impl.EXPRESSIONImpl
   * @see org.correttouml.grammars.stateMachineActions.impl.StateMachineActionsPackageImpl#getEXPRESSION()
   * @generated
   */
  int EXPRESSION = 3;

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
   * The meta object id for the '{@link org.correttouml.grammars.stateMachineActions.impl.TERMImpl <em>TERM</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.stateMachineActions.impl.TERMImpl
   * @see org.correttouml.grammars.stateMachineActions.impl.StateMachineActionsPackageImpl#getTERM()
   * @generated
   */
  int TERM = 4;

  /**
   * The feature id for the '<em><b>Is Past</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TERM__IS_PAST = 0;

  /**
   * The feature id for the '<em><b>Is Future</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TERM__IS_FUTURE = 1;

  /**
   * The feature id for the '<em><b>Variable</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TERM__VARIABLE = 2;

  /**
   * The feature id for the '<em><b>Constant</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TERM__CONSTANT = 3;

  /**
   * The number of structural features of the '<em>TERM</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TERM_FEATURE_COUNT = 4;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.stateMachineActions.impl.EventActionImpl <em>Event Action</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.stateMachineActions.impl.EventActionImpl
   * @see org.correttouml.grammars.stateMachineActions.impl.StateMachineActionsPackageImpl#getEventAction()
   * @generated
   */
  int EVENT_ACTION = 5;

  /**
   * The feature id for the '<em><b>Link</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EVENT_ACTION__LINK = 0;

  /**
   * The feature id for the '<em><b>Event</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EVENT_ACTION__EVENT = 1;

  /**
   * The number of structural features of the '<em>Event Action</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EVENT_ACTION_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.stateMachineActions.impl.LinkImpl <em>Link</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.stateMachineActions.impl.LinkImpl
   * @see org.correttouml.grammars.stateMachineActions.impl.StateMachineActionsPackageImpl#getLink()
   * @generated
   */
  int LINK = 6;

  /**
   * The feature id for the '<em><b>Link Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int LINK__LINK_NAME = 0;

  /**
   * The feature id for the '<em><b>Association End</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int LINK__ASSOCIATION_END = 1;

  /**
   * The feature id for the '<em><b>Self</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int LINK__SELF = 2;

  /**
   * The number of structural features of the '<em>Link</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int LINK_FEATURE_COUNT = 3;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.stateMachineActions.impl.EventImpl <em>Event</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.stateMachineActions.impl.EventImpl
   * @see org.correttouml.grammars.stateMachineActions.impl.StateMachineActionsPackageImpl#getEvent()
   * @generated
   */
  int EVENT = 7;

  /**
   * The feature id for the '<em><b>Event Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EVENT__EVENT_NAME = 0;

  /**
   * The feature id for the '<em><b>Association End</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EVENT__ASSOCIATION_END = 1;

  /**
   * The feature id for the '<em><b>Op Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EVENT__OP_NAME = 2;

  /**
   * The feature id for the '<em><b>Parameters</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EVENT__PARAMETERS = 3;

  /**
   * The feature id for the '<em><b>Event Extension</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EVENT__EVENT_EXTENSION = 4;

  /**
   * The number of structural features of the '<em>Event</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int EVENT_FEATURE_COUNT = 5;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.stateMachineActions.impl.ParametersImpl <em>Parameters</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.stateMachineActions.impl.ParametersImpl
   * @see org.correttouml.grammars.stateMachineActions.impl.StateMachineActionsPackageImpl#getParameters()
   * @generated
   */
  int PARAMETERS = 8;

  /**
   * The feature id for the '<em><b>Is Past</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETERS__IS_PAST = 0;

  /**
   * The feature id for the '<em><b>Is Future</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETERS__IS_FUTURE = 1;

  /**
   * The feature id for the '<em><b>Param</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETERS__PARAM = 2;

  /**
   * The feature id for the '<em><b>Parameters</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETERS__PARAMETERS = 3;

  /**
   * The number of structural features of the '<em>Parameters</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETERS_FEATURE_COUNT = 4;


  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.stateMachineActions.Model <em>Model</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Model</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Model
   * @generated
   */
  EClass getModel();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.stateMachineActions.Model#getAction <em>Action</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Action</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Model#getAction()
   * @see #getModel()
   * @generated
   */
  EReference getModel_Action();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.stateMachineActions.Model#getActions <em>Actions</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Actions</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Model#getActions()
   * @see #getModel()
   * @generated
   */
  EReference getModel_Actions();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.stateMachineActions.Action <em>Action</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Action</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Action
   * @generated
   */
  EClass getAction();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.stateMachineActions.Action#getAssignment <em>Assignment</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Assignment</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Action#getAssignment()
   * @see #getAction()
   * @generated
   */
  EReference getAction_Assignment();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.stateMachineActions.Action#getEventAction <em>Event Action</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Event Action</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Action#getEventAction()
   * @see #getAction()
   * @generated
   */
  EReference getAction_EventAction();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.stateMachineActions.Assignment <em>Assignment</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Assignment</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Assignment
   * @generated
   */
  EClass getAssignment();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineActions.Assignment#getLeftvar <em>Leftvar</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Leftvar</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Assignment#getLeftvar()
   * @see #getAssignment()
   * @generated
   */
  EAttribute getAssignment_Leftvar();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.stateMachineActions.Assignment#getExpression <em>Expression</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Expression</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Assignment#getExpression()
   * @see #getAssignment()
   * @generated
   */
  EReference getAssignment_Expression();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.stateMachineActions.EXPRESSION <em>EXPRESSION</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>EXPRESSION</em>'.
   * @see org.correttouml.grammars.stateMachineActions.EXPRESSION
   * @generated
   */
  EClass getEXPRESSION();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.stateMachineActions.EXPRESSION#getFirstTerm <em>First Term</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>First Term</em>'.
   * @see org.correttouml.grammars.stateMachineActions.EXPRESSION#getFirstTerm()
   * @see #getEXPRESSION()
   * @generated
   */
  EReference getEXPRESSION_FirstTerm();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineActions.EXPRESSION#getOperator <em>Operator</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Operator</em>'.
   * @see org.correttouml.grammars.stateMachineActions.EXPRESSION#getOperator()
   * @see #getEXPRESSION()
   * @generated
   */
  EAttribute getEXPRESSION_Operator();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.stateMachineActions.EXPRESSION#getSecondTerm <em>Second Term</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Second Term</em>'.
   * @see org.correttouml.grammars.stateMachineActions.EXPRESSION#getSecondTerm()
   * @see #getEXPRESSION()
   * @generated
   */
  EReference getEXPRESSION_SecondTerm();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.stateMachineActions.EXPRESSION#getAlone <em>Alone</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Alone</em>'.
   * @see org.correttouml.grammars.stateMachineActions.EXPRESSION#getAlone()
   * @see #getEXPRESSION()
   * @generated
   */
  EReference getEXPRESSION_Alone();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.stateMachineActions.TERM <em>TERM</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>TERM</em>'.
   * @see org.correttouml.grammars.stateMachineActions.TERM
   * @generated
   */
  EClass getTERM();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineActions.TERM#getIsPast <em>Is Past</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Is Past</em>'.
   * @see org.correttouml.grammars.stateMachineActions.TERM#getIsPast()
   * @see #getTERM()
   * @generated
   */
  EAttribute getTERM_IsPast();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineActions.TERM#getIsFuture <em>Is Future</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Is Future</em>'.
   * @see org.correttouml.grammars.stateMachineActions.TERM#getIsFuture()
   * @see #getTERM()
   * @generated
   */
  EAttribute getTERM_IsFuture();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineActions.TERM#getVariable <em>Variable</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Variable</em>'.
   * @see org.correttouml.grammars.stateMachineActions.TERM#getVariable()
   * @see #getTERM()
   * @generated
   */
  EAttribute getTERM_Variable();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineActions.TERM#getConstant <em>Constant</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Constant</em>'.
   * @see org.correttouml.grammars.stateMachineActions.TERM#getConstant()
   * @see #getTERM()
   * @generated
   */
  EAttribute getTERM_Constant();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.stateMachineActions.EventAction <em>Event Action</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Event Action</em>'.
   * @see org.correttouml.grammars.stateMachineActions.EventAction
   * @generated
   */
  EClass getEventAction();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.stateMachineActions.EventAction#getLink <em>Link</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Link</em>'.
   * @see org.correttouml.grammars.stateMachineActions.EventAction#getLink()
   * @see #getEventAction()
   * @generated
   */
  EReference getEventAction_Link();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.stateMachineActions.EventAction#getEvent <em>Event</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Event</em>'.
   * @see org.correttouml.grammars.stateMachineActions.EventAction#getEvent()
   * @see #getEventAction()
   * @generated
   */
  EReference getEventAction_Event();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.stateMachineActions.Link <em>Link</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Link</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Link
   * @generated
   */
  EClass getLink();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineActions.Link#getLinkName <em>Link Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Link Name</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Link#getLinkName()
   * @see #getLink()
   * @generated
   */
  EAttribute getLink_LinkName();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineActions.Link#getAssociationEnd <em>Association End</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Association End</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Link#getAssociationEnd()
   * @see #getLink()
   * @generated
   */
  EAttribute getLink_AssociationEnd();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineActions.Link#getSelf <em>Self</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Self</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Link#getSelf()
   * @see #getLink()
   * @generated
   */
  EAttribute getLink_Self();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.stateMachineActions.Event <em>Event</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Event</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Event
   * @generated
   */
  EClass getEvent();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineActions.Event#getEventName <em>Event Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Event Name</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Event#getEventName()
   * @see #getEvent()
   * @generated
   */
  EAttribute getEvent_EventName();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineActions.Event#getAssociationEnd <em>Association End</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Association End</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Event#getAssociationEnd()
   * @see #getEvent()
   * @generated
   */
  EAttribute getEvent_AssociationEnd();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineActions.Event#getOpName <em>Op Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Op Name</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Event#getOpName()
   * @see #getEvent()
   * @generated
   */
  EAttribute getEvent_OpName();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.stateMachineActions.Event#getParameters <em>Parameters</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Parameters</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Event#getParameters()
   * @see #getEvent()
   * @generated
   */
  EReference getEvent_Parameters();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineActions.Event#getEventExtension <em>Event Extension</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Event Extension</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Event#getEventExtension()
   * @see #getEvent()
   * @generated
   */
  EAttribute getEvent_EventExtension();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.stateMachineActions.Parameters <em>Parameters</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Parameters</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Parameters
   * @generated
   */
  EClass getParameters();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineActions.Parameters#getIsPast <em>Is Past</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Is Past</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Parameters#getIsPast()
   * @see #getParameters()
   * @generated
   */
  EAttribute getParameters_IsPast();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineActions.Parameters#getIsFuture <em>Is Future</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Is Future</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Parameters#getIsFuture()
   * @see #getParameters()
   * @generated
   */
  EAttribute getParameters_IsFuture();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineActions.Parameters#getParam <em>Param</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Param</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Parameters#getParam()
   * @see #getParameters()
   * @generated
   */
  EAttribute getParameters_Param();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.stateMachineActions.Parameters#getParameters <em>Parameters</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Parameters</em>'.
   * @see org.correttouml.grammars.stateMachineActions.Parameters#getParameters()
   * @see #getParameters()
   * @generated
   */
  EReference getParameters_Parameters();

  /**
   * Returns the factory that creates the instances of the model.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the factory that creates the instances of the model.
   * @generated
   */
  StateMachineActionsFactory getStateMachineActionsFactory();

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
     * The meta object literal for the '{@link org.correttouml.grammars.stateMachineActions.impl.ModelImpl <em>Model</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.stateMachineActions.impl.ModelImpl
     * @see org.correttouml.grammars.stateMachineActions.impl.StateMachineActionsPackageImpl#getModel()
     * @generated
     */
    EClass MODEL = eINSTANCE.getModel();

    /**
     * The meta object literal for the '<em><b>Action</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference MODEL__ACTION = eINSTANCE.getModel_Action();

    /**
     * The meta object literal for the '<em><b>Actions</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference MODEL__ACTIONS = eINSTANCE.getModel_Actions();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.stateMachineActions.impl.ActionImpl <em>Action</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.stateMachineActions.impl.ActionImpl
     * @see org.correttouml.grammars.stateMachineActions.impl.StateMachineActionsPackageImpl#getAction()
     * @generated
     */
    EClass ACTION = eINSTANCE.getAction();

    /**
     * The meta object literal for the '<em><b>Assignment</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ACTION__ASSIGNMENT = eINSTANCE.getAction_Assignment();

    /**
     * The meta object literal for the '<em><b>Event Action</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ACTION__EVENT_ACTION = eINSTANCE.getAction_EventAction();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.stateMachineActions.impl.AssignmentImpl <em>Assignment</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.stateMachineActions.impl.AssignmentImpl
     * @see org.correttouml.grammars.stateMachineActions.impl.StateMachineActionsPackageImpl#getAssignment()
     * @generated
     */
    EClass ASSIGNMENT = eINSTANCE.getAssignment();

    /**
     * The meta object literal for the '<em><b>Leftvar</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute ASSIGNMENT__LEFTVAR = eINSTANCE.getAssignment_Leftvar();

    /**
     * The meta object literal for the '<em><b>Expression</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ASSIGNMENT__EXPRESSION = eINSTANCE.getAssignment_Expression();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.stateMachineActions.impl.EXPRESSIONImpl <em>EXPRESSION</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.stateMachineActions.impl.EXPRESSIONImpl
     * @see org.correttouml.grammars.stateMachineActions.impl.StateMachineActionsPackageImpl#getEXPRESSION()
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
     * The meta object literal for the '{@link org.correttouml.grammars.stateMachineActions.impl.TERMImpl <em>TERM</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.stateMachineActions.impl.TERMImpl
     * @see org.correttouml.grammars.stateMachineActions.impl.StateMachineActionsPackageImpl#getTERM()
     * @generated
     */
    EClass TERM = eINSTANCE.getTERM();

    /**
     * The meta object literal for the '<em><b>Is Past</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute TERM__IS_PAST = eINSTANCE.getTERM_IsPast();

    /**
     * The meta object literal for the '<em><b>Is Future</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute TERM__IS_FUTURE = eINSTANCE.getTERM_IsFuture();

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
     * The meta object literal for the '{@link org.correttouml.grammars.stateMachineActions.impl.EventActionImpl <em>Event Action</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.stateMachineActions.impl.EventActionImpl
     * @see org.correttouml.grammars.stateMachineActions.impl.StateMachineActionsPackageImpl#getEventAction()
     * @generated
     */
    EClass EVENT_ACTION = eINSTANCE.getEventAction();

    /**
     * The meta object literal for the '<em><b>Link</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference EVENT_ACTION__LINK = eINSTANCE.getEventAction_Link();

    /**
     * The meta object literal for the '<em><b>Event</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference EVENT_ACTION__EVENT = eINSTANCE.getEventAction_Event();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.stateMachineActions.impl.LinkImpl <em>Link</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.stateMachineActions.impl.LinkImpl
     * @see org.correttouml.grammars.stateMachineActions.impl.StateMachineActionsPackageImpl#getLink()
     * @generated
     */
    EClass LINK = eINSTANCE.getLink();

    /**
     * The meta object literal for the '<em><b>Link Name</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute LINK__LINK_NAME = eINSTANCE.getLink_LinkName();

    /**
     * The meta object literal for the '<em><b>Association End</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute LINK__ASSOCIATION_END = eINSTANCE.getLink_AssociationEnd();

    /**
     * The meta object literal for the '<em><b>Self</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute LINK__SELF = eINSTANCE.getLink_Self();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.stateMachineActions.impl.EventImpl <em>Event</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.stateMachineActions.impl.EventImpl
     * @see org.correttouml.grammars.stateMachineActions.impl.StateMachineActionsPackageImpl#getEvent()
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
     * The meta object literal for the '<em><b>Association End</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute EVENT__ASSOCIATION_END = eINSTANCE.getEvent_AssociationEnd();

    /**
     * The meta object literal for the '<em><b>Op Name</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute EVENT__OP_NAME = eINSTANCE.getEvent_OpName();

    /**
     * The meta object literal for the '<em><b>Parameters</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference EVENT__PARAMETERS = eINSTANCE.getEvent_Parameters();

    /**
     * The meta object literal for the '<em><b>Event Extension</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute EVENT__EVENT_EXTENSION = eINSTANCE.getEvent_EventExtension();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.stateMachineActions.impl.ParametersImpl <em>Parameters</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.stateMachineActions.impl.ParametersImpl
     * @see org.correttouml.grammars.stateMachineActions.impl.StateMachineActionsPackageImpl#getParameters()
     * @generated
     */
    EClass PARAMETERS = eINSTANCE.getParameters();

    /**
     * The meta object literal for the '<em><b>Is Past</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute PARAMETERS__IS_PAST = eINSTANCE.getParameters_IsPast();

    /**
     * The meta object literal for the '<em><b>Is Future</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute PARAMETERS__IS_FUTURE = eINSTANCE.getParameters_IsFuture();

    /**
     * The meta object literal for the '<em><b>Param</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute PARAMETERS__PARAM = eINSTANCE.getParameters_Param();

    /**
     * The meta object literal for the '<em><b>Parameters</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference PARAMETERS__PARAMETERS = eINSTANCE.getParameters_Parameters();

  }

} //StateMachineActionsPackage
