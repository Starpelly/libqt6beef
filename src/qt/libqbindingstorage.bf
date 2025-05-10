using System;
using System.Interop;
namespace Qt;

public interface IQBindingStatus
{
	void* NativePtr { get; }
}
public class QBindingStatus : IQBindingStatus
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQBindingStatus other)
	{
		this.nativePtr = CQt.QBindingStatus_new((other == default) ? default : (void*)other.NativePtr);
	}
	public ~this()
	{
		CQt.QBindingStatus_Delete(this.nativePtr);
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
public class QBindingStorage : IQBindingStorage
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QBindingStorage_new();
	}
	
	public ~this()
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
		CQt.QBindingStorage_RegisterDependency(this.nativePtr, (data == null) ? null : (void*)data.NativePtr);
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