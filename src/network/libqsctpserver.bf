using System;
using System.Interop;
namespace Qt;

public struct QSctpServer
{
	[LinkName("QSctpServer_new")]
	public static extern void* QSctpServer_new();
	[LinkName("QSctpServer_new2")]
	public static extern void* QSctpServer_new2(QObject parent);
	[LinkName("QSctpServer_MetaObject")]
	public static extern QMetaObject QSctpServer_MetaObject(void* c_this);
	[LinkName("QSctpServer_Metacast")]
	public static extern void QSctpServer_Metacast(void* c_this, char8[] param1);
	[LinkName("QSctpServer_Metacall")]
	public static extern int32 QSctpServer_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSctpServer_Tr")]
	public static extern char8[] QSctpServer_Tr(char8[] s);
	[LinkName("QSctpServer_SetMaximumChannelCount")]
	public static extern void QSctpServer_SetMaximumChannelCount(void* c_this, int32 count);
	[LinkName("QSctpServer_MaximumChannelCount")]
	public static extern int32 QSctpServer_MaximumChannelCount(void* c_this);
	[LinkName("QSctpServer_NextPendingDatagramConnection")]
	public static extern QSctpSocket QSctpServer_NextPendingDatagramConnection(void* c_this);
	[LinkName("QSctpServer_IncomingConnection")]
	public static extern void QSctpServer_IncomingConnection(void* c_this, c_uintptr handle);
	[LinkName("QSctpServer_Tr2")]
	public static extern char8[] QSctpServer_Tr2(char8[] s, char8[] c);
	[LinkName("QSctpServer_Tr3")]
	public static extern char8[] QSctpServer_Tr3(char8[] s, char8[] c, int32 n);
}