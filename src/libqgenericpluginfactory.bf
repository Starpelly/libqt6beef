using System;
using System.Interop;
namespace Qt;

public struct QGenericPluginFactory
{
	[LinkName("QGenericPluginFactory_new")]
	public static extern void* QGenericPluginFactory_new(QGenericPluginFactory other);
	[LinkName("QGenericPluginFactory_new2")]
	public static extern void* QGenericPluginFactory_new2(QGenericPluginFactory other);
	[LinkName("QGenericPluginFactory_Keys")]
	public static extern char8[][] QGenericPluginFactory_Keys();
	[LinkName("QGenericPluginFactory_Create")]
	public static extern QObject QGenericPluginFactory_Create(char8[] param1, char8[] param2);
}