/**
 */
package org.correttouml.grammars.assignments.impl;

import org.correttouml.grammars.assignments.*;

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
public class AssignmentsFactoryImpl extends EFactoryImpl implements AssignmentsFactory
{
  /**
   * Creates the default factory implementation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static AssignmentsFactory init()
  {
    try
    {
      AssignmentsFactory theAssignmentsFactory = (AssignmentsFactory)EPackage.Registry.INSTANCE.getEFactory(AssignmentsPackage.eNS_URI);
      if (theAssignmentsFactory != null)
      {
        return theAssignmentsFactory;
      }
    }
    catch (Exception exception)
    {
      EcorePlugin.INSTANCE.log(exception);
    }
    return new AssignmentsFactoryImpl();
  }

  /**
   * Creates an instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public AssignmentsFactoryImpl()
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
      case AssignmentsPackage.MODEL: return createModel();
      case AssignmentsPackage.ASSIGNMENT: return createASSIGNMENT();
      case AssignmentsPackage.EXPRESSION: return createEXPRESSION();
      case AssignmentsPackage.TERM: return createTERM();
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
  public ASSIGNMENT createASSIGNMENT()
  {
    ASSIGNMENTImpl assignment = new ASSIGNMENTImpl();
    return assignment;
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
  public AssignmentsPackage getAssignmentsPackage()
  {
    return (AssignmentsPackage)getEPackage();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @deprecated
   * @generated
   */
  @Deprecated
  public static AssignmentsPackage getPackage()
  {
    return AssignmentsPackage.eINSTANCE;
  }

} //AssignmentsFactoryImpl
