using System;
using System.Interop;
namespace Qt;

public struct QAccessiblePlugin : QObject
{
	[LinkName("QAccessiblePlugin_new")]
	public static extern QAccessiblePlugin* QAccessiblePlugin_new();
	[LinkName("QAccessiblePlugin_new2")]
	public static extern QAccessiblePlugin* QAccessiblePlugin_new2(QObject* parent);
	[LinkName("QAccessiblePlugin_MetaObject")]
	public static extern QMetaObject* QAccessiblePlugin_MetaObject(Self* c_this);
	[LinkName("QAccessiblePlugin_Metacast")]
	public static extern void* QAccessiblePlugin_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAccessiblePlugin_Metacall")]
	public static extern int32 QAccessiblePlugin_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAccessiblePlugin_Tr")]
	public static extern libqt_string QAccessiblePlugin_Tr(char8[] s);
	[LinkName("QAccessiblePlugin_Create")]
	public static extern QAccessibleInterface* QAccessiblePlugin_Create(Self* c_this, libqt_string key, QObject* object);
	[LinkName("QAccessiblePlugin_Tr2")]
	public static extern libqt_string QAccessiblePlugin_Tr2(char8[] s, char8[] c);
	[LinkName("QAccessiblePlugin_Tr3")]
	public static extern libqt_string QAccessiblePlugin_Tr3(char8[] s, char8[] c, int32 n);
}