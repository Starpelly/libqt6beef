using System;
using System.Interop;
namespace Qt;

public struct QPluginLoader : QObject
{
	[LinkName("QPluginLoader_new")]
	public static extern QPluginLoader* QPluginLoader_new();
	[LinkName("QPluginLoader_new2")]
	public static extern QPluginLoader* QPluginLoader_new2(libqt_string fileName);
	[LinkName("QPluginLoader_new3")]
	public static extern QPluginLoader* QPluginLoader_new3(QObject* parent);
	[LinkName("QPluginLoader_new4")]
	public static extern QPluginLoader* QPluginLoader_new4(libqt_string fileName, QObject* parent);
	[LinkName("QPluginLoader_MetaObject")]
	public static extern QMetaObject* QPluginLoader_MetaObject(Self* c_this);
	[LinkName("QPluginLoader_Metacast")]
	public static extern void* QPluginLoader_Metacast(Self* c_this, char8[] param1);
	[LinkName("QPluginLoader_Metacall")]
	public static extern int32 QPluginLoader_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QPluginLoader_Tr")]
	public static extern libqt_string QPluginLoader_Tr(char8[] s);
	[LinkName("QPluginLoader_Instance")]
	public static extern QObject* QPluginLoader_Instance(Self* c_this);
	[LinkName("QPluginLoader_MetaData")]
	public static extern QJsonObject QPluginLoader_MetaData(Self* c_this);
	[LinkName("QPluginLoader_StaticInstances")]
	public static extern QObject*[] QPluginLoader_StaticInstances();
	[LinkName("QPluginLoader_StaticPlugins")]
	public static extern QStaticPlugin[] QPluginLoader_StaticPlugins();
	[LinkName("QPluginLoader_Load")]
	public static extern bool QPluginLoader_Load(Self* c_this);
	[LinkName("QPluginLoader_Unload")]
	public static extern bool QPluginLoader_Unload(Self* c_this);
	[LinkName("QPluginLoader_IsLoaded")]
	public static extern bool QPluginLoader_IsLoaded(Self* c_this);
	[LinkName("QPluginLoader_SetFileName")]
	public static extern void QPluginLoader_SetFileName(Self* c_this, libqt_string fileName);
	[LinkName("QPluginLoader_FileName")]
	public static extern libqt_string QPluginLoader_FileName(Self* c_this);
	[LinkName("QPluginLoader_ErrorString")]
	public static extern libqt_string QPluginLoader_ErrorString(Self* c_this);
	[LinkName("QPluginLoader_SetLoadHints")]
	public static extern void QPluginLoader_SetLoadHints(Self* c_this, int64 loadHints);
	[LinkName("QPluginLoader_LoadHints")]
	public static extern int64 QPluginLoader_LoadHints(Self* c_this);
	[LinkName("QPluginLoader_Tr2")]
	public static extern libqt_string QPluginLoader_Tr2(char8[] s, char8[] c);
	[LinkName("QPluginLoader_Tr3")]
	public static extern libqt_string QPluginLoader_Tr3(char8[] s, char8[] c, int32 n);
}