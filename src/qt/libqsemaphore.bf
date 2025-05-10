using System;
using System.Interop;
namespace Qt;

public class QSemaphore
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QSemaphore_new();
	}
	
	public ~this()
	{
		CQt.QSemaphore_Delete(this.nativePtr);
	}
	
	public void Acquire()
	{
		CQt.QSemaphore_Acquire(this.nativePtr);
	}
	
	public bool TryAcquire()
	{
		return CQt.QSemaphore_TryAcquire(this.nativePtr);
	}
	
	public bool TryAcquire2(int32 n, int32 timeout)
	{
		return CQt.QSemaphore_TryAcquire2(this.nativePtr, n, timeout);
	}
	
	public void Release()
	{
		CQt.QSemaphore_Release(this.nativePtr);
	}
	
	public int32 Available()
	{
		return CQt.QSemaphore_Available(this.nativePtr);
	}
	
	public bool TryAcquire3()
	{
		return CQt.QSemaphore_TryAcquire3(this.nativePtr);
	}
	
	public void Acquire1(int32 n)
	{
		CQt.QSemaphore_Acquire1(this.nativePtr, n);
	}
	
	public bool TryAcquire1(int32 n)
	{
		return CQt.QSemaphore_TryAcquire1(this.nativePtr, n);
	}
	
	public void Release1(int32 n)
	{
		CQt.QSemaphore_Release1(this.nativePtr, n);
	}
	
}
extension CQt
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
	/// Delete this object from C++ memory
	[LinkName("QSemaphore_Delete")]
	public static extern void QSemaphore_Delete(void* self);
}
public class QSemaphoreReleaser
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QSemaphoreReleaser_new();
	}
	
	public ~this()
	{
		CQt.QSemaphoreReleaser_Delete(this.nativePtr);
	}
	
	public void Swap(void* other)
	{
		CQt.QSemaphoreReleaser_Swap(this.nativePtr, other);
	}
	
	public void* Semaphore()
	{
		return CQt.QSemaphoreReleaser_Semaphore(this.nativePtr);
	}
	
	public void* Cancel()
	{
		return CQt.QSemaphoreReleaser_Cancel(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QSemaphoreReleaser_new")]
	public static extern void* QSemaphoreReleaser_new();
	[LinkName("QSemaphoreReleaser_new2")]
	public static extern void* QSemaphoreReleaser_new2(void* sem);
	[LinkName("QSemaphoreReleaser_new3")]
	public static extern void* QSemaphoreReleaser_new3(void* sem);
	[LinkName("QSemaphoreReleaser_new4")]
	public static extern void* QSemaphoreReleaser_new4(void* sem, int32 n);
	[LinkName("QSemaphoreReleaser_new5")]
	public static extern void* QSemaphoreReleaser_new5(void* sem, int32 n);
	[LinkName("QSemaphoreReleaser_Swap")]
	public static extern void QSemaphoreReleaser_Swap(void* c_this, void* other);
	[LinkName("QSemaphoreReleaser_Semaphore")]
	public static extern void* QSemaphoreReleaser_Semaphore(void* c_this);
	[LinkName("QSemaphoreReleaser_Cancel")]
	public static extern void* QSemaphoreReleaser_Cancel(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QSemaphoreReleaser_Delete")]
	public static extern void QSemaphoreReleaser_Delete(void* self);
}