using System;
using System.Interop;
namespace Qt;

public class QGenericPluginFactory
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QGenericPluginFactory_new(other);
	}
	
	public ~this()
	{
		CQt.QGenericPluginFactory_Delete(this.nativePtr);
	}
	
	public static libqt_string[] Keys()
	{
		return CQt.QGenericPluginFactory_Keys();
	}
	
	public static void* Create(libqt_string param1, libqt_string param2)
	{
		return CQt.QGenericPluginFactory_Create(param1, param2);
	}
	
}
extension CQt
{
	[LinkName("QGenericPluginFactory_new")]
	public static extern void* QGenericPluginFactory_new(void* other);
	[LinkName("QGenericPluginFactory_new2")]
	public static extern void* QGenericPluginFactory_new2(void* other);
	[LinkName("QGenericPluginFactory_Keys")]
	public static extern libqt_string[] QGenericPluginFactory_Keys();
	[LinkName("QGenericPluginFactory_Create")]
	public static extern void* QGenericPluginFactory_Create(libqt_string param1, libqt_string param2);
	/// Delete this object from C++ memory
	[LinkName("QGenericPluginFactory_Delete")]
	public static extern void QGenericPluginFactory_Delete(void* self);
}