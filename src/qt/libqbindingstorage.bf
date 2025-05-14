using System;
using System.Interop;
namespace Qt;

public interface IQBindingStatus
{
	void* NativePtr { get; }
}
public struct QBindingStatusPtr : IQBindingStatus, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQBindingStatus other)
	{
		return .(CQt.QBindingStatus_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	public void Dispose()
	{
		CQt.QBindingStatus_Delete(this.nativePtr);
	}
}
public class QBindingStatus
{
	public QBindingStatusPtr handle;
	
	public static implicit operator QBindingStatusPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQBindingStatus other)
	{
		this.handle = QBindingStatusPtr.New(other);
	}
	public ~this()
	{
		this.handle.Dispose();
	}
}
extension CQt
{
	[LinkName("QBindingStatus_new")]
	public static extern void* QBindingStatus_new(void* other);
	[LinkName("QBindingStatus_new2")]
	public static extern void* QBindingStatus_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QBindingStatus_Delete")]
	public static extern void QBindingStatus_Delete(void* self);
}
public interface IQBindingStorage
{
	void* NativePtr { get; }
}
public struct QBindingStoragePtr : IQBindingStorage, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QBindingStorage_new());
	}
	
	public void Dispose()
	{
		CQt.QBindingStorage_Delete(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QBindingStorage_IsEmpty(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QBindingStorage_IsValid(this.nativePtr);
	}
	
	public void RegisterDependency(IQUntypedPropertyData data)
	{
		CQt.QBindingStorage_RegisterDependency(this.nativePtr, (data == default || data.NativePtr == default) ? default : data.NativePtr);
	}
	
}
public class QBindingStorage
{
	public QBindingStoragePtr handle;
	
	public static implicit operator QBindingStoragePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QBindingStoragePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public void RegisterDependency(IQUntypedPropertyData data)
	{
		this.handle.RegisterDependency(data);
	}
	
}
extension CQt
{
	[LinkName("QBindingStorage_new")]
	public static extern void* QBindingStorage_new();
	[LinkName("QBindingStorage_IsEmpty")]
	public static extern bool QBindingStorage_IsEmpty(void* c_this);
	[LinkName("QBindingStorage_IsValid")]
	public static extern bool QBindingStorage_IsValid(void* c_this);
	[LinkName("QBindingStorage_RegisterDependency")]
	public static extern void QBindingStorage_RegisterDependency(void* c_this, void* data);
	/// Delete this object from C++ memory
	[LinkName("QBindingStorage_Delete")]
	public static extern void QBindingStorage_Delete(void* self);
}