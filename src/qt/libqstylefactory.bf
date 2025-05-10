using System;
using System.Interop;
namespace Qt;

public class QStyleFactory
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QStyleFactory_new(other);
	}
	
	public ~this()
	{
		CQt.QStyleFactory_Delete(this.nativePtr);
	}
	
	public static libqt_string[] Keys()
	{
		return CQt.QStyleFactory_Keys();
	}
	
	public static void* Create(libqt_string param1)
	{
		return CQt.QStyleFactory_Create(param1);
	}
	
}
extension CQt
{
	[LinkName("QStyleFactory_new")]
	public static extern void* QStyleFactory_new(void* other);
	[LinkName("QStyleFactory_new2")]
	public static extern void* QStyleFactory_new2(void* other);
	[LinkName("QStyleFactory_Keys")]
	public static extern libqt_string[] QStyleFactory_Keys();
	[LinkName("QStyleFactory_Create")]
	public static extern void* QStyleFactory_Create(libqt_string param1);
	/// Delete this object from C++ memory
	[LinkName("QStyleFactory_Delete")]
	public static extern void QStyleFactory_Delete(void* self);
}