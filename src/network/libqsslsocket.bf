using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSslSocket__SslMode
{
	UnencryptedMode = 0,
	SslClientMode = 1,
	SslServerMode = 2,
}
[AllowDuplicates]
public enum QSslSocket__PeerVerifyMode
{
	VerifyNone = 0,
	QueryPeer = 1,
	VerifyPeer = 2,
	AutoVerifyPeer = 3,
}
public struct QSslSocket
{
	[LinkName("QSslSocket_new")]
	public static extern void* QSslSocket_new();
	[LinkName("QSslSocket_new2")]
	public static extern void* QSslSocket_new2(QObject parent);
	[LinkName("QSslSocket_MetaObject")]
	public static extern QMetaObject QSslSocket_MetaObject(void* c_this);
	[LinkName("QSslSocket_Metacast")]
	public static extern void QSslSocket_Metacast(void* c_this, char8[] param1);
	[LinkName("QSslSocket_Metacall")]
	public static extern int32 QSslSocket_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSslSocket_Tr")]
	public static extern char8[] QSslSocket_Tr(char8[] s);
	[LinkName("QSslSocket_Resume")]
	public static extern void QSslSocket_Resume(void* c_this);
	[LinkName("QSslSocket_ConnectToHostEncrypted")]
	public static extern void QSslSocket_ConnectToHostEncrypted(void* c_this, char8[] hostName, uint16 port);
	[LinkName("QSslSocket_ConnectToHostEncrypted2")]
	public static extern void QSslSocket_ConnectToHostEncrypted2(void* c_this, char8[] hostName, uint16 port, char8[] sslPeerName);
	[LinkName("QSslSocket_SetSocketDescriptor")]
	public static extern bool QSslSocket_SetSocketDescriptor(void* c_this, c_uintptr socketDescriptor, int64 state, int64 openMode);
	[LinkName("QSslSocket_ConnectToHost")]
	public static extern void QSslSocket_ConnectToHost(void* c_this, char8[] hostName, uint16 port, int64 openMode, int64 protocol);
	[LinkName("QSslSocket_DisconnectFromHost")]
	public static extern void QSslSocket_DisconnectFromHost(void* c_this);
	[LinkName("QSslSocket_SetSocketOption")]
	public static extern void QSslSocket_SetSocketOption(void* c_this, int64 option, QVariant value);
	[LinkName("QSslSocket_SocketOption")]
	public static extern QVariant QSslSocket_SocketOption(void* c_this, int64 option);
	[LinkName("QSslSocket_Mode")]
	public static extern int64 QSslSocket_Mode(void* c_this);
	[LinkName("QSslSocket_IsEncrypted")]
	public static extern bool QSslSocket_IsEncrypted(void* c_this);
	[LinkName("QSslSocket_Protocol")]
	public static extern int64 QSslSocket_Protocol(void* c_this);
	[LinkName("QSslSocket_SetProtocol")]
	public static extern void QSslSocket_SetProtocol(void* c_this, int64 protocol);
	[LinkName("QSslSocket_PeerVerifyMode")]
	public static extern int64 QSslSocket_PeerVerifyMode(void* c_this);
	[LinkName("QSslSocket_SetPeerVerifyMode")]
	public static extern void QSslSocket_SetPeerVerifyMode(void* c_this, int64 mode);
	[LinkName("QSslSocket_PeerVerifyDepth")]
	public static extern int32 QSslSocket_PeerVerifyDepth(void* c_this);
	[LinkName("QSslSocket_SetPeerVerifyDepth")]
	public static extern void QSslSocket_SetPeerVerifyDepth(void* c_this, int32 depth);
	[LinkName("QSslSocket_PeerVerifyName")]
	public static extern char8[] QSslSocket_PeerVerifyName(void* c_this);
	[LinkName("QSslSocket_SetPeerVerifyName")]
	public static extern void QSslSocket_SetPeerVerifyName(void* c_this, char8[] hostName);
	[LinkName("QSslSocket_BytesAvailable")]
	public static extern int64 QSslSocket_BytesAvailable(void* c_this);
	[LinkName("QSslSocket_BytesToWrite")]
	public static extern int64 QSslSocket_BytesToWrite(void* c_this);
	[LinkName("QSslSocket_CanReadLine")]
	public static extern bool QSslSocket_CanReadLine(void* c_this);
	[LinkName("QSslSocket_Close")]
	public static extern void QSslSocket_Close(void* c_this);
	[LinkName("QSslSocket_AtEnd")]
	public static extern bool QSslSocket_AtEnd(void* c_this);
	[LinkName("QSslSocket_SetReadBufferSize")]
	public static extern void QSslSocket_SetReadBufferSize(void* c_this, int64 size);
	[LinkName("QSslSocket_EncryptedBytesAvailable")]
	public static extern int64 QSslSocket_EncryptedBytesAvailable(void* c_this);
	[LinkName("QSslSocket_EncryptedBytesToWrite")]
	public static extern int64 QSslSocket_EncryptedBytesToWrite(void* c_this);
	[LinkName("QSslSocket_SslConfiguration")]
	public static extern QSslConfiguration QSslSocket_SslConfiguration(void* c_this);
	[LinkName("QSslSocket_SetSslConfiguration")]
	public static extern void QSslSocket_SetSslConfiguration(void* c_this, QSslConfiguration config);
	[LinkName("QSslSocket_SetLocalCertificateChain")]
	public static extern void QSslSocket_SetLocalCertificateChain(void* c_this, QSslCertificate[] localChain);
	[LinkName("QSslSocket_LocalCertificateChain")]
	public static extern QSslCertificate[] QSslSocket_LocalCertificateChain(void* c_this);
	[LinkName("QSslSocket_SetLocalCertificate")]
	public static extern void QSslSocket_SetLocalCertificate(void* c_this, QSslCertificate certificate);
	[LinkName("QSslSocket_SetLocalCertificateWithFileName")]
	public static extern void QSslSocket_SetLocalCertificateWithFileName(void* c_this, char8[] fileName);
	[LinkName("QSslSocket_LocalCertificate")]
	public static extern QSslCertificate QSslSocket_LocalCertificate(void* c_this);
	[LinkName("QSslSocket_PeerCertificate")]
	public static extern QSslCertificate QSslSocket_PeerCertificate(void* c_this);
	[LinkName("QSslSocket_PeerCertificateChain")]
	public static extern QSslCertificate[] QSslSocket_PeerCertificateChain(void* c_this);
	[LinkName("QSslSocket_SessionCipher")]
	public static extern QSslCipher QSslSocket_SessionCipher(void* c_this);
	[LinkName("QSslSocket_SessionProtocol")]
	public static extern int64 QSslSocket_SessionProtocol(void* c_this);
	[LinkName("QSslSocket_OcspResponses")]
	public static extern QOcspResponse[] QSslSocket_OcspResponses(void* c_this);
	[LinkName("QSslSocket_SetPrivateKey")]
	public static extern void QSslSocket_SetPrivateKey(void* c_this, QSslKey key);
	[LinkName("QSslSocket_SetPrivateKeyWithFileName")]
	public static extern void QSslSocket_SetPrivateKeyWithFileName(void* c_this, char8[] fileName);
	[LinkName("QSslSocket_PrivateKey")]
	public static extern QSslKey QSslSocket_PrivateKey(void* c_this);
	[LinkName("QSslSocket_WaitForConnected")]
	public static extern bool QSslSocket_WaitForConnected(void* c_this, int32 msecs);
	[LinkName("QSslSocket_WaitForEncrypted")]
	public static extern bool QSslSocket_WaitForEncrypted(void* c_this);
	[LinkName("QSslSocket_WaitForReadyRead")]
	public static extern bool QSslSocket_WaitForReadyRead(void* c_this, int32 msecs);
	[LinkName("QSslSocket_WaitForBytesWritten")]
	public static extern bool QSslSocket_WaitForBytesWritten(void* c_this, int32 msecs);
	[LinkName("QSslSocket_WaitForDisconnected")]
	public static extern bool QSslSocket_WaitForDisconnected(void* c_this, int32 msecs);
	[LinkName("QSslSocket_SslHandshakeErrors")]
	public static extern QSslError[] QSslSocket_SslHandshakeErrors(void* c_this);
	[LinkName("QSslSocket_SupportsSsl")]
	public static extern bool QSslSocket_SupportsSsl();
	[LinkName("QSslSocket_SslLibraryVersionNumber")]
	public static extern c_long QSslSocket_SslLibraryVersionNumber();
	[LinkName("QSslSocket_SslLibraryVersionString")]
	public static extern char8[] QSslSocket_SslLibraryVersionString();
	[LinkName("QSslSocket_SslLibraryBuildVersionNumber")]
	public static extern c_long QSslSocket_SslLibraryBuildVersionNumber();
	[LinkName("QSslSocket_SslLibraryBuildVersionString")]
	public static extern char8[] QSslSocket_SslLibraryBuildVersionString();
	[LinkName("QSslSocket_AvailableBackends")]
	public static extern char8[][] QSslSocket_AvailableBackends();
	[LinkName("QSslSocket_ActiveBackend")]
	public static extern char8[] QSslSocket_ActiveBackend();
	[LinkName("QSslSocket_SetActiveBackend")]
	public static extern bool QSslSocket_SetActiveBackend(char8[] backendName);
	[LinkName("QSslSocket_SupportedProtocols")]
	public static extern int64[] QSslSocket_SupportedProtocols();
	[LinkName("QSslSocket_IsProtocolSupported")]
	public static extern bool QSslSocket_IsProtocolSupported(int64 protocol);
	[LinkName("QSslSocket_ImplementedClasses")]
	public static extern int64[] QSslSocket_ImplementedClasses();
	[LinkName("QSslSocket_IsClassImplemented")]
	public static extern bool QSslSocket_IsClassImplemented(int64 cl);
	[LinkName("QSslSocket_SupportedFeatures")]
	public static extern int64[] QSslSocket_SupportedFeatures();
	[LinkName("QSslSocket_IsFeatureSupported")]
	public static extern bool QSslSocket_IsFeatureSupported(int64 feat);
	[LinkName("QSslSocket_IgnoreSslErrors")]
	public static extern void QSslSocket_IgnoreSslErrors(void* c_this, QSslError[] errors);
	[LinkName("QSslSocket_ContinueInterruptedHandshake")]
	public static extern void QSslSocket_ContinueInterruptedHandshake(void* c_this);
	[LinkName("QSslSocket_StartClientEncryption")]
	public static extern void QSslSocket_StartClientEncryption(void* c_this);
	[LinkName("QSslSocket_StartServerEncryption")]
	public static extern void QSslSocket_StartServerEncryption(void* c_this);
	[LinkName("QSslSocket_IgnoreSslErrors2")]
	public static extern void QSslSocket_IgnoreSslErrors2(void* c_this);
	[LinkName("QSslSocket_Encrypted")]
	public static extern void QSslSocket_Encrypted(void* c_this);
	[LinkName("QSslSocket_PeerVerifyError")]
	public static extern void QSslSocket_PeerVerifyError(void* c_this, QSslError errorVal);
	[LinkName("QSslSocket_SslErrors")]
	public static extern void QSslSocket_SslErrors(void* c_this, QSslError[] errors);
	[LinkName("QSslSocket_ModeChanged")]
	public static extern void QSslSocket_ModeChanged(void* c_this, int64 newMode);
	[LinkName("QSslSocket_EncryptedBytesWritten")]
	public static extern void QSslSocket_EncryptedBytesWritten(void* c_this, int64 totalBytes);
	[LinkName("QSslSocket_PreSharedKeyAuthenticationRequired")]
	public static extern void QSslSocket_PreSharedKeyAuthenticationRequired(void* c_this, QSslPreSharedKeyAuthenticator authenticator);
	[LinkName("QSslSocket_NewSessionTicketReceived")]
	public static extern void QSslSocket_NewSessionTicketReceived(void* c_this);
	[LinkName("QSslSocket_AlertSent")]
	public static extern void QSslSocket_AlertSent(void* c_this, int64 level, int64 typeVal, char8[] description);
	[LinkName("QSslSocket_AlertReceived")]
	public static extern void QSslSocket_AlertReceived(void* c_this, int64 level, int64 typeVal, char8[] description);
	[LinkName("QSslSocket_HandshakeInterruptedOnError")]
	public static extern void QSslSocket_HandshakeInterruptedOnError(void* c_this, QSslError errorVal);
	[LinkName("QSslSocket_ReadData")]
	public static extern int64 QSslSocket_ReadData(void* c_this, char8[] data, int64 maxlen);
	[LinkName("QSslSocket_SkipData")]
	public static extern int64 QSslSocket_SkipData(void* c_this, int64 maxSize);
	[LinkName("QSslSocket_WriteData")]
	public static extern int64 QSslSocket_WriteData(void* c_this, char8[] data, int64 lenVal);
	[LinkName("QSslSocket_Tr2")]
	public static extern char8[] QSslSocket_Tr2(char8[] s, char8[] c);
	[LinkName("QSslSocket_Tr3")]
	public static extern char8[] QSslSocket_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QSslSocket_ConnectToHostEncrypted3")]
	public static extern void QSslSocket_ConnectToHostEncrypted3(void* c_this, char8[] hostName, uint16 port, int64 mode);
	[LinkName("QSslSocket_ConnectToHostEncrypted4")]
	public static extern void QSslSocket_ConnectToHostEncrypted4(void* c_this, char8[] hostName, uint16 port, int64 mode, int64 protocol);
	[LinkName("QSslSocket_ConnectToHostEncrypted42")]
	public static extern void QSslSocket_ConnectToHostEncrypted42(void* c_this, char8[] hostName, uint16 port, char8[] sslPeerName, int64 mode);
	[LinkName("QSslSocket_ConnectToHostEncrypted5")]
	public static extern void QSslSocket_ConnectToHostEncrypted5(void* c_this, char8[] hostName, uint16 port, char8[] sslPeerName, int64 mode, int64 protocol);
	[LinkName("QSslSocket_SetLocalCertificate2")]
	public static extern void QSslSocket_SetLocalCertificate2(void* c_this, char8[] fileName, int64 format);
	[LinkName("QSslSocket_SetPrivateKey2")]
	public static extern void QSslSocket_SetPrivateKey2(void* c_this, char8[] fileName, int64 algorithm);
	[LinkName("QSslSocket_SetPrivateKey3")]
	public static extern void QSslSocket_SetPrivateKey3(void* c_this, char8[] fileName, int64 algorithm, int64 format);
	[LinkName("QSslSocket_SetPrivateKey4")]
	public static extern void QSslSocket_SetPrivateKey4(void* c_this, char8[] fileName, int64 algorithm, int64 format, uint8[] passPhrase);
	[LinkName("QSslSocket_WaitForEncrypted1")]
	public static extern bool QSslSocket_WaitForEncrypted1(void* c_this, int32 msecs);
	[LinkName("QSslSocket_SupportedProtocols1")]
	public static extern int64[] QSslSocket_SupportedProtocols1(char8[] backendName);
	[LinkName("QSslSocket_IsProtocolSupported2")]
	public static extern bool QSslSocket_IsProtocolSupported2(int64 protocol, char8[] backendName);
	[LinkName("QSslSocket_ImplementedClasses1")]
	public static extern int64[] QSslSocket_ImplementedClasses1(char8[] backendName);
	[LinkName("QSslSocket_IsClassImplemented2")]
	public static extern bool QSslSocket_IsClassImplemented2(int64 cl, char8[] backendName);
	[LinkName("QSslSocket_SupportedFeatures1")]
	public static extern int64[] QSslSocket_SupportedFeatures1(char8[] backendName);
	[LinkName("QSslSocket_IsFeatureSupported2")]
	public static extern bool QSslSocket_IsFeatureSupported2(int64 feat, char8[] backendName);
}