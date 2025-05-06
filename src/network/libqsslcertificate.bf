using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSslCertificate__SubjectInfo
{
	Organization = 0,
	CommonName = 1,
	LocalityName = 2,
	OrganizationalUnitName = 3,
	CountryName = 4,
	StateOrProvinceName = 5,
	DistinguishedNameQualifier = 6,
	SerialNumber = 7,
	EmailAddress = 8,
}
[AllowDuplicates]
public enum QSslCertificate__PatternSyntax
{
	RegularExpression = 0,
	Wildcard = 1,
	FixedString = 2,
}
public struct QSslCertificate
{
	[LinkName("QSslCertificate_new")]
	public static extern void* QSslCertificate_new(QIODevice device);
	[LinkName("QSslCertificate_new2")]
	public static extern void* QSslCertificate_new2();
	[LinkName("QSslCertificate_new3")]
	public static extern void* QSslCertificate_new3(QSslCertificate other);
	[LinkName("QSslCertificate_new4")]
	public static extern void* QSslCertificate_new4(QIODevice device, int64 format);
	[LinkName("QSslCertificate_new5")]
	public static extern void* QSslCertificate_new5(uint8[] data);
	[LinkName("QSslCertificate_new6")]
	public static extern void* QSslCertificate_new6(uint8[] data, int64 format);
	[LinkName("QSslCertificate_OperatorAssign")]
	public static extern void QSslCertificate_OperatorAssign(void* c_this, QSslCertificate other);
	[LinkName("QSslCertificate_Swap")]
	public static extern void QSslCertificate_Swap(void* c_this, QSslCertificate other);
	[LinkName("QSslCertificate_OperatorEqual")]
	public static extern bool QSslCertificate_OperatorEqual(void* c_this, QSslCertificate other);
	[LinkName("QSslCertificate_OperatorNotEqual")]
	public static extern bool QSslCertificate_OperatorNotEqual(void* c_this, QSslCertificate other);
	[LinkName("QSslCertificate_IsNull")]
	public static extern bool QSslCertificate_IsNull(void* c_this);
	[LinkName("QSslCertificate_IsBlacklisted")]
	public static extern bool QSslCertificate_IsBlacklisted(void* c_this);
	[LinkName("QSslCertificate_IsSelfSigned")]
	public static extern bool QSslCertificate_IsSelfSigned(void* c_this);
	[LinkName("QSslCertificate_Clear")]
	public static extern void QSslCertificate_Clear(void* c_this);
	[LinkName("QSslCertificate_Version")]
	public static extern uint8[] QSslCertificate_Version(void* c_this);
	[LinkName("QSslCertificate_SerialNumber")]
	public static extern uint8[] QSslCertificate_SerialNumber(void* c_this);
	[LinkName("QSslCertificate_Digest")]
	public static extern uint8[] QSslCertificate_Digest(void* c_this);
	[LinkName("QSslCertificate_IssuerInfo")]
	public static extern char8[][] QSslCertificate_IssuerInfo(void* c_this, int64 info);
	[LinkName("QSslCertificate_IssuerInfoWithAttribute")]
	public static extern char8[][] QSslCertificate_IssuerInfoWithAttribute(void* c_this, uint8[] attribute);
	[LinkName("QSslCertificate_SubjectInfo")]
	public static extern char8[][] QSslCertificate_SubjectInfo(void* c_this, int64 info);
	[LinkName("QSslCertificate_SubjectInfoWithAttribute")]
	public static extern char8[][] QSslCertificate_SubjectInfoWithAttribute(void* c_this, uint8[] attribute);
	[LinkName("QSslCertificate_IssuerDisplayName")]
	public static extern char8[] QSslCertificate_IssuerDisplayName(void* c_this);
	[LinkName("QSslCertificate_SubjectDisplayName")]
	public static extern char8[] QSslCertificate_SubjectDisplayName(void* c_this);
	[LinkName("QSslCertificate_SubjectInfoAttributes")]
	public static extern uint8[][] QSslCertificate_SubjectInfoAttributes(void* c_this);
	[LinkName("QSslCertificate_IssuerInfoAttributes")]
	public static extern uint8[][] QSslCertificate_IssuerInfoAttributes(void* c_this);
	[LinkName("QSslCertificate_EffectiveDate")]
	public static extern QDateTime QSslCertificate_EffectiveDate(void* c_this);
	[LinkName("QSslCertificate_ExpiryDate")]
	public static extern QDateTime QSslCertificate_ExpiryDate(void* c_this);
	[LinkName("QSslCertificate_PublicKey")]
	public static extern QSslKey QSslCertificate_PublicKey(void* c_this);
	[LinkName("QSslCertificate_Extensions")]
	public static extern QSslCertificateExtension[] QSslCertificate_Extensions(void* c_this);
	[LinkName("QSslCertificate_ToPem")]
	public static extern uint8[] QSslCertificate_ToPem(void* c_this);
	[LinkName("QSslCertificate_ToDer")]
	public static extern uint8[] QSslCertificate_ToDer(void* c_this);
	[LinkName("QSslCertificate_ToText")]
	public static extern char8[] QSslCertificate_ToText(void* c_this);
	[LinkName("QSslCertificate_FromPath")]
	public static extern QSslCertificate[] QSslCertificate_FromPath(char8[] path);
	[LinkName("QSslCertificate_FromDevice")]
	public static extern QSslCertificate[] QSslCertificate_FromDevice(QIODevice device);
	[LinkName("QSslCertificate_FromData")]
	public static extern QSslCertificate[] QSslCertificate_FromData(uint8[] data);
	[LinkName("QSslCertificate_Verify")]
	public static extern QSslError[] QSslCertificate_Verify(QSslCertificate[] certificateChain);
	[LinkName("QSslCertificate_ImportPkcs12")]
	public static extern bool QSslCertificate_ImportPkcs12(QIODevice device, QSslKey key, QSslCertificate cert);
	[LinkName("QSslCertificate_Handle")]
	public static extern void QSslCertificate_Handle(void* c_this);
	[LinkName("QSslCertificate_Digest1")]
	public static extern uint8[] QSslCertificate_Digest1(void* c_this, int64 algorithm);
	[LinkName("QSslCertificate_FromPath2")]
	public static extern QSslCertificate[] QSslCertificate_FromPath2(char8[] path, int64 format);
	[LinkName("QSslCertificate_FromPath3")]
	public static extern QSslCertificate[] QSslCertificate_FromPath3(char8[] path, int64 format, int64 syntax);
	[LinkName("QSslCertificate_FromDevice2")]
	public static extern QSslCertificate[] QSslCertificate_FromDevice2(QIODevice device, int64 format);
	[LinkName("QSslCertificate_FromData2")]
	public static extern QSslCertificate[] QSslCertificate_FromData2(uint8[] data, int64 format);
	[LinkName("QSslCertificate_Verify2")]
	public static extern QSslError[] QSslCertificate_Verify2(QSslCertificate[] certificateChain, char8[] hostName);
	[LinkName("QSslCertificate_ImportPkcs124")]
	public static extern bool QSslCertificate_ImportPkcs124(QIODevice device, QSslKey key, QSslCertificate cert, QSslCertificate[] caCertificates);
	[LinkName("QSslCertificate_ImportPkcs125")]
	public static extern bool QSslCertificate_ImportPkcs125(QIODevice device, QSslKey key, QSslCertificate cert, QSslCertificate[] caCertificates, uint8[] passPhrase);
}