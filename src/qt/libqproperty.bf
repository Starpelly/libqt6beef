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
public class QPropertyBindingSourceLocation
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QPropertyBindingSourceLocation_new(other);
	}
	public ~this()
	{
		CQt.QPropertyBindingSourceLocation_Delete(this.nativePtr);
	}
}
extension CQt
{
	[LinkName("QPropertyBindingSourceLocation_new")]
	public static extern void* QPropertyBindingSourceLocation_new(void* other);
	[LinkName("QPropertyBindingSourceLocation_new2")]
	public static extern void* QPropertyBindingSourceLocation_new2(void* other);
	[LinkName("QPropertyBindingSourceLocation_new3")]
	public static extern void* QPropertyBindingSourceLocation_new3();
	[LinkName("QPropertyBindingSourceLocation_new4")]
	public static extern void* QPropertyBindingSourceLocation_new4(void* param1);
	/// Delete this object from C++ memory
	[LinkName("QPropertyBindingSourceLocation_Delete")]
	public static extern void QPropertyBindingSourceLocation_Delete(void* self);
}
public class QPropertyBindingError
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPropertyBindingError_new();
	}
	
	public ~this()
	{
		CQt.QPropertyBindingError_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QPropertyBindingError_OperatorAssign(this.nativePtr, other);
	}
	
	public bool HasError()
	{
		return CQt.QPropertyBindingError_HasError(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QPropertyBindingError_Type(this.nativePtr);
	}
	
	public libqt_string Description()
	{
		return CQt.QPropertyBindingError_Description(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QPropertyBindingError_new")]
	public static extern void* QPropertyBindingError_new();
	[LinkName("QPropertyBindingError_new2")]
	public static extern void* QPropertyBindingError_new2(int64 typeVal);
	[LinkName("QPropertyBindingError_new3")]
	public static extern void* QPropertyBindingError_new3(void* other);
	[LinkName("QPropertyBindingError_new4")]
	public static extern void* QPropertyBindingError_new4(int64 typeVal, libqt_string description);
	[LinkName("QPropertyBindingError_OperatorAssign")]
	public static extern void QPropertyBindingError_OperatorAssign(void* c_this, void* other);
	[LinkName("QPropertyBindingError_HasError")]
	public static extern bool QPropertyBindingError_HasError(void* c_this);
	[LinkName("QPropertyBindingError_Type")]
	public static extern int64 QPropertyBindingError_Type(void* c_this);
	[LinkName("QPropertyBindingError_Description")]
	public static extern libqt_string QPropertyBindingError_Description(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QPropertyBindingError_Delete")]
	public static extern void QPropertyBindingError_Delete(void* self);
}
public class QUntypedPropertyBinding
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QUntypedPropertyBinding_new();
	}
	
	public ~this()
	{
		CQt.QUntypedPropertyBinding_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QUntypedPropertyBinding_OperatorAssign(this.nativePtr, other);
	}
	
	public bool IsNull()
	{
		return CQt.QUntypedPropertyBinding_IsNull(this.nativePtr);
	}
	
	public void Error()
	{
		CQt.QUntypedPropertyBinding_Error(this.nativePtr);
	}
	
	public void ValueMetaType()
	{
		CQt.QUntypedPropertyBinding_ValueMetaType(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QUntypedPropertyBinding_new")]
	public static extern void* QUntypedPropertyBinding_new();
	[LinkName("QUntypedPropertyBinding_new2")]
	public static extern void* QUntypedPropertyBinding_new2(void* other);
	[LinkName("QUntypedPropertyBinding_OperatorAssign")]
	public static extern void QUntypedPropertyBinding_OperatorAssign(void* c_this, void* other);
	[LinkName("QUntypedPropertyBinding_IsNull")]
	public static extern bool QUntypedPropertyBinding_IsNull(void* c_this);
	[LinkName("QUntypedPropertyBinding_Error")]
	public static extern void QUntypedPropertyBinding_Error(void* c_this);
	[LinkName("QUntypedPropertyBinding_ValueMetaType")]
	public static extern void QUntypedPropertyBinding_ValueMetaType(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QUntypedPropertyBinding_Delete")]
	public static extern void QUntypedPropertyBinding_Delete(void* self);
}
public class QPropertyObserverBase
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPropertyObserverBase_new();
	}
	public ~this()
	{
		CQt.QPropertyObserverBase_Delete(this.nativePtr);
	}
}
extension CQt
{
	[LinkName("QPropertyObserverBase_new")]
	public static extern void* QPropertyObserverBase_new();
	[LinkName("QPropertyObserverBase_new2")]
	public static extern void* QPropertyObserverBase_new2(void* param1);
	/// Delete this object from C++ memory
	[LinkName("QPropertyObserverBase_Delete")]
	public static extern void QPropertyObserverBase_Delete(void* self);
}
public class QPropertyObserver
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPropertyObserver_new();
	}
	public ~this()
	{
		CQt.QPropertyObserver_Delete(this.nativePtr);
	}
}
extension CQt
{
	[LinkName("QPropertyObserver_new")]
	public static extern void* QPropertyObserver_new();
	/// Delete this object from C++ memory
	[LinkName("QPropertyObserver_Delete")]
	public static extern void QPropertyObserver_Delete(void* self);
}
public class QPropertyNotifier
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPropertyNotifier_new();
	}
	public ~this()
	{
		CQt.QPropertyNotifier_Delete(this.nativePtr);
	}
}
extension CQt
{
	[LinkName("QPropertyNotifier_new")]
	public static extern void* QPropertyNotifier_new();
	/// Delete this object from C++ memory
	[LinkName("QPropertyNotifier_Delete")]
	public static extern void QPropertyNotifier_Delete(void* self);
}
public class QUntypedBindable
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QUntypedBindable_new(other);
	}
	
	public ~this()
	{
		CQt.QUntypedBindable_Delete(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QUntypedBindable_IsValid(this.nativePtr);
	}
	
	public bool IsBindable()
	{
		return CQt.QUntypedBindable_IsBindable(this.nativePtr);
	}
	
	public bool IsReadOnly()
	{
		return CQt.QUntypedBindable_IsReadOnly(this.nativePtr);
	}
	
	public void MakeBinding()
	{
		CQt.QUntypedBindable_MakeBinding(this.nativePtr);
	}
	
	public void TakeBinding()
	{
		CQt.QUntypedBindable_TakeBinding(this.nativePtr);
	}
	
	public void Observe(void* observer)
	{
		CQt.QUntypedBindable_Observe(this.nativePtr, observer);
	}
	
	public void Binding()
	{
		CQt.QUntypedBindable_Binding(this.nativePtr);
	}
	
	public bool SetBinding(void* binding)
	{
		return CQt.QUntypedBindable_SetBinding(this.nativePtr, binding);
	}
	
	public bool HasBinding()
	{
		return CQt.QUntypedBindable_HasBinding(this.nativePtr);
	}
	
	public void MetaType()
	{
		CQt.QUntypedBindable_MetaType(this.nativePtr);
	}
	
	public void MakeBinding1(void* location)
	{
		CQt.QUntypedBindable_MakeBinding1(this.nativePtr, location);
	}
	
}
extension CQt
{
	[LinkName("QUntypedBindable_new")]
	public static extern void* QUntypedBindable_new(void* other);
	[LinkName("QUntypedBindable_new2")]
	public static extern void* QUntypedBindable_new2(void* other);
	[LinkName("QUntypedBindable_new3")]
	public static extern void* QUntypedBindable_new3();
	[LinkName("QUntypedBindable_new4")]
	public static extern void* QUntypedBindable_new4(void* param1);
	[LinkName("QUntypedBindable_IsValid")]
	public static extern bool QUntypedBindable_IsValid(void* c_this);
	[LinkName("QUntypedBindable_IsBindable")]
	public static extern bool QUntypedBindable_IsBindable(void* c_this);
	[LinkName("QUntypedBindable_IsReadOnly")]
	public static extern bool QUntypedBindable_IsReadOnly(void* c_this);
	[LinkName("QUntypedBindable_MakeBinding")]
	public static extern void QUntypedBindable_MakeBinding(void* c_this);
	[LinkName("QUntypedBindable_TakeBinding")]
	public static extern void QUntypedBindable_TakeBinding(void* c_this);
	[LinkName("QUntypedBindable_Observe")]
	public static extern void QUntypedBindable_Observe(void* c_this, void* observer);
	[LinkName("QUntypedBindable_Binding")]
	public static extern void QUntypedBindable_Binding(void* c_this);
	[LinkName("QUntypedBindable_SetBinding")]
	public static extern bool QUntypedBindable_SetBinding(void* c_this, void* binding);
	[LinkName("QUntypedBindable_HasBinding")]
	public static extern bool QUntypedBindable_HasBinding(void* c_this);
	[LinkName("QUntypedBindable_MetaType")]
	public static extern void QUntypedBindable_MetaType(void* c_this);
	[LinkName("QUntypedBindable_MakeBinding1")]
	public static extern void QUntypedBindable_MakeBinding1(void* c_this, void* location);
	/// Delete this object from C++ memory
	[LinkName("QUntypedBindable_Delete")]
	public static extern void QUntypedBindable_Delete(void* self);
}