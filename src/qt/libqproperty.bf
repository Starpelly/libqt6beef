using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QtPrivate__BindableWarnings__Reason
{
	InvalidInterface = 0,
	NonBindableInterface = 1,
	ReadOnlyInterface = 2,
}
[AllowDuplicates]
public enum QPropertyBindingError__Type
{
	NoError = 0,
	BindingLoop = 1,
	EvaluationError = 2,
	UnknownError = 3,
}
[AllowDuplicates]
public enum QPropertyObserverBase__ObserverTag
{
	ObserverNotifiesBinding = 0,
	ObserverNotifiesChangeHandler = 1,
	ObserverIsPlaceholder = 2,
	ObserverIsAlias = 3,
}
public struct QPropertyBindingSourceLocation
{
	[LinkName("QPropertyBindingSourceLocation_new")]
	public static extern QPropertyBindingSourceLocation* QPropertyBindingSourceLocation_new(QPropertyBindingSourceLocation* other);
	[LinkName("QPropertyBindingSourceLocation_new2")]
	public static extern QPropertyBindingSourceLocation* QPropertyBindingSourceLocation_new2(QPropertyBindingSourceLocation* other);
	[LinkName("QPropertyBindingSourceLocation_new3")]
	public static extern QPropertyBindingSourceLocation* QPropertyBindingSourceLocation_new3();
	[LinkName("QPropertyBindingSourceLocation_new4")]
	public static extern QPropertyBindingSourceLocation* QPropertyBindingSourceLocation_new4(QPropertyBindingSourceLocation* param1);
}
public struct QPropertyBindingError
{
	[LinkName("QPropertyBindingError_new")]
	public static extern QPropertyBindingError* QPropertyBindingError_new();
	[LinkName("QPropertyBindingError_new2")]
	public static extern QPropertyBindingError* QPropertyBindingError_new2(int64 typeVal);
	[LinkName("QPropertyBindingError_new3")]
	public static extern QPropertyBindingError* QPropertyBindingError_new3(QPropertyBindingError* other);
	[LinkName("QPropertyBindingError_new4")]
	public static extern QPropertyBindingError* QPropertyBindingError_new4(int64 typeVal, libqt_string description);
	[LinkName("QPropertyBindingError_OperatorAssign")]
	public static extern void QPropertyBindingError_OperatorAssign(Self* c_this, QPropertyBindingError* other);
	[LinkName("QPropertyBindingError_HasError")]
	public static extern bool QPropertyBindingError_HasError(Self* c_this);
	[LinkName("QPropertyBindingError_Type")]
	public static extern int64 QPropertyBindingError_Type(Self* c_this);
	[LinkName("QPropertyBindingError_Description")]
	public static extern libqt_string QPropertyBindingError_Description(Self* c_this);
}
public struct QUntypedPropertyBinding
{
	[LinkName("QUntypedPropertyBinding_new")]
	public static extern QUntypedPropertyBinding* QUntypedPropertyBinding_new();
	[LinkName("QUntypedPropertyBinding_new2")]
	public static extern QUntypedPropertyBinding* QUntypedPropertyBinding_new2(QUntypedPropertyBinding* other);
	[LinkName("QUntypedPropertyBinding_OperatorAssign")]
	public static extern void QUntypedPropertyBinding_OperatorAssign(Self* c_this, QUntypedPropertyBinding* other);
	[LinkName("QUntypedPropertyBinding_IsNull")]
	public static extern bool QUntypedPropertyBinding_IsNull(Self* c_this);
	[LinkName("QUntypedPropertyBinding_Error")]
	public static extern QPropertyBindingError QUntypedPropertyBinding_Error(Self* c_this);
	[LinkName("QUntypedPropertyBinding_ValueMetaType")]
	public static extern QMetaType QUntypedPropertyBinding_ValueMetaType(Self* c_this);
}
public struct QPropertyObserverBase
{
	[LinkName("QPropertyObserverBase_new")]
	public static extern QPropertyObserverBase* QPropertyObserverBase_new();
	[LinkName("QPropertyObserverBase_new2")]
	public static extern QPropertyObserverBase* QPropertyObserverBase_new2(QPropertyObserverBase* param1);
}
public struct QPropertyObserver : QPropertyObserverBase
{
	[LinkName("QPropertyObserver_new")]
	public static extern QPropertyObserver* QPropertyObserver_new();
}
public struct QPropertyNotifier : QPropertyObserver
{
	[LinkName("QPropertyNotifier_new")]
	public static extern QPropertyNotifier* QPropertyNotifier_new();
}
public struct QUntypedBindable
{
	[LinkName("QUntypedBindable_new")]
	public static extern QUntypedBindable* QUntypedBindable_new(QUntypedBindable* other);
	[LinkName("QUntypedBindable_new2")]
	public static extern QUntypedBindable* QUntypedBindable_new2(QUntypedBindable* other);
	[LinkName("QUntypedBindable_new3")]
	public static extern QUntypedBindable* QUntypedBindable_new3();
	[LinkName("QUntypedBindable_new4")]
	public static extern QUntypedBindable* QUntypedBindable_new4(QUntypedBindable* param1);
	[LinkName("QUntypedBindable_IsValid")]
	public static extern bool QUntypedBindable_IsValid(Self* c_this);
	[LinkName("QUntypedBindable_IsBindable")]
	public static extern bool QUntypedBindable_IsBindable(Self* c_this);
	[LinkName("QUntypedBindable_IsReadOnly")]
	public static extern bool QUntypedBindable_IsReadOnly(Self* c_this);
	[LinkName("QUntypedBindable_MakeBinding")]
	public static extern QUntypedPropertyBinding QUntypedBindable_MakeBinding(Self* c_this);
	[LinkName("QUntypedBindable_TakeBinding")]
	public static extern QUntypedPropertyBinding QUntypedBindable_TakeBinding(Self* c_this);
	[LinkName("QUntypedBindable_Observe")]
	public static extern void QUntypedBindable_Observe(Self* c_this, QPropertyObserver* observer);
	[LinkName("QUntypedBindable_Binding")]
	public static extern QUntypedPropertyBinding QUntypedBindable_Binding(Self* c_this);
	[LinkName("QUntypedBindable_SetBinding")]
	public static extern bool QUntypedBindable_SetBinding(Self* c_this, QUntypedPropertyBinding* binding);
	[LinkName("QUntypedBindable_HasBinding")]
	public static extern bool QUntypedBindable_HasBinding(Self* c_this);
	[LinkName("QUntypedBindable_MetaType")]
	public static extern QMetaType QUntypedBindable_MetaType(Self* c_this);
	[LinkName("QUntypedBindable_MakeBinding1")]
	public static extern QUntypedPropertyBinding QUntypedBindable_MakeBinding1(Self* c_this, QPropertyBindingSourceLocation* location);
}