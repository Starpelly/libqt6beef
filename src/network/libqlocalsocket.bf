using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QLocalSocket__LocalSocketError
{
	ConnectionRefusedError = 0,
	PeerClosedError = 1,
	ServerNotFoundError = 2,
	SocketAccessError = 3,
	SocketResourceError = 4,
	SocketTimeoutError = 5,
	DatagramTooLargeError = 6,
	ConnectionError = 7,
	UnsupportedSocketOperationError = 10,
	UnknownSocketError = -1,
	OperationError = 19,
}
[AllowDuplicates]
public enum QLocalSocket__LocalSocketState
{
	UnconnectedState = 0,
	ConnectingState = 2,
	ConnectedState = 3,
	ClosingState = 6,
}
[AllowDuplicates]
public enum QLocalSocket__SocketOption
{
	NoOptions = 0,
	AbstractNamespaceOption = 1,
}
public struct QLocalSocket
{
	[LinkName("QLocalSocket_new")]
	public static extern void* QLocalSocket_new();
	[LinkName("QLocalSocket_new2")]
	public static extern void* QLocalSocket_new2(QObject parent);
	[LinkName("QLocalSocket_MetaObject")]
	public static extern QMetaObject QLocalSocket_MetaObject(void* c_this);
	[LinkName("QLocalSocket_Metacast")]
	public static extern void QLocalSocket_Metacast(void* c_this, char8[] param1);
	[LinkName("QLocalSocket_Metacall")]
	public static extern int32 QLocalSocket_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QLocalSocket_Tr")]
	public static extern char8[] QLocalSocket_Tr(char8[] s);
	[LinkName("QLocalSocket_ConnectToServer")]
	public static extern void QLocalSocket_ConnectToServer(void* c_this);
	[LinkName("QLocalSocket_ConnectToServerWithName")]
	public static extern void QLocalSocket_ConnectToServerWithName(void* c_this, char8[] name);
	[LinkName("QLocalSocket_DisconnectFromServer")]
	public static extern void QLocalSocket_DisconnectFromServer(void* c_this);
	[LinkName("QLocalSocket_SetServerName")]
	public static extern void QLocalSocket_SetServerName(void* c_this, char8[] name);
	[LinkName("QLocalSocket_ServerName")]
	public static extern char8[] QLocalSocket_ServerName(void* c_this);
	[LinkName("QLocalSocket_FullServerName")]
	public static extern char8[] QLocalSocket_FullServerName(void* c_this);
	[LinkName("QLocalSocket_Abort")]
	public static extern void QLocalSocket_Abort(void* c_this);
	[LinkName("QLocalSocket_IsSequential")]
	public static extern bool QLocalSocket_IsSequential(void* c_this);
	[LinkName("QLocalSocket_BytesAvailable")]
	public static extern int64 QLocalSocket_BytesAvailable(void* c_this);
	[LinkName("QLocalSocket_BytesToWrite")]
	public static extern int64 QLocalSocket_BytesToWrite(void* c_this);
	[LinkName("QLocalSocket_CanReadLine")]
	public static extern bool QLocalSocket_CanReadLine(void* c_this);
	[LinkName("QLocalSocket_Open")]
	public static extern bool QLocalSocket_Open(void* c_this, int64 openMode);
	[LinkName("QLocalSocket_Close")]
	public static extern void QLocalSocket_Close(void* c_this);
	[LinkName("QLocalSocket_Error")]
	public static extern int64 QLocalSocket_Error(void* c_this);
	[LinkName("QLocalSocket_Flush")]
	public static extern bool QLocalSocket_Flush(void* c_this);
	[LinkName("QLocalSocket_IsValid")]
	public static extern bool QLocalSocket_IsValid(void* c_this);
	[LinkName("QLocalSocket_ReadBufferSize")]
	public static extern int64 QLocalSocket_ReadBufferSize(void* c_this);
	[LinkName("QLocalSocket_SetReadBufferSize")]
	public static extern void QLocalSocket_SetReadBufferSize(void* c_this, int64 size);
	[LinkName("QLocalSocket_SetSocketDescriptor")]
	public static extern bool QLocalSocket_SetSocketDescriptor(void* c_this, c_uintptr socketDescriptor);
	[LinkName("QLocalSocket_SocketDescriptor")]
	public static extern c_uintptr QLocalSocket_SocketDescriptor(void* c_this);
	[LinkName("QLocalSocket_SetSocketOptions")]
	public static extern void QLocalSocket_SetSocketOptions(void* c_this, int64 option);
	[LinkName("QLocalSocket_SocketOptions")]
	public static extern int64 QLocalSocket_SocketOptions(void* c_this);
	[LinkName("QLocalSocket_State")]
	public static extern int64 QLocalSocket_State(void* c_this);
	[LinkName("QLocalSocket_WaitForBytesWritten")]
	public static extern bool QLocalSocket_WaitForBytesWritten(void* c_this, int32 msecs);
	[LinkName("QLocalSocket_WaitForConnected")]
	public static extern bool QLocalSocket_WaitForConnected(void* c_this);
	[LinkName("QLocalSocket_WaitForDisconnected")]
	public static extern bool QLocalSocket_WaitForDisconnected(void* c_this);
	[LinkName("QLocalSocket_WaitForReadyRead")]
	public static extern bool QLocalSocket_WaitForReadyRead(void* c_this, int32 msecs);
	[LinkName("QLocalSocket_Connected")]
	public static extern void QLocalSocket_Connected(void* c_this);
	[LinkName("QLocalSocket_Disconnected")]
	public static extern void QLocalSocket_Disconnected(void* c_this);
	[LinkName("QLocalSocket_ErrorOccurred")]
	public static extern void QLocalSocket_ErrorOccurred(void* c_this, int64 socketError);
	[LinkName("QLocalSocket_StateChanged")]
	public static extern void QLocalSocket_StateChanged(void* c_this, int64 socketState);
	[LinkName("QLocalSocket_ReadData")]
	public static extern int64 QLocalSocket_ReadData(void* c_this, char8[] param1, int64 param2);
	[LinkName("QLocalSocket_ReadLineData")]
	public static extern int64 QLocalSocket_ReadLineData(void* c_this, char8[] data, int64 maxSize);
	[LinkName("QLocalSocket_SkipData")]
	public static extern int64 QLocalSocket_SkipData(void* c_this, int64 maxSize);
	[LinkName("QLocalSocket_WriteData")]
	public static extern int64 QLocalSocket_WriteData(void* c_this, char8[] param1, int64 param2);
	[LinkName("QLocalSocket_Tr2")]
	public static extern char8[] QLocalSocket_Tr2(char8[] s, char8[] c);
	[LinkName("QLocalSocket_Tr3")]
	public static extern char8[] QLocalSocket_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QLocalSocket_ConnectToServer1")]
	public static extern void QLocalSocket_ConnectToServer1(void* c_this, int64 openMode);
	[LinkName("QLocalSocket_ConnectToServer2")]
	public static extern void QLocalSocket_ConnectToServer2(void* c_this, char8[] name, int64 openMode);
	[LinkName("QLocalSocket_SetSocketDescriptor2")]
	public static extern bool QLocalSocket_SetSocketDescriptor2(void* c_this, c_uintptr socketDescriptor, int64 socketState);
	[LinkName("QLocalSocket_SetSocketDescriptor3")]
	public static extern bool QLocalSocket_SetSocketDescriptor3(void* c_this, c_uintptr socketDescriptor, int64 socketState, int64 openMode);
	[LinkName("QLocalSocket_WaitForConnected1")]
	public static extern bool QLocalSocket_WaitForConnected1(void* c_this, int32 msecs);
	[LinkName("QLocalSocket_WaitForDisconnected1")]
	public static extern bool QLocalSocket_WaitForDisconnected1(void* c_this, int32 msecs);
}