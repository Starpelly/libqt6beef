using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QNetworkAccessManager__Operation
{
	HeadOperation = 1,
	GetOperation = 2,
	PutOperation = 3,
	PostOperation = 4,
	DeleteOperation = 5,
	CustomOperation = 6,
	UnknownOperation = 0,
}
public struct QNetworkAccessManager
{
	[LinkName("QNetworkAccessManager_new")]
	public static extern void* QNetworkAccessManager_new();
	[LinkName("QNetworkAccessManager_new2")]
	public static extern void* QNetworkAccessManager_new2(QObject parent);
	[LinkName("QNetworkAccessManager_MetaObject")]
	public static extern QMetaObject QNetworkAccessManager_MetaObject(void* c_this);
	[LinkName("QNetworkAccessManager_Metacast")]
	public static extern void QNetworkAccessManager_Metacast(void* c_this, char8[] param1);
	[LinkName("QNetworkAccessManager_Metacall")]
	public static extern int32 QNetworkAccessManager_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QNetworkAccessManager_Tr")]
	public static extern char8[] QNetworkAccessManager_Tr(char8[] s);
	[LinkName("QNetworkAccessManager_SupportedSchemes")]
	public static extern char8[][] QNetworkAccessManager_SupportedSchemes(void* c_this);
	[LinkName("QNetworkAccessManager_ClearAccessCache")]
	public static extern void QNetworkAccessManager_ClearAccessCache(void* c_this);
	[LinkName("QNetworkAccessManager_ClearConnectionCache")]
	public static extern void QNetworkAccessManager_ClearConnectionCache(void* c_this);
	[LinkName("QNetworkAccessManager_Proxy")]
	public static extern QNetworkProxy QNetworkAccessManager_Proxy(void* c_this);
	[LinkName("QNetworkAccessManager_SetProxy")]
	public static extern void QNetworkAccessManager_SetProxy(void* c_this, QNetworkProxy proxy);
	[LinkName("QNetworkAccessManager_ProxyFactory")]
	public static extern QNetworkProxyFactory QNetworkAccessManager_ProxyFactory(void* c_this);
	[LinkName("QNetworkAccessManager_SetProxyFactory")]
	public static extern void QNetworkAccessManager_SetProxyFactory(void* c_this, QNetworkProxyFactory factory);
	[LinkName("QNetworkAccessManager_Cache")]
	public static extern QAbstractNetworkCache QNetworkAccessManager_Cache(void* c_this);
	[LinkName("QNetworkAccessManager_SetCache")]
	public static extern void QNetworkAccessManager_SetCache(void* c_this, QAbstractNetworkCache cache);
	[LinkName("QNetworkAccessManager_CookieJar")]
	public static extern QNetworkCookieJar QNetworkAccessManager_CookieJar(void* c_this);
	[LinkName("QNetworkAccessManager_SetCookieJar")]
	public static extern void QNetworkAccessManager_SetCookieJar(void* c_this, QNetworkCookieJar cookieJar);
	[LinkName("QNetworkAccessManager_SetStrictTransportSecurityEnabled")]
	public static extern void QNetworkAccessManager_SetStrictTransportSecurityEnabled(void* c_this, bool enabled);
	[LinkName("QNetworkAccessManager_IsStrictTransportSecurityEnabled")]
	public static extern bool QNetworkAccessManager_IsStrictTransportSecurityEnabled(void* c_this);
	[LinkName("QNetworkAccessManager_EnableStrictTransportSecurityStore")]
	public static extern void QNetworkAccessManager_EnableStrictTransportSecurityStore(void* c_this, bool enabled);
	[LinkName("QNetworkAccessManager_IsStrictTransportSecurityStoreEnabled")]
	public static extern bool QNetworkAccessManager_IsStrictTransportSecurityStoreEnabled(void* c_this);
	[LinkName("QNetworkAccessManager_AddStrictTransportSecurityHosts")]
	public static extern void QNetworkAccessManager_AddStrictTransportSecurityHosts(void* c_this, QHstsPolicy[] knownHosts);
	[LinkName("QNetworkAccessManager_StrictTransportSecurityHosts")]
	public static extern QHstsPolicy[] QNetworkAccessManager_StrictTransportSecurityHosts(void* c_this);
	[LinkName("QNetworkAccessManager_Head")]
	public static extern QNetworkReply QNetworkAccessManager_Head(void* c_this, QNetworkRequest request);
	[LinkName("QNetworkAccessManager_Get")]
	public static extern QNetworkReply QNetworkAccessManager_Get(void* c_this, QNetworkRequest request);
	[LinkName("QNetworkAccessManager_Post")]
	public static extern QNetworkReply QNetworkAccessManager_Post(void* c_this, QNetworkRequest request, QIODevice data);
	[LinkName("QNetworkAccessManager_Post2")]
	public static extern QNetworkReply QNetworkAccessManager_Post2(void* c_this, QNetworkRequest request, uint8[] data);
	[LinkName("QNetworkAccessManager_Put")]
	public static extern QNetworkReply QNetworkAccessManager_Put(void* c_this, QNetworkRequest request, QIODevice data);
	[LinkName("QNetworkAccessManager_Put2")]
	public static extern QNetworkReply QNetworkAccessManager_Put2(void* c_this, QNetworkRequest request, uint8[] data);
	[LinkName("QNetworkAccessManager_DeleteResource")]
	public static extern QNetworkReply QNetworkAccessManager_DeleteResource(void* c_this, QNetworkRequest request);
	[LinkName("QNetworkAccessManager_SendCustomRequest")]
	public static extern QNetworkReply QNetworkAccessManager_SendCustomRequest(void* c_this, QNetworkRequest request, uint8[] verb);
	[LinkName("QNetworkAccessManager_SendCustomRequest2")]
	public static extern QNetworkReply QNetworkAccessManager_SendCustomRequest2(void* c_this, QNetworkRequest request, uint8[] verb, uint8[] data);
	[LinkName("QNetworkAccessManager_Post3")]
	public static extern QNetworkReply QNetworkAccessManager_Post3(void* c_this, QNetworkRequest request, QHttpMultiPart multiPart);
	[LinkName("QNetworkAccessManager_Put3")]
	public static extern QNetworkReply QNetworkAccessManager_Put3(void* c_this, QNetworkRequest request, QHttpMultiPart multiPart);
	[LinkName("QNetworkAccessManager_SendCustomRequest3")]
	public static extern QNetworkReply QNetworkAccessManager_SendCustomRequest3(void* c_this, QNetworkRequest request, uint8[] verb, QHttpMultiPart multiPart);
	[LinkName("QNetworkAccessManager_ConnectToHostEncrypted")]
	public static extern void QNetworkAccessManager_ConnectToHostEncrypted(void* c_this, char8[] hostName);
	[LinkName("QNetworkAccessManager_ConnectToHostEncrypted2")]
	public static extern void QNetworkAccessManager_ConnectToHostEncrypted2(void* c_this, char8[] hostName, uint16 port, QSslConfiguration sslConfiguration, char8[] peerName);
	[LinkName("QNetworkAccessManager_ConnectToHost")]
	public static extern void QNetworkAccessManager_ConnectToHost(void* c_this, char8[] hostName);
	[LinkName("QNetworkAccessManager_SetRedirectPolicy")]
	public static extern void QNetworkAccessManager_SetRedirectPolicy(void* c_this, int64 policy);
	[LinkName("QNetworkAccessManager_RedirectPolicy")]
	public static extern int64 QNetworkAccessManager_RedirectPolicy(void* c_this);
	[LinkName("QNetworkAccessManager_AutoDeleteReplies")]
	public static extern bool QNetworkAccessManager_AutoDeleteReplies(void* c_this);
	[LinkName("QNetworkAccessManager_SetAutoDeleteReplies")]
	public static extern void QNetworkAccessManager_SetAutoDeleteReplies(void* c_this, bool autoDelete);
	[LinkName("QNetworkAccessManager_TransferTimeout")]
	public static extern int32 QNetworkAccessManager_TransferTimeout(void* c_this);
	[LinkName("QNetworkAccessManager_SetTransferTimeout")]
	public static extern void QNetworkAccessManager_SetTransferTimeout(void* c_this);
	[LinkName("QNetworkAccessManager_ProxyAuthenticationRequired")]
	public static extern void QNetworkAccessManager_ProxyAuthenticationRequired(void* c_this, QNetworkProxy proxy, QAuthenticator authenticator);
	[LinkName("QNetworkAccessManager_AuthenticationRequired")]
	public static extern void QNetworkAccessManager_AuthenticationRequired(void* c_this, QNetworkReply reply, QAuthenticator authenticator);
	[LinkName("QNetworkAccessManager_Finished")]
	public static extern void QNetworkAccessManager_Finished(void* c_this, QNetworkReply reply);
	[LinkName("QNetworkAccessManager_Encrypted")]
	public static extern void QNetworkAccessManager_Encrypted(void* c_this, QNetworkReply reply);
	[LinkName("QNetworkAccessManager_SslErrors")]
	public static extern void QNetworkAccessManager_SslErrors(void* c_this, QNetworkReply reply, QSslError[] errors);
	[LinkName("QNetworkAccessManager_PreSharedKeyAuthenticationRequired")]
	public static extern void QNetworkAccessManager_PreSharedKeyAuthenticationRequired(void* c_this, QNetworkReply reply, QSslPreSharedKeyAuthenticator authenticator);
	[LinkName("QNetworkAccessManager_CreateRequest")]
	public static extern QNetworkReply QNetworkAccessManager_CreateRequest(void* c_this, int64 op, QNetworkRequest request, QIODevice outgoingData);
	[LinkName("QNetworkAccessManager_SupportedSchemesImplementation")]
	public static extern char8[][] QNetworkAccessManager_SupportedSchemesImplementation(void* c_this);
	[LinkName("QNetworkAccessManager_Tr2")]
	public static extern char8[] QNetworkAccessManager_Tr2(char8[] s, char8[] c);
	[LinkName("QNetworkAccessManager_Tr3")]
	public static extern char8[] QNetworkAccessManager_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QNetworkAccessManager_EnableStrictTransportSecurityStore2")]
	public static extern void QNetworkAccessManager_EnableStrictTransportSecurityStore2(void* c_this, bool enabled, char8[] storeDir);
	[LinkName("QNetworkAccessManager_SendCustomRequest32")]
	public static extern QNetworkReply QNetworkAccessManager_SendCustomRequest32(void* c_this, QNetworkRequest request, uint8[] verb, QIODevice data);
	[LinkName("QNetworkAccessManager_ConnectToHostEncrypted22")]
	public static extern void QNetworkAccessManager_ConnectToHostEncrypted22(void* c_this, char8[] hostName, uint16 port);
	[LinkName("QNetworkAccessManager_ConnectToHostEncrypted3")]
	public static extern void QNetworkAccessManager_ConnectToHostEncrypted3(void* c_this, char8[] hostName, uint16 port, QSslConfiguration sslConfiguration);
	[LinkName("QNetworkAccessManager_ConnectToHost2")]
	public static extern void QNetworkAccessManager_ConnectToHost2(void* c_this, char8[] hostName, uint16 port);
	[LinkName("QNetworkAccessManager_SetTransferTimeout1")]
	public static extern void QNetworkAccessManager_SetTransferTimeout1(void* c_this, int32 timeout);
}