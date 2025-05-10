using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QReadWriteLock__RecursionMode
{
	NonRecursive = 0,
	Recursive = 1,
}
public class QReadWriteLock
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QReadWriteLock_new();
	}
	
	public ~this()
	{
		CQt.QReadWriteLock_Delete(this.nativePtr);
	}
	
	public void LockForRead()
	{
		CQt.QReadWriteLock_LockForRead(this.nativePtr);
	}
	
	public bool TryLockForRead()
	{
		return CQt.QReadWriteLock_TryLockForRead(this.nativePtr);
	}
	
	public bool TryLockForReadWithTimeout(int32 timeout)
	{
		return CQt.QReadWriteLock_TryLockForReadWithTimeout(this.nativePtr, timeout);
	}
	
	public void LockForWrite()
	{
		CQt.QReadWriteLock_LockForWrite(this.nativePtr);
	}
	
	public bool TryLockForWrite()
	{
		return CQt.QReadWriteLock_TryLockForWrite(this.nativePtr);
	}
	
	public bool TryLockForWriteWithTimeout(int32 timeout)
	{
		return CQt.QReadWriteLock_TryLockForWriteWithTimeout(this.nativePtr, timeout);
	}
	
	public void Unlock()
	{
		CQt.QReadWriteLock_Unlock(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QReadWriteLock_new")]
	public static extern void* QReadWriteLock_new();
	[LinkName("QReadWriteLock_new2")]
	public static extern void* QReadWriteLock_new2(int64 recursionMode);
	[LinkName("QReadWriteLock_LockForRead")]
	public static extern void QReadWriteLock_LockForRead(void* c_this);
	[LinkName("QReadWriteLock_TryLockForRead")]
	public static extern bool QReadWriteLock_TryLockForRead(void* c_this);
	[LinkName("QReadWriteLock_TryLockForReadWithTimeout")]
	public static extern bool QReadWriteLock_TryLockForReadWithTimeout(void* c_this, int32 timeout);
	[LinkName("QReadWriteLock_LockForWrite")]
	public static extern void QReadWriteLock_LockForWrite(void* c_this);
	[LinkName("QReadWriteLock_TryLockForWrite")]
	public static extern bool QReadWriteLock_TryLockForWrite(void* c_this);
	[LinkName("QReadWriteLock_TryLockForWriteWithTimeout")]
	public static extern bool QReadWriteLock_TryLockForWriteWithTimeout(void* c_this, int32 timeout);
	[LinkName("QReadWriteLock_Unlock")]
	public static extern void QReadWriteLock_Unlock(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QReadWriteLock_Delete")]
	public static extern void QReadWriteLock_Delete(void* self);
}
public class QReadLocker
{
	protected void* nativePtr;
	
	public this(void* readWriteLock)
	{
		this.nativePtr = CQt.QReadLocker_new(readWriteLock);
	}
	
	public ~this()
	{
		CQt.QReadLocker_Delete(this.nativePtr);
	}
	
	public void Unlock()
	{
		CQt.QReadLocker_Unlock(this.nativePtr);
	}
	
	public void Relock()
	{
		CQt.QReadLocker_Relock(this.nativePtr);
	}
	
	public void* ReadWriteLock()
	{
		return CQt.QReadLocker_ReadWriteLock(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QReadLocker_new")]
	public static extern void* QReadLocker_new(void* readWriteLock);
	[LinkName("QReadLocker_Unlock")]
	public static extern void QReadLocker_Unlock(void* c_this);
	[LinkName("QReadLocker_Relock")]
	public static extern void QReadLocker_Relock(void* c_this);
	[LinkName("QReadLocker_ReadWriteLock")]
	public static extern void* QReadLocker_ReadWriteLock(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QReadLocker_Delete")]
	public static extern void QReadLocker_Delete(void* self);
}
public class QWriteLocker
{
	protected void* nativePtr;
	
	public this(void* readWriteLock)
	{
		this.nativePtr = CQt.QWriteLocker_new(readWriteLock);
	}
	
	public ~this()
	{
		CQt.QWriteLocker_Delete(this.nativePtr);
	}
	
	public void Unlock()
	{
		CQt.QWriteLocker_Unlock(this.nativePtr);
	}
	
	public void Relock()
	{
		CQt.QWriteLocker_Relock(this.nativePtr);
	}
	
	public void* ReadWriteLock()
	{
		return CQt.QWriteLocker_ReadWriteLock(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QWriteLocker_new")]
	public static extern void* QWriteLocker_new(void* readWriteLock);
	[LinkName("QWriteLocker_Unlock")]
	public static extern void QWriteLocker_Unlock(void* c_this);
	[LinkName("QWriteLocker_Relock")]
	public static extern void QWriteLocker_Relock(void* c_this);
	[LinkName("QWriteLocker_ReadWriteLock")]
	public static extern void* QWriteLocker_ReadWriteLock(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QWriteLocker_Delete")]
	public static extern void QWriteLocker_Delete(void* self);
}