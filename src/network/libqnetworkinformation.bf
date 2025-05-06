using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QNetworkInformation__Reachability
{
	Unknown = 0,
	Disconnected = 1,
	Local = 2,
	Site = 3,
	Online = 4,
}
[AllowDuplicates]
public enum QNetworkInformation__TransportMedium
{
	Unknown = 0,
	Ethernet = 1,
	Cellular = 2,
	WiFi = 3,
	Bluetooth = 4,
}
[AllowDuplicates]
public enum QNetworkInformation__Feature
{
	Reachability = 1,
	CaptivePortal = 2,
	TransportMedium = 4,
	Metered = 8,
}
public struct QNetworkInformation
{
	[LinkName("QNetworkInformation_MetaObject")]
	public static extern QMetaObject QNetworkInformation_MetaObject(void* c_this);
	[LinkName("QNetworkInformation_Metacast")]
	public static extern void QNetworkInformation_Metacast(void* c_this, char8[] param1);
	[LinkName("QNetworkInformation_Metacall")]
	public static extern int32 QNetworkInformation_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QNetworkInformation_Tr")]
	public static extern char8[] QNetworkInformation_Tr(char8[] s);
	[LinkName("QNetworkInformation_Reachability")]
	public static extern int64 QNetworkInformation_Reachability(void* c_this);
	[LinkName("QNetworkInformation_IsBehindCaptivePortal")]
	public static extern bool QNetworkInformation_IsBehindCaptivePortal(void* c_this);
	[LinkName("QNetworkInformation_TransportMedium")]
	public static extern int64 QNetworkInformation_TransportMedium(void* c_this);
	[LinkName("QNetworkInformation_IsMetered")]
	public static extern bool QNetworkInformation_IsMetered(void* c_this);
	[LinkName("QNetworkInformation_BackendName")]
	public static extern char8[] QNetworkInformation_BackendName(void* c_this);
	[LinkName("QNetworkInformation_Supports")]
	public static extern bool QNetworkInformation_Supports(void* c_this, int64 features);
	[LinkName("QNetworkInformation_SupportedFeatures")]
	public static extern int64 QNetworkInformation_SupportedFeatures(void* c_this);
	[LinkName("QNetworkInformation_LoadDefaultBackend")]
	public static extern bool QNetworkInformation_LoadDefaultBackend();
	[LinkName("QNetworkInformation_LoadBackendByFeatures")]
	public static extern bool QNetworkInformation_LoadBackendByFeatures(int64 features);
	[LinkName("QNetworkInformation_LoadWithFeatures")]
	public static extern bool QNetworkInformation_LoadWithFeatures(int64 features);
	[LinkName("QNetworkInformation_AvailableBackends")]
	public static extern char8[][] QNetworkInformation_AvailableBackends();
	[LinkName("QNetworkInformation_Instance")]
	public static extern QNetworkInformation QNetworkInformation_Instance();
	[LinkName("QNetworkInformation_ReachabilityChanged")]
	public static extern void QNetworkInformation_ReachabilityChanged(void* c_this, int64 newReachability);
	[LinkName("QNetworkInformation_IsBehindCaptivePortalChanged")]
	public static extern void QNetworkInformation_IsBehindCaptivePortalChanged(void* c_this, bool state);
	[LinkName("QNetworkInformation_TransportMediumChanged")]
	public static extern void QNetworkInformation_TransportMediumChanged(void* c_this, int64 current);
	[LinkName("QNetworkInformation_IsMeteredChanged")]
	public static extern void QNetworkInformation_IsMeteredChanged(void* c_this, bool isMetered);
	[LinkName("QNetworkInformation_Tr2")]
	public static extern char8[] QNetworkInformation_Tr2(char8[] s, char8[] c);
	[LinkName("QNetworkInformation_Tr3")]
	public static extern char8[] QNetworkInformation_Tr3(char8[] s, char8[] c, int32 n);
}