using System;
using System.Interop;
namespace Qt;

public interface IQGenericPluginFactory
{
	void* NativePtr { get; }
}
public class QGenericPluginFactory : IQGenericPluginFactory
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQGenericPluginFactory other)
	{
		this.nativePtr = CQt.QGenericPluginFactory_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QGenericPluginFactory_Delete(this.nativePtr);
	}
	
	public static libqt_string[] Keys()
	{
		return CQt.QGenericPluginFactory_Keys();
	}
	
	public static void* Create(String param1, String param2)
	{
		return CQt.QGenericPluginFactory_Create(libqt_string(param1), libqt_string(param2));
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