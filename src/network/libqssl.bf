using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSsl__KeyType
{
	PrivateKey = 0,
	PublicKey = 1,
}
[AllowDuplicates]
public enum QSsl__EncodingFormat
{
	Pem = 0,
	Der = 1,
}
[AllowDuplicates]
public enum QSsl__KeyAlgorithm
{
	Opaque = 0,
	Rsa = 1,
	Dsa = 2,
	Ec = 3,
	Dh = 4,
}
[AllowDuplicates]
public enum QSsl__AlternativeNameEntryType
{
	EmailEntry = 0,
	DnsEntry = 1,
	IpAddressEntry = 2,
}
[AllowDuplicates]
public enum QSsl__SslProtocol
{
	TlsV1_2 = 0,
	AnyProtocol = 1,
	SecureProtocols = 2,
	TlsV1_2OrLater = 3,
	DtlsV1_2 = 4,
	DtlsV1_2OrLater = 5,
	TlsV1_3 = 6,
	TlsV1_3OrLater = 7,
	UnknownProtocol = -1,
}
[AllowDuplicates]
public enum QSsl__SslOption
{
	SslOptionDisableEmptyFragments = 1,
	SslOptionDisableSessionTickets = 2,
	SslOptionDisableCompression = 4,
	SslOptionDisableServerNameIndication = 8,
	SslOptionDisableLegacyRenegotiation = 16,
	SslOptionDisableSessionSharing = 32,
	SslOptionDisableSessionPersistence = 64,
	SslOptionDisableServerCipherPreference = 128,
}
[AllowDuplicates]
public enum QSsl__AlertLevel
{
	Warning = 0,
	Fatal = 1,
	Unknown = 2,
}
[AllowDuplicates]
public enum QSsl__AlertType
{
	CloseNotify = 0,
	UnexpectedMessage = 10,
	BadRecordMac = 20,
	RecordOverflow = 22,
	DecompressionFailure = 30,
	HandshakeFailure = 40,
	NoCertificate = 41,
	BadCertificate = 42,
	UnsupportedCertificate = 43,
	CertificateRevoked = 44,
	CertificateExpired = 45,
	CertificateUnknown = 46,
	IllegalParameter = 47,
	UnknownCa = 48,
	AccessDenied = 49,
	DecodeError = 50,
	DecryptError = 51,
	ExportRestriction = 60,
	ProtocolVersion = 70,
	InsufficientSecurity = 71,
	InternalError = 80,
	InappropriateFallback = 86,
	UserCancelled = 90,
	NoRenegotiation = 100,
	MissingExtension = 109,
	UnsupportedExtension = 110,
	CertificateUnobtainable = 111,
	UnrecognizedName = 112,
	BadCertificateStatusResponse = 113,
	BadCertificateHashValue = 114,
	UnknownPskIdentity = 115,
	CertificateRequired = 116,
	NoApplicationProtocol = 120,
	UnknownAlertMessage = 255,
}
[AllowDuplicates]
public enum QSsl__ImplementedClass
{
	Key = 0,
	Certificate = 1,
	Socket = 2,
	DiffieHellman = 3,
	EllipticCurve = 4,
	Dtls = 5,
	DtlsCookie = 6,
}
[AllowDuplicates]
public enum QSsl__SupportedFeature
{
	CertificateVerification = 0,
	ClientSideAlpn = 1,
	ServerSideAlpn = 2,
	Ocsp = 3,
	Psk = 4,
	SessionTicket = 5,
	Alerts = 6,
}