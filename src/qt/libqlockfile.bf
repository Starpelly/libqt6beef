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
public interface IQLockFile
{
	void* NativePtr { get; }
}
public class QLockFile : IQLockFile
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(String fileName)
	{
		this.nativePtr = CQt.QLockFile_new(libqt_string(fileName));
	}
	
	public ~this()
	{
		CQt.QLockFile_Delete(this.nativePtr);
	}
	
	public libqt_string FileName()
	{
		return CQt.QLockFile_FileName(this.nativePtr);
	}
	
	public bool Lock()
	{
		return CQt.QLockFile_Lock(this.nativePtr);
	}
	
	public bool TryLock()
	{
		return CQt.QLockFile_TryLock(this.nativePtr);
	}
	
	public void Unlock()
	{
		CQt.QLockFile_Unlock(this.nativePtr);
	}
	
	public void SetStaleLockTime(int32 staleLockTime)
	{
		CQt.QLockFile_SetStaleLockTime(this.nativePtr, staleLockTime);
	}
	
	public int32 StaleLockTime()
	{
		return CQt.QLockFile_StaleLockTime(this.nativePtr);
	}
	
	public bool IsLocked()
	{
		return CQt.QLockFile_IsLocked(this.nativePtr);
	}
	
	public bool RemoveStaleLockFile()
	{
		return CQt.QLockFile_RemoveStaleLockFile(this.nativePtr);
	}
	
	public int64 Error()
	{
		return CQt.QLockFile_Error(this.nativePtr);
	}
	
	public bool TryLock1(int32 timeout)
	{
		return CQt.QLockFile_TryLock1(this.nativePtr, timeout);
	}
	
}
extension CQt
{
	[LinkName("QLockFile_new")]
	public static extern void* QLockFile_new(libqt_string fileName);
	[LinkName("QLockFile_FileName")]
	public static extern libqt_string QLockFile_FileName(void* c_this);
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
	/// Delete this object from C++ memory
	[LinkName("QLockFile_Delete")]
	public static extern void QLockFile_Delete(void* self);
}