/**
 */
package org.correttouml.grammars.assignments;

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
 * @see org.correttouml.grammars.assignments.AssignmentsFactory
 * @model kind="package"
 * @generated
 */
public interface AssignmentsPackage extends EPackage
{
  /**
   * The package name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNAME = "assignments";

  /**
   * The package namespace URI.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_URI = "http://www.correttouml.org/grammars/Assignments";

  /**
   * The package namespace name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_PREFIX = "assignments";

  /**
   * The singleton instance of the package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  AssignmentsPackage eINSTANCE = org.correttouml.grammars.assignments.impl.AssignmentsPackageImpl.init();

  /**
   * The meta object id for the '{@link org.correttouml.grammars.assignments.impl.ModelImpl <em>Model</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.assignments.impl.ModelImpl
   * @see org.correttouml.grammars.assignments.impl.AssignmentsPackageImpl#getModel()
   * @generated
   */
  int MODEL = 0;

  /**
   * The feature id for the '<em><b>Assignment</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODEL__ASSIGNMENT = 0;

  /**
   * The number of structural features of the '<em>Model</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODEL_FEATURE_COUNT = 1;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.assignments.impl.ASSIGNMENTImpl <em>ASSIGNMENT</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.assignments.impl.ASSIGNMENTImpl
   * @see org.correttouml.grammars.assignments.impl.AssignmentsPackageImpl#getASSIGNMENT()
   * @generated
   */
  int ASSIGNMENT = 1;

  /**
   * The feature id for the '<em><b>Variable</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ASSIGNMENT__VARIABLE = 0;

  /**
   * The feature id for the '<em><b>Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ASSIGNMENT__EXPRESSION = 1;

  /**
   * The number of structural features of the '<em>ASSIGNMENT</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ASSIGNMENT_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link org.correttouml.grammars.assignments.impl.EXPRESSIONImpl <em>EXPRESSION</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.assignments.impl.EXPRESSIONImpl
   * @see org.correttouml.grammars.assignments.impl.AssignmentsPackageImpl#getEXPRESSION()
   * @generated
   */
  int EXPRESSION = 2;

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
   * The meta object id for the '{@link org.correttouml.grammars.assignments.impl.TERMImpl <em>TERM</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.correttouml.grammars.assignments.impl.TERMImpl
   * @see org.correttouml.grammars.assignments.impl.AssignmentsPackageImpl#getTERM()
   * @generated
   */
  int TERM = 3;

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
   * Returns the meta object for class '{@link org.correttouml.grammars.assignments.Model <em>Model</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Model</em>'.
   * @see org.correttouml.grammars.assignments.Model
   * @generated
   */
  EClass getModel();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.assignments.Model#getAssignment <em>Assignment</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Assignment</em>'.
   * @see org.correttouml.grammars.assignments.Model#getAssignment()
   * @see #getModel()
   * @generated
   */
  EReference getModel_Assignment();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.assignments.ASSIGNMENT <em>ASSIGNMENT</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>ASSIGNMENT</em>'.
   * @see org.correttouml.grammars.assignments.ASSIGNMENT
   * @generated
   */
  EClass getASSIGNMENT();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.assignments.ASSIGNMENT#getVariable <em>Variable</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Variable</em>'.
   * @see org.correttouml.grammars.assignments.ASSIGNMENT#getVariable()
   * @see #getASSIGNMENT()
   * @generated
   */
  EAttribute getASSIGNMENT_Variable();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.assignments.ASSIGNMENT#getExpression <em>Expression</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Expression</em>'.
   * @see org.correttouml.grammars.assignments.ASSIGNMENT#getExpression()
   * @see #getASSIGNMENT()
   * @generated
   */
  EReference getASSIGNMENT_Expression();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.assignments.EXPRESSION <em>EXPRESSION</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>EXPRESSION</em>'.
   * @see org.correttouml.grammars.assignments.EXPRESSION
   * @generated
   */
  EClass getEXPRESSION();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.assignments.EXPRESSION#getFirstTerm <em>First Term</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>First Term</em>'.
   * @see org.correttouml.grammars.assignments.EXPRESSION#getFirstTerm()
   * @see #getEXPRESSION()
   * @generated
   */
  EReference getEXPRESSION_FirstTerm();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.assignments.EXPRESSION#getOperator <em>Operator</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Operator</em>'.
   * @see org.correttouml.grammars.assignments.EXPRESSION#getOperator()
   * @see #getEXPRESSION()
   * @generated
   */
  EAttribute getEXPRESSION_Operator();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.assignments.EXPRESSION#getSecondTerm <em>Second Term</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Second Term</em>'.
   * @see org.correttouml.grammars.assignments.EXPRESSION#getSecondTerm()
   * @see #getEXPRESSION()
   * @generated
   */
  EReference getEXPRESSION_SecondTerm();

