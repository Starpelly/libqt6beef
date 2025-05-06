using System;
using System.Interop;
namespace Qt;

public struct QGenericPluginFactory
{
	[LinkName("QGenericPluginFactory_new")]
	public static extern QGenericPluginFactory* QGenericPluginFactory_new(QGenericPluginFactory* other);
	[LinkName("QGenericPluginFactory_new2")]
	public static extern QGenericPluginFactory* QGenericPluginFactory_new2(QGenericPluginFactory* other);
	[LinkName("QGenericPluginFactory_Keys")]
	public static extern libqt_string[] QGenericPluginFactory_Keys();
	[LinkName("QGenericPluginFactory_Create")]
	public static extern QObject* QGenericPluginFactory_Create(libqt_string param1, libqt_string param2);
}