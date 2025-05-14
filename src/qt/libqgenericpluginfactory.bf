using System;
using System.Interop;
namespace Qt;

public interface IQGenericPluginFactory
{
	void* NativePtr { get; }
}
public struct QGenericPluginFactoryPtr : IQGenericPluginFactory, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQGenericPluginFactory other)
	{
		return .(CQt.QGenericPluginFactory_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
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
public class QGenericPluginFactory
{
	public QGenericPluginFactoryPtr handle;
	
	public static implicit operator QGenericPluginFactoryPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQGenericPluginFactory other)
	{
		this.handle = QGenericPluginFactoryPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public static libqt_string[] Keys()
	{
		return QGenericPluginFactoryPtr.Keys();
	}
	
	public static void* Create(String param1, String param2)
	{
		return QGenericPluginFactoryPtr.Create(param1, param2);
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