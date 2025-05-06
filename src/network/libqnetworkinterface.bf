using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QNetworkAddressEntry__DnsEligibilityStatus
{
	DnsEligibilityUnknown = -1,
	DnsIneligible = 0,
	DnsEligible = 1,
}
[AllowDuplicates]
public enum QNetworkInterface__InterfaceFlag
{
	IsUp = 1,
	IsRunning = 2,
	CanBroadcast = 4,
	IsLoopBack = 8,
	IsPointToPoint = 16,
	CanMulticast = 32,
}
[AllowDuplicates]
public enum QNetworkInterface__InterfaceType
{
	Loopback = 1,
	Virtual = 2,
	Ethernet = 3,
	Slip = 4,
	CanBus = 5,
	Ppp = 6,
	Fddi = 7,
	Wifi = 8,
	Ieee80211 = 8,
	Phonet = 9,
	Ieee802154 = 10,
	SixLoWPAN = 11,
	Ieee80216 = 12,
	Ieee1394 = 13,
	Unknown = 0,
}
public struct QNetworkAddressEntry
{
	[LinkName("QNetworkAddressEntry_new")]
	public static extern void* QNetworkAddressEntry_new();
	[LinkName("QNetworkAddressEntry_new2")]
	public static extern void* QNetworkAddressEntry_new2(QNetworkAddressEntry other);
	[LinkName("QNetworkAddressEntry_OperatorAssign")]
	public static extern void QNetworkAddressEntry_OperatorAssign(void* c_this, QNetworkAddressEntry other);
	[LinkName("QNetworkAddressEntry_Swap")]
	public static extern void QNetworkAddressEntry_Swap(void* c_this, QNetworkAddressEntry other);
	[LinkName("QNetworkAddressEntry_OperatorEqual")]
	public static extern bool QNetworkAddressEntry_OperatorEqual(void* c_this, QNetworkAddressEntry other);
	[LinkName("QNetworkAddressEntry_OperatorNotEqual")]
	public static extern bool QNetworkAddressEntry_OperatorNotEqual(void* c_this, QNetworkAddressEntry other);
	[LinkName("QNetworkAddressEntry_DnsEligibility")]
	public static extern int64 QNetworkAddressEntry_DnsEligibility(void* c_this);
	[LinkName("QNetworkAddressEntry_SetDnsEligibility")]
	public static extern void QNetworkAddressEntry_SetDnsEligibility(void* c_this, int64 status);
	[LinkName("QNetworkAddressEntry_Ip")]
	public static extern QHostAddress QNetworkAddressEntry_Ip(void* c_this);
	[LinkName("QNetworkAddressEntry_SetIp")]
	public static extern void QNetworkAddressEntry_SetIp(void* c_this, QHostAddress newIp);
	[LinkName("QNetworkAddressEntry_Netmask")]
	public static extern QHostAddress QNetworkAddressEntry_Netmask(void* c_this);
	[LinkName("QNetworkAddressEntry_SetNetmask")]
	public static extern void QNetworkAddressEntry_SetNetmask(void* c_this, QHostAddress newNetmask);
	[LinkName("QNetworkAddressEntry_PrefixLength")]
	public static extern int32 QNetworkAddressEntry_PrefixLength(void* c_this);
	[LinkName("QNetworkAddressEntry_SetPrefixLength")]
	public static extern void QNetworkAddressEntry_SetPrefixLength(void* c_this, int32 length);
	[LinkName("QNetworkAddressEntry_Broadcast")]
	public static extern QHostAddress QNetworkAddressEntry_Broadcast(void* c_this);
	[LinkName("QNetworkAddressEntry_SetBroadcast")]
	public static extern void QNetworkAddressEntry_SetBroadcast(void* c_this, QHostAddress newBroadcast);
	[LinkName("QNetworkAddressEntry_IsLifetimeKnown")]
	public static extern bool QNetworkAddressEntry_IsLifetimeKnown(void* c_this);
	[LinkName("QNetworkAddressEntry_PreferredLifetime")]
	public static extern QDeadlineTimer QNetworkAddressEntry_PreferredLifetime(void* c_this);
	[LinkName("QNetworkAddressEntry_ValidityLifetime")]
	public static extern QDeadlineTimer QNetworkAddressEntry_ValidityLifetime(void* c_this);
	[LinkName("QNetworkAddressEntry_SetAddressLifetime")]
	public static extern void QNetworkAddressEntry_SetAddressLifetime(void* c_this, QDeadlineTimer preferred, QDeadlineTimer validity);
	[LinkName("QNetworkAddressEntry_ClearAddressLifetime")]
	public static extern void QNetworkAddressEntry_ClearAddressLifetime(void* c_this);
	[LinkName("QNetworkAddressEntry_IsPermanent")]
	public static extern bool QNetworkAddressEntry_IsPermanent(void* c_this);
	[LinkName("QNetworkAddressEntry_IsTemporary")]
	public static extern bool QNetworkAddressEntry_IsTemporary(void* c_this);
}
public struct QNetworkInterface
{
	[LinkName("QNetworkInterface_new")]
	public static extern void* QNetworkInterface_new();
	[LinkName("QNetworkInterface_new2")]
	public static extern void* QNetworkInterface_new2(QNetworkInterface other);
	[LinkName("QNetworkInterface_OperatorAssign")]
	public static extern void QNetworkInterface_OperatorAssign(void* c_this, QNetworkInterface other);
	[LinkName("QNetworkInterface_Swap")]
	public static extern void QNetworkInterface_Swap(void* c_this, QNetworkInterface other);
	[LinkName("QNetworkInterface_IsValid")]
	public static extern bool QNetworkInterface_IsValid(void* c_this);
	[LinkName("QNetworkInterface_Index")]
	public static extern int32 QNetworkInterface_Index(void* c_this);
	[LinkName("QNetworkInterface_MaximumTransmissionUnit")]
	public static extern int32 QNetworkInterface_MaximumTransmissionUnit(void* c_this);
	[LinkName("QNetworkInterface_Name")]
	public static extern char8[] QNetworkInterface_Name(void* c_this);
	[LinkName("QNetworkInterface_HumanReadableName")]
	public static extern char8[] QNetworkInterface_HumanReadableName(void* c_this);
	[LinkName("QNetworkInterface_Flags")]
	public static extern int64 QNetworkInterface_Flags(void* c_this);
	[LinkName("QNetworkInterface_Type")]
	public static extern int64 QNetworkInterface_Type(void* c_this);
	[LinkName("QNetworkInterface_HardwareAddress")]
	public static extern char8[] QNetworkInterface_HardwareAddress(void* c_this);
	[LinkName("QNetworkInterface_AddressEntries")]
	public static extern QNetworkAddressEntry[] QNetworkInterface_AddressEntries(void* c_this);
	[LinkName("QNetworkInterface_InterfaceIndexFromName")]
	public static extern int32 QNetworkInterface_InterfaceIndexFromName(char8[] name);
	[LinkName("QNetworkInterface_InterfaceFromName")]
	public static extern QNetworkInterface QNetworkInterface_InterfaceFromName(char8[] name);
	[LinkName("QNetworkInterface_InterfaceFromIndex")]
	public static extern QNetworkInterface QNetworkInterface_InterfaceFromIndex(int32 index);
	[LinkName("QNetworkInterface_InterfaceNameFromIndex")]
	public static extern char8[] QNetworkInterface_InterfaceNameFromIndex(int32 index);
	[LinkName("QNetworkInterface_AllInterfaces")]
	public static extern QNetworkInterface[] QNetworkInterface_AllInterfaces();
	[LinkName("QNetworkInterface_AllAddresses")]
	public static extern QHostAddress[] QNetworkInterface_AllAddresses();
}