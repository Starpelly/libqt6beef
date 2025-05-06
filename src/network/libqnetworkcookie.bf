using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QNetworkCookie__RawForm
{
	NameAndValueOnly = 0,
	Full = 1,
}
[AllowDuplicates]
public enum QNetworkCookie__SameSite
{
	Default = 0,
	None = 1,
	Lax = 2,
	Strict = 3,
}
public struct QNetworkCookie
{
	[LinkName("QNetworkCookie_new")]
	public static extern void* QNetworkCookie_new();
	[LinkName("QNetworkCookie_new2")]
	public static extern void* QNetworkCookie_new2(QNetworkCookie other);
	[LinkName("QNetworkCookie_new3")]
	public static extern void* QNetworkCookie_new3(uint8[] name);
	[LinkName("QNetworkCookie_new4")]
	public static extern void* QNetworkCookie_new4(uint8[] name, uint8[] value);
	[LinkName("QNetworkCookie_OperatorAssign")]
	public static extern void QNetworkCookie_OperatorAssign(void* c_this, QNetworkCookie other);
	[LinkName("QNetworkCookie_Swap")]
	public static extern void QNetworkCookie_Swap(void* c_this, QNetworkCookie other);
	[LinkName("QNetworkCookie_OperatorEqual")]
	public static extern bool QNetworkCookie_OperatorEqual(void* c_this, QNetworkCookie other);
	[LinkName("QNetworkCookie_OperatorNotEqual")]
	public static extern bool QNetworkCookie_OperatorNotEqual(void* c_this, QNetworkCookie other);
	[LinkName("QNetworkCookie_IsSecure")]
	public static extern bool QNetworkCookie_IsSecure(void* c_this);
	[LinkName("QNetworkCookie_SetSecure")]
	public static extern void QNetworkCookie_SetSecure(void* c_this, bool enable);
	[LinkName("QNetworkCookie_IsHttpOnly")]
	public static extern bool QNetworkCookie_IsHttpOnly(void* c_this);
	[LinkName("QNetworkCookie_SetHttpOnly")]
	public static extern void QNetworkCookie_SetHttpOnly(void* c_this, bool enable);
	[LinkName("QNetworkCookie_SameSitePolicy")]
	public static extern int64 QNetworkCookie_SameSitePolicy(void* c_this);
	[LinkName("QNetworkCookie_SetSameSitePolicy")]
	public static extern void QNetworkCookie_SetSameSitePolicy(void* c_this, int64 sameSite);
	[LinkName("QNetworkCookie_IsSessionCookie")]
	public static extern bool QNetworkCookie_IsSessionCookie(void* c_this);
	[LinkName("QNetworkCookie_ExpirationDate")]
	public static extern QDateTime QNetworkCookie_ExpirationDate(void* c_this);
	[LinkName("QNetworkCookie_SetExpirationDate")]
	public static extern void QNetworkCookie_SetExpirationDate(void* c_this, QDateTime date);
	[LinkName("QNetworkCookie_Domain")]
	public static extern char8[] QNetworkCookie_Domain(void* c_this);
	[LinkName("QNetworkCookie_SetDomain")]
	public static extern void QNetworkCookie_SetDomain(void* c_this, char8[] domain);
	[LinkName("QNetworkCookie_Path")]
	public static extern char8[] QNetworkCookie_Path(void* c_this);
	[LinkName("QNetworkCookie_SetPath")]
	public static extern void QNetworkCookie_SetPath(void* c_this, char8[] path);
	[LinkName("QNetworkCookie_Name")]
	public static extern uint8[] QNetworkCookie_Name(void* c_this);
	[LinkName("QNetworkCookie_SetName")]
	public static extern void QNetworkCookie_SetName(void* c_this, uint8[] cookieName);
	[LinkName("QNetworkCookie_Value")]
	public static extern uint8[] QNetworkCookie_Value(void* c_this);
	[LinkName("QNetworkCookie_SetValue")]
	public static extern void QNetworkCookie_SetValue(void* c_this, uint8[] value);
	[LinkName("QNetworkCookie_ToRawForm")]
	public static extern uint8[] QNetworkCookie_ToRawForm(void* c_this);
	[LinkName("QNetworkCookie_HasSameIdentifier")]
	public static extern bool QNetworkCookie_HasSameIdentifier(void* c_this, QNetworkCookie other);
	[LinkName("QNetworkCookie_Normalize")]
	public static extern void QNetworkCookie_Normalize(void* c_this, QUrl url);
	[LinkName("QNetworkCookie_ParseCookies")]
	public static extern QNetworkCookie[] QNetworkCookie_ParseCookies(uint8[] cookieString);
	[LinkName("QNetworkCookie_ToRawForm1")]
	public static extern uint8[] QNetworkCookie_ToRawForm1(void* c_this, int64 form);
}