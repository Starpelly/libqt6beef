using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QOcspCertificateStatus
{
	Good = 0,
	Revoked = 1,
	Unknown = 2,
}
[AllowDuplicates]
public enum QOcspRevocationReason
{
	None = -1,
	Unspecified = 0,
	KeyCompromise = 1,
	CACompromise = 2,
	AffiliationChanged = 3,
	Superseded = 4,
	CessationOfOperation = 5,
	CertificateHold = 6,
	RemoveFromCRL = 7,
}
public struct QOcspResponse
{
	[LinkName("QOcspResponse_new")]
	public static extern void* QOcspResponse_new();
	[LinkName("QOcspResponse_new2")]
	public static extern void* QOcspResponse_new2(QOcspResponse other);
	[LinkName("QOcspResponse_OperatorAssign")]
	public static extern void QOcspResponse_OperatorAssign(void* c_this, QOcspResponse other);
	[LinkName("QOcspResponse_CertificateStatus")]
	public static extern void QOcspResponse_CertificateStatus(void* c_this);
	[LinkName("QOcspResponse_RevocationReason")]
	public static extern void QOcspResponse_RevocationReason(void* c_this);
	[LinkName("QOcspResponse_Responder")]
	public static extern QSslCertificate QOcspResponse_Responder(void* c_this);
	[LinkName("QOcspResponse_Subject")]
	public static extern QSslCertificate QOcspResponse_Subject(void* c_this);
	[LinkName("QOcspResponse_Swap")]
	public static extern void QOcspResponse_Swap(void* c_this, QOcspResponse other);
}