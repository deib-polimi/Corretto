/**
 */
package org.correttouml.grammars.stateMachineTriggers.impl;

import org.correttouml.grammars.stateMachineTriggers.*;

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
public class StateMachineTriggersFactoryImpl extends EFactoryImpl implements StateMachineTriggersFactory
{
  /**
   * Creates the default factory implementation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static StateMachineTriggersFactory init()
  {
    try
    {
      StateMachineTriggersFactory theStateMachineTriggersFactory = (StateMachineTriggersFactory)EPackage.Registry.INSTANCE.getEFactory(StateMachineTriggersPackage.eNS_URI);
      if (theStateMachineTriggersFactory != null)
      {
        return theStateMachineTriggersFactory;
      }
    }
    catch (Exception exception)
    {
      EcorePlugin.INSTANCE.log(exception);
    }
    return new StateMachineTriggersFactoryImpl();
  }

  /**
   * Creates an instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public StateMachineTriggersFactoryImpl()
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
      case StateMachineTriggersPackage.MODEL: return createModel();
      case StateMachineTriggersPackage.TRIGGER: return createTrigger();
      case StateMachineTriggersPackage.LEFT: return createLeft();
      case StateMachineTriggersPackage.RIGHT: return createRight();
      case StateMachineTriggersPackage.EVENT: return createEvent();
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
  public Trigger createTrigger()
  {
    TriggerImpl trigger = new TriggerImpl();
    return trigger;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Left createLeft()
  {
    LeftImpl left = new LeftImpl();
    return left;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Right createRight()
  {
    RightImpl right = new RightImpl();
    return right;
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
  public StateMachineTriggersPackage getStateMachineTriggersPackage()
  {
    return (StateMachineTriggersPackage)getEPackage();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @deprecated
   * @generated
   */
  @Deprecated
  public static StateMachineTriggersPackage getPackage()
  {
    return StateMachineTriggersPackage.eINSTANCE;
  }

} //StateMachineTriggersFactoryImpl