  /**
   * Returns the meta object for the containment reference '{@link org.correttouml.grammars.assignments.EXPRESSION#getAlone <em>Alone</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Alone</em>'.
   * @see org.correttouml.grammars.assignments.EXPRESSION#getAlone()
   * @see #getEXPRESSION()
   * @generated
   */
  EReference getEXPRESSION_Alone();

  /**
   * Returns the meta object for class '{@link org.correttouml.grammars.assignments.TERM <em>TERM</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>TERM</em>'.
   * @see org.correttouml.grammars.assignments.TERM
   * @generated
   */
  EClass getTERM();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.assignments.TERM#getVariable <em>Variable</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Variable</em>'.
   * @see org.correttouml.grammars.assignments.TERM#getVariable()
   * @see #getTERM()
   * @generated
   */
  EAttribute getTERM_Variable();

  /**
   * Returns the meta object for the attribute '{@link org.correttouml.grammars.assignments.TERM#getConstant <em>Constant</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Constant</em>'.
   * @see org.correttouml.grammars.assignments.TERM#getConstant()
   * @see #getTERM()
   * @generated
   */
  EAttribute getTERM_Constant();

  /**
   * Returns the factory that creates the instances of the model.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the factory that creates the instances of the model.
   * @generated
   */
  AssignmentsFactory getAssignmentsFactory();

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
     * The meta object literal for the '{@link org.correttouml.grammars.assignments.impl.ModelImpl <em>Model</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.assignments.impl.ModelImpl
     * @see org.correttouml.grammars.assignments.impl.AssignmentsPackageImpl#getModel()
     * @generated
     */
    EClass MODEL = eINSTANCE.getModel();

    /**
     * The meta object literal for the '<em><b>Assignment</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference MODEL__ASSIGNMENT = eINSTANCE.getModel_Assignment();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.assignments.impl.ASSIGNMENTImpl <em>ASSIGNMENT</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.assignments.impl.ASSIGNMENTImpl
     * @see org.correttouml.grammars.assignments.impl.AssignmentsPackageImpl#getASSIGNMENT()
     * @generated
     */
    EClass ASSIGNMENT = eINSTANCE.getASSIGNMENT();

    /**
     * The meta object literal for the '<em><b>Variable</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute ASSIGNMENT__VARIABLE = eINSTANCE.getASSIGNMENT_Variable();

    /**
     * The meta object literal for the '<em><b>Expression</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ASSIGNMENT__EXPRESSION = eINSTANCE.getASSIGNMENT_Expression();

    /**
     * The meta object literal for the '{@link org.correttouml.grammars.assignments.impl.EXPRESSIONImpl <em>EXPRESSION</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.assignments.impl.EXPRESSIONImpl
     * @see org.correttouml.grammars.assignments.impl.AssignmentsPackageImpl#getEXPRESSION()
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
     * The meta object literal for the '{@link org.correttouml.grammars.assignments.impl.TERMImpl <em>TERM</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.correttouml.grammars.assignments.impl.TERMImpl
     * @see org.correttouml.grammars.assignments.impl.AssignmentsPackageImpl#getTERM()
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

  }

} //AssignmentsPackage
