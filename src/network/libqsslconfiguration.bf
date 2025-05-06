using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSslConfiguration__NextProtocolNegotiationStatus
{
	NextProtocolNegotiationNone = 0,
	NextProtocolNegotiationNegotiated = 1,
	NextProtocolNegotiationUnsupported = 2,
}
public struct QSslConfiguration
{
	[LinkName("QSslConfiguration_new")]
	public static extern void* QSslConfiguration_new();
	[LinkName("QSslConfiguration_new2")]
	public static extern void* QSslConfiguration_new2(QSslConfiguration other);
	[LinkName("QSslConfiguration_OperatorAssign")]
	public static extern void QSslConfiguration_OperatorAssign(void* c_this, QSslConfiguration other);
	[LinkName("QSslConfiguration_Swap")]
	public static extern void QSslConfiguration_Swap(void* c_this, QSslConfiguration other);
	[LinkName("QSslConfiguration_OperatorEqual")]
	public static extern bool QSslConfiguration_OperatorEqual(void* c_this, QSslConfiguration other);
	[LinkName("QSslConfiguration_OperatorNotEqual")]
	public static extern bool QSslConfiguration_OperatorNotEqual(void* c_this, QSslConfiguration other);
	[LinkName("QSslConfiguration_IsNull")]
	public static extern bool QSslConfiguration_IsNull(void* c_this);
	[LinkName("QSslConfiguration_Protocol")]
	public static extern int64 QSslConfiguration_Protocol(void* c_this);
	[LinkName("QSslConfiguration_SetProtocol")]
	public static extern void QSslConfiguration_SetProtocol(void* c_this, int64 protocol);
	[LinkName("QSslConfiguration_PeerVerifyMode")]
	public static extern int64 QSslConfiguration_PeerVerifyMode(void* c_this);
	[LinkName("QSslConfiguration_SetPeerVerifyMode")]
	public static extern void QSslConfiguration_SetPeerVerifyMode(void* c_this, int64 mode);
	[LinkName("QSslConfiguration_PeerVerifyDepth")]
	public static extern int32 QSslConfiguration_PeerVerifyDepth(void* c_this);
	[LinkName("QSslConfiguration_SetPeerVerifyDepth")]
	public static extern void QSslConfiguration_SetPeerVerifyDepth(void* c_this, int32 depth);
	[LinkName("QSslConfiguration_LocalCertificateChain")]
	public static extern QSslCertificate[] QSslConfiguration_LocalCertificateChain(void* c_this);
	[LinkName("QSslConfiguration_SetLocalCertificateChain")]
	public static extern void QSslConfiguration_SetLocalCertificateChain(void* c_this, QSslCertificate[] localChain);
	[LinkName("QSslConfiguration_LocalCertificate")]
	public static extern QSslCertificate QSslConfiguration_LocalCertificate(void* c_this);
	[LinkName("QSslConfiguration_SetLocalCertificate")]
	public static extern void QSslConfiguration_SetLocalCertificate(void* c_this, QSslCertificate certificate);
	[LinkName("QSslConfiguration_PeerCertificate")]
	public static extern QSslCertificate QSslConfiguration_PeerCertificate(void* c_this);
	[LinkName("QSslConfiguration_PeerCertificateChain")]
	public static extern QSslCertificate[] QSslConfiguration_PeerCertificateChain(void* c_this);
	[LinkName("QSslConfiguration_SessionCipher")]
	public static extern QSslCipher QSslConfiguration_SessionCipher(void* c_this);
	[LinkName("QSslConfiguration_SessionProtocol")]
	public static extern int64 QSslConfiguration_SessionProtocol(void* c_this);
	[LinkName("QSslConfiguration_PrivateKey")]
	public static extern QSslKey QSslConfiguration_PrivateKey(void* c_this);
	[LinkName("QSslConfiguration_SetPrivateKey")]
	public static extern void QSslConfiguration_SetPrivateKey(void* c_this, QSslKey key);
	[LinkName("QSslConfiguration_Ciphers")]
	public static extern QSslCipher[] QSslConfiguration_Ciphers(void* c_this);
	[LinkName("QSslConfiguration_SetCiphers")]
	public static extern void QSslConfiguration_SetCiphers(void* c_this, QSslCipher[] ciphers);
	[LinkName("QSslConfiguration_SetCiphersWithCiphers")]
	public static extern void QSslConfiguration_SetCiphersWithCiphers(void* c_this, char8[] ciphers);
	[LinkName("QSslConfiguration_SupportedCiphers")]
	public static extern QSslCipher[] QSslConfiguration_SupportedCiphers();
	[LinkName("QSslConfiguration_CaCertificates")]
	public static extern QSslCertificate[] QSslConfiguration_CaCertificates(void* c_this);
	[LinkName("QSslConfiguration_SetCaCertificates")]
	public static extern void QSslConfiguration_SetCaCertificates(void* c_this, QSslCertificate[] certificates);
	[LinkName("QSslConfiguration_AddCaCertificates")]
	public static extern bool QSslConfiguration_AddCaCertificates(void* c_this, char8[] path);
	[LinkName("QSslConfiguration_AddCaCertificate")]
	public static extern void QSslConfiguration_AddCaCertificate(void* c_this, QSslCertificate certificate);
	[LinkName("QSslConfiguration_AddCaCertificatesWithCertificates")]
	public static extern void QSslConfiguration_AddCaCertificatesWithCertificates(void* c_this, QSslCertificate[] certificates);
	[LinkName("QSslConfiguration_SystemCaCertificates")]
	public static extern QSslCertificate[] QSslConfiguration_SystemCaCertificates();
	[LinkName("QSslConfiguration_SetSslOption")]
	public static extern void QSslConfiguration_SetSslOption(void* c_this, int64 option, bool on);
	[LinkName("QSslConfiguration_TestSslOption")]
	public static extern bool QSslConfiguration_TestSslOption(void* c_this, int64 option);
	[LinkName("QSslConfiguration_SessionTicket")]
	public static extern uint8[] QSslConfiguration_SessionTicket(void* c_this);
	[LinkName("QSslConfiguration_SetSessionTicket")]
	public static extern void QSslConfiguration_SetSessionTicket(void* c_this, uint8[] sessionTicket);
	[LinkName("QSslConfiguration_SessionTicketLifeTimeHint")]
	public static extern int32 QSslConfiguration_SessionTicketLifeTimeHint(void* c_this);
	[LinkName("QSslConfiguration_EphemeralServerKey")]
	public static extern QSslKey QSslConfiguration_EphemeralServerKey(void* c_this);
	[LinkName("QSslConfiguration_EllipticCurves")]
	public static extern QSslEllipticCurve[] QSslConfiguration_EllipticCurves(void* c_this);
	[LinkName("QSslConfiguration_SetEllipticCurves")]
	public static extern void QSslConfiguration_SetEllipticCurves(void* c_this, QSslEllipticCurve[] curves);
	[LinkName("QSslConfiguration_SupportedEllipticCurves")]
	public static extern QSslEllipticCurve[] QSslConfiguration_SupportedEllipticCurves();
	[LinkName("QSslConfiguration_PreSharedKeyIdentityHint")]
	public static extern uint8[] QSslConfiguration_PreSharedKeyIdentityHint(void* c_this);
	[LinkName("QSslConfiguration_SetPreSharedKeyIdentityHint")]
	public static extern void QSslConfiguration_SetPreSharedKeyIdentityHint(void* c_this, uint8[] hint);
	[LinkName("QSslConfiguration_DiffieHellmanParameters")]
	public static extern QSslDiffieHellmanParameters QSslConfiguration_DiffieHellmanParameters(void* c_this);
	[LinkName("QSslConfiguration_SetDiffieHellmanParameters")]
	public static extern void QSslConfiguration_SetDiffieHellmanParameters(void* c_this, QSslDiffieHellmanParameters dhparams);
	[LinkName("QSslConfiguration_SetBackendConfigurationOption")]
	public static extern void QSslConfiguration_SetBackendConfigurationOption(void* c_this, uint8[] name, QVariant value);
	[LinkName("QSslConfiguration_SetBackendConfiguration")]
	public static extern void QSslConfiguration_SetBackendConfiguration(void* c_this);
	[LinkName("QSslConfiguration_DefaultConfiguration")]
	public static extern QSslConfiguration QSslConfiguration_DefaultConfiguration();
	[LinkName("QSslConfiguration_SetDefaultConfiguration")]
	public static extern void QSslConfiguration_SetDefaultConfiguration(QSslConfiguration configuration);
	[LinkName("QSslConfiguration_DtlsCookieVerificationEnabled")]
	public static extern bool QSslConfiguration_DtlsCookieVerificationEnabled(void* c_this);
	[LinkName("QSslConfiguration_SetDtlsCookieVerificationEnabled")]
	public static extern void QSslConfiguration_SetDtlsCookieVerificationEnabled(void* c_this, bool enable);
	[LinkName("QSslConfiguration_DefaultDtlsConfiguration")]
	public static extern QSslConfiguration QSslConfiguration_DefaultDtlsConfiguration();
	[LinkName("QSslConfiguration_SetDefaultDtlsConfiguration")]
	public static extern void QSslConfiguration_SetDefaultDtlsConfiguration(QSslConfiguration configuration);
	[LinkName("QSslConfiguration_HandshakeMustInterruptOnError")]
	public static extern bool QSslConfiguration_HandshakeMustInterruptOnError(void* c_this);
	[LinkName("QSslConfiguration_SetHandshakeMustInterruptOnError")]
	public static extern void QSslConfiguration_SetHandshakeMustInterruptOnError(void* c_this, bool interrupt);
	[LinkName("QSslConfiguration_MissingCertificateIsFatal")]
	public static extern bool QSslConfiguration_MissingCertificateIsFatal(void* c_this);
	[LinkName("QSslConfiguration_SetMissingCertificateIsFatal")]
	public static extern void QSslConfiguration_SetMissingCertificateIsFatal(void* c_this, bool cannotRecover);
	[LinkName("QSslConfiguration_SetOcspStaplingEnabled")]
	public static extern void QSslConfiguration_SetOcspStaplingEnabled(void* c_this, bool enable);
	[LinkName("QSslConfiguration_OcspStaplingEnabled")]
	public static extern bool QSslConfiguration_OcspStaplingEnabled(void* c_this);
	[LinkName("QSslConfiguration_SetAllowedNextProtocols")]
	public static extern void QSslConfiguration_SetAllowedNextProtocols(void* c_this, uint8[][] protocols);
	[LinkName("QSslConfiguration_AllowedNextProtocols")]
	public static extern uint8[][] QSslConfiguration_AllowedNextProtocols(void* c_this);
	[LinkName("QSslConfiguration_NextNegotiatedProtocol")]
	public static extern uint8[] QSslConfiguration_NextNegotiatedProtocol(void* c_this);
	[LinkName("QSslConfiguration_NextProtocolNegotiationStatus")]
	public static extern int64 QSslConfiguration_NextProtocolNegotiationStatus(void* c_this);
	[LinkName("QSslConfiguration_AddCaCertificates2")]
	public static extern bool QSslConfiguration_AddCaCertificates2(void* c_this, char8[] path, int64 format);
	[LinkName("QSslConfiguration_AddCaCertificates3")]
	public static extern bool QSslConfiguration_AddCaCertificates3(void* c_this, char8[] path, int64 format, int64 syntax);
}