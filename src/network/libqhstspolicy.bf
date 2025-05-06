using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QHstsPolicy__PolicyFlag
{
	IncludeSubDomains = 1,
}
public struct QHstsPolicy
{
	[LinkName("QHstsPolicy_new")]
	public static extern void* QHstsPolicy_new();
	[LinkName("QHstsPolicy_new2")]
	public static extern void* QHstsPolicy_new2(QDateTime expiry, int64 flags, char8[] host);
	[LinkName("QHstsPolicy_new3")]
	public static extern void* QHstsPolicy_new3(QHstsPolicy rhs);
	[LinkName("QHstsPolicy_new4")]
	public static extern void* QHstsPolicy_new4(QDateTime expiry, int64 flags, char8[] host, int64 mode);
	[LinkName("QHstsPolicy_OperatorAssign")]
	public static extern void QHstsPolicy_OperatorAssign(void* c_this, QHstsPolicy rhs);
	[LinkName("QHstsPolicy_Swap")]
	public static extern void QHstsPolicy_Swap(void* c_this, QHstsPolicy other);
	[LinkName("QHstsPolicy_SetHost")]
	public static extern void QHstsPolicy_SetHost(void* c_this, char8[] host);
	[LinkName("QHstsPolicy_Host")]
	public static extern char8[] QHstsPolicy_Host(void* c_this);
	[LinkName("QHstsPolicy_SetExpiry")]
	public static extern void QHstsPolicy_SetExpiry(void* c_this, QDateTime expiry);
	[LinkName("QHstsPolicy_Expiry")]
	public static extern QDateTime QHstsPolicy_Expiry(void* c_this);
	[LinkName("QHstsPolicy_SetIncludesSubDomains")]
	public static extern void QHstsPolicy_SetIncludesSubDomains(void* c_this, bool include);
	[LinkName("QHstsPolicy_IncludesSubDomains")]
	public static extern bool QHstsPolicy_IncludesSubDomains(void* c_this);
	[LinkName("QHstsPolicy_IsExpired")]
	public static extern bool QHstsPolicy_IsExpired(void* c_this);
	[LinkName("QHstsPolicy_SetHost2")]
	public static extern void QHstsPolicy_SetHost2(void* c_this, char8[] host, int64 mode);
	[LinkName("QHstsPolicy_Host1")]
	public static extern char8[] QHstsPolicy_Host1(void* c_this, int64 options);
}