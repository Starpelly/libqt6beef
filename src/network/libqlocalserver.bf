using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QLocalServer__SocketOption
{
	NoOptions = 0,
	UserAccessOption = 1,
	GroupAccessOption = 2,
	OtherAccessOption = 4,
	WorldAccessOption = 7,
	AbstractNamespaceOption = 8,
}
public struct QLocalServer
{
	[LinkName("QLocalServer_new")]
	public static extern void* QLocalServer_new();
	[LinkName("QLocalServer_new2")]
	public static extern void* QLocalServer_new2(QObject parent);
	[LinkName("QLocalServer_MetaObject")]
	public static extern QMetaObject QLocalServer_MetaObject(void* c_this);
	[LinkName("QLocalServer_Metacast")]
	public static extern void QLocalServer_Metacast(void* c_this, char8[] param1);
	[LinkName("QLocalServer_Metacall")]
	public static extern int32 QLocalServer_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QLocalServer_Tr")]
	public static extern char8[] QLocalServer_Tr(char8[] s);
	[LinkName("QLocalServer_NewConnection")]
	public static extern void QLocalServer_NewConnection(void* c_this);
	[LinkName("QLocalServer_Close")]
	public static extern void QLocalServer_Close(void* c_this);
	[LinkName("QLocalServer_ErrorString")]
	public static extern char8[] QLocalServer_ErrorString(void* c_this);
	[LinkName("QLocalServer_HasPendingConnections")]
	public static extern bool QLocalServer_HasPendingConnections(void* c_this);
	[LinkName("QLocalServer_IsListening")]
	public static extern bool QLocalServer_IsListening(void* c_this);
	[LinkName("QLocalServer_Listen")]
	public static extern bool QLocalServer_Listen(void* c_this, char8[] name);
	[LinkName("QLocalServer_ListenWithSocketDescriptor")]
	public static extern bool QLocalServer_ListenWithSocketDescriptor(void* c_this, c_uintptr socketDescriptor);
	[LinkName("QLocalServer_MaxPendingConnections")]
	public static extern int32 QLocalServer_MaxPendingConnections(void* c_this);
	[LinkName("QLocalServer_NextPendingConnection")]
	public static extern QLocalSocket QLocalServer_NextPendingConnection(void* c_this);
	[LinkName("QLocalServer_ServerName")]
	public static extern char8[] QLocalServer_ServerName(void* c_this);
	[LinkName("QLocalServer_FullServerName")]
	public static extern char8[] QLocalServer_FullServerName(void* c_this);
	[LinkName("QLocalServer_RemoveServer")]
	public static extern bool QLocalServer_RemoveServer(char8[] name);
	[LinkName("QLocalServer_ServerError")]
	public static extern int64 QLocalServer_ServerError(void* c_this);
	[LinkName("QLocalServer_SetMaxPendingConnections")]
	public static extern void QLocalServer_SetMaxPendingConnections(void* c_this, int32 numConnections);
	[LinkName("QLocalServer_WaitForNewConnection")]
	public static extern bool QLocalServer_WaitForNewConnection(void* c_this);
	[LinkName("QLocalServer_SetListenBacklogSize")]
	public static extern void QLocalServer_SetListenBacklogSize(void* c_this, int32 size);
	[LinkName("QLocalServer_ListenBacklogSize")]
	public static extern int32 QLocalServer_ListenBacklogSize(void* c_this);
	[LinkName("QLocalServer_SetSocketOptions")]
	public static extern void QLocalServer_SetSocketOptions(void* c_this, int64 options);
	[LinkName("QLocalServer_SocketOptions")]
	public static extern int64 QLocalServer_SocketOptions(void* c_this);
	[LinkName("QLocalServer_SocketDescriptor")]
	public static extern c_uintptr QLocalServer_SocketDescriptor(void* c_this);
	[LinkName("QLocalServer_IncomingConnection")]
	public static extern void QLocalServer_IncomingConnection(void* c_this, c_uintptr socketDescriptor);
	[LinkName("QLocalServer_Tr2")]
	public static extern char8[] QLocalServer_Tr2(char8[] s, char8[] c);
	[LinkName("QLocalServer_Tr3")]
	public static extern char8[] QLocalServer_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QLocalServer_WaitForNewConnection1")]
	public static extern bool QLocalServer_WaitForNewConnection1(void* c_this, int32 msec);
	[LinkName("QLocalServer_WaitForNewConnection2")]
	public static extern bool QLocalServer_WaitForNewConnection2(void* c_this, int32 msec, bool timedOut);
}