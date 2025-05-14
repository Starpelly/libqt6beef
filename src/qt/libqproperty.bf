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
public interface IQPropertyBindingSourceLocation
{
	void* NativePtr { get; }
}
public struct QPropertyBindingSourceLocationPtr : IQPropertyBindingSourceLocation, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQPropertyBindingSourceLocation other)
	{
		return .(CQt.QPropertyBindingSourceLocation_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	public void Dispose()
	{
		CQt.QPropertyBindingSourceLocation_Delete(this.nativePtr);
	}
}
public class QPropertyBindingSourceLocation
{
	public QPropertyBindingSourceLocationPtr handle;
	
	public static implicit operator QPropertyBindingSourceLocationPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQPropertyBindingSourceLocation other)
	{
		this.handle = QPropertyBindingSourceLocationPtr.New(other);
	}
	public ~this()
	{
		this.handle.Dispose();
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
public interface IQPropertyBindingError
{
	void* NativePtr { get; }
}
public struct QPropertyBindingErrorPtr : IQPropertyBindingError, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QPropertyBindingError_new());
	}
	
	public void Dispose()
	{
		CQt.QPropertyBindingError_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQPropertyBindingError other)
	{
		CQt.QPropertyBindingError_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
public class QPropertyBindingError
{
	public QPropertyBindingErrorPtr handle;
	
	public static implicit operator QPropertyBindingErrorPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QPropertyBindingErrorPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQPropertyBindingError other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public bool HasError()
	{
		return this.handle.HasError();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public libqt_string Description()
	{
		return this.handle.Description();
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
public interface IQUntypedPropertyBinding
{
	void* NativePtr { get; }
}
public struct QUntypedPropertyBindingPtr : IQUntypedPropertyBinding, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QUntypedPropertyBinding_new());
	}
	
	public void Dispose()
	{
		CQt.QUntypedPropertyBinding_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQUntypedPropertyBinding other)
	{
		CQt.QUntypedPropertyBinding_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
public class QUntypedPropertyBinding
{
	public QUntypedPropertyBindingPtr handle;
	
	public static implicit operator QUntypedPropertyBindingPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QUntypedPropertyBindingPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQUntypedPropertyBinding other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public void Error()
	{
		this.handle.Error();
	}
	
	public void ValueMetaType()
	{
		this.handle.ValueMetaType();
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
public interface IQPropertyObserverBase
{
	void* NativePtr { get; }
}
public struct QPropertyObserverBasePtr : IQPropertyObserverBase, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QPropertyObserverBase_new());
	}
	public void Dispose()
	{
		CQt.QPropertyObserverBase_Delete(this.nativePtr);
	}
}
public class QPropertyObserverBase
{
	public QPropertyObserverBasePtr handle;
	
	public static implicit operator QPropertyObserverBasePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QPropertyObserverBasePtr.New();
	}
	public ~this()
	{
		this.handle.Dispose();
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
public interface IQPropertyObserver
{
	void* NativePtr { get; }
}
public struct QPropertyObserverPtr : IQPropertyObserver, IDisposable, IQPropertyObserverBase
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QPropertyObserver_new());
	}
	public void Dispose()
	{
		CQt.QPropertyObserver_Delete(this.nativePtr);
	}
}
public class QPropertyObserver
{
	public QPropertyObserverPtr handle;
	
	public static implicit operator QPropertyObserverPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QPropertyObserverPtr.New();
	}
	public ~this()
	{
		this.handle.Dispose();
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
public interface IQPropertyNotifier
{
	void* NativePtr { get; }
}
public struct QPropertyNotifierPtr : IQPropertyNotifier, IDisposable, IQPropertyObserver
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QPropertyNotifier_new());
	}
	public void Dispose()
	{
		CQt.QPropertyNotifier_Delete(this.nativePtr);
	}
}
public class QPropertyNotifier
{
	public QPropertyNotifierPtr handle;
	
	public static implicit operator QPropertyNotifierPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QPropertyNotifierPtr.New();
	}
	public ~this()
	{
		this.handle.Dispose();
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
public interface IQUntypedBindable
{
	void* NativePtr { get; }
}
public struct QUntypedBindablePtr : IQUntypedBindable, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQUntypedBindable other)
	{
		return .(CQt.QUntypedBindable_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
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
	
	public void Observe(IQPropertyObserver observer)
	{
		CQt.QUntypedBindable_Observe(this.nativePtr, (observer == default || observer.NativePtr == default) ? default : observer.NativePtr);
	}
	
	public void Binding()
	{
		CQt.QUntypedBindable_Binding(this.nativePtr);
	}
	
	public bool SetBinding(IQUntypedPropertyBinding binding)
	{
		return CQt.QUntypedBindable_SetBinding(this.nativePtr, (binding == default || binding.NativePtr == default) ? default : binding.NativePtr);
	}
	
	public bool HasBinding()
	{
		return CQt.QUntypedBindable_HasBinding(this.nativePtr);
	}
	
	public void MetaType()
	{
		CQt.QUntypedBindable_MetaType(this.nativePtr);
	}
	
	public void MakeBinding1(IQPropertyBindingSourceLocation location)
	{
		CQt.QUntypedBindable_MakeBinding1(this.nativePtr, (location == default || location.NativePtr == default) ? default : location.NativePtr);
	}
	
}
public class QUntypedBindable
{
	public QUntypedBindablePtr handle;
	
	public static implicit operator QUntypedBindablePtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQUntypedBindable other)
	{
		this.handle = QUntypedBindablePtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public bool IsBindable()
	{
		return this.handle.IsBindable();
	}
	
	public bool IsReadOnly()
	{
		return this.handle.IsReadOnly();
	}
	
	public void MakeBinding()
	{
		this.handle.MakeBinding();
	}
	
	public void TakeBinding()
	{
		this.handle.TakeBinding();
	}
	
	public void Observe(IQPropertyObserver observer)
	{
		this.handle.Observe(observer);
	}
	
	public void Binding()
	{
		this.handle.Binding();
	}
	
	public bool SetBinding(IQUntypedPropertyBinding binding)
	{
		return this.handle.SetBinding(binding);
	}
	
	public bool HasBinding()
	{
		return this.handle.HasBinding();
	}
	
	public void MetaType()
	{
		this.handle.MetaType();
	}
	
	public void MakeBinding1(IQPropertyBindingSourceLocation location)
	{
		this.handle.MakeBinding1(location);
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