using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QHostInfo__HostInfoError
{
	NoError = 0,
	HostNotFound = 1,
	UnknownError = 2,
}
public struct QHostInfo
{
	[LinkName("QHostInfo_new")]
	public static extern void* QHostInfo_new();
	[LinkName("QHostInfo_new2")]
	public static extern void* QHostInfo_new2(QHostInfo d);
	[LinkName("QHostInfo_new3")]
	public static extern void* QHostInfo_new3(int32 lookupId);
	[LinkName("QHostInfo_OperatorAssign")]
	public static extern void QHostInfo_OperatorAssign(void* c_this, QHostInfo d);
	[LinkName("QHostInfo_Swap")]
	public static extern void QHostInfo_Swap(void* c_this, QHostInfo other);
	[LinkName("QHostInfo_HostName")]
	public static extern char8[] QHostInfo_HostName(void* c_this);
	[LinkName("QHostInfo_SetHostName")]
	public static extern void QHostInfo_SetHostName(void* c_this, char8[] name);
	[LinkName("QHostInfo_Addresses")]
	public static extern QHostAddress[] QHostInfo_Addresses(void* c_this);
	[LinkName("QHostInfo_SetAddresses")]
	public static extern void QHostInfo_SetAddresses(void* c_this, QHostAddress[] addresses);
	[LinkName("QHostInfo_Error")]
	public static extern int64 QHostInfo_Error(void* c_this);
	[LinkName("QHostInfo_SetError")]
	public static extern void QHostInfo_SetError(void* c_this, int64 errorVal);
	[LinkName("QHostInfo_ErrorString")]
	public static extern char8[] QHostInfo_ErrorString(void* c_this);
	[LinkName("QHostInfo_SetErrorString")]
	public static extern void QHostInfo_SetErrorString(void* c_this, char8[] errorString);
	[LinkName("QHostInfo_SetLookupId")]
	public static extern void QHostInfo_SetLookupId(void* c_this, int32 id);
	[LinkName("QHostInfo_LookupId")]
	public static extern int32 QHostInfo_LookupId(void* c_this);
	[LinkName("QHostInfo_AbortHostLookup")]
	public static extern void QHostInfo_AbortHostLookup(int32 lookupId);
	[LinkName("QHostInfo_FromName")]
	public static extern QHostInfo QHostInfo_FromName(char8[] name);
	[LinkName("QHostInfo_LocalHostName")]
	public static extern char8[] QHostInfo_LocalHostName();
	[LinkName("QHostInfo_LocalDomainName")]
	public static extern char8[] QHostInfo_LocalDomainName();
}