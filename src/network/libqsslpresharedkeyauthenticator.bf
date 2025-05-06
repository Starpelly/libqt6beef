using System;
using System.Interop;
namespace Qt;

public struct QSslPreSharedKeyAuthenticator
{
	[LinkName("QSslPreSharedKeyAuthenticator_new")]
	public static extern void* QSslPreSharedKeyAuthenticator_new();
	[LinkName("QSslPreSharedKeyAuthenticator_new2")]
	public static extern void* QSslPreSharedKeyAuthenticator_new2(QSslPreSharedKeyAuthenticator authenticator);
	[LinkName("QSslPreSharedKeyAuthenticator_OperatorAssign")]
	public static extern void QSslPreSharedKeyAuthenticator_OperatorAssign(void* c_this, QSslPreSharedKeyAuthenticator authenticator);
	[LinkName("QSslPreSharedKeyAuthenticator_Swap")]
	public static extern void QSslPreSharedKeyAuthenticator_Swap(void* c_this, QSslPreSharedKeyAuthenticator other);
	[LinkName("QSslPreSharedKeyAuthenticator_IdentityHint")]
	public static extern uint8[] QSslPreSharedKeyAuthenticator_IdentityHint(void* c_this);
	[LinkName("QSslPreSharedKeyAuthenticator_SetIdentity")]
	public static extern void QSslPreSharedKeyAuthenticator_SetIdentity(void* c_this, uint8[] identity);
	[LinkName("QSslPreSharedKeyAuthenticator_Identity")]
	public static extern uint8[] QSslPreSharedKeyAuthenticator_Identity(void* c_this);
	[LinkName("QSslPreSharedKeyAuthenticator_MaximumIdentityLength")]
	public static extern int32 QSslPreSharedKeyAuthenticator_MaximumIdentityLength(void* c_this);
	[LinkName("QSslPreSharedKeyAuthenticator_SetPreSharedKey")]
	public static extern void QSslPreSharedKeyAuthenticator_SetPreSharedKey(void* c_this, uint8[] preSharedKey);
	[LinkName("QSslPreSharedKeyAuthenticator_PreSharedKey")]
	public static extern uint8[] QSslPreSharedKeyAuthenticator_PreSharedKey(void* c_this);
	[LinkName("QSslPreSharedKeyAuthenticator_MaximumPreSharedKeyLength")]
	public static extern int32 QSslPreSharedKeyAuthenticator_MaximumPreSharedKeyLength(void* c_this);
}