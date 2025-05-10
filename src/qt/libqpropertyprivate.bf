using System;
using System.Interop;
namespace Qt;

public class QUntypedPropertyData
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QUntypedPropertyData_new(other);
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
public class QPropertyProxyBindingData
{
	protected void* nativePtr;
}
extension CQt
{
}