using System;
using System.Interop;
namespace Qt;

public struct QBasicMutex
{
	[LinkName("QBasicMutex_new")]
	public static extern QBasicMutex* QBasicMutex_new();
	[LinkName("QBasicMutex_Lock")]
	public static extern void QBasicMutex_Lock(Self* c_this);
	[LinkName("QBasicMutex_Unlock")]
	public static extern void QBasicMutex_Unlock(Self* c_this);
	[LinkName("QBasicMutex_TryLock")]
	public static extern bool QBasicMutex_TryLock(Self* c_this);
	[LinkName("QBasicMutex_TryLock2")]
	public static extern bool QBasicMutex_TryLock2(Self* c_this);
}
public struct QMutex : QBasicMutex
{
	[LinkName("QMutex_new")]
	public static extern QMutex* QMutex_new();
	[LinkName("QMutex_TryLock")]
	public static extern bool QMutex_TryLock(Self* c_this);
	[LinkName("QMutex_TryLockWithTimeout")]
	public static extern bool QMutex_TryLockWithTimeout(Self* c_this, int32 timeout);
}
public struct QRecursiveMutex
{
	[LinkName("QRecursiveMutex_new")]
	public static extern QRecursiveMutex* QRecursiveMutex_new();
	[LinkName("QRecursiveMutex_Lock")]
	public static extern void QRecursiveMutex_Lock(Self* c_this);
	[LinkName("QRecursiveMutex_TryLock")]
	public static extern bool QRecursiveMutex_TryLock(Self* c_this);
	[LinkName("QRecursiveMutex_Unlock")]
	public static extern void QRecursiveMutex_Unlock(Self* c_this);
	[LinkName("QRecursiveMutex_TryLock2")]
	public static extern bool QRecursiveMutex_TryLock2(Self* c_this);
	[LinkName("QRecursiveMutex_TryLock1")]
	public static extern bool QRecursiveMutex_TryLock1(Self* c_this, int32 timeout);
}