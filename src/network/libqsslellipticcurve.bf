using System;
using System.Interop;
namespace Qt;

public struct QSslEllipticCurve
{
	[LinkName("QSslEllipticCurve_new")]
	public static extern void* QSslEllipticCurve_new(QSslEllipticCurve other);
	[LinkName("QSslEllipticCurve_new2")]
	public static extern void* QSslEllipticCurve_new2(QSslEllipticCurve other);
	[LinkName("QSslEllipticCurve_new3")]
	public static extern void* QSslEllipticCurve_new3();
	[LinkName("QSslEllipticCurve_new4")]
	public static extern void* QSslEllipticCurve_new4(QSslEllipticCurve param1);
	[LinkName("QSslEllipticCurve_FromShortName")]
	public static extern QSslEllipticCurve QSslEllipticCurve_FromShortName(char8[] name);
	[LinkName("QSslEllipticCurve_FromLongName")]
	public static extern QSslEllipticCurve QSslEllipticCurve_FromLongName(char8[] name);
	[LinkName("QSslEllipticCurve_ShortName")]
	public static extern char8[] QSslEllipticCurve_ShortName(void* c_this);
	[LinkName("QSslEllipticCurve_LongName")]
	public static extern char8[] QSslEllipticCurve_LongName(void* c_this);
	[LinkName("QSslEllipticCurve_IsValid")]
	public static extern bool QSslEllipticCurve_IsValid(void* c_this);
	[LinkName("QSslEllipticCurve_IsTlsNamedCurve")]
	public static extern bool QSslEllipticCurve_IsTlsNamedCurve(void* c_this);
}