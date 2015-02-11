/**
 */
package org.correttouml.grammars.stateMachineTriggers;

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
 * @see org.correttouml.grammars.stateMachineTriggers.StateMachineTriggersFactory
 * @model kind="package"
 * @generated
 */
public interface StateMachineTriggersPackage extends EPackage
{
  /**
   * The package name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNAME = "stateMachineTriggers";

  /**
   * The package namespace URI.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_URI = "http://www.correttouml.org/grammars/StateMachineTriggers";

  /**
   * The package namespace name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_PREFIX = "stateMachineTriggers";

  /**
   * The singleton instance of the package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  StateMachineTriggersPackage eINSTANCE = org.correttouml.grammars.stateMachineTriggers.impl.StateMachineTriggersPackageImpl.init();

  /**
   * The meta object id for the '{@link org.correttouml.grammars.stateMachineTriggers.impl.ModelImpl <em>Model</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.stateMachineTriggers.impl.ModelImpl
   * @see org.correttouml.grammars.stateMachineTriggers.impl.StateMachineTriggersPackageImpl#getModel()
   * @generated
   */
  int MODEL = 0;

  /**
   * The feature id for the '<em><b>Trigger</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODEL__TRIGGER = 0;

  /**
   * The number of structural features of the '<em>Model</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODEL_FEATURE_COUNT = 1;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.stateMachineTriggers.impl.TriggerImpl <em>Trigger</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.stateMachineTriggers.impl.TriggerImpl
   * @see org.correttouml.grammars.stateMachineTriggers.impl.StateMachineTriggersPackageImpl#getTrigger()
   * @generated
   */
  int TRIGGER = 1;

  /**
   * The feature id for the '<em><b>Left</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIGGER__LEFT = 0;

  /**
   * The feature id for the '<em><b>Right</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIGGER__RIGHT = 1;

  /**
   * The number of structural features of the '<em>Trigger</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TRIGGER_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.stateMachineTriggers.impl.LeftImpl <em>Left</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.stateMachineTriggers.impl.LeftImpl
   * @see org.correttouml.grammars.stateMachineTriggers.impl.StateMachineTriggersPackageImpl#getLeft()
   * @generated
   */
  int LEFT = 2;

  /**
   * The feature id for the '<em><b>Event</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int LEFT__EVENT = 0;

  /**
   * The number of structural features of the '<em>Left</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int LEFT_FEATURE_COUNT = 1;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.stateMachineTriggers.impl.RightImpl <em>Right</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.stateMachineTriggers.impl.RightImpl
   * @see org.correttouml.grammars.stateMachineTriggers.impl.StateMachineTriggersPackageImpl#getRight()
   * @generated
   */
  int RIGHT = 3;

