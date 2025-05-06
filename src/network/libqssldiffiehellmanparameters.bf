using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSslDiffieHellmanParameters__Error
{
	NoError = 0,
	InvalidInputDataError = 1,
	UnsafeParametersError = 2,
}
public struct QSslDiffieHellmanParameters
{
	[LinkName("QSslDiffieHellmanParameters_new")]
	public static extern void* QSslDiffieHellmanParameters_new();
	[LinkName("QSslDiffieHellmanParameters_new2")]
	public static extern void* QSslDiffieHellmanParameters_new2(QSslDiffieHellmanParameters other);
	[LinkName("QSslDiffieHellmanParameters_DefaultParameters")]
	public static extern QSslDiffieHellmanParameters QSslDiffieHellmanParameters_DefaultParameters();
	[LinkName("QSslDiffieHellmanParameters_OperatorAssign")]
	public static extern void QSslDiffieHellmanParameters_OperatorAssign(void* c_this, QSslDiffieHellmanParameters other);
	[LinkName("QSslDiffieHellmanParameters_Swap")]
	public static extern void QSslDiffieHellmanParameters_Swap(void* c_this, QSslDiffieHellmanParameters other);
	[LinkName("QSslDiffieHellmanParameters_FromEncoded")]
	public static extern QSslDiffieHellmanParameters QSslDiffieHellmanParameters_FromEncoded(uint8[] encoded);
	[LinkName("QSslDiffieHellmanParameters_FromEncodedWithDevice")]
	public static extern QSslDiffieHellmanParameters QSslDiffieHellmanParameters_FromEncodedWithDevice(QIODevice device);
	[LinkName("QSslDiffieHellmanParameters_IsEmpty")]
	public static extern bool QSslDiffieHellmanParameters_IsEmpty(void* c_this);
	[LinkName("QSslDiffieHellmanParameters_IsValid")]
	public static extern bool QSslDiffieHellmanParameters_IsValid(void* c_this);
	[LinkName("QSslDiffieHellmanParameters_Error")]
	public static extern int64 QSslDiffieHellmanParameters_Error(void* c_this);
	[LinkName("QSslDiffieHellmanParameters_ErrorString")]
	public static extern char8[] QSslDiffieHellmanParameters_ErrorString(void* c_this);
	[LinkName("QSslDiffieHellmanParameters_FromEncoded2")]
	public static extern QSslDiffieHellmanParameters QSslDiffieHellmanParameters_FromEncoded2(uint8[] encoded, int64 format);
	[LinkName("QSslDiffieHellmanParameters_FromEncoded22")]
	public static extern QSslDiffieHellmanParameters QSslDiffieHellmanParameters_FromEncoded22(QIODevice device, int64 format);
}