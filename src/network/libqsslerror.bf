using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSslError__SslError
{
	NoError = 0,
	UnableToGetIssuerCertificate = 1,
	UnableToDecryptCertificateSignature = 2,
	UnableToDecodeIssuerPublicKey = 3,
	CertificateSignatureFailed = 4,
	CertificateNotYetValid = 5,
	CertificateExpired = 6,
	InvalidNotBeforeField = 7,
	InvalidNotAfterField = 8,
	SelfSignedCertificate = 9,
	SelfSignedCertificateInChain = 10,
	UnableToGetLocalIssuerCertificate = 11,
	UnableToVerifyFirstCertificate = 12,
	CertificateRevoked = 13,
	InvalidCaCertificate = 14,
	PathLengthExceeded = 15,
	InvalidPurpose = 16,
	CertificateUntrusted = 17,
	CertificateRejected = 18,
	SubjectIssuerMismatch = 19,
	AuthorityIssuerSerialNumberMismatch = 20,
	NoPeerCertificate = 21,
	HostNameMismatch = 22,
	NoSslSupport = 23,
	CertificateBlacklisted = 24,
	CertificateStatusUnknown = 25,
	OcspNoResponseFound = 26,
	OcspMalformedRequest = 27,
	OcspMalformedResponse = 28,
	OcspInternalError = 29,
	OcspTryLater = 30,
	OcspSigRequred = 31,
	OcspUnauthorized = 32,
	OcspResponseCannotBeTrusted = 33,
	OcspResponseCertIdUnknown = 34,
	OcspResponseExpired = 35,
	OcspStatusUnknown = 36,
	UnspecifiedError = -1,
}
public struct QSslError
{
	[LinkName("QSslError_new")]
	public static extern void* QSslError_new();
	[LinkName("QSslError_new2")]
	public static extern void* QSslError_new2(int64 errorVal);
	[LinkName("QSslError_new3")]
	public static extern void* QSslError_new3(int64 errorVal, QSslCertificate certificate);
	[LinkName("QSslError_new4")]
	public static extern void* QSslError_new4(QSslError other);
	[LinkName("QSslError_Swap")]
	public static extern void QSslError_Swap(void* c_this, QSslError other);
	[LinkName("QSslError_OperatorAssign")]
	public static extern void QSslError_OperatorAssign(void* c_this, QSslError other);
	[LinkName("QSslError_OperatorEqual")]
	public static extern bool QSslError_OperatorEqual(void* c_this, QSslError other);
	[LinkName("QSslError_OperatorNotEqual")]
	public static extern bool QSslError_OperatorNotEqual(void* c_this, QSslError other);
	[LinkName("QSslError_Error")]
	public static extern int64 QSslError_Error(void* c_this);
	[LinkName("QSslError_ErrorString")]
	public static extern char8[] QSslError_ErrorString(void* c_this);
	[LinkName("QSslError_Certificate")]
	public static extern QSslCertificate QSslError_Certificate(void* c_this);
}