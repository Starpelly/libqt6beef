using System;
using System.Interop;
namespace Qt;

public struct QTcpServer
{
	[LinkName("QTcpServer_new")]
	public static extern void* QTcpServer_new();
	[LinkName("QTcpServer_new2")]
	public static extern void* QTcpServer_new2(QObject parent);
	[LinkName("QTcpServer_MetaObject")]
	public static extern QMetaObject QTcpServer_MetaObject(void* c_this);
	[LinkName("QTcpServer_Metacast")]
	public static extern void QTcpServer_Metacast(void* c_this, char8[] param1);
	[LinkName("QTcpServer_Metacall")]
	public static extern int32 QTcpServer_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QTcpServer_Tr")]
	public static extern char8[] QTcpServer_Tr(char8[] s);
	[LinkName("QTcpServer_Listen")]
	public static extern bool QTcpServer_Listen(void* c_this);
	[LinkName("QTcpServer_Close")]
	public static extern void QTcpServer_Close(void* c_this);
	[LinkName("QTcpServer_IsListening")]
	public static extern bool QTcpServer_IsListening(void* c_this);
	[LinkName("QTcpServer_SetMaxPendingConnections")]
	public static extern void QTcpServer_SetMaxPendingConnections(void* c_this, int32 numConnections);
	[LinkName("QTcpServer_MaxPendingConnections")]
	public static extern int32 QTcpServer_MaxPendingConnections(void* c_this);
	[LinkName("QTcpServer_SetListenBacklogSize")]
	public static extern void QTcpServer_SetListenBacklogSize(void* c_this, int32 size);
	[LinkName("QTcpServer_ListenBacklogSize")]
	public static extern int32 QTcpServer_ListenBacklogSize(void* c_this);
	[LinkName("QTcpServer_ServerPort")]
	public static extern uint16 QTcpServer_ServerPort(void* c_this);
	[LinkName("QTcpServer_ServerAddress")]
	public static extern QHostAddress QTcpServer_ServerAddress(void* c_this);
	[LinkName("QTcpServer_SocketDescriptor")]
	public static extern c_uintptr QTcpServer_SocketDescriptor(void* c_this);
	[LinkName("QTcpServer_SetSocketDescriptor")]
	public static extern bool QTcpServer_SetSocketDescriptor(void* c_this, c_uintptr socketDescriptor);
	[LinkName("QTcpServer_WaitForNewConnection")]
	public static extern bool QTcpServer_WaitForNewConnection(void* c_this);
	[LinkName("QTcpServer_HasPendingConnections")]
	public static extern bool QTcpServer_HasPendingConnections(void* c_this);
	[LinkName("QTcpServer_NextPendingConnection")]
	public static extern QTcpSocket QTcpServer_NextPendingConnection(void* c_this);
	[LinkName("QTcpServer_ServerError")]
	public static extern int64 QTcpServer_ServerError(void* c_this);
	[LinkName("QTcpServer_ErrorString")]
	public static extern char8[] QTcpServer_ErrorString(void* c_this);
	[LinkName("QTcpServer_PauseAccepting")]
	public static extern void QTcpServer_PauseAccepting(void* c_this);
	[LinkName("QTcpServer_ResumeAccepting")]
	public static extern void QTcpServer_ResumeAccepting(void* c_this);
	[LinkName("QTcpServer_SetProxy")]
	public static extern void QTcpServer_SetProxy(void* c_this, QNetworkProxy networkProxy);
	[LinkName("QTcpServer_Proxy")]
	public static extern QNetworkProxy QTcpServer_Proxy(void* c_this);
	[LinkName("QTcpServer_IncomingConnection")]
	public static extern void QTcpServer_IncomingConnection(void* c_this, c_uintptr handle);
	[LinkName("QTcpServer_AddPendingConnection")]
	public static extern void QTcpServer_AddPendingConnection(void* c_this, QTcpSocket socket);
	[LinkName("QTcpServer_NewConnection")]
	public static extern void QTcpServer_NewConnection(void* c_this);
	[LinkName("QTcpServer_AcceptError")]
	public static extern void QTcpServer_AcceptError(void* c_this, int64 socketError);
	[LinkName("QTcpServer_Tr2")]
	public static extern char8[] QTcpServer_Tr2(char8[] s, char8[] c);
	[LinkName("QTcpServer_Tr3")]
	public static extern char8[] QTcpServer_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTcpServer_Listen1")]
	public static extern bool QTcpServer_Listen1(void* c_this, QHostAddress address);
	[LinkName("QTcpServer_Listen2")]
	public static extern bool QTcpServer_Listen2(void* c_this, QHostAddress address, uint16 port);
	[LinkName("QTcpServer_WaitForNewConnection1")]
	public static extern bool QTcpServer_WaitForNewConnection1(void* c_this, int32 msec);
	[LinkName("QTcpServer_WaitForNewConnection2")]
	public static extern bool QTcpServer_WaitForNewConnection2(void* c_this, int32 msec, bool timedOut);
}