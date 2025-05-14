using System;
using System.Interop;
namespace Qt;

public interface IQBasicMutex
{
	void* NativePtr { get; }
}
public struct QBasicMutexPtr : IQBasicMutex, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QBasicMutex_new());
	}
	
	public void Dispose()
	{
		CQt.QBasicMutex_Delete(this.nativePtr);
	}
	
	public void Lock()
	{
		CQt.QBasicMutex_Lock(this.nativePtr);
	}
	
	public void Unlock()
	{
		CQt.QBasicMutex_Unlock(this.nativePtr);
	}
	
	public bool TryLock()
	{
		return CQt.QBasicMutex_TryLock(this.nativePtr);
	}
	
	public bool TryLock2()
	{
		return CQt.QBasicMutex_TryLock2(this.nativePtr);
	}
	
}
public class QBasicMutex
{
	public QBasicMutexPtr handle;
	
	public static implicit operator QBasicMutexPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QBasicMutexPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Lock()
	{
		this.handle.Lock();
	}
	
	public void Unlock()
	{
		this.handle.Unlock();
	}
	
	public bool TryLock()
	{
		return this.handle.TryLock();
	}
	
	public bool TryLock2()
	{
		return this.handle.TryLock2();
	}
	
}
extension CQt
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
	/// Delete this object from C++ memory
	[LinkName("QBasicMutex_Delete")]
	public static extern void QBasicMutex_Delete(void* self);
}
public interface IQMutex
{
	void* NativePtr { get; }
}
public struct QMutexPtr : IQMutex, IDisposable, IQBasicMutex
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QMutex_new());
	}
	
	public void Dispose()
	{
		CQt.QMutex_Delete(this.nativePtr);
	}
	
	public bool TryLock()
	{
		return CQt.QMutex_TryLock(this.nativePtr);
	}
	
	public bool TryLockWithTimeout(int32 timeout)
	{
		return CQt.QMutex_TryLockWithTimeout(this.nativePtr, timeout);
	}
	
	public void Lock()
	{
		CQt.QBasicMutex_Lock(this.nativePtr);
	}
	
	public void Unlock()
	{
		CQt.QBasicMutex_Unlock(this.nativePtr);
	}
	
	public bool TryLock2()
	{
		return CQt.QBasicMutex_TryLock2(this.nativePtr);
	}
	
}
public class QMutex
{
	public QMutexPtr handle;
	
	public static implicit operator QMutexPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QMutexPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool TryLock()
	{
		return this.handle.TryLock();
	}
	
	public bool TryLockWithTimeout(int32 timeout)
	{
		return this.handle.TryLockWithTimeout(timeout);
	}
	
	public void Lock()
	{
		this.handle.Lock();
	}
	
	public void Unlock()
	{
		this.handle.Unlock();
	}
	
	public bool TryLock2()
	{
		return this.handle.TryLock2();
	}
	
}
extension CQt
{
	[LinkName("QMutex_new")]
	public static extern void* QMutex_new();
	[LinkName("QMutex_TryLock")]
	public static extern bool QMutex_TryLock(void* c_this);
	[LinkName("QMutex_TryLockWithTimeout")]
	public static extern bool QMutex_TryLockWithTimeout(void* c_this, int32 timeout);
	/// Delete this object from C++ memory
	[LinkName("QMutex_Delete")]
	public static extern void QMutex_Delete(void* self);
}
public interface IQRecursiveMutex
{
	void* NativePtr { get; }
}
public struct QRecursiveMutexPtr : IQRecursiveMutex, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QRecursiveMutex_new());
	}
	
	public void Dispose()
	{
		CQt.QRecursiveMutex_Delete(this.nativePtr);
	}
	
	public void Lock()
	{
		CQt.QRecursiveMutex_Lock(this.nativePtr);
	}
	
	public bool TryLock()
	{
		return CQt.QRecursiveMutex_TryLock(this.nativePtr);
	}
	
	public void Unlock()
	{
		CQt.QRecursiveMutex_Unlock(this.nativePtr);
	}
	
	public bool TryLock2()
	{
		return CQt.QRecursiveMutex_TryLock2(this.nativePtr);
	}
	
	public bool TryLock1(int32 timeout)
	{
		return CQt.QRecursiveMutex_TryLock1(this.nativePtr, timeout);
	}
	
}
public class QRecursiveMutex
{
	public QRecursiveMutexPtr handle;
	
	public static implicit operator QRecursiveMutexPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QRecursiveMutexPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Lock()
	{
		this.handle.Lock();
	}
	
	public bool TryLock()
	{
		return this.handle.TryLock();
	}
	
	public void Unlock()
	{
		this.handle.Unlock();
	}
	
	public bool TryLock2()
	{
		return this.handle.TryLock2();
	}
	
	public bool TryLock1(int32 timeout)
	{
		return this.handle.TryLock1(timeout);
	}
	
}
extension CQt
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
	/// Delete this object from C++ memory
	[LinkName("QRecursiveMutex_Delete")]
	public static extern void QRecursiveMutex_Delete(void* self);
}