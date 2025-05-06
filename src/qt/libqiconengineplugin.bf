using System;
using System.Interop;
namespace Qt;

public struct QIconEnginePlugin : QObject
{
	[LinkName("QIconEnginePlugin_new")]
	public static extern QIconEnginePlugin* QIconEnginePlugin_new();
	[LinkName("QIconEnginePlugin_new2")]
	public static extern QIconEnginePlugin* QIconEnginePlugin_new2(QObject* parent);
	[LinkName("QIconEnginePlugin_MetaObject")]
	public static extern QMetaObject* QIconEnginePlugin_MetaObject(Self* c_this);
	[LinkName("QIconEnginePlugin_Metacast")]
	public static extern void* QIconEnginePlugin_Metacast(Self* c_this, char8[] param1);
	[LinkName("QIconEnginePlugin_Metacall")]
	public static extern int32 QIconEnginePlugin_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QIconEnginePlugin_Tr")]
	public static extern libqt_string QIconEnginePlugin_Tr(char8[] s);
	[LinkName("QIconEnginePlugin_Create")]
	public static extern QIconEngine* QIconEnginePlugin_Create(Self* c_this, libqt_string filename);
	[LinkName("QIconEnginePlugin_Tr2")]
	public static extern libqt_string QIconEnginePlugin_Tr2(char8[] s, char8[] c);
	[LinkName("QIconEnginePlugin_Tr3")]
	public static extern libqt_string QIconEnginePlugin_Tr3(char8[] s, char8[] c, int32 n);
}