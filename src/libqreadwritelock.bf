using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QReadWriteLock__RecursionMode
{
	NonRecursive = 0,
	Recursive = 1,
}
public struct QReadWriteLock
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
}
public struct QReadLocker
{
	[LinkName("QReadLocker_new")]
	public static extern void* QReadLocker_new(QReadWriteLock readWriteLock);
	[LinkName("QReadLocker_Unlock")]
	public static extern void QReadLocker_Unlock(void* c_this);
	[LinkName("QReadLocker_Relock")]
	public static extern void QReadLocker_Relock(void* c_this);
	[LinkName("QReadLocker_ReadWriteLock")]
	public static extern QReadWriteLock QReadLocker_ReadWriteLock(void* c_this);
}
public struct QWriteLocker
{
	[LinkName("QWriteLocker_new")]
	public static extern void* QWriteLocker_new(QReadWriteLock readWriteLock);
	[LinkName("QWriteLocker_Unlock")]
	public static extern void QWriteLocker_Unlock(void* c_this);
	[LinkName("QWriteLocker_Relock")]
	public static extern void QWriteLocker_Relock(void* c_this);
	[LinkName("QWriteLocker_ReadWriteLock")]
	public static extern QReadWriteLock QWriteLocker_ReadWriteLock(void* c_this);
}