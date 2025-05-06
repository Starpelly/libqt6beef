using System;
using System.Interop;
namespace Qt;

public struct QSemaphore
{
	[LinkName("QSemaphore_new")]
	public static extern void* QSemaphore_new();
	[LinkName("QSemaphore_new2")]
	public static extern void* QSemaphore_new2(int32 n);
	[LinkName("QSemaphore_Acquire")]
	public static extern void QSemaphore_Acquire(void* c_this);
	[LinkName("QSemaphore_TryAcquire")]
	public static extern bool QSemaphore_TryAcquire(void* c_this);
	[LinkName("QSemaphore_TryAcquire2")]
	public static extern bool QSemaphore_TryAcquire2(void* c_this, int32 n, int32 timeout);
	[LinkName("QSemaphore_Release")]
	public static extern void QSemaphore_Release(void* c_this);
	[LinkName("QSemaphore_Available")]
	public static extern int32 QSemaphore_Available(void* c_this);
	[LinkName("QSemaphore_TryAcquire3")]
	public static extern bool QSemaphore_TryAcquire3(void* c_this);
	[LinkName("QSemaphore_Acquire1")]
	public static extern void QSemaphore_Acquire1(void* c_this, int32 n);
	[LinkName("QSemaphore_TryAcquire1")]
	public static extern bool QSemaphore_TryAcquire1(void* c_this, int32 n);
	[LinkName("QSemaphore_Release1")]
	public static extern void QSemaphore_Release1(void* c_this, int32 n);
}
public struct QSemaphoreReleaser
{
	[LinkName("QSemaphoreReleaser_new")]
	public static extern void* QSemaphoreReleaser_new();
	[LinkName("QSemaphoreReleaser_new2")]
	public static extern void* QSemaphoreReleaser_new2(QSemaphore sem);
	[LinkName("QSemaphoreReleaser_new3")]
	public static extern void* QSemaphoreReleaser_new3(QSemaphore sem);
	[LinkName("QSemaphoreReleaser_new4")]
	public static extern void* QSemaphoreReleaser_new4(QSemaphore sem, int32 n);
	[LinkName("QSemaphoreReleaser_new5")]
	public static extern void* QSemaphoreReleaser_new5(QSemaphore sem, int32 n);
	[LinkName("QSemaphoreReleaser_Swap")]
	public static extern void QSemaphoreReleaser_Swap(void* c_this, QSemaphoreReleaser other);
	[LinkName("QSemaphoreReleaser_Semaphore")]
	public static extern QSemaphore QSemaphoreReleaser_Semaphore(void* c_this);
	[LinkName("QSemaphoreReleaser_Cancel")]
	public static extern QSemaphore QSemaphoreReleaser_Cancel(void* c_this);
}