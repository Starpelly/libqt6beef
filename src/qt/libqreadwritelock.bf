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
	public static extern QReadWriteLock* QReadWriteLock_new();
	[LinkName("QReadWriteLock_new2")]
	public static extern QReadWriteLock* QReadWriteLock_new2(int64 recursionMode);
	[LinkName("QReadWriteLock_LockForRead")]
	public static extern void QReadWriteLock_LockForRead(Self* c_this);
	[LinkName("QReadWriteLock_TryLockForRead")]
	public static extern bool QReadWriteLock_TryLockForRead(Self* c_this);
	[LinkName("QReadWriteLock_TryLockForReadWithTimeout")]
	public static extern bool QReadWriteLock_TryLockForReadWithTimeout(Self* c_this, int32 timeout);
	[LinkName("QReadWriteLock_LockForWrite")]
	public static extern void QReadWriteLock_LockForWrite(Self* c_this);
	[LinkName("QReadWriteLock_TryLockForWrite")]
	public static extern bool QReadWriteLock_TryLockForWrite(Self* c_this);
	[LinkName("QReadWriteLock_TryLockForWriteWithTimeout")]
	public static extern bool QReadWriteLock_TryLockForWriteWithTimeout(Self* c_this, int32 timeout);
	[LinkName("QReadWriteLock_Unlock")]
	public static extern void QReadWriteLock_Unlock(Self* c_this);
}
public struct QReadLocker
{
	[LinkName("QReadLocker_new")]
	public static extern QReadLocker* QReadLocker_new(QReadWriteLock* readWriteLock);
	[LinkName("QReadLocker_Unlock")]
	public static extern void QReadLocker_Unlock(Self* c_this);
	[LinkName("QReadLocker_Relock")]
	public static extern void QReadLocker_Relock(Self* c_this);
	[LinkName("QReadLocker_ReadWriteLock")]
	public static extern QReadWriteLock* QReadLocker_ReadWriteLock(Self* c_this);
}
public struct QWriteLocker
{
	[LinkName("QWriteLocker_new")]
	public static extern QWriteLocker* QWriteLocker_new(QReadWriteLock* readWriteLock);
	[LinkName("QWriteLocker_Unlock")]
	public static extern void QWriteLocker_Unlock(Self* c_this);
	[LinkName("QWriteLocker_Relock")]
	public static extern void QWriteLocker_Relock(Self* c_this);
	[LinkName("QWriteLocker_ReadWriteLock")]
	public static extern QReadWriteLock* QWriteLocker_ReadWriteLock(Self* c_this);
}