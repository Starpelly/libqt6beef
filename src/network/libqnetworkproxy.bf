using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QNetworkProxyQuery__QueryType
{
	TcpSocket = 0,
	UdpSocket = 1,
	SctpSocket = 2,
	TcpServer = 100,
	UrlRequest = 101,
	SctpServer = 102,
}
[AllowDuplicates]
public enum QNetworkProxy__ProxyType
{
	DefaultProxy = 0,
	Socks5Proxy = 1,
	NoProxy = 2,
	HttpProxy = 3,
	HttpCachingProxy = 4,
	FtpCachingProxy = 5,
}
[AllowDuplicates]
public enum QNetworkProxy__Capability
{
	TunnelingCapability = 1,
	ListeningCapability = 2,
	UdpTunnelingCapability = 4,
	CachingCapability = 8,
	HostNameLookupCapability = 16,
	SctpTunnelingCapability = 32,
	SctpListeningCapability = 64,
}
public struct QNetworkProxyQuery
{
	[LinkName("QNetworkProxyQuery_new")]
	public static extern void* QNetworkProxyQuery_new();
	[LinkName("QNetworkProxyQuery_new2")]
	public static extern void* QNetworkProxyQuery_new2(QUrl requestUrl);
	[LinkName("QNetworkProxyQuery_new3")]
	public static extern void* QNetworkProxyQuery_new3(char8[] hostname, int32 port);
	[LinkName("QNetworkProxyQuery_new4")]
	public static extern void* QNetworkProxyQuery_new4(uint16 bindPort);
	[LinkName("QNetworkProxyQuery_new5")]
	public static extern void* QNetworkProxyQuery_new5(QNetworkProxyQuery other);
	[LinkName("QNetworkProxyQuery_new6")]
	public static extern void* QNetworkProxyQuery_new6(QUrl requestUrl, int64 queryType);
	[LinkName("QNetworkProxyQuery_new7")]
	public static extern void* QNetworkProxyQuery_new7(char8[] hostname, int32 port, char8[] protocolTag);
	[LinkName("QNetworkProxyQuery_new8")]
	public static extern void* QNetworkProxyQuery_new8(char8[] hostname, int32 port, char8[] protocolTag, int64 queryType);
	[LinkName("QNetworkProxyQuery_new9")]
	public static extern void* QNetworkProxyQuery_new9(uint16 bindPort, char8[] protocolTag);
	[LinkName("QNetworkProxyQuery_new10")]
	public static extern void* QNetworkProxyQuery_new10(uint16 bindPort, char8[] protocolTag, int64 queryType);
	[LinkName("QNetworkProxyQuery_OperatorAssign")]
	public static extern void QNetworkProxyQuery_OperatorAssign(void* c_this, QNetworkProxyQuery other);
	[LinkName("QNetworkProxyQuery_Swap")]
	public static extern void QNetworkProxyQuery_Swap(void* c_this, QNetworkProxyQuery other);
	[LinkName("QNetworkProxyQuery_OperatorEqual")]
	public static extern bool QNetworkProxyQuery_OperatorEqual(void* c_this, QNetworkProxyQuery other);
	[LinkName("QNetworkProxyQuery_OperatorNotEqual")]
	public static extern bool QNetworkProxyQuery_OperatorNotEqual(void* c_this, QNetworkProxyQuery other);
	[LinkName("QNetworkProxyQuery_QueryType")]
	public static extern int64 QNetworkProxyQuery_QueryType(void* c_this);
	[LinkName("QNetworkProxyQuery_SetQueryType")]
	public static extern void QNetworkProxyQuery_SetQueryType(void* c_this, int64 typeVal);
	[LinkName("QNetworkProxyQuery_PeerPort")]
	public static extern int32 QNetworkProxyQuery_PeerPort(void* c_this);
	[LinkName("QNetworkProxyQuery_SetPeerPort")]
	public static extern void QNetworkProxyQuery_SetPeerPort(void* c_this, int32 port);
	[LinkName("QNetworkProxyQuery_PeerHostName")]
	public static extern char8[] QNetworkProxyQuery_PeerHostName(void* c_this);
	[LinkName("QNetworkProxyQuery_SetPeerHostName")]
	public static extern void QNetworkProxyQuery_SetPeerHostName(void* c_this, char8[] hostname);
	[LinkName("QNetworkProxyQuery_LocalPort")]
	public static extern int32 QNetworkProxyQuery_LocalPort(void* c_this);
	[LinkName("QNetworkProxyQuery_SetLocalPort")]
	public static extern void QNetworkProxyQuery_SetLocalPort(void* c_this, int32 port);
	[LinkName("QNetworkProxyQuery_ProtocolTag")]
	public static extern char8[] QNetworkProxyQuery_ProtocolTag(void* c_this);
	[LinkName("QNetworkProxyQuery_SetProtocolTag")]
	public static extern void QNetworkProxyQuery_SetProtocolTag(void* c_this, char8[] protocolTag);
	[LinkName("QNetworkProxyQuery_Url")]
	public static extern QUrl QNetworkProxyQuery_Url(void* c_this);
	[LinkName("QNetworkProxyQuery_SetUrl")]
	public static extern void QNetworkProxyQuery_SetUrl(void* c_this, QUrl url);
}
public struct QNetworkProxy
{
	[LinkName("QNetworkProxy_new")]
	public static extern void* QNetworkProxy_new();
	[LinkName("QNetworkProxy_new2")]
	public static extern void* QNetworkProxy_new2(int64 typeVal);
	[LinkName("QNetworkProxy_new3")]
	public static extern void* QNetworkProxy_new3(QNetworkProxy other);
	[LinkName("QNetworkProxy_new4")]
	public static extern void* QNetworkProxy_new4(int64 typeVal, char8[] hostName);
	[LinkName("QNetworkProxy_new5")]
	public static extern void* QNetworkProxy_new5(int64 typeVal, char8[] hostName, uint16 port);
	[LinkName("QNetworkProxy_new6")]
	public static extern void* QNetworkProxy_new6(int64 typeVal, char8[] hostName, uint16 port, char8[] user);
	[LinkName("QNetworkProxy_new7")]
	public static extern void* QNetworkProxy_new7(int64 typeVal, char8[] hostName, uint16 port, char8[] user, char8[] password);
	[LinkName("QNetworkProxy_OperatorAssign")]
	public static extern void QNetworkProxy_OperatorAssign(void* c_this, QNetworkProxy other);
	[LinkName("QNetworkProxy_Swap")]
	public static extern void QNetworkProxy_Swap(void* c_this, QNetworkProxy other);
	[LinkName("QNetworkProxy_OperatorEqual")]
	public static extern bool QNetworkProxy_OperatorEqual(void* c_this, QNetworkProxy other);
	[LinkName("QNetworkProxy_OperatorNotEqual")]
	public static extern bool QNetworkProxy_OperatorNotEqual(void* c_this, QNetworkProxy other);
	[LinkName("QNetworkProxy_SetType")]
	public static extern void QNetworkProxy_SetType(void* c_this, int64 typeVal);
	[LinkName("QNetworkProxy_Type")]
	public static extern int64 QNetworkProxy_Type(void* c_this);
	[LinkName("QNetworkProxy_SetCapabilities")]
	public static extern void QNetworkProxy_SetCapabilities(void* c_this, int64 capab);
	[LinkName("QNetworkProxy_Capabilities")]
	public static extern int64 QNetworkProxy_Capabilities(void* c_this);
	[LinkName("QNetworkProxy_IsCachingProxy")]
	public static extern bool QNetworkProxy_IsCachingProxy(void* c_this);
	[LinkName("QNetworkProxy_IsTransparentProxy")]
	public static extern bool QNetworkProxy_IsTransparentProxy(void* c_this);
	[LinkName("QNetworkProxy_SetUser")]
	public static extern void QNetworkProxy_SetUser(void* c_this, char8[] userName);
	[LinkName("QNetworkProxy_User")]
	public static extern char8[] QNetworkProxy_User(void* c_this);
	[LinkName("QNetworkProxy_SetPassword")]
	public static extern void QNetworkProxy_SetPassword(void* c_this, char8[] password);
	[LinkName("QNetworkProxy_Password")]
	public static extern char8[] QNetworkProxy_Password(void* c_this);
	[LinkName("QNetworkProxy_SetHostName")]
	public static extern void QNetworkProxy_SetHostName(void* c_this, char8[] hostName);
	[LinkName("QNetworkProxy_HostName")]
	public static extern char8[] QNetworkProxy_HostName(void* c_this);
	[LinkName("QNetworkProxy_SetPort")]
	public static extern void QNetworkProxy_SetPort(void* c_this, uint16 port);
	[LinkName("QNetworkProxy_Port")]
	public static extern uint16 QNetworkProxy_Port(void* c_this);
	[LinkName("QNetworkProxy_SetApplicationProxy")]
	public static extern void QNetworkProxy_SetApplicationProxy(QNetworkProxy proxy);
	[LinkName("QNetworkProxy_ApplicationProxy")]
	public static extern QNetworkProxy QNetworkProxy_ApplicationProxy();
	[LinkName("QNetworkProxy_Header")]
	public static extern QVariant QNetworkProxy_Header(void* c_this, int64 header);
	[LinkName("QNetworkProxy_SetHeader")]
	public static extern void QNetworkProxy_SetHeader(void* c_this, int64 header, QVariant value);
	[LinkName("QNetworkProxy_HasRawHeader")]
	public static extern bool QNetworkProxy_HasRawHeader(void* c_this, uint8[] headerName);
	[LinkName("QNetworkProxy_RawHeaderList")]
	public static extern uint8[][] QNetworkProxy_RawHeaderList(void* c_this);
	[LinkName("QNetworkProxy_RawHeader")]
	public static extern uint8[] QNetworkProxy_RawHeader(void* c_this, uint8[] headerName);
	[LinkName("QNetworkProxy_SetRawHeader")]
	public static extern void QNetworkProxy_SetRawHeader(void* c_this, uint8[] headerName, uint8[] value);
}
public struct QNetworkProxyFactory
{
	[LinkName("QNetworkProxyFactory_new")]
	public static extern void* QNetworkProxyFactory_new();
	[LinkName("QNetworkProxyFactory_QueryProxy")]
	public static extern QNetworkProxy[] QNetworkProxyFactory_QueryProxy(void* c_this, QNetworkProxyQuery query);
	[LinkName("QNetworkProxyFactory_UsesSystemConfiguration")]
	public static extern bool QNetworkProxyFactory_UsesSystemConfiguration();
	[LinkName("QNetworkProxyFactory_SetUseSystemConfiguration")]
	public static extern void QNetworkProxyFactory_SetUseSystemConfiguration(bool enable);
	[LinkName("QNetworkProxyFactory_SetApplicationProxyFactory")]
	public static extern void QNetworkProxyFactory_SetApplicationProxyFactory(QNetworkProxyFactory factory);
	[LinkName("QNetworkProxyFactory_ProxyForQuery")]
	public static extern QNetworkProxy[] QNetworkProxyFactory_ProxyForQuery(QNetworkProxyQuery query);
	[LinkName("QNetworkProxyFactory_SystemProxyForQuery")]
	public static extern QNetworkProxy[] QNetworkProxyFactory_SystemProxyForQuery();
	[LinkName("QNetworkProxyFactory_OperatorAssign")]
	public static extern void QNetworkProxyFactory_OperatorAssign(void* c_this, QNetworkProxyFactory param1);
	[LinkName("QNetworkProxyFactory_SystemProxyForQuery1")]
	public static extern QNetworkProxy[] QNetworkProxyFactory_SystemProxyForQuery1(QNetworkProxyQuery query);
}