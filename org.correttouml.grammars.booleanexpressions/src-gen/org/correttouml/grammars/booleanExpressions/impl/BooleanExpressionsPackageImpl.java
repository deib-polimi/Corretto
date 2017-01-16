/**
 */
package org.correttouml.grammars.booleanExpressions.impl;

import org.correttouml.grammars.booleanExpressions.AndExpression;
import org.correttouml.grammars.booleanExpressions.BaseExpression;
import org.correttouml.grammars.booleanExpressions.BooleanExpressionsFactory;
import org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage;
import org.correttouml.grammars.booleanExpressions.BooleanVariable;
import org.correttouml.grammars.booleanExpressions.Event;
import org.correttouml.grammars.booleanExpressions.Model;
import org.correttouml.grammars.booleanExpressions.OrExpression;
import org.correttouml.grammars.booleanExpressions.TimeConstraint;
import org.correttouml.grammars.booleanExpressions.VariableCondition;
import org.correttouml.grammars.booleanExpressions.booleanTerm;

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
public class BooleanExpressionsPackageImpl extends EPackageImpl implements BooleanExpressionsPackage
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
  private EClass orExpressionEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass andExpressionEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass baseExpressionEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass booleanTermEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass timeConstraintEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass booleanVariableEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass variableConditionEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass expressionEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass termEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass eventEClass = null;

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
   * @see org.correttouml.grammars.booleanExpressions.BooleanExpressionsPackage#eNS_URI
   * @see #init()
   * @generated
   */
  private BooleanExpressionsPackageImpl()
  {
    super(eNS_URI, BooleanExpressionsFactory.eINSTANCE);
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
   * <p>This method is used to initialize {@link BooleanExpressionsPackage#eINSTANCE} when that field is accessed.
   * Clients should not invoke it directly. Instead, they should simply access that field to obtain the package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #eNS_URI
   * @see #createPackageContents()
   * @see #initializePackageContents()
   * @generated
   */
  public static BooleanExpressionsPackage init()
  {
    if (isInited) return (BooleanExpressionsPackage)EPackage.Registry.INSTANCE.getEPackage(BooleanExpressionsPackage.eNS_URI);

    // Obtain or create and register package
    BooleanExpressionsPackageImpl theBooleanExpressionsPackage = (BooleanExpressionsPackageImpl)(EPackage.Registry.INSTANCE.get(eNS_URI) instanceof BooleanExpressionsPackageImpl ? EPackage.Registry.INSTANCE.get(eNS_URI) : new BooleanExpressionsPackageImpl());

    isInited = true;

    // Create package meta-data objects
    theBooleanExpressionsPackage.createPackageContents();

    // Initialize created meta-data
    theBooleanExpressionsPackage.initializePackageContents();

    // Mark meta-data to indicate it can't be changed
    theBooleanExpressionsPackage.freeze();

  
    // Update the registry and return the package
    EPackage.Registry.INSTANCE.put(BooleanExpressionsPackage.eNS_URI, theBooleanExpressionsPackage);
    return theBooleanExpressionsPackage;
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
  public EReference getModel_Expression()
  {
    return (EReference)modelEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getOrExpression()
  {
    return orExpressionEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getOrExpression_LeftExpression()
  {
    return (EReference)orExpressionEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getOrExpression_Or()
  {
    return (EAttribute)orExpressionEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getOrExpression_RightExpression()
  {
    return (EReference)orExpressionEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getAndExpression()
  {
    return andExpressionEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getAndExpression_LeftExpression()
  {
    return (EReference)andExpressionEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getAndExpression_And()
  {
    return (EAttribute)andExpressionEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getAndExpression_RightExpression()
  {
    return (EReference)andExpressionEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getBaseExpression()
  {
    return baseExpressionEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getBaseExpression_Not()
  {
    return (EAttribute)baseExpressionEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getBaseExpression_BooleanTerm()
  {
    return (EReference)baseExpressionEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getBaseExpression_RootExpression()
  {
    return (EReference)baseExpressionEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getbooleanTerm()
  {
    return booleanTermEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getbooleanTerm_TimeConstraint()
  {
    return (EReference)booleanTermEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getbooleanTerm_BooleanVariable()
  {
    return (EReference)booleanTermEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getbooleanTerm_VariableCondition()
  {
    return (EReference)booleanTermEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getTimeConstraint()
  {
    return timeConstraintEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getTimeConstraint_Event2()
  {
    return (EReference)timeConstraintEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getTimeConstraint_Event1()
  {
    return (EReference)timeConstraintEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getTimeConstraint_Op()
  {
    return (EAttribute)timeConstraintEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getTimeConstraint_Value()
  {
    return (EAttribute)timeConstraintEClass.getEStructuralFeatures().get(3);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getBooleanVariable()
  {
    return booleanVariableEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getBooleanVariable_Variable()
  {
    return (EAttribute)booleanVariableEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getVariableCondition()
  {
    return variableConditionEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getVariableCondition_Expression_left()
  {
    return (EReference)variableConditionEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getVariableCondition_Relation()
  {
    return (EAttribute)variableConditionEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getVariableCondition_Expression_right()
  {
    return (EReference)variableConditionEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getEXPRESSION()
  {
    return expressionEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getEXPRESSION_FirstTerm()
  {
    return (EReference)expressionEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getEXPRESSION_Operator()
  {
    return (EAttribute)expressionEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getEXPRESSION_SecondTerm()
  {
    return (EReference)expressionEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getEXPRESSION_Alone()
  {
    return (EReference)expressionEClass.getEStructuralFeatures().get(3);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getTERM()
  {
    return termEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getTERM_Variable()
  {
    return (EAttribute)termEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getTERM_Constant()
  {
    return (EAttribute)termEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getEvent()
  {
    return eventEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getEvent_ObjName()
  {
    return (EAttribute)eventEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getEvent_EventName()
  {
    return (EAttribute)eventEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getEvent_EventExtension()
  {
    return (EAttribute)eventEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getEvent_NowEvent()
  {
    return (EAttribute)eventEClass.getEStructuralFeatures().get(3);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public BooleanExpressionsFactory getBooleanExpressionsFactory()
  {
    return (BooleanExpressionsFactory)getEFactoryInstance();
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
    createEReference(modelEClass, MODEL__EXPRESSION);

    orExpressionEClass = createEClass(OR_EXPRESSION);
    createEReference(orExpressionEClass, OR_EXPRESSION__LEFT_EXPRESSION);
    createEAttribute(orExpressionEClass, OR_EXPRESSION__OR);
    createEReference(orExpressionEClass, OR_EXPRESSION__RIGHT_EXPRESSION);

    andExpressionEClass = createEClass(AND_EXPRESSION);
    createEReference(andExpressionEClass, AND_EXPRESSION__LEFT_EXPRESSION);
    createEAttribute(andExpressionEClass, AND_EXPRESSION__AND);
    createEReference(andExpressionEClass, AND_EXPRESSION__RIGHT_EXPRESSION);

    baseExpressionEClass = createEClass(BASE_EXPRESSION);
    createEAttribute(baseExpressionEClass, BASE_EXPRESSION__NOT);
    createEReference(baseExpressionEClass, BASE_EXPRESSION__BOOLEAN_TERM);
    createEReference(baseExpressionEClass, BASE_EXPRESSION__ROOT_EXPRESSION);

    booleanTermEClass = createEClass(BOOLEAN_TERM);
    createEReference(booleanTermEClass, BOOLEAN_TERM__TIME_CONSTRAINT);
    createEReference(booleanTermEClass, BOOLEAN_TERM__BOOLEAN_VARIABLE);
    createEReference(booleanTermEClass, BOOLEAN_TERM__VARIABLE_CONDITION);

    timeConstraintEClass = createEClass(TIME_CONSTRAINT);
    createEReference(timeConstraintEClass, TIME_CONSTRAINT__EVENT2);
    createEReference(timeConstraintEClass, TIME_CONSTRAINT__EVENT1);
    createEAttribute(timeConstraintEClass, TIME_CONSTRAINT__OP);
    createEAttribute(timeConstraintEClass, TIME_CONSTRAINT__VALUE);

    booleanVariableEClass = createEClass(BOOLEAN_VARIABLE);
    createEAttribute(booleanVariableEClass, BOOLEAN_VARIABLE__VARIABLE);

    variableConditionEClass = createEClass(VARIABLE_CONDITION);
    createEReference(variableConditionEClass, VARIABLE_CONDITION__EXPRESSION_LEFT);
    createEAttribute(variableConditionEClass, VARIABLE_CONDITION__RELATION);
    createEReference(variableConditionEClass, VARIABLE_CONDITION__EXPRESSION_RIGHT);

    expressionEClass = createEClass(EXPRESSION);
    createEReference(expressionEClass, EXPRESSION__FIRST_TERM);
    createEAttribute(expressionEClass, EXPRESSION__OPERATOR);
    createEReference(expressionEClass, EXPRESSION__SECOND_TERM);
    createEReference(expressionEClass, EXPRESSION__ALONE);

    termEClass = createEClass(TERM);
    createEAttribute(termEClass, TERM__VARIABLE);
    createEAttribute(termEClass, TERM__CONSTANT);

    eventEClass = createEClass(EVENT);
    createEAttribute(eventEClass, EVENT__OBJ_NAME);
    createEAttribute(eventEClass, EVENT__EVENT_NAME);
    createEAttribute(eventEClass, EVENT__EVENT_EXTENSION);
    createEAttribute(eventEClass, EVENT__NOW_EVENT);
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
    initEReference(getModel_Expression(), this.getOrExpression(), null, "expression", null, 0, 1, Model.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(orExpressionEClass, OrExpression.class, "OrExpression", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getOrExpression_LeftExpression(), this.getAndExpression(), null, "leftExpression", null, 0, 1, OrExpression.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getOrExpression_Or(), ecorePackage.getEString(), "or", null, 0, 1, OrExpression.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getOrExpression_RightExpression(), this.getOrExpression(), null, "rightExpression", null, 0, 1, OrExpression.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(andExpressionEClass, AndExpression.class, "AndExpression", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getAndExpression_LeftExpression(), this.getBaseExpression(), null, "leftExpression", null, 0, 1, AndExpression.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getAndExpression_And(), ecorePackage.getEString(), "and", null, 0, 1, AndExpression.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getAndExpression_RightExpression(), this.getAndExpression(), null, "rightExpression", null, 0, 1, AndExpression.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(baseExpressionEClass, BaseExpression.class, "BaseExpression", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getBaseExpression_Not(), ecorePackage.getEString(), "not", null, 0, 1, BaseExpression.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getBaseExpression_BooleanTerm(), this.getbooleanTerm(), null, "booleanTerm", null, 0, 1, BaseExpression.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getBaseExpression_RootExpression(), this.getOrExpression(), null, "rootExpression", null, 0, 1, BaseExpression.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(booleanTermEClass, booleanTerm.class, "booleanTerm", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getbooleanTerm_TimeConstraint(), this.getTimeConstraint(), null, "timeConstraint", null, 0, 1, booleanTerm.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getbooleanTerm_BooleanVariable(), this.getBooleanVariable(), null, "booleanVariable", null, 0, 1, booleanTerm.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getbooleanTerm_VariableCondition(), this.getVariableCondition(), null, "variableCondition", null, 0, 1, booleanTerm.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(timeConstraintEClass, TimeConstraint.class, "TimeConstraint", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getTimeConstraint_Event2(), this.getEvent(), null, "event2", null, 0, 1, TimeConstraint.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getTimeConstraint_Event1(), this.getEvent(), null, "event1", null, 0, 1, TimeConstraint.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getTimeConstraint_Op(), ecorePackage.getEString(), "op", null, 0, 1, TimeConstraint.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getTimeConstraint_Value(), ecorePackage.getEInt(), "value", null, 0, 1, TimeConstraint.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(booleanVariableEClass, BooleanVariable.class, "BooleanVariable", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getBooleanVariable_Variable(), ecorePackage.getEString(), "variable", null, 0, 1, BooleanVariable.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(variableConditionEClass, VariableCondition.class, "VariableCondition", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getVariableCondition_Expression_left(), this.getEXPRESSION(), null, "expression_left", null, 0, 1, VariableCondition.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getVariableCondition_Relation(), ecorePackage.getEString(), "relation", null, 0, 1, VariableCondition.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getVariableCondition_Expression_right(), this.getEXPRESSION(), null, "expression_right", null, 0, 1, VariableCondition.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(expressionEClass, org.correttouml.grammars.booleanExpressions.EXPRESSION.class, "EXPRESSION", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getEXPRESSION_FirstTerm(), this.getTERM(), null, "firstTerm", null, 0, 1, org.correttouml.grammars.booleanExpressions.EXPRESSION.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getEXPRESSION_Operator(), ecorePackage.getEString(), "operator", null, 0, 1, org.correttouml.grammars.booleanExpressions.EXPRESSION.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getEXPRESSION_SecondTerm(), this.getTERM(), null, "secondTerm", null, 0, 1, org.correttouml.grammars.booleanExpressions.EXPRESSION.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getEXPRESSION_Alone(), this.getTERM(), null, "alone", null, 0, 1, org.correttouml.grammars.booleanExpressions.EXPRESSION.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(termEClass, org.correttouml.grammars.booleanExpressions.TERM.class, "TERM", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getTERM_Variable(), ecorePackage.getEString(), "variable", null, 0, 1, org.correttouml.grammars.booleanExpressions.TERM.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getTERM_Constant(), ecorePackage.getEInt(), "constant", null, 0, 1, org.correttouml.grammars.booleanExpressions.TERM.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(eventEClass, Event.class, "Event", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getEvent_ObjName(), ecorePackage.getEString(), "objName", null, 0, 1, Event.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getEvent_EventName(), ecorePackage.getEString(), "eventName", null, 0, 1, Event.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getEvent_EventExtension(), ecorePackage.getEString(), "eventExtension", null, 0, 1, Event.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getEvent_NowEvent(), ecorePackage.getEBoolean(), "nowEvent", null, 0, 1, Event.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    // Create resource
    createResource(eNS_URI);
  }

} //BooleanExpressionsPackageImpl
