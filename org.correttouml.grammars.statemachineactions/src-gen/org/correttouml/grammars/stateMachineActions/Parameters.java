/**
 */
package org.correttouml.grammars.stateMachineActions;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Parameters</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.Parameters#getIsPast <em>Is Past</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.Parameters#getIsFuture <em>Is Future</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.Parameters#getParam <em>Param</em>}</li>
 *   <li>{@link org.correttouml.grammars.stateMachineActions.Parameters#getParameters <em>Parameters</em>}</li>
 * </ul>
 *
 * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getParameters()
 * @model
 * @generated
 */
public interface Parameters extends EObject
{
  /**
   * Returns the value of the '<em><b>Is Past</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Is Past</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Is Past</em>' attribute.
   * @see #setIsPast(String)
   * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getParameters_IsPast()
   * @model
   * @generated
   */
  String getIsPast();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineActions.Parameters#getIsPast <em>Is Past</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Is Past</em>' attribute.
   * @see #getIsPast()
   * @generated
   */
  void setIsPast(String value);

  /**
   * Returns the value of the '<em><b>Is Future</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Is Future</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Is Future</em>' attribute.
   * @see #setIsFuture(String)
   * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getParameters_IsFuture()
   * @model
   * @generated
   */
  String getIsFuture();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineActions.Parameters#getIsFuture <em>Is Future</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Is Future</em>' attribute.
   * @see #getIsFuture()
   * @generated
   */
  void setIsFuture(String value);

  /**
   * Returns the value of the '<em><b>Param</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Param</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Param</em>' attribute.
   * @see #setParam(String)
   * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getParameters_Param()
   * @model
   * @generated
   */
  String getParam();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineActions.Parameters#getParam <em>Param</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Param</em>' attribute.
   * @see #getParam()
   * @generated
   */
  void setParam(String value);

  /**
   * Returns the value of the '<em><b>Parameters</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Parameters</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Parameters</em>' containment reference.
   * @see #setParameters(Parameters)
   * @see org.correttouml.grammars.stateMachineActions.StateMachineActionsPackage#getParameters_Parameters()
   * @model containment="true"
   * @generated
   */
  Parameters getParameters();

  /**
   * Sets the value of the '{@link org.correttouml.grammars.stateMachineActions.Parameters#getParameters <em>Parameters</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Parameters</em>' containment reference.
   * @see #getParameters()
   * @generated
   */
  void setParameters(Parameters value);

} // Parameters
