using System;
using System.Interop;
namespace Qt;

public struct QBasicMutex
{
	[LinkName("QBasicMutex_new")]
	public static extern void* QBasicMutex_new();
	[LinkName("QBasicMutex_Lock")]
	public static extern void QBasicMutex_Lock(void* c_this);
	[LinkName("QBasicMutex_Unlock")]
	public static extern void QBasicMutex_Unlock(void* c_this);
	[LinkName("QBasicMutex_TryLock")]
	public static extern bool QBasicMutex_TryLock(void* c_this);
	[LinkName("QBasicMutex_TryLock2")]
	public static extern bool QBasicMutex_TryLock2(void* c_this);
}
public struct QMutex
{
	[LinkName("QMutex_new")]
	public static extern void* QMutex_new();
	[LinkName("QMutex_TryLock")]
	public static extern bool QMutex_TryLock(void* c_this);
	[LinkName("QMutex_TryLockWithTimeout")]
	public static extern bool QMutex_TryLockWithTimeout(void* c_this, int32 timeout);
}
public struct QRecursiveMutex
{
	[LinkName("QRecursiveMutex_new")]
	public static extern void* QRecursiveMutex_new();
	[LinkName("QRecursiveMutex_Lock")]
	public static extern void QRecursiveMutex_Lock(void* c_this);
	[LinkName("QRecursiveMutex_TryLock")]
	public static extern bool QRecursiveMutex_TryLock(void* c_this);
	[LinkName("QRecursiveMutex_Unlock")]
	public static extern void QRecursiveMutex_Unlock(void* c_this);
	[LinkName("QRecursiveMutex_TryLock2")]
	public static extern bool QRecursiveMutex_TryLock2(void* c_this);
	[LinkName("QRecursiveMutex_TryLock1")]
	public static extern bool QRecursiveMutex_TryLock1(void* c_this, int32 timeout);
}