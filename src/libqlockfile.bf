using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QLockFile__LockError
{
	NoError = 0,
	LockFailedError = 1,
	PermissionError = 2,
	UnknownError = 3,
}
public struct QLockFile
{
	[LinkName("QLockFile_new")]
	public static extern void* QLockFile_new(char8[] fileName);
	[LinkName("QLockFile_FileName")]
	public static extern char8[] QLockFile_FileName(void* c_this);
	[LinkName("QLockFile_Lock")]
	public static extern bool QLockFile_Lock(void* c_this);
	[LinkName("QLockFile_TryLock")]
	public static extern bool QLockFile_TryLock(void* c_this);
	[LinkName("QLockFile_Unlock")]
	public static extern void QLockFile_Unlock(void* c_this);
	[LinkName("QLockFile_SetStaleLockTime")]
	public static extern void QLockFile_SetStaleLockTime(void* c_this, int32 staleLockTime);
	[LinkName("QLockFile_StaleLockTime")]
	public static extern int32 QLockFile_StaleLockTime(void* c_this);
	[LinkName("QLockFile_IsLocked")]
	public static extern bool QLockFile_IsLocked(void* c_this);
	[LinkName("QLockFile_RemoveStaleLockFile")]
	public static extern bool QLockFile_RemoveStaleLockFile(void* c_this);
	[LinkName("QLockFile_Error")]
	public static extern int64 QLockFile_Error(void* c_this);
	[LinkName("QLockFile_TryLock1")]
	public static extern bool QLockFile_TryLock1(void* c_this, int32 timeout);
}