using System;
using System.Interop;
namespace Qt;

public struct QStylePlugin : QObject
{
	[LinkName("QStylePlugin_new")]
	public static extern QStylePlugin* QStylePlugin_new();
	[LinkName("QStylePlugin_new2")]
	public static extern QStylePlugin* QStylePlugin_new2(QObject* parent);
	[LinkName("QStylePlugin_MetaObject")]
	public static extern QMetaObject* QStylePlugin_MetaObject(Self* c_this);
	[LinkName("QStylePlugin_Metacast")]
	public static extern void* QStylePlugin_Metacast(Self* c_this, char8[] param1);
	[LinkName("QStylePlugin_Metacall")]
	public static extern int32 QStylePlugin_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QStylePlugin_Tr")]
	public static extern libqt_string QStylePlugin_Tr(char8[] s);
	[LinkName("QStylePlugin_Create")]
	public static extern QStyle* QStylePlugin_Create(Self* c_this, libqt_string key);
	[LinkName("QStylePlugin_Tr2")]
	public static extern libqt_string QStylePlugin_Tr2(char8[] s, char8[] c);
	[LinkName("QStylePlugin_Tr3")]
	public static extern libqt_string QStylePlugin_Tr3(char8[] s, char8[] c, int32 n);
}