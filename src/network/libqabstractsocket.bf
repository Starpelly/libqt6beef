using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAbstractSocket__SocketType
{
	TcpSocket = 0,
	UdpSocket = 1,
	SctpSocket = 2,
	UnknownSocketType = -1,
}
[AllowDuplicates]
public enum QAbstractSocket__NetworkLayerProtocol
{
	IPv4Protocol = 0,
	IPv6Protocol = 1,
	AnyIPProtocol = 2,
	UnknownNetworkLayerProtocol = -1,
}
[AllowDuplicates]
public enum QAbstractSocket__SocketError
{
	ConnectionRefusedError = 0,
	RemoteHostClosedError = 1,
	HostNotFoundError = 2,
	SocketAccessError = 3,
	SocketResourceError = 4,
	SocketTimeoutError = 5,
	DatagramTooLargeError = 6,
	NetworkError = 7,
	AddressInUseError = 8,
	SocketAddressNotAvailableError = 9,
	UnsupportedSocketOperationError = 10,
	UnfinishedSocketOperationError = 11,
	ProxyAuthenticationRequiredError = 12,
	SslHandshakeFailedError = 13,
	ProxyConnectionRefusedError = 14,
	ProxyConnectionClosedError = 15,
	ProxyConnectionTimeoutError = 16,
	ProxyNotFoundError = 17,
	ProxyProtocolError = 18,
	OperationError = 19,
	SslInternalError = 20,
	SslInvalidUserDataError = 21,
	TemporaryError = 22,
	UnknownSocketError = -1,
}
[AllowDuplicates]
public enum QAbstractSocket__SocketState
{
	UnconnectedState = 0,
	HostLookupState = 1,
	ConnectingState = 2,
	ConnectedState = 3,
	BoundState = 4,
	ListeningState = 5,
	ClosingState = 6,
}
[AllowDuplicates]
public enum QAbstractSocket__SocketOption
{
	LowDelayOption = 0,
	KeepAliveOption = 1,
	MulticastTtlOption = 2,
	MulticastLoopbackOption = 3,
	TypeOfServiceOption = 4,
	SendBufferSizeSocketOption = 5,
	ReceiveBufferSizeSocketOption = 6,
	PathMtuSocketOption = 7,
}
[AllowDuplicates]
public enum QAbstractSocket__BindFlag
{
	DefaultForPlatform = 0,
	ShareAddress = 1,
	DontShareAddress = 2,
	ReuseAddressHint = 4,
}
[AllowDuplicates]
public enum QAbstractSocket__PauseMode
{
	PauseNever = 0,
	PauseOnSslErrors = 1,
}
public struct QAbstractSocket
{
	[LinkName("QAbstractSocket_new")]
	public static extern void* QAbstractSocket_new(int64 socketType, QObject parent);
	[LinkName("QAbstractSocket_MetaObject")]
	public static extern QMetaObject QAbstractSocket_MetaObject(void* c_this);
	[LinkName("QAbstractSocket_Metacast")]
	public static extern void QAbstractSocket_Metacast(void* c_this, char8[] param1);
	[LinkName("QAbstractSocket_Metacall")]
	public static extern int32 QAbstractSocket_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QAbstractSocket_Tr")]
	public static extern char8[] QAbstractSocket_Tr(char8[] s);
	[LinkName("QAbstractSocket_Resume")]
	public static extern void QAbstractSocket_Resume(void* c_this);
	[LinkName("QAbstractSocket_PauseMode")]
	public static extern int64 QAbstractSocket_PauseMode(void* c_this);
	[LinkName("QAbstractSocket_SetPauseMode")]
	public static extern void QAbstractSocket_SetPauseMode(void* c_this, int64 pauseMode);
	[LinkName("QAbstractSocket_Bind")]
	public static extern bool QAbstractSocket_Bind(void* c_this, QHostAddress address, uint16 port, int64 mode);
	[LinkName("QAbstractSocket_Bind2")]
	public static extern bool QAbstractSocket_Bind2(void* c_this);
	[LinkName("QAbstractSocket_ConnectToHost")]
	public static extern void QAbstractSocket_ConnectToHost(void* c_this, char8[] hostName, uint16 port, int64 mode, int64 protocol);
	[LinkName("QAbstractSocket_ConnectToHost2")]
	public static extern void QAbstractSocket_ConnectToHost2(void* c_this, QHostAddress address, uint16 port);
	[LinkName("QAbstractSocket_DisconnectFromHost")]
	public static extern void QAbstractSocket_DisconnectFromHost(void* c_this);
	[LinkName("QAbstractSocket_IsValid")]
	public static extern bool QAbstractSocket_IsValid(void* c_this);
	[LinkName("QAbstractSocket_BytesAvailable")]
	public static extern int64 QAbstractSocket_BytesAvailable(void* c_this);
	[LinkName("QAbstractSocket_BytesToWrite")]
	public static extern int64 QAbstractSocket_BytesToWrite(void* c_this);
	[LinkName("QAbstractSocket_LocalPort")]
	public static extern uint16 QAbstractSocket_LocalPort(void* c_this);
	[LinkName("QAbstractSocket_LocalAddress")]
	public static extern QHostAddress QAbstractSocket_LocalAddress(void* c_this);
	[LinkName("QAbstractSocket_PeerPort")]
	public static extern uint16 QAbstractSocket_PeerPort(void* c_this);
	[LinkName("QAbstractSocket_PeerAddress")]
	public static extern QHostAddress QAbstractSocket_PeerAddress(void* c_this);
	[LinkName("QAbstractSocket_PeerName")]
	public static extern char8[] QAbstractSocket_PeerName(void* c_this);
	[LinkName("QAbstractSocket_ReadBufferSize")]
	public static extern int64 QAbstractSocket_ReadBufferSize(void* c_this);
	[LinkName("QAbstractSocket_SetReadBufferSize")]
	public static extern void QAbstractSocket_SetReadBufferSize(void* c_this, int64 size);
	[LinkName("QAbstractSocket_Abort")]
	public static extern void QAbstractSocket_Abort(void* c_this);
	[LinkName("QAbstractSocket_SocketDescriptor")]
	public static extern c_uintptr QAbstractSocket_SocketDescriptor(void* c_this);
	[LinkName("QAbstractSocket_SetSocketDescriptor")]
	public static extern bool QAbstractSocket_SetSocketDescriptor(void* c_this, c_uintptr socketDescriptor, int64 state, int64 openMode);
	[LinkName("QAbstractSocket_SetSocketOption")]
	public static extern void QAbstractSocket_SetSocketOption(void* c_this, int64 option, QVariant value);
	[LinkName("QAbstractSocket_SocketOption")]
	public static extern QVariant QAbstractSocket_SocketOption(void* c_this, int64 option);
	[LinkName("QAbstractSocket_SocketType")]
	public static extern int64 QAbstractSocket_SocketType(void* c_this);
	[LinkName("QAbstractSocket_State")]
	public static extern int64 QAbstractSocket_State(void* c_this);
	[LinkName("QAbstractSocket_Error")]
	public static extern int64 QAbstractSocket_Error(void* c_this);
	[LinkName("QAbstractSocket_Close")]
	public static extern void QAbstractSocket_Close(void* c_this);
	[LinkName("QAbstractSocket_IsSequential")]
	public static extern bool QAbstractSocket_IsSequential(void* c_this);
	[LinkName("QAbstractSocket_Flush")]
	public static extern bool QAbstractSocket_Flush(void* c_this);
	[LinkName("QAbstractSocket_WaitForConnected")]
	public static extern bool QAbstractSocket_WaitForConnected(void* c_this, int32 msecs);
	[LinkName("QAbstractSocket_WaitForReadyRead")]
	public static extern bool QAbstractSocket_WaitForReadyRead(void* c_this, int32 msecs);
	[LinkName("QAbstractSocket_WaitForBytesWritten")]
	public static extern bool QAbstractSocket_WaitForBytesWritten(void* c_this, int32 msecs);
	[LinkName("QAbstractSocket_WaitForDisconnected")]
	public static extern bool QAbstractSocket_WaitForDisconnected(void* c_this, int32 msecs);
	[LinkName("QAbstractSocket_SetProxy")]
	public static extern void QAbstractSocket_SetProxy(void* c_this, QNetworkProxy networkProxy);
	[LinkName("QAbstractSocket_Proxy")]
	public static extern QNetworkProxy QAbstractSocket_Proxy(void* c_this);
	[LinkName("QAbstractSocket_ProtocolTag")]
	public static extern char8[] QAbstractSocket_ProtocolTag(void* c_this);
	[LinkName("QAbstractSocket_SetProtocolTag")]
	public static extern void QAbstractSocket_SetProtocolTag(void* c_this, char8[] tag);
	[LinkName("QAbstractSocket_HostFound")]
	public static extern void QAbstractSocket_HostFound(void* c_this);
	[LinkName("QAbstractSocket_Connected")]
	public static extern void QAbstractSocket_Connected(void* c_this);
	[LinkName("QAbstractSocket_Disconnected")]
	public static extern void QAbstractSocket_Disconnected(void* c_this);
	[LinkName("QAbstractSocket_StateChanged")]
	public static extern void QAbstractSocket_StateChanged(void* c_this, int64 param1);
	[LinkName("QAbstractSocket_ErrorOccurred")]
	public static extern void QAbstractSocket_ErrorOccurred(void* c_this, int64 param1);
	[LinkName("QAbstractSocket_ProxyAuthenticationRequired")]
	public static extern void QAbstractSocket_ProxyAuthenticationRequired(void* c_this, QNetworkProxy proxy, QAuthenticator authenticator);
	[LinkName("QAbstractSocket_ReadData")]
	public static extern int64 QAbstractSocket_ReadData(void* c_this, char8[] data, int64 maxlen);
	[LinkName("QAbstractSocket_ReadLineData")]
	public static extern int64 QAbstractSocket_ReadLineData(void* c_this, char8[] data, int64 maxlen);
	[LinkName("QAbstractSocket_SkipData")]
	public static extern int64 QAbstractSocket_SkipData(void* c_this, int64 maxSize);
	[LinkName("QAbstractSocket_WriteData")]
	public static extern int64 QAbstractSocket_WriteData(void* c_this, char8[] data, int64 lenVal);
	[LinkName("QAbstractSocket_SetSocketState")]
	public static extern void QAbstractSocket_SetSocketState(void* c_this, int64 state);
	[LinkName("QAbstractSocket_SetSocketError")]
	public static extern void QAbstractSocket_SetSocketError(void* c_this, int64 socketError);
	[LinkName("QAbstractSocket_SetLocalPort")]
	public static extern void QAbstractSocket_SetLocalPort(void* c_this, uint16 port);
	[LinkName("QAbstractSocket_SetLocalAddress")]
	public static extern void QAbstractSocket_SetLocalAddress(void* c_this, QHostAddress address);
	[LinkName("QAbstractSocket_SetPeerPort")]
	public static extern void QAbstractSocket_SetPeerPort(void* c_this, uint16 port);
	[LinkName("QAbstractSocket_SetPeerAddress")]
	public static extern void QAbstractSocket_SetPeerAddress(void* c_this, QHostAddress address);
	[LinkName("QAbstractSocket_SetPeerName")]
	public static extern void QAbstractSocket_SetPeerName(void* c_this, char8[] name);
	[LinkName("QAbstractSocket_Tr2")]
	public static extern char8[] QAbstractSocket_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractSocket_Tr3")]
	public static extern char8[] QAbstractSocket_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QAbstractSocket_Bind1")]
	public static extern bool QAbstractSocket_Bind1(void* c_this, uint16 port);
	[LinkName("QAbstractSocket_Bind22")]
	public static extern bool QAbstractSocket_Bind22(void* c_this, uint16 port, int64 mode);
	[LinkName("QAbstractSocket_ConnectToHost3")]
	public static extern void QAbstractSocket_ConnectToHost3(void* c_this, QHostAddress address, uint16 port, int64 mode);
}