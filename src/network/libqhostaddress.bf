using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QHostAddress__SpecialAddress
{
	Null = 0,
	Broadcast = 1,
	LocalHost = 2,
	LocalHostIPv6 = 3,
	Any = 4,
	AnyIPv6 = 5,
	AnyIPv4 = 6,
}
[AllowDuplicates]
public enum QHostAddress__ConversionModeFlag
{
	ConvertV4MappedToIPv4 = 1,
	ConvertV4CompatToIPv4 = 2,
	ConvertUnspecifiedAddress = 4,
	ConvertLocalHost = 8,
	TolerantConversion = 255,
	StrictConversion = 0,
}
public struct QIPv6Address
{
	[LinkName("QIPv6Address_OperatorSubscript")]
	public static extern uint8 QIPv6Address_OperatorSubscript(void* c_this, int32 index);
}
public struct QHostAddress
{
	[LinkName("QHostAddress_new")]
	public static extern void* QHostAddress_new();
	[LinkName("QHostAddress_new2")]
	public static extern void* QHostAddress_new2(uint32 ip4Addr);
	[LinkName("QHostAddress_new3")]
	public static extern void* QHostAddress_new3(uint8 ip6Addr);
	[LinkName("QHostAddress_new4")]
	public static extern void* QHostAddress_new4(QIPv6Address ip6Addr);
	[LinkName("QHostAddress_new5")]
	public static extern void* QHostAddress_new5(char8[] address);
	[LinkName("QHostAddress_new6")]
	public static extern void* QHostAddress_new6(QHostAddress copyVal);
	[LinkName("QHostAddress_new7")]
	public static extern void* QHostAddress_new7(int64 address);
	[LinkName("QHostAddress_OperatorAssign")]
	public static extern void QHostAddress_OperatorAssign(void* c_this, QHostAddress other);
	[LinkName("QHostAddress_OperatorAssignWithAddress")]
	public static extern void QHostAddress_OperatorAssignWithAddress(void* c_this, int64 address);
	[LinkName("QHostAddress_Swap")]
	public static extern void QHostAddress_Swap(void* c_this, QHostAddress other);
	[LinkName("QHostAddress_SetAddress")]
	public static extern void QHostAddress_SetAddress(void* c_this, uint32 ip4Addr);
	[LinkName("QHostAddress_SetAddressWithIp6Addr")]
	public static extern void QHostAddress_SetAddressWithIp6Addr(void* c_this, uint8 ip6Addr);
	[LinkName("QHostAddress_SetAddress2")]
	public static extern void QHostAddress_SetAddress2(void* c_this, QIPv6Address ip6Addr);
	[LinkName("QHostAddress_SetAddress3")]
	public static extern bool QHostAddress_SetAddress3(void* c_this, char8[] address);
	[LinkName("QHostAddress_SetAddress4")]
	public static extern void QHostAddress_SetAddress4(void* c_this, int64 address);
	[LinkName("QHostAddress_Protocol")]
	public static extern int64 QHostAddress_Protocol(void* c_this);
	[LinkName("QHostAddress_ToIPv4Address")]
	public static extern uint32 QHostAddress_ToIPv4Address(void* c_this);
	[LinkName("QHostAddress_ToIPv6Address")]
	public static extern QIPv6Address QHostAddress_ToIPv6Address(void* c_this);
	[LinkName("QHostAddress_ToString")]
	public static extern char8[] QHostAddress_ToString(void* c_this);
	[LinkName("QHostAddress_ScopeId")]
	public static extern char8[] QHostAddress_ScopeId(void* c_this);
	[LinkName("QHostAddress_SetScopeId")]
	public static extern void QHostAddress_SetScopeId(void* c_this, char8[] id);
	[LinkName("QHostAddress_IsEqual")]
	public static extern bool QHostAddress_IsEqual(void* c_this, QHostAddress address);
	[LinkName("QHostAddress_OperatorEqual")]
	public static extern bool QHostAddress_OperatorEqual(void* c_this, QHostAddress address);
	[LinkName("QHostAddress_OperatorEqualWithAddress")]
	public static extern bool QHostAddress_OperatorEqualWithAddress(void* c_this, int64 address);
	[LinkName("QHostAddress_OperatorNotEqual")]
	public static extern bool QHostAddress_OperatorNotEqual(void* c_this, QHostAddress address);
	[LinkName("QHostAddress_OperatorNotEqualWithAddress")]
	public static extern bool QHostAddress_OperatorNotEqualWithAddress(void* c_this, int64 address);
	[LinkName("QHostAddress_IsNull")]
	public static extern bool QHostAddress_IsNull(void* c_this);
	[LinkName("QHostAddress_Clear")]
	public static extern void QHostAddress_Clear(void* c_this);
	[LinkName("QHostAddress_IsInSubnet")]
	public static extern bool QHostAddress_IsInSubnet(void* c_this, QHostAddress subnet, int32 netmask);
	[LinkName("QHostAddress_IsInSubnetWithSubnet")]
	public static extern bool QHostAddress_IsInSubnetWithSubnet(void* c_this, void* subnet);
	[LinkName("QHostAddress_IsLoopback")]
	public static extern bool QHostAddress_IsLoopback(void* c_this);
	[LinkName("QHostAddress_IsGlobal")]
	public static extern bool QHostAddress_IsGlobal(void* c_this);
	[LinkName("QHostAddress_IsLinkLocal")]
	public static extern bool QHostAddress_IsLinkLocal(void* c_this);
	[LinkName("QHostAddress_IsSiteLocal")]
	public static extern bool QHostAddress_IsSiteLocal(void* c_this);
	[LinkName("QHostAddress_IsUniqueLocalUnicast")]
	public static extern bool QHostAddress_IsUniqueLocalUnicast(void* c_this);
	[LinkName("QHostAddress_IsMulticast")]
	public static extern bool QHostAddress_IsMulticast(void* c_this);
	[LinkName("QHostAddress_IsBroadcast")]
	public static extern bool QHostAddress_IsBroadcast(void* c_this);
	[LinkName("QHostAddress_ParseSubnet")]
	public static extern void* QHostAddress_ParseSubnet(char8[] subnet);
	[LinkName("QHostAddress_ToIPv4Address1")]
	public static extern uint32 QHostAddress_ToIPv4Address1(void* c_this, bool ok);
	[LinkName("QHostAddress_IsEqual2")]
	public static extern bool QHostAddress_IsEqual2(void* c_this, QHostAddress address, int64 mode);
}