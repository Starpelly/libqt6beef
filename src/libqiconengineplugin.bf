using System;
using System.Interop;
namespace Qt;

public struct QIconEnginePlugin
{
	[LinkName("QIconEnginePlugin_new")]
	public static extern void* QIconEnginePlugin_new();
	[LinkName("QIconEnginePlugin_new2")]
	public static extern void* QIconEnginePlugin_new2(QObject parent);
	[LinkName("QIconEnginePlugin_MetaObject")]
	public static extern QMetaObject QIconEnginePlugin_MetaObject(void* c_this);
	[LinkName("QIconEnginePlugin_Metacast")]
	public static extern void QIconEnginePlugin_Metacast(void* c_this, char8[] param1);
	[LinkName("QIconEnginePlugin_Metacall")]
	public static extern int32 QIconEnginePlugin_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QIconEnginePlugin_Tr")]
	public static extern char8[] QIconEnginePlugin_Tr(char8[] s);
	[LinkName("QIconEnginePlugin_Create")]
	public static extern QIconEngine QIconEnginePlugin_Create(void* c_this, char8[] filename);
	[LinkName("QIconEnginePlugin_Tr2")]
	public static extern char8[] QIconEnginePlugin_Tr2(char8[] s, char8[] c);
	[LinkName("QIconEnginePlugin_Tr3")]
	public static extern char8[] QIconEnginePlugin_Tr3(char8[] s, char8[] c, int32 n);
}