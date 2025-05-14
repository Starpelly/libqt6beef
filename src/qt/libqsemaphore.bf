using System;
using System.Interop;
namespace Qt;

public interface IQSemaphore
{
	void* NativePtr { get; }
}
public struct QSemaphorePtr : IQSemaphore, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QSemaphore_new());
	}
	
	public void Dispose()
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
public class QSemaphore
{
	public QSemaphorePtr handle;
	
	public static implicit operator QSemaphorePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QSemaphorePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Acquire()
	{
		this.handle.Acquire();
	}
	
	public bool TryAcquire()
	{
		return this.handle.TryAcquire();
	}
	
	public bool TryAcquire2(int32 n, int32 timeout)
	{
		return this.handle.TryAcquire2(n, timeout);
	}
	
	public void Release()
	{
		this.handle.Release();
	}
	
	public int32 Available()
	{
		return this.handle.Available();
	}
	
	public bool TryAcquire3()
	{
		return this.handle.TryAcquire3();
	}
	
	public void Acquire1(int32 n)
	{
		this.handle.Acquire1(n);
	}
	
	public bool TryAcquire1(int32 n)
	{
		return this.handle.TryAcquire1(n);
	}
	
	public void Release1(int32 n)
	{
		this.handle.Release1(n);
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
public interface IQSemaphoreReleaser
{
	void* NativePtr { get; }
}
public struct QSemaphoreReleaserPtr : IQSemaphoreReleaser, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QSemaphoreReleaser_new());
	}
	
	public void Dispose()
	{
		CQt.QSemaphoreReleaser_Delete(this.nativePtr);
	}
	
	public void Swap(IQSemaphoreReleaser other)
	{
		CQt.QSemaphoreReleaser_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
public class QSemaphoreReleaser
{
	public QSemaphoreReleaserPtr handle;
	
	public static implicit operator QSemaphoreReleaserPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QSemaphoreReleaserPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Swap(IQSemaphoreReleaser other)
	{
		this.handle.Swap(other);
	}
	
	public void* Semaphore()
	{
		return this.handle.Semaphore();
	}
	
	public void* Cancel()
	{
		return this.handle.Cancel();
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