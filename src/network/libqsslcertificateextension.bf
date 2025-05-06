using System;
using System.Interop;
namespace Qt;

public struct QSslCertificateExtension
{
	[LinkName("QSslCertificateExtension_new")]
	public static extern void* QSslCertificateExtension_new();
	[LinkName("QSslCertificateExtension_new2")]
	public static extern void* QSslCertificateExtension_new2(QSslCertificateExtension other);
	[LinkName("QSslCertificateExtension_OperatorAssign")]
	public static extern void QSslCertificateExtension_OperatorAssign(void* c_this, QSslCertificateExtension other);
	[LinkName("QSslCertificateExtension_Swap")]
	public static extern void QSslCertificateExtension_Swap(void* c_this, QSslCertificateExtension other);
	[LinkName("QSslCertificateExtension_Oid")]
	public static extern char8[] QSslCertificateExtension_Oid(void* c_this);
	[LinkName("QSslCertificateExtension_Name")]
	public static extern char8[] QSslCertificateExtension_Name(void* c_this);
	[LinkName("QSslCertificateExtension_Value")]
	public static extern QVariant QSslCertificateExtension_Value(void* c_this);
	[LinkName("QSslCertificateExtension_IsCritical")]
	public static extern bool QSslCertificateExtension_IsCritical(void* c_this);
	[LinkName("QSslCertificateExtension_IsSupported")]
	public static extern bool QSslCertificateExtension_IsSupported(void* c_this);
}