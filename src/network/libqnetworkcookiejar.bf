using System;
using System.Interop;
namespace Qt;

public struct QNetworkCookieJar
{
	[LinkName("QNetworkCookieJar_new")]
	public static extern void* QNetworkCookieJar_new();
	[LinkName("QNetworkCookieJar_new2")]
	public static extern void* QNetworkCookieJar_new2(QObject parent);
	[LinkName("QNetworkCookieJar_MetaObject")]
	public static extern QMetaObject QNetworkCookieJar_MetaObject(void* c_this);
	[LinkName("QNetworkCookieJar_Metacast")]
	public static extern void QNetworkCookieJar_Metacast(void* c_this, char8[] param1);
	[LinkName("QNetworkCookieJar_Metacall")]
	public static extern int32 QNetworkCookieJar_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QNetworkCookieJar_Tr")]
	public static extern char8[] QNetworkCookieJar_Tr(char8[] s);
	[LinkName("QNetworkCookieJar_CookiesForUrl")]
	public static extern QNetworkCookie[] QNetworkCookieJar_CookiesForUrl(void* c_this, QUrl url);
	[LinkName("QNetworkCookieJar_SetCookiesFromUrl")]
	public static extern bool QNetworkCookieJar_SetCookiesFromUrl(void* c_this, QNetworkCookie[] cookieList, QUrl url);
	[LinkName("QNetworkCookieJar_InsertCookie")]
	public static extern bool QNetworkCookieJar_InsertCookie(void* c_this, QNetworkCookie cookie);
	[LinkName("QNetworkCookieJar_UpdateCookie")]
	public static extern bool QNetworkCookieJar_UpdateCookie(void* c_this, QNetworkCookie cookie);
	[LinkName("QNetworkCookieJar_DeleteCookie")]
	public static extern bool QNetworkCookieJar_DeleteCookie(void* c_this, QNetworkCookie cookie);
	[LinkName("QNetworkCookieJar_AllCookies")]
	public static extern QNetworkCookie[] QNetworkCookieJar_AllCookies(void* c_this);
	[LinkName("QNetworkCookieJar_SetAllCookies")]
	public static extern void QNetworkCookieJar_SetAllCookies(void* c_this, QNetworkCookie[] cookieList);
	[LinkName("QNetworkCookieJar_ValidateCookie")]
	public static extern bool QNetworkCookieJar_ValidateCookie(void* c_this, QNetworkCookie cookie, QUrl url);
	[LinkName("QNetworkCookieJar_Tr2")]
	public static extern char8[] QNetworkCookieJar_Tr2(char8[] s, char8[] c);
	[LinkName("QNetworkCookieJar_Tr3")]
	public static extern char8[] QNetworkCookieJar_Tr3(char8[] s, char8[] c, int32 n);
}