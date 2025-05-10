using System;
using System.Interop;
namespace Qt;

public interface IQUntypedPropertyData
{
	void* NativePtr { get; }
}
public class QUntypedPropertyData : IQUntypedPropertyData
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQUntypedPropertyData other)
	{
		this.nativePtr = CQt.QUntypedPropertyData_new((other == default) ? default : (void*)other.NativePtr);
	}
	public ~this()
	{
		CQt.QUntypedPropertyData_Delete(this.nativePtr);
	}
}
extension CQt
{
	[LinkName("QUntypedPropertyData_new")]
	public static extern void* QUntypedPropertyData_new(void* other);
	[LinkName("QUntypedPropertyData_new2")]
	public static extern void* QUntypedPropertyData_new2(void* other);
	/// Delete this object from C++ memory
	[LinkName("QUntypedPropertyData_Delete")]
	public static extern void QUntypedPropertyData_Delete(void* self);
}
public interface IQPropertyProxyBindingData
{
	void* NativePtr { get; }
}
public class QPropertyProxyBindingData : IQPropertyProxyBindingData
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
}
extension CQt
{
}