using System;
using System.Interop;
namespace Qt;

public struct QSslCipher
{
	[LinkName("QSslCipher_new")]
	public static extern void* QSslCipher_new();
	[LinkName("QSslCipher_new2")]
	public static extern void* QSslCipher_new2(char8[] name);
	[LinkName("QSslCipher_new3")]
	public static extern void* QSslCipher_new3(char8[] name, int64 protocol);
	[LinkName("QSslCipher_new4")]
	public static extern void* QSslCipher_new4(QSslCipher other);
	[LinkName("QSslCipher_OperatorAssign")]
	public static extern void QSslCipher_OperatorAssign(void* c_this, QSslCipher other);
	[LinkName("QSslCipher_Swap")]
	public static extern void QSslCipher_Swap(void* c_this, QSslCipher other);
	[LinkName("QSslCipher_OperatorEqual")]
	public static extern bool QSslCipher_OperatorEqual(void* c_this, QSslCipher other);
	[LinkName("QSslCipher_OperatorNotEqual")]
	public static extern bool QSslCipher_OperatorNotEqual(void* c_this, QSslCipher other);
	[LinkName("QSslCipher_IsNull")]
	public static extern bool QSslCipher_IsNull(void* c_this);
	[LinkName("QSslCipher_Name")]
	public static extern char8[] QSslCipher_Name(void* c_this);
	[LinkName("QSslCipher_SupportedBits")]
	public static extern int32 QSslCipher_SupportedBits(void* c_this);
	[LinkName("QSslCipher_UsedBits")]
	public static extern int32 QSslCipher_UsedBits(void* c_this);
	[LinkName("QSslCipher_KeyExchangeMethod")]
	public static extern char8[] QSslCipher_KeyExchangeMethod(void* c_this);
	[LinkName("QSslCipher_AuthenticationMethod")]
	public static extern char8[] QSslCipher_AuthenticationMethod(void* c_this);
	[LinkName("QSslCipher_EncryptionMethod")]
	public static extern char8[] QSslCipher_EncryptionMethod(void* c_this);
	[LinkName("QSslCipher_ProtocolString")]
	public static extern char8[] QSslCipher_ProtocolString(void* c_this);
	[LinkName("QSslCipher_Protocol")]
	public static extern int64 QSslCipher_Protocol(void* c_this);
}