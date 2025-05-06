using System;
using System.Interop;
namespace Qt;

public struct QAuthenticator
{
	[LinkName("QAuthenticator_new")]
	public static extern void* QAuthenticator_new();
	[LinkName("QAuthenticator_new2")]
	public static extern void* QAuthenticator_new2(QAuthenticator other);
	[LinkName("QAuthenticator_OperatorAssign")]
	public static extern void QAuthenticator_OperatorAssign(void* c_this, QAuthenticator other);
	[LinkName("QAuthenticator_OperatorEqual")]
	public static extern bool QAuthenticator_OperatorEqual(void* c_this, QAuthenticator other);
	[LinkName("QAuthenticator_OperatorNotEqual")]
	public static extern bool QAuthenticator_OperatorNotEqual(void* c_this, QAuthenticator other);
	[LinkName("QAuthenticator_User")]
	public static extern char8[] QAuthenticator_User(void* c_this);
	[LinkName("QAuthenticator_SetUser")]
	public static extern void QAuthenticator_SetUser(void* c_this, char8[] user);
	[LinkName("QAuthenticator_Password")]
	public static extern char8[] QAuthenticator_Password(void* c_this);
	[LinkName("QAuthenticator_SetPassword")]
	public static extern void QAuthenticator_SetPassword(void* c_this, char8[] password);
	[LinkName("QAuthenticator_Realm")]
	public static extern char8[] QAuthenticator_Realm(void* c_this);
	[LinkName("QAuthenticator_SetRealm")]
	public static extern void QAuthenticator_SetRealm(void* c_this, char8[] realm);
	[LinkName("QAuthenticator_Option")]
	public static extern QVariant QAuthenticator_Option(void* c_this, char8[] opt);
	[LinkName("QAuthenticator_Options")]
	public static extern void* QAuthenticator_Options(void* c_this);
	[LinkName("QAuthenticator_SetOption")]
	public static extern void QAuthenticator_SetOption(void* c_this, char8[] opt, QVariant value);
	[LinkName("QAuthenticator_IsNull")]
	public static extern bool QAuthenticator_IsNull(void* c_this);
	[LinkName("QAuthenticator_Detach")]
	public static extern void QAuthenticator_Detach(void* c_this);
}