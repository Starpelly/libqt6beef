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
	public static extern QSystemSemaphore* QSystemSemaphore_new(libqt_string key);
	[LinkName("QSystemSemaphore_new2")]
	public static extern QSystemSemaphore* QSystemSemaphore_new2(libqt_string key, int32 initialValue);
	[LinkName("QSystemSemaphore_new3")]
	public static extern QSystemSemaphore* QSystemSemaphore_new3(libqt_string key, int32 initialValue, int64 mode);
	[LinkName("QSystemSemaphore_Tr")]
	public static extern libqt_string QSystemSemaphore_Tr(char8[] sourceText);
	[LinkName("QSystemSemaphore_SetKey")]
	public static extern void QSystemSemaphore_SetKey(Self* c_this, libqt_string key);
	[LinkName("QSystemSemaphore_Key")]
	public static extern libqt_string QSystemSemaphore_Key(Self* c_this);
	[LinkName("QSystemSemaphore_Acquire")]
	public static extern bool QSystemSemaphore_Acquire(Self* c_this);
	[LinkName("QSystemSemaphore_Release")]
	public static extern bool QSystemSemaphore_Release(Self* c_this);
	[LinkName("QSystemSemaphore_Error")]
	public static extern int64 QSystemSemaphore_Error(Self* c_this);
	[LinkName("QSystemSemaphore_ErrorString")]
	public static extern libqt_string QSystemSemaphore_ErrorString(Self* c_this);
	[LinkName("QSystemSemaphore_Tr2")]
	public static extern libqt_string QSystemSemaphore_Tr2(char8[] sourceText, char8[] disambiguation);
	[LinkName("QSystemSemaphore_Tr3")]
	public static extern libqt_string QSystemSemaphore_Tr3(char8[] sourceText, char8[] disambiguation, int32 n);
	[LinkName("QSystemSemaphore_SetKey2")]
	public static extern void QSystemSemaphore_SetKey2(Self* c_this, libqt_string key, int32 initialValue);
	[LinkName("QSystemSemaphore_SetKey3")]
	public static extern void QSystemSemaphore_SetKey3(Self* c_this, libqt_string key, int32 initialValue, int64 mode);
	[LinkName("QSystemSemaphore_Release1")]
	public static extern bool QSystemSemaphore_Release1(Self* c_this, int32 n);
}