using System;
using System.Interop;
namespace Qt;

public struct QGenericPlugin : QObject
{
	[LinkName("QGenericPlugin_new")]
	public static extern QGenericPlugin* QGenericPlugin_new();
	[LinkName("QGenericPlugin_new2")]
	public static extern QGenericPlugin* QGenericPlugin_new2(QObject* parent);
	[LinkName("QGenericPlugin_MetaObject")]
	public static extern QMetaObject* QGenericPlugin_MetaObject(Self* c_this);
	[LinkName("QGenericPlugin_Metacast")]
	public static extern void* QGenericPlugin_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGenericPlugin_Metacall")]
	public static extern int32 QGenericPlugin_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGenericPlugin_Tr")]
	public static extern libqt_string QGenericPlugin_Tr(char8[] s);
	[LinkName("QGenericPlugin_Create")]
	public static extern QObject* QGenericPlugin_Create(Self* c_this, libqt_string name, libqt_string spec);
	[LinkName("QGenericPlugin_Tr2")]
	public static extern libqt_string QGenericPlugin_Tr2(char8[] s, char8[] c);
	[LinkName("QGenericPlugin_Tr3")]
	public static extern libqt_string QGenericPlugin_Tr3(char8[] s, char8[] c, int32 n);
}