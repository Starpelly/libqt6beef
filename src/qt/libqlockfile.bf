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
public struct QLockFilePtr : IQLockFile, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(String fileName)
	{
		return .(CQt.QLockFile_new(libqt_string(fileName)));
	}
	
	public void Dispose()
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
public class QLockFile
{
	public QLockFilePtr handle;
	
	public static implicit operator QLockFilePtr(Self self)
	{
		return self.handle;
	}
	
	public this(String fileName)
	{
		this.handle = QLockFilePtr.New(fileName);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public libqt_string FileName()
	{
		return this.handle.FileName();
	}
	
	public bool Lock()
	{
		return this.handle.Lock();
	}
	
	public bool TryLock()
	{
		return this.handle.TryLock();
	}
	
	public void Unlock()
	{
		this.handle.Unlock();
	}
	
	public void SetStaleLockTime(int32 staleLockTime)
	{
		this.handle.SetStaleLockTime(staleLockTime);
	}
	
	public int32 StaleLockTime()
	{
		return this.handle.StaleLockTime();
	}
	
	public bool IsLocked()
	{
		return this.handle.IsLocked();
	}
	
	public bool RemoveStaleLockFile()
	{
		return this.handle.RemoveStaleLockFile();
	}
	
	public int64 Error()
	{
		return this.handle.Error();
	}
	
	public bool TryLock1(int32 timeout)
	{
		return this.handle.TryLock1(timeout);
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