  /**
   * The feature id for the '<em><b>Event</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int RIGHT__EVENT = 0;

  /**
   * The feature id for the '<em><b>Op</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int RIGHT__OP = 1;

  /**
   * The feature id for the '<em><b>Value</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int RIGHT__VALUE = 2;

  /**
   * The number of structural features of the '<em>Right</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int RIGHT_FEATURE_COUNT = 3;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.stateMachineTriggers.impl.EventImpl <em>Event</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.stateMachineTriggers.impl.EventImpl
   * @see org.correttouml.grammars.stateMachineTriggers.impl.StateMachineTriggersPackageImpl#getEvent()
   * @generated
   */
  int EVENT = 4;

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
   * Returns the meta object for class '{@link org.correttouml.grammars.stateMachineTriggers.Model <em>Model</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Model</em>'.
   * @see org.correttouml.grammars.stateMachineTriggers.Model
   * @generated
   */
  EClass getModel();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.stateMachineTriggers.Model#getTrigger <em>Trigger</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Trigger</em>'.
   * @see org.correttouml.grammars.stateMachineTriggers.Model#getTrigger()
   * @see #getModel()
   * @generated
   */
  EReference getModel_Trigger();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.stateMachineTriggers.Trigger <em>Trigger</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Trigger</em>'.
   * @see org.correttouml.grammars.stateMachineTriggers.Trigger
   * @generated
   */
  EClass getTrigger();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.stateMachineTriggers.Trigger#getLeft <em>Left</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Left</em>'.
   * @see org.correttouml.grammars.stateMachineTriggers.Trigger#getLeft()
   * @see #getTrigger()
   * @generated
   */
  EReference getTrigger_Left();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.stateMachineTriggers.Trigger#getRight <em>Right</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Right</em>'.
   * @see org.correttouml.grammars.stateMachineTriggers.Trigger#getRight()
   * @see #getTrigger()
   * @generated
   */
  EReference getTrigger_Right();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.stateMachineTriggers.Left <em>Left</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Left</em>'.
   * @see org.correttouml.grammars.stateMachineTriggers.Left
   * @generated
   */
  EClass getLeft();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.stateMachineTriggers.Left#getEvent <em>Event</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Event</em>'.
   * @see org.correttouml.grammars.stateMachineTriggers.Left#getEvent()
   * @see #getLeft()
   * @generated
   */
  EReference getLeft_Event();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.stateMachineTriggers.Right <em>Right</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Right</em>'.
   * @see org.correttouml.grammars.stateMachineTriggers.Right
   * @generated
   */
  EClass getRight();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.stateMachineTriggers.Right#getEvent <em>Event</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Event</em>'.
   * @see org.correttouml.grammars.stateMachineTriggers.Right#getEvent()
   * @see #getRight()
   * @generated
   */
  EReference getRight_Event();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineTriggers.Right#getOp <em>Op</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Op</em>'.
   * @see org.correttouml.grammars.stateMachineTriggers.Right#getOp()
   * @see #getRight()
   * @generated
   */
  EAttribute getRight_Op();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineTriggers.Right#getValue <em>Value</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Value</em>'.
   * @see org.correttouml.grammars.stateMachineTriggers.Right#getValue()
   * @see #getRight()
   * @generated
   */
  EAttribute getRight_Value();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.stateMachineTriggers.Event <em>Event</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Event</em>'.
   * @see org.correttouml.grammars.stateMachineTriggers.Event
   * @generated
   */
  EClass getEvent();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineTriggers.Event#getEventName <em>Event Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Event Name</em>'.
   * @see org.correttouml.grammars.stateMachineTriggers.Event#getEventName()
   * @see #getEvent()
   * @generated
   */
  EAttribute getEvent_EventName();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineTriggers.Event#getEventExtension <em>Event Extension</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Event Extension</em>'.
   * @see org.correttouml.grammars.stateMachineTriggers.Event#getEventExtension()
   * @see #getEvent()
   * @generated
   */
  EAttribute getEvent_EventExtension();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.stateMachineTriggers.Event#isNowEvent <em>Now Event</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Now Event</em>'.
   * @see org.correttouml.grammars.stateMachineTriggers.Event#isNowEvent()
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
  StateMachineTriggersFactory getStateMachineTriggersFactory();

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
     * The meta object literal for the '{@link org.correttouml.grammars.stateMachineTriggers.impl.ModelImpl <em>Model</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.stateMachineTriggers.impl.ModelImpl
     * @see org.correttouml.grammars.stateMachineTriggers.impl.StateMachineTriggersPackageImpl#getModel()
     * @generated
     */
    EClass MODEL = eINSTANCE.getModel();

    /**
     * The meta object literal for the '<em><b>Trigger</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference MODEL__TRIGGER = eINSTANCE.getModel_Trigger();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.stateMachineTriggers.impl.TriggerImpl <em>Trigger</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.stateMachineTriggers.impl.TriggerImpl
     * @see org.correttouml.grammars.stateMachineTriggers.impl.StateMachineTriggersPackageImpl#getTrigger()
     * @generated
     */
    EClass TRIGGER = eINSTANCE.getTrigger();

    /**
     * The meta object literal for the '<em><b>Left</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference TRIGGER__LEFT = eINSTANCE.getTrigger_Left();

    /**
     * The meta object literal for the '<em><b>Right</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference TRIGGER__RIGHT = eINSTANCE.getTrigger_Right();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.stateMachineTriggers.impl.LeftImpl <em>Left</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.stateMachineTriggers.impl.LeftImpl
     * @see org.correttouml.grammars.stateMachineTriggers.impl.StateMachineTriggersPackageImpl#getLeft()
     * @generated
     */
    EClass LEFT = eINSTANCE.getLeft();

    /**
     * The meta object literal for the '<em><b>Event</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference LEFT__EVENT = eINSTANCE.getLeft_Event();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.stateMachineTriggers.impl.RightImpl <em>Right</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.stateMachineTriggers.impl.RightImpl
     * @see org.correttouml.grammars.stateMachineTriggers.impl.StateMachineTriggersPackageImpl#getRight()
     * @generated
     */
    EClass RIGHT = eINSTANCE.getRight();

    /**
     * The meta object literal for the '<em><b>Event</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference RIGHT__EVENT = eINSTANCE.getRight_Event();

    /**
     * The meta object literal for the '<em><b>Op</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute RIGHT__OP = eINSTANCE.getRight_Op();

    /**
     * The meta object literal for the '<em><b>Value</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute RIGHT__VALUE = eINSTANCE.getRight_Value();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.stateMachineTriggers.impl.EventImpl <em>Event</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.stateMachineTriggers.impl.EventImpl
     * @see org.correttouml.grammars.stateMachineTriggers.impl.StateMachineTriggersPackageImpl#getEvent()
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

} //StateMachineTriggersPackage
