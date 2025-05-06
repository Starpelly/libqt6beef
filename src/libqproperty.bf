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
	public static extern void* QPropertyBindingSourceLocation_new(QPropertyBindingSourceLocation other);
	[LinkName("QPropertyBindingSourceLocation_new2")]
	public static extern void* QPropertyBindingSourceLocation_new2(QPropertyBindingSourceLocation other);
	[LinkName("QPropertyBindingSourceLocation_new3")]
	public static extern void* QPropertyBindingSourceLocation_new3();
	[LinkName("QPropertyBindingSourceLocation_new4")]
	public static extern void* QPropertyBindingSourceLocation_new4(QPropertyBindingSourceLocation param1);
}
public struct QPropertyBindingError
{
	[LinkName("QPropertyBindingError_new")]
	public static extern void* QPropertyBindingError_new();
	[LinkName("QPropertyBindingError_new2")]
	public static extern void* QPropertyBindingError_new2(int64 typeVal);
	[LinkName("QPropertyBindingError_new3")]
	public static extern void* QPropertyBindingError_new3(QPropertyBindingError other);
	[LinkName("QPropertyBindingError_new4")]
	public static extern void* QPropertyBindingError_new4(int64 typeVal, char8[] description);
	[LinkName("QPropertyBindingError_OperatorAssign")]
	public static extern void QPropertyBindingError_OperatorAssign(void* c_this, QPropertyBindingError other);
	[LinkName("QPropertyBindingError_HasError")]
	public static extern bool QPropertyBindingError_HasError(void* c_this);
	[LinkName("QPropertyBindingError_Type")]
	public static extern int64 QPropertyBindingError_Type(void* c_this);
	[LinkName("QPropertyBindingError_Description")]
	public static extern char8[] QPropertyBindingError_Description(void* c_this);
}
public struct QUntypedPropertyBinding
{
	[LinkName("QUntypedPropertyBinding_new")]
	public static extern void* QUntypedPropertyBinding_new();
	[LinkName("QUntypedPropertyBinding_new2")]
	public static extern void* QUntypedPropertyBinding_new2(QUntypedPropertyBinding other);
	[LinkName("QUntypedPropertyBinding_OperatorAssign")]
	public static extern void QUntypedPropertyBinding_OperatorAssign(void* c_this, QUntypedPropertyBinding other);
	[LinkName("QUntypedPropertyBinding_IsNull")]
	public static extern bool QUntypedPropertyBinding_IsNull(void* c_this);
	[LinkName("QUntypedPropertyBinding_Error")]
	public static extern QPropertyBindingError QUntypedPropertyBinding_Error(void* c_this);
	[LinkName("QUntypedPropertyBinding_ValueMetaType")]
	public static extern QMetaType QUntypedPropertyBinding_ValueMetaType(void* c_this);
}
public struct QPropertyObserverBase
{
	[LinkName("QPropertyObserverBase_new")]
	public static extern void* QPropertyObserverBase_new();
	[LinkName("QPropertyObserverBase_new2")]
	public static extern void* QPropertyObserverBase_new2(QPropertyObserverBase param1);
}
public struct QPropertyObserver
{
	[LinkName("QPropertyObserver_new")]
	public static extern void* QPropertyObserver_new();
}
public struct QPropertyNotifier
{
	[LinkName("QPropertyNotifier_new")]
	public static extern void* QPropertyNotifier_new();
}
public struct QUntypedBindable
{
	[LinkName("QUntypedBindable_new")]
	public static extern void* QUntypedBindable_new(QUntypedBindable other);
	[LinkName("QUntypedBindable_new2")]
	public static extern void* QUntypedBindable_new2(QUntypedBindable other);
	[LinkName("QUntypedBindable_new3")]
	public static extern void* QUntypedBindable_new3();
	[LinkName("QUntypedBindable_new4")]
	public static extern void* QUntypedBindable_new4(QUntypedBindable param1);
	[LinkName("QUntypedBindable_IsValid")]
	public static extern bool QUntypedBindable_IsValid(void* c_this);
	[LinkName("QUntypedBindable_IsBindable")]
	public static extern bool QUntypedBindable_IsBindable(void* c_this);
	[LinkName("QUntypedBindable_IsReadOnly")]
	public static extern bool QUntypedBindable_IsReadOnly(void* c_this);
	[LinkName("QUntypedBindable_MakeBinding")]
	public static extern QUntypedPropertyBinding QUntypedBindable_MakeBinding(void* c_this);
	[LinkName("QUntypedBindable_TakeBinding")]
	public static extern QUntypedPropertyBinding QUntypedBindable_TakeBinding(void* c_this);
	[LinkName("QUntypedBindable_Observe")]
	public static extern void QUntypedBindable_Observe(void* c_this, QPropertyObserver observer);
	[LinkName("QUntypedBindable_Binding")]
	public static extern QUntypedPropertyBinding QUntypedBindable_Binding(void* c_this);
	[LinkName("QUntypedBindable_SetBinding")]
	public static extern bool QUntypedBindable_SetBinding(void* c_this, QUntypedPropertyBinding binding);
	[LinkName("QUntypedBindable_HasBinding")]
	public static extern bool QUntypedBindable_HasBinding(void* c_this);
	[LinkName("QUntypedBindable_MetaType")]
	public static extern QMetaType QUntypedBindable_MetaType(void* c_this);
	[LinkName("QUntypedBindable_MakeBinding1")]
	public static extern QUntypedPropertyBinding QUntypedBindable_MakeBinding1(void* c_this, QPropertyBindingSourceLocation location);
}