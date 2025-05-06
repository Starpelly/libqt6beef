using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDtlsError
{
	NoError = 0,
	InvalidInputParameters = 1,
	InvalidOperation = 2,
	UnderlyingSocketError = 3,
	RemoteClosedConnectionError = 4,
	PeerVerificationError = 5,
	TlsInitializationError = 6,
	TlsFatalError = 7,
	TlsNonFatalError = 8,
}
[AllowDuplicates]
public enum QDtls__HandshakeState
{
	HandshakeNotStarted = 0,
	HandshakeInProgress = 1,
	PeerVerificationFailed = 2,
	HandshakeComplete = 3,
}
public struct QDtlsClientVerifier
{
	[LinkName("QDtlsClientVerifier_new")]
	public static extern void* QDtlsClientVerifier_new();
	[LinkName("QDtlsClientVerifier_new2")]
	public static extern void* QDtlsClientVerifier_new2(QObject parent);
	[LinkName("QDtlsClientVerifier_MetaObject")]
	public static extern QMetaObject QDtlsClientVerifier_MetaObject(void* c_this);
	[LinkName("QDtlsClientVerifier_Metacast")]
	public static extern void QDtlsClientVerifier_Metacast(void* c_this, char8[] param1);
	[LinkName("QDtlsClientVerifier_Metacall")]
	public static extern int32 QDtlsClientVerifier_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QDtlsClientVerifier_Tr")]
	public static extern char8[] QDtlsClientVerifier_Tr(char8[] s);
	[LinkName("QDtlsClientVerifier_SetCookieGeneratorParameters")]
	public static extern bool QDtlsClientVerifier_SetCookieGeneratorParameters(void* c_this, QDtlsClientVerifier__GeneratorParameters _params);
	[LinkName("QDtlsClientVerifier_CookieGeneratorParameters")]
	public static extern QDtlsClientVerifier__GeneratorParameters QDtlsClientVerifier_CookieGeneratorParameters(void* c_this);
	[LinkName("QDtlsClientVerifier_VerifyClient")]
	public static extern bool QDtlsClientVerifier_VerifyClient(void* c_this, QUdpSocket socket, uint8[] dgram, QHostAddress address, uint16 port);
	[LinkName("QDtlsClientVerifier_VerifiedHello")]
	public static extern uint8[] QDtlsClientVerifier_VerifiedHello(void* c_this);
	[LinkName("QDtlsClientVerifier_DtlsError")]
	public static extern void QDtlsClientVerifier_DtlsError(void* c_this);
	[LinkName("QDtlsClientVerifier_DtlsErrorString")]
	public static extern char8[] QDtlsClientVerifier_DtlsErrorString(void* c_this);
	[LinkName("QDtlsClientVerifier_Tr2")]
	public static extern char8[] QDtlsClientVerifier_Tr2(char8[] s, char8[] c);
	[LinkName("QDtlsClientVerifier_Tr3")]
	public static extern char8[] QDtlsClientVerifier_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QDtls
{
	[LinkName("QDtls_new")]
	public static extern void* QDtls_new(int64 mode);
	[LinkName("QDtls_new2")]
	public static extern void* QDtls_new2(int64 mode, QObject parent);
	[LinkName("QDtls_MetaObject")]
	public static extern QMetaObject QDtls_MetaObject(void* c_this);
	[LinkName("QDtls_Metacast")]
	public static extern void QDtls_Metacast(void* c_this, char8[] param1);
	[LinkName("QDtls_Metacall")]
	public static extern int32 QDtls_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QDtls_Tr")]
	public static extern char8[] QDtls_Tr(char8[] s);
	[LinkName("QDtls_SetPeer")]
	public static extern bool QDtls_SetPeer(void* c_this, QHostAddress address, uint16 port);
	[LinkName("QDtls_SetPeerVerificationName")]
	public static extern bool QDtls_SetPeerVerificationName(void* c_this, char8[] name);
	[LinkName("QDtls_PeerAddress")]
	public static extern QHostAddress QDtls_PeerAddress(void* c_this);
	[LinkName("QDtls_PeerPort")]
	public static extern uint16 QDtls_PeerPort(void* c_this);
	[LinkName("QDtls_PeerVerificationName")]
	public static extern char8[] QDtls_PeerVerificationName(void* c_this);
	[LinkName("QDtls_SslMode")]
	public static extern int64 QDtls_SslMode(void* c_this);
	[LinkName("QDtls_SetMtuHint")]
	public static extern void QDtls_SetMtuHint(void* c_this, uint16 mtuHint);
	[LinkName("QDtls_MtuHint")]
	public static extern uint16 QDtls_MtuHint(void* c_this);
	[LinkName("QDtls_SetCookieGeneratorParameters")]
	public static extern bool QDtls_SetCookieGeneratorParameters(void* c_this, QDtlsClientVerifier__GeneratorParameters _params);
	[LinkName("QDtls_CookieGeneratorParameters")]
	public static extern QDtlsClientVerifier__GeneratorParameters QDtls_CookieGeneratorParameters(void* c_this);
	[LinkName("QDtls_SetDtlsConfiguration")]
	public static extern bool QDtls_SetDtlsConfiguration(void* c_this, QSslConfiguration configuration);
	[LinkName("QDtls_DtlsConfiguration")]
	public static extern QSslConfiguration QDtls_DtlsConfiguration(void* c_this);
	[LinkName("QDtls_HandshakeState")]
	public static extern int64 QDtls_HandshakeState(void* c_this);
	[LinkName("QDtls_DoHandshake")]
	public static extern bool QDtls_DoHandshake(void* c_this, QUdpSocket socket);
	[LinkName("QDtls_HandleTimeout")]
	public static extern bool QDtls_HandleTimeout(void* c_this, QUdpSocket socket);
	[LinkName("QDtls_ResumeHandshake")]
	public static extern bool QDtls_ResumeHandshake(void* c_this, QUdpSocket socket);
	[LinkName("QDtls_AbortHandshake")]
	public static extern bool QDtls_AbortHandshake(void* c_this, QUdpSocket socket);
	[LinkName("QDtls_Shutdown")]
	public static extern bool QDtls_Shutdown(void* c_this, QUdpSocket socket);
	[LinkName("QDtls_IsConnectionEncrypted")]
	public static extern bool QDtls_IsConnectionEncrypted(void* c_this);
	[LinkName("QDtls_SessionCipher")]
	public static extern QSslCipher QDtls_SessionCipher(void* c_this);
	[LinkName("QDtls_SessionProtocol")]
	public static extern int64 QDtls_SessionProtocol(void* c_this);
	[LinkName("QDtls_WriteDatagramEncrypted")]
	public static extern int64 QDtls_WriteDatagramEncrypted(void* c_this, QUdpSocket socket, uint8[] dgram);
	[LinkName("QDtls_DecryptDatagram")]
	public static extern uint8[] QDtls_DecryptDatagram(void* c_this, QUdpSocket socket, uint8[] dgram);
	[LinkName("QDtls_DtlsError")]
	public static extern void QDtls_DtlsError(void* c_this);
	[LinkName("QDtls_DtlsErrorString")]
	public static extern char8[] QDtls_DtlsErrorString(void* c_this);
	[LinkName("QDtls_PeerVerificationErrors")]
	public static extern QSslError[] QDtls_PeerVerificationErrors(void* c_this);
	[LinkName("QDtls_IgnoreVerificationErrors")]
	public static extern void QDtls_IgnoreVerificationErrors(void* c_this, QSslError[] errorsToIgnore);
	[LinkName("QDtls_PskRequired")]
	public static extern void QDtls_PskRequired(void* c_this, QSslPreSharedKeyAuthenticator authenticator);
	[LinkName("QDtls_HandshakeTimeout")]
	public static extern void QDtls_HandshakeTimeout(void* c_this);
	[LinkName("QDtls_Tr2")]
	public static extern char8[] QDtls_Tr2(char8[] s, char8[] c);
	[LinkName("QDtls_Tr3")]
	public static extern char8[] QDtls_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QDtls_SetPeer3")]
	public static extern bool QDtls_SetPeer3(void* c_this, QHostAddress address, uint16 port, char8[] verificationName);
	[LinkName("QDtls_DoHandshake2")]
	public static extern bool QDtls_DoHandshake2(void* c_this, QUdpSocket socket, uint8[] dgram);
}
public struct QDtlsClientVerifier__GeneratorParameters
{
	[LinkName("QDtlsClientVerifier__GeneratorParameters_new")]
	public static extern void* QDtlsClientVerifier__GeneratorParameters_new();
	[LinkName("QDtlsClientVerifier__GeneratorParameters_new2")]
	public static extern void* QDtlsClientVerifier__GeneratorParameters_new2(int64 a, uint8[] s);
	[LinkName("QDtlsClientVerifier__GeneratorParameters_new3")]
	public static extern void* QDtlsClientVerifier__GeneratorParameters_new3(QDtlsClientVerifier__GeneratorParameters param1);
	[LinkName("QDtlsClientVerifier__GeneratorParameters_OperatorAssign")]
	public static extern void QDtlsClientVerifier__GeneratorParameters_OperatorAssign(void* c_this, QDtlsClientVerifier__GeneratorParameters param1);
}