using System;
using System.Interop;
namespace Qt;

public interface IQSharedData
{
	void* NativePtr { get; }
}
public class QSharedData : IQSharedData
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QSharedData_new();
	}
	public ~this()
	{
		CQt.QSharedData_Delete(this.nativePtr);
	}
}
extension CQt
{
	[LinkName("QSharedData_new")]
	public static extern void* QSharedData_new();
	[LinkName("QSharedData_new2")]
	public static extern void* QSharedData_new2(void* param1);
	/// Delete this object from C++ memory
	[LinkName("QSharedData_Delete")]
	public static extern void QSharedData_Delete(void* self);
}
public interface IQAdoptSharedDataTag
{
	void* NativePtr { get; }
}
public class QAdoptSharedDataTag : IQAdoptSharedDataTag
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQAdoptSharedDataTag other)
	{
		this.nativePtr = CQt.QAdoptSharedDataTag_new((other == default) ? default : (void*)other.NativePtr);
	}
	public ~this()
	{
		CQt.QAdoptSharedDataTag_Delete(this.nativePtr);
	}
}
extension CQt
{
	[LinkName("QAdoptSharedDataTag_new")]
	public static extern void* QAdoptSharedDataTag_new(void* other);
	[LinkName("QAdoptSharedDataTag_new2")]
	public static extern void* QAdoptSharedDataTag_new2(void* other);
	[LinkName("QAdoptSharedDataTag_new3")]
	public static extern void* QAdoptSharedDataTag_new3();
	/// Delete this object from C++ memory
	[LinkName("QAdoptSharedDataTag_Delete")]
	public static extern void QAdoptSharedDataTag_Delete(void* self);
}