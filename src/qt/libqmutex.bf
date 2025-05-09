using System;
using System.Interop;
namespace Qt;

public class QBasicMutex
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QBasicMutex_new();
	}
	
	public ~this()
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
public class QMutex
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QMutex_new();
	}
	
	public ~this()
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
public class QRecursiveMutex
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QRecursiveMutex_new();
	}
	
	public ~this()
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