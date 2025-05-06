using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDnsLookup__Error
{
	NoError = 0,
	ResolverError = 1,
	OperationCancelledError = 2,
	InvalidRequestError = 3,
	InvalidReplyError = 4,
	ServerFailureError = 5,
	ServerRefusedError = 6,
	NotFoundError = 7,
}
[AllowDuplicates]
public enum QDnsLookup__Type
{
	A = 1,
	AAAA = 28,
	ANY = 255,
	CNAME = 5,
	MX = 15,
	NS = 2,
	PTR = 12,
	SRV = 33,
	TXT = 16,
}
public struct QDnsDomainNameRecord
{
	[LinkName("QDnsDomainNameRecord_new")]
	public static extern void* QDnsDomainNameRecord_new();
	[LinkName("QDnsDomainNameRecord_new2")]
	public static extern void* QDnsDomainNameRecord_new2(QDnsDomainNameRecord other);
	[LinkName("QDnsDomainNameRecord_OperatorAssign")]
	public static extern void QDnsDomainNameRecord_OperatorAssign(void* c_this, QDnsDomainNameRecord other);
	[LinkName("QDnsDomainNameRecord_Swap")]
	public static extern void QDnsDomainNameRecord_Swap(void* c_this, QDnsDomainNameRecord other);
	[LinkName("QDnsDomainNameRecord_Name")]
	public static extern char8[] QDnsDomainNameRecord_Name(void* c_this);
	[LinkName("QDnsDomainNameRecord_TimeToLive")]
	public static extern uint32 QDnsDomainNameRecord_TimeToLive(void* c_this);
	[LinkName("QDnsDomainNameRecord_Value")]
	public static extern char8[] QDnsDomainNameRecord_Value(void* c_this);
}
public struct QDnsHostAddressRecord
{
	[LinkName("QDnsHostAddressRecord_new")]
	public static extern void* QDnsHostAddressRecord_new();
	[LinkName("QDnsHostAddressRecord_new2")]
	public static extern void* QDnsHostAddressRecord_new2(QDnsHostAddressRecord other);
	[LinkName("QDnsHostAddressRecord_OperatorAssign")]
	public static extern void QDnsHostAddressRecord_OperatorAssign(void* c_this, QDnsHostAddressRecord other);
	[LinkName("QDnsHostAddressRecord_Swap")]
	public static extern void QDnsHostAddressRecord_Swap(void* c_this, QDnsHostAddressRecord other);
	[LinkName("QDnsHostAddressRecord_Name")]
	public static extern char8[] QDnsHostAddressRecord_Name(void* c_this);
	[LinkName("QDnsHostAddressRecord_TimeToLive")]
	public static extern uint32 QDnsHostAddressRecord_TimeToLive(void* c_this);
	[LinkName("QDnsHostAddressRecord_Value")]
	public static extern QHostAddress QDnsHostAddressRecord_Value(void* c_this);
}
public struct QDnsMailExchangeRecord
{
	[LinkName("QDnsMailExchangeRecord_new")]
	public static extern void* QDnsMailExchangeRecord_new();
	[LinkName("QDnsMailExchangeRecord_new2")]
	public static extern void* QDnsMailExchangeRecord_new2(QDnsMailExchangeRecord other);
	[LinkName("QDnsMailExchangeRecord_OperatorAssign")]
	public static extern void QDnsMailExchangeRecord_OperatorAssign(void* c_this, QDnsMailExchangeRecord other);
	[LinkName("QDnsMailExchangeRecord_Swap")]
	public static extern void QDnsMailExchangeRecord_Swap(void* c_this, QDnsMailExchangeRecord other);
	[LinkName("QDnsMailExchangeRecord_Exchange")]
	public static extern char8[] QDnsMailExchangeRecord_Exchange(void* c_this);
	[LinkName("QDnsMailExchangeRecord_Name")]
	public static extern char8[] QDnsMailExchangeRecord_Name(void* c_this);
	[LinkName("QDnsMailExchangeRecord_Preference")]
	public static extern uint16 QDnsMailExchangeRecord_Preference(void* c_this);
	[LinkName("QDnsMailExchangeRecord_TimeToLive")]
	public static extern uint32 QDnsMailExchangeRecord_TimeToLive(void* c_this);
}
public struct QDnsServiceRecord
{
	[LinkName("QDnsServiceRecord_new")]
	public static extern void* QDnsServiceRecord_new();
	[LinkName("QDnsServiceRecord_new2")]
	public static extern void* QDnsServiceRecord_new2(QDnsServiceRecord other);
	[LinkName("QDnsServiceRecord_OperatorAssign")]
	public static extern void QDnsServiceRecord_OperatorAssign(void* c_this, QDnsServiceRecord other);
	[LinkName("QDnsServiceRecord_Swap")]
	public static extern void QDnsServiceRecord_Swap(void* c_this, QDnsServiceRecord other);
	[LinkName("QDnsServiceRecord_Name")]
	public static extern char8[] QDnsServiceRecord_Name(void* c_this);
	[LinkName("QDnsServiceRecord_Port")]
	public static extern uint16 QDnsServiceRecord_Port(void* c_this);
	[LinkName("QDnsServiceRecord_Priority")]
	public static extern uint16 QDnsServiceRecord_Priority(void* c_this);
	[LinkName("QDnsServiceRecord_Target")]
	public static extern char8[] QDnsServiceRecord_Target(void* c_this);
	[LinkName("QDnsServiceRecord_TimeToLive")]
	public static extern uint32 QDnsServiceRecord_TimeToLive(void* c_this);
	[LinkName("QDnsServiceRecord_Weight")]
	public static extern uint16 QDnsServiceRecord_Weight(void* c_this);
}
public struct QDnsTextRecord
{
	[LinkName("QDnsTextRecord_new")]
	public static extern void* QDnsTextRecord_new();
	[LinkName("QDnsTextRecord_new2")]
	public static extern void* QDnsTextRecord_new2(QDnsTextRecord other);
	[LinkName("QDnsTextRecord_OperatorAssign")]
	public static extern void QDnsTextRecord_OperatorAssign(void* c_this, QDnsTextRecord other);
	[LinkName("QDnsTextRecord_Swap")]
	public static extern void QDnsTextRecord_Swap(void* c_this, QDnsTextRecord other);
	[LinkName("QDnsTextRecord_Name")]
	public static extern char8[] QDnsTextRecord_Name(void* c_this);
	[LinkName("QDnsTextRecord_TimeToLive")]
	public static extern uint32 QDnsTextRecord_TimeToLive(void* c_this);
	[LinkName("QDnsTextRecord_Values")]
	public static extern uint8[][] QDnsTextRecord_Values(void* c_this);
}
public struct QDnsLookup
{
	[LinkName("QDnsLookup_new")]
	public static extern void* QDnsLookup_new();
	[LinkName("QDnsLookup_new2")]
	public static extern void* QDnsLookup_new2(int64 typeVal, char8[] name);
	[LinkName("QDnsLookup_new3")]
	public static extern void* QDnsLookup_new3(int64 typeVal, char8[] name, QHostAddress nameserver);
	[LinkName("QDnsLookup_new4")]
	public static extern void* QDnsLookup_new4(QObject parent);
	[LinkName("QDnsLookup_new5")]
	public static extern void* QDnsLookup_new5(int64 typeVal, char8[] name, QObject parent);
	[LinkName("QDnsLookup_new6")]
	public static extern void* QDnsLookup_new6(int64 typeVal, char8[] name, QHostAddress nameserver, QObject parent);
	[LinkName("QDnsLookup_MetaObject")]
	public static extern QMetaObject QDnsLookup_MetaObject(void* c_this);
	[LinkName("QDnsLookup_Metacast")]
	public static extern void QDnsLookup_Metacast(void* c_this, char8[] param1);
	[LinkName("QDnsLookup_Metacall")]
	public static extern int32 QDnsLookup_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QDnsLookup_Tr")]
	public static extern char8[] QDnsLookup_Tr(char8[] s);
	[LinkName("QDnsLookup_Error")]
	public static extern int64 QDnsLookup_Error(void* c_this);
	[LinkName("QDnsLookup_ErrorString")]
	public static extern char8[] QDnsLookup_ErrorString(void* c_this);
	[LinkName("QDnsLookup_IsFinished")]
	public static extern bool QDnsLookup_IsFinished(void* c_this);
	[LinkName("QDnsLookup_Name")]
	public static extern char8[] QDnsLookup_Name(void* c_this);
	[LinkName("QDnsLookup_SetName")]
	public static extern void QDnsLookup_SetName(void* c_this, char8[] name);
	[LinkName("QDnsLookup_Type")]
	public static extern int64 QDnsLookup_Type(void* c_this);
	[LinkName("QDnsLookup_SetType")]
	public static extern void QDnsLookup_SetType(void* c_this, int64 typeVal);
	[LinkName("QDnsLookup_Nameserver")]
	public static extern QHostAddress QDnsLookup_Nameserver(void* c_this);
	[LinkName("QDnsLookup_SetNameserver")]
	public static extern void QDnsLookup_SetNameserver(void* c_this, QHostAddress nameserver);
	[LinkName("QDnsLookup_CanonicalNameRecords")]
	public static extern QDnsDomainNameRecord[] QDnsLookup_CanonicalNameRecords(void* c_this);
	[LinkName("QDnsLookup_HostAddressRecords")]
	public static extern QDnsHostAddressRecord[] QDnsLookup_HostAddressRecords(void* c_this);
	[LinkName("QDnsLookup_MailExchangeRecords")]
	public static extern QDnsMailExchangeRecord[] QDnsLookup_MailExchangeRecords(void* c_this);
	[LinkName("QDnsLookup_NameServerRecords")]
	public static extern QDnsDomainNameRecord[] QDnsLookup_NameServerRecords(void* c_this);
	[LinkName("QDnsLookup_PointerRecords")]
	public static extern QDnsDomainNameRecord[] QDnsLookup_PointerRecords(void* c_this);
	[LinkName("QDnsLookup_ServiceRecords")]
	public static extern QDnsServiceRecord[] QDnsLookup_ServiceRecords(void* c_this);
	[LinkName("QDnsLookup_TextRecords")]
	public static extern QDnsTextRecord[] QDnsLookup_TextRecords(void* c_this);
	[LinkName("QDnsLookup_Abort")]
	public static extern void QDnsLookup_Abort(void* c_this);
	[LinkName("QDnsLookup_Lookup")]
	public static extern void QDnsLookup_Lookup(void* c_this);
	[LinkName("QDnsLookup_Finished")]
	public static extern void QDnsLookup_Finished(void* c_this);
	[LinkName("QDnsLookup_NameChanged")]
	public static extern void QDnsLookup_NameChanged(void* c_this, char8[] name);
	[LinkName("QDnsLookup_TypeChanged")]
	public static extern void QDnsLookup_TypeChanged(void* c_this, int64 typeVal);
	[LinkName("QDnsLookup_NameserverChanged")]
	public static extern void QDnsLookup_NameserverChanged(void* c_this, QHostAddress nameserver);
	[LinkName("QDnsLookup_Tr2")]
	public static extern char8[] QDnsLookup_Tr2(char8[] s, char8[] c);
	[LinkName("QDnsLookup_Tr3")]
	public static extern char8[] QDnsLookup_Tr3(char8[] s, char8[] c, int32 n);
}