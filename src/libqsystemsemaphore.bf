using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSystemSemaphore__AccessMode
{
	Open = 0,
	Create = 1,
}
[AllowDuplicates]
public enum QSystemSemaphore__SystemSemaphoreError
{
	NoError = 0,
	PermissionDenied = 1,
	KeyError = 2,
	AlreadyExists = 3,
	NotFound = 4,
	OutOfResources = 5,
	UnknownError = 6,
}
public struct QSystemSemaphore
{
	[LinkName("QSystemSemaphore_new")]
	public static extern void* QSystemSemaphore_new(char8[] key);
	[LinkName("QSystemSemaphore_new2")]
	public static extern void* QSystemSemaphore_new2(char8[] key, int32 initialValue);
	[LinkName("QSystemSemaphore_new3")]
	public static extern void* QSystemSemaphore_new3(char8[] key, int32 initialValue, int64 mode);
	[LinkName("QSystemSemaphore_Tr")]
	public static extern char8[] QSystemSemaphore_Tr(char8[] sourceText);
	[LinkName("QSystemSemaphore_SetKey")]
	public static extern void QSystemSemaphore_SetKey(void* c_this, char8[] key);
	[LinkName("QSystemSemaphore_Key")]
	public static extern char8[] QSystemSemaphore_Key(void* c_this);
	[LinkName("QSystemSemaphore_Acquire")]
	public static extern bool QSystemSemaphore_Acquire(void* c_this);
	[LinkName("QSystemSemaphore_Release")]
	public static extern bool QSystemSemaphore_Release(void* c_this);
	[LinkName("QSystemSemaphore_Error")]
	public static extern int64 QSystemSemaphore_Error(void* c_this);
	[LinkName("QSystemSemaphore_ErrorString")]
	public static extern char8[] QSystemSemaphore_ErrorString(void* c_this);
	[LinkName("QSystemSemaphore_Tr2")]
	public static extern char8[] QSystemSemaphore_Tr2(char8[] sourceText, char8[] disambiguation);
	[LinkName("QSystemSemaphore_Tr3")]
	public static extern char8[] QSystemSemaphore_Tr3(char8[] sourceText, char8[] disambiguation, int32 n);
	[LinkName("QSystemSemaphore_SetKey2")]
	public static extern void QSystemSemaphore_SetKey2(void* c_this, char8[] key, int32 initialValue);
	[LinkName("QSystemSemaphore_SetKey3")]
	public static extern void QSystemSemaphore_SetKey3(void* c_this, char8[] key, int32 initialValue, int64 mode);
	[LinkName("QSystemSemaphore_Release1")]
	public static extern bool QSystemSemaphore_Release1(void* c_this, int32 n);
}