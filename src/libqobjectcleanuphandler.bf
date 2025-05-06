using System;
using System.Interop;
namespace Qt;

public struct QObjectCleanupHandler
{
	[LinkName("QObjectCleanupHandler_new")]
	public static extern void* QObjectCleanupHandler_new();
	[LinkName("QObjectCleanupHandler_MetaObject")]
	public static extern QMetaObject QObjectCleanupHandler_MetaObject(void* c_this);
	[LinkName("QObjectCleanupHandler_Metacast")]
	public static extern void QObjectCleanupHandler_Metacast(void* c_this, char8[] param1);
	[LinkName("QObjectCleanupHandler_Metacall")]
	public static extern int32 QObjectCleanupHandler_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QObjectCleanupHandler_Tr")]
	public static extern char8[] QObjectCleanupHandler_Tr(char8[] s);
	[LinkName("QObjectCleanupHandler_Add")]
	public static extern QObject QObjectCleanupHandler_Add(void* c_this, QObject object);
	[LinkName("QObjectCleanupHandler_Remove")]
	public static extern void QObjectCleanupHandler_Remove(void* c_this, QObject object);
	[LinkName("QObjectCleanupHandler_IsEmpty")]
	public static extern bool QObjectCleanupHandler_IsEmpty(void* c_this);
	[LinkName("QObjectCleanupHandler_Clear")]
	public static extern void QObjectCleanupHandler_Clear(void* c_this);
	[LinkName("QObjectCleanupHandler_Tr2")]
	public static extern char8[] QObjectCleanupHandler_Tr2(char8[] s, char8[] c);
	[LinkName("QObjectCleanupHandler_Tr3")]
	public static extern char8[] QObjectCleanupHandler_Tr3(char8[] s, char8[] c, int32 n);
}