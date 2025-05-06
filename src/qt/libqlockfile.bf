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
	public static extern QLockFile* QLockFile_new(libqt_string fileName);
	[LinkName("QLockFile_FileName")]
	public static extern libqt_string QLockFile_FileName(Self* c_this);
	[LinkName("QLockFile_Lock")]
	public static extern bool QLockFile_Lock(Self* c_this);
	[LinkName("QLockFile_TryLock")]
	public static extern bool QLockFile_TryLock(Self* c_this);
	[LinkName("QLockFile_Unlock")]
	public static extern void QLockFile_Unlock(Self* c_this);
	[LinkName("QLockFile_SetStaleLockTime")]
	public static extern void QLockFile_SetStaleLockTime(Self* c_this, int32 staleLockTime);
	[LinkName("QLockFile_StaleLockTime")]
	public static extern int32 QLockFile_StaleLockTime(Self* c_this);
	[LinkName("QLockFile_IsLocked")]
	public static extern bool QLockFile_IsLocked(Self* c_this);
	[LinkName("QLockFile_RemoveStaleLockFile")]
	public static extern bool QLockFile_RemoveStaleLockFile(Self* c_this);
	[LinkName("QLockFile_Error")]
	public static extern int64 QLockFile_Error(Self* c_this);
	[LinkName("QLockFile_TryLock1")]
	public static extern bool QLockFile_TryLock1(Self* c_this, int32 timeout);
}