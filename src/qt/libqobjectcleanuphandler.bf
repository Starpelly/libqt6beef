using System;
using System.Interop;
namespace Qt;

public struct QObjectCleanupHandler : QObject
{
	[LinkName("QObjectCleanupHandler_new")]
	public static extern QObjectCleanupHandler* QObjectCleanupHandler_new();
	[LinkName("QObjectCleanupHandler_MetaObject")]
	public static extern QMetaObject* QObjectCleanupHandler_MetaObject(Self* c_this);
	[LinkName("QObjectCleanupHandler_Metacast")]
	public static extern void* QObjectCleanupHandler_Metacast(Self* c_this, char8[] param1);
	[LinkName("QObjectCleanupHandler_Metacall")]
	public static extern int32 QObjectCleanupHandler_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QObjectCleanupHandler_Tr")]
	public static extern libqt_string QObjectCleanupHandler_Tr(char8[] s);
	[LinkName("QObjectCleanupHandler_Add")]
	public static extern QObject* QObjectCleanupHandler_Add(Self* c_this, QObject* object);
	[LinkName("QObjectCleanupHandler_Remove")]
	public static extern void QObjectCleanupHandler_Remove(Self* c_this, QObject* object);
	[LinkName("QObjectCleanupHandler_IsEmpty")]
	public static extern bool QObjectCleanupHandler_IsEmpty(Self* c_this);
	[LinkName("QObjectCleanupHandler_Clear")]
	public static extern void QObjectCleanupHandler_Clear(Self* c_this);
	[LinkName("QObjectCleanupHandler_Tr2")]
	public static extern libqt_string QObjectCleanupHandler_Tr2(char8[] s, char8[] c);
	[LinkName("QObjectCleanupHandler_Tr3")]
	public static extern libqt_string QObjectCleanupHandler_Tr3(char8[] s, char8[] c, int32 n);
}