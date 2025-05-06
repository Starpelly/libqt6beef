using System;
using System.Interop;
namespace Qt;

public struct QSslServer
{
	[LinkName("QSslServer_new")]
	public static extern void* QSslServer_new();
	[LinkName("QSslServer_new2")]
	public static extern void* QSslServer_new2(QObject parent);
	[LinkName("QSslServer_MetaObject")]
	public static extern QMetaObject QSslServer_MetaObject(void* c_this);
	[LinkName("QSslServer_Metacast")]
	public static extern void QSslServer_Metacast(void* c_this, char8[] param1);
	[LinkName("QSslServer_Metacall")]
	public static extern int32 QSslServer_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSslServer_Tr")]
	public static extern char8[] QSslServer_Tr(char8[] s);
	[LinkName("QSslServer_SetSslConfiguration")]
	public static extern void QSslServer_SetSslConfiguration(void* c_this, QSslConfiguration sslConfiguration);
	[LinkName("QSslServer_SslConfiguration")]
	public static extern QSslConfiguration QSslServer_SslConfiguration(void* c_this);
	[LinkName("QSslServer_SetHandshakeTimeout")]
	public static extern void QSslServer_SetHandshakeTimeout(void* c_this, int32 timeout);
	[LinkName("QSslServer_HandshakeTimeout")]
	public static extern int32 QSslServer_HandshakeTimeout(void* c_this);
	[LinkName("QSslServer_SslErrors")]
	public static extern void QSslServer_SslErrors(void* c_this, QSslSocket socket, QSslError[] errors);
	[LinkName("QSslServer_PeerVerifyError")]
	public static extern void QSslServer_PeerVerifyError(void* c_this, QSslSocket socket, QSslError errorVal);
	[LinkName("QSslServer_ErrorOccurred")]
	public static extern void QSslServer_ErrorOccurred(void* c_this, QSslSocket socket, int64 errorVal);
	[LinkName("QSslServer_PreSharedKeyAuthenticationRequired")]
	public static extern void QSslServer_PreSharedKeyAuthenticationRequired(void* c_this, QSslSocket socket, QSslPreSharedKeyAuthenticator authenticator);
	[LinkName("QSslServer_AlertSent")]
	public static extern void QSslServer_AlertSent(void* c_this, QSslSocket socket, int64 level, int64 typeVal, char8[] description);
	[LinkName("QSslServer_AlertReceived")]
	public static extern void QSslServer_AlertReceived(void* c_this, QSslSocket socket, int64 level, int64 typeVal, char8[] description);
	[LinkName("QSslServer_HandshakeInterruptedOnError")]
	public static extern void QSslServer_HandshakeInterruptedOnError(void* c_this, QSslSocket socket, QSslError errorVal);
	[LinkName("QSslServer_StartedEncryptionHandshake")]
	public static extern void QSslServer_StartedEncryptionHandshake(void* c_this, QSslSocket socket);
	[LinkName("QSslServer_IncomingConnection")]
	public static extern void QSslServer_IncomingConnection(void* c_this, c_uintptr socket);
	[LinkName("QSslServer_Tr2")]
	public static extern char8[] QSslServer_Tr2(char8[] s, char8[] c);
	[LinkName("QSslServer_Tr3")]
	public static extern char8[] QSslServer_Tr3(char8[] s, char8[] c, int32 n);
}