/**
 */
package org.correttouml.grammars.property.impl;

import java.util.Collection;

import org.correttouml.grammars.property.Corretto;
import org.correttouml.grammars.property.Declaration;
import org.correttouml.grammars.property.Model;
import org.correttouml.grammars.property.PropertyPackage;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Model</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.correttouml.grammars.property.impl.ModelImpl#getDeclarations <em>Declarations</em>}</li>
 *   <li>{@link org.correttouml.grammars.property.impl.ModelImpl#getCorrettoCommand <em>Corretto Command</em>}</li>
 * </ul>
 *
 * @generated
 */
public class ModelImpl extends MinimalEObjectImpl.Container implements Model
{
  /**
   * The cached value of the '{@link #getDeclarations() <em>Declarations</em>}' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getDeclarations()
   * @generated
   * @ordered
   */
  protected EList<Declaration> declarations;

  /**
   * The cached value of the '{@link #getCorrettoCommand() <em>Corretto Command</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getCorrettoCommand()
   * @generated
   * @ordered
   */
  protected Corretto correttoCommand;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ModelImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  protected EClass eStaticClass()
  {
    return PropertyPackage.Literals.MODEL;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EList<Declaration> getDeclarations()
  {
    if (declarations == null)
    {
      declarations = new EObjectContainmentEList<Declaration>(Declaration.class, this, PropertyPackage.MODEL__DECLARATIONS);
    }
    return declarations;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Corretto getCorrettoCommand()
  {
    return correttoCommand;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetCorrettoCommand(Corretto newCorrettoCommand, NotificationChain msgs)
  {
    Corretto oldCorrettoCommand = correttoCommand;
    correttoCommand = newCorrettoCommand;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, PropertyPackage.MODEL__CORRETTO_COMMAND, oldCorrettoCommand, newCorrettoCommand);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setCorrettoCommand(Corretto newCorrettoCommand)
  {
    if (newCorrettoCommand != correttoCommand)
    {
      NotificationChain msgs = null;
      if (correttoCommand != null)
        msgs = ((InternalEObject)correttoCommand).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.MODEL__CORRETTO_COMMAND, null, msgs);
      if (newCorrettoCommand != null)
        msgs = ((InternalEObject)newCorrettoCommand).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - PropertyPackage.MODEL__CORRETTO_COMMAND, null, msgs);
      msgs = basicSetCorrettoCommand(newCorrettoCommand, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, PropertyPackage.MODEL__CORRETTO_COMMAND, newCorrettoCommand, newCorrettoCommand));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs)
  {
    switch (featureID)
    {
      case PropertyPackage.MODEL__DECLARATIONS:
        return ((InternalEList<?>)getDeclarations()).basicRemove(otherEnd, msgs);
      case PropertyPackage.MODEL__CORRETTO_COMMAND:
        return basicSetCorrettoCommand(null, msgs);
    }
    return super.eInverseRemove(otherEnd, featureID, msgs);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Object eGet(int featureID, boolean resolve, boolean coreType)
  {
    switch (featureID)
    {
      case PropertyPackage.MODEL__DECLARATIONS:
        return getDeclarations();
      case PropertyPackage.MODEL__CORRETTO_COMMAND:
        return getCorrettoCommand();
    }
    return super.eGet(featureID, resolve, coreType);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @SuppressWarnings("unchecked")
  @Override
  public void eSet(int featureID, Object newValue)
  {
    switch (featureID)
    {
      case PropertyPackage.MODEL__DECLARATIONS:
        getDeclarations().clear();
        getDeclarations().addAll((Collection<? extends Declaration>)newValue);
        return;
      case PropertyPackage.MODEL__CORRETTO_COMMAND:
        setCorrettoCommand((Corretto)newValue);
        return;
    }
    super.eSet(featureID, newValue);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eUnset(int featureID)
  {
    switch (featureID)
    {
      case PropertyPackage.MODEL__DECLARATIONS:
        getDeclarations().clear();
        return;
      case PropertyPackage.MODEL__CORRETTO_COMMAND:
        setCorrettoCommand((Corretto)null);
        return;
    }
    super.eUnset(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public boolean eIsSet(int featureID)
  {
    switch (featureID)
    {
      case PropertyPackage.MODEL__DECLARATIONS:
        return declarations != null && !declarations.isEmpty();
      case PropertyPackage.MODEL__CORRETTO_COMMAND:
        return correttoCommand != null;
    }
    return super.eIsSet(featureID);
  }

} //ModelImpl
