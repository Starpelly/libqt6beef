using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QNetworkReply__NetworkError
{
	NoError = 0,
	ConnectionRefusedError = 1,
	RemoteHostClosedError = 2,
	HostNotFoundError = 3,
	TimeoutError = 4,
	OperationCanceledError = 5,
	SslHandshakeFailedError = 6,
	TemporaryNetworkFailureError = 7,
	NetworkSessionFailedError = 8,
	BackgroundRequestNotAllowedError = 9,
	TooManyRedirectsError = 10,
	InsecureRedirectError = 11,
	UnknownNetworkError = 99,
	ProxyConnectionRefusedError = 101,
	ProxyConnectionClosedError = 102,
	ProxyNotFoundError = 103,
	ProxyTimeoutError = 104,
	ProxyAuthenticationRequiredError = 105,
	UnknownProxyError = 199,
	ContentAccessDenied = 201,
	ContentOperationNotPermittedError = 202,
	ContentNotFoundError = 203,
	AuthenticationRequiredError = 204,
	ContentReSendError = 205,
	ContentConflictError = 206,
	ContentGoneError = 207,
	UnknownContentError = 299,
	ProtocolUnknownError = 301,
	ProtocolInvalidOperationError = 302,
	ProtocolFailure = 399,
	InternalServerError = 401,
	OperationNotImplementedError = 402,
	ServiceUnavailableError = 403,
	UnknownServerError = 499,
}
public struct QNetworkReply
{
	[LinkName("QNetworkReply_MetaObject")]
	public static extern QMetaObject QNetworkReply_MetaObject(void* c_this);
	[LinkName("QNetworkReply_Metacast")]
	public static extern void QNetworkReply_Metacast(void* c_this, char8[] param1);
	[LinkName("QNetworkReply_Metacall")]
	public static extern int32 QNetworkReply_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QNetworkReply_Tr")]
	public static extern char8[] QNetworkReply_Tr(char8[] s);
	[LinkName("QNetworkReply_Close")]
	public static extern void QNetworkReply_Close(void* c_this);
	[LinkName("QNetworkReply_IsSequential")]
	public static extern bool QNetworkReply_IsSequential(void* c_this);
	[LinkName("QNetworkReply_ReadBufferSize")]
	public static extern int64 QNetworkReply_ReadBufferSize(void* c_this);
	[LinkName("QNetworkReply_SetReadBufferSize")]
	public static extern void QNetworkReply_SetReadBufferSize(void* c_this, int64 size);
	[LinkName("QNetworkReply_Manager")]
	public static extern QNetworkAccessManager QNetworkReply_Manager(void* c_this);
	[LinkName("QNetworkReply_Operation")]
	public static extern int64 QNetworkReply_Operation(void* c_this);
	[LinkName("QNetworkReply_Request")]
	public static extern QNetworkRequest QNetworkReply_Request(void* c_this);
	[LinkName("QNetworkReply_Error")]
	public static extern int64 QNetworkReply_Error(void* c_this);
	[LinkName("QNetworkReply_IsFinished")]
	public static extern bool QNetworkReply_IsFinished(void* c_this);
	[LinkName("QNetworkReply_IsRunning")]
	public static extern bool QNetworkReply_IsRunning(void* c_this);
	[LinkName("QNetworkReply_Url")]
	public static extern QUrl QNetworkReply_Url(void* c_this);
	[LinkName("QNetworkReply_Header")]
	public static extern QVariant QNetworkReply_Header(void* c_this, int64 header);
	[LinkName("QNetworkReply_HasRawHeader")]
	public static extern bool QNetworkReply_HasRawHeader(void* c_this, uint8[] headerName);
	[LinkName("QNetworkReply_RawHeaderList")]
	public static extern uint8[][] QNetworkReply_RawHeaderList(void* c_this);
	[LinkName("QNetworkReply_RawHeader")]
	public static extern uint8[] QNetworkReply_RawHeader(void* c_this, uint8[] headerName);
	[LinkName("QNetworkReply_RawHeaderPairs")]
	public static extern void*[] QNetworkReply_RawHeaderPairs(void* c_this);
	[LinkName("QNetworkReply_Attribute")]
	public static extern QVariant QNetworkReply_Attribute(void* c_this, int64 code);
	[LinkName("QNetworkReply_SslConfiguration")]
	public static extern QSslConfiguration QNetworkReply_SslConfiguration(void* c_this);
	[LinkName("QNetworkReply_SetSslConfiguration")]
	public static extern void QNetworkReply_SetSslConfiguration(void* c_this, QSslConfiguration configuration);
	[LinkName("QNetworkReply_IgnoreSslErrors")]
	public static extern void QNetworkReply_IgnoreSslErrors(void* c_this, QSslError[] errors);
	[LinkName("QNetworkReply_Abort")]
	public static extern void QNetworkReply_Abort(void* c_this);
	[LinkName("QNetworkReply_IgnoreSslErrors2")]
	public static extern void QNetworkReply_IgnoreSslErrors2(void* c_this);
	[LinkName("QNetworkReply_SocketStartedConnecting")]
	public static extern void QNetworkReply_SocketStartedConnecting(void* c_this);
	[LinkName("QNetworkReply_RequestSent")]
	public static extern void QNetworkReply_RequestSent(void* c_this);
	[LinkName("QNetworkReply_MetaDataChanged")]
	public static extern void QNetworkReply_MetaDataChanged(void* c_this);
	[LinkName("QNetworkReply_Finished")]
	public static extern void QNetworkReply_Finished(void* c_this);
	[LinkName("QNetworkReply_ErrorOccurred")]
	public static extern void QNetworkReply_ErrorOccurred(void* c_this, int64 param1);
	[LinkName("QNetworkReply_Encrypted")]
	public static extern void QNetworkReply_Encrypted(void* c_this);
	[LinkName("QNetworkReply_SslErrors")]
	public static extern void QNetworkReply_SslErrors(void* c_this, QSslError[] errors);
	[LinkName("QNetworkReply_PreSharedKeyAuthenticationRequired")]
	public static extern void QNetworkReply_PreSharedKeyAuthenticationRequired(void* c_this, QSslPreSharedKeyAuthenticator authenticator);
	[LinkName("QNetworkReply_Redirected")]
	public static extern void QNetworkReply_Redirected(void* c_this, QUrl url);
	[LinkName("QNetworkReply_RedirectAllowed")]
	public static extern void QNetworkReply_RedirectAllowed(void* c_this);
	[LinkName("QNetworkReply_UploadProgress")]
	public static extern void QNetworkReply_UploadProgress(void* c_this, int64 bytesSent, int64 bytesTotal);
	[LinkName("QNetworkReply_DownloadProgress")]
	public static extern void QNetworkReply_DownloadProgress(void* c_this, int64 bytesReceived, int64 bytesTotal);
	[LinkName("QNetworkReply_WriteData")]
	public static extern int64 QNetworkReply_WriteData(void* c_this, char8[] data, int64 lenVal);
	[LinkName("QNetworkReply_SetOperation")]
	public static extern void QNetworkReply_SetOperation(void* c_this, int64 operation);
	[LinkName("QNetworkReply_SetRequest")]
	public static extern void QNetworkReply_SetRequest(void* c_this, QNetworkRequest request);
	[LinkName("QNetworkReply_SetError")]
	public static extern void QNetworkReply_SetError(void* c_this, int64 errorCode, char8[] errorString);
	[LinkName("QNetworkReply_SetFinished")]
	public static extern void QNetworkReply_SetFinished(void* c_this, bool finished);
	[LinkName("QNetworkReply_SetUrl")]
	public static extern void QNetworkReply_SetUrl(void* c_this, QUrl url);
	[LinkName("QNetworkReply_SetHeader")]
	public static extern void QNetworkReply_SetHeader(void* c_this, int64 header, QVariant value);
	[LinkName("QNetworkReply_SetRawHeader")]
	public static extern void QNetworkReply_SetRawHeader(void* c_this, uint8[] headerName, uint8[] value);
	[LinkName("QNetworkReply_SetAttribute")]
	public static extern void QNetworkReply_SetAttribute(void* c_this, int64 code, QVariant value);
	[LinkName("QNetworkReply_SslConfigurationImplementation")]
	public static extern void QNetworkReply_SslConfigurationImplementation(void* c_this, QSslConfiguration param1);
	[LinkName("QNetworkReply_SetSslConfigurationImplementation")]
	public static extern void QNetworkReply_SetSslConfigurationImplementation(void* c_this, QSslConfiguration sslConfigurationImplementation);
	[LinkName("QNetworkReply_IgnoreSslErrorsImplementation")]
	public static extern void QNetworkReply_IgnoreSslErrorsImplementation(void* c_this, QSslError[] param1);
	[LinkName("QNetworkReply_Tr2")]
	public static extern char8[] QNetworkReply_Tr2(char8[] s, char8[] c);
	[LinkName("QNetworkReply_Tr3")]
	public static extern char8[] QNetworkReply_Tr3(char8[] s, char8[] c, int32 n);
}