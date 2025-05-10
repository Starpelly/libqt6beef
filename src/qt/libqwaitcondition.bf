using System;
using System.Interop;
namespace Qt;

public interface IQWaitCondition
{
	void* NativePtr { get; }
}
public class QWaitCondition : IQWaitCondition
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QWaitCondition_new();
	}
	
	public ~this()
	{
		CQt.QWaitCondition_Delete(this.nativePtr);
	}
	
	public bool Wait(IQMutex lockedMutex)
	{
		return CQt.QWaitCondition_Wait(this.nativePtr, (lockedMutex == null) ? null : (void*)lockedMutex.NativePtr);
	}
	
	public bool Wait2(IQMutex lockedMutex, c_ulong time)
	{
		return CQt.QWaitCondition_Wait2(this.nativePtr, (lockedMutex == null) ? null : (void*)lockedMutex.NativePtr, time);
	}
	
	public bool WaitWithLockedReadWriteLock(IQReadWriteLock lockedReadWriteLock)
	{
		return CQt.QWaitCondition_WaitWithLockedReadWriteLock(this.nativePtr, (lockedReadWriteLock == null) ? null : (void*)lockedReadWriteLock.NativePtr);
	}
	
	public bool Wait3(IQReadWriteLock lockedReadWriteLock, c_ulong time)
	{
		return CQt.QWaitCondition_Wait3(this.nativePtr, (lockedReadWriteLock == null) ? null : (void*)lockedReadWriteLock.NativePtr, time);
	}
	
	public void WakeOne()
	{
		CQt.QWaitCondition_WakeOne(this.nativePtr);
	}
	
	public void WakeAll()
	{
		CQt.QWaitCondition_WakeAll(this.nativePtr);
	}
	
	public void NotifyOne()
	{
		CQt.QWaitCondition_NotifyOne(this.nativePtr);
	}
	
	public void NotifyAll()
	{
		CQt.QWaitCondition_NotifyAll(this.nativePtr);
	}
	
	public bool Wait22(IQMutex lockedMutex, IQDeadlineTimer deadline)
	{
		return CQt.QWaitCondition_Wait22(this.nativePtr, (lockedMutex == null) ? null : (void*)lockedMutex.NativePtr, (deadline == default) ? default : (void)deadline.NativePtr);
	}
	
	public bool Wait23(IQReadWriteLock lockedReadWriteLock, IQDeadlineTimer deadline)
	{
		return CQt.QWaitCondition_Wait23(this.nativePtr, (lockedReadWriteLock == null) ? null : (void*)lockedReadWriteLock.NativePtr, (deadline == default) ? default : (void)deadline.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QWaitCondition_new")]
	public static extern void* QWaitCondition_new();
	[LinkName("QWaitCondition_Wait")]
	public static extern bool QWaitCondition_Wait(void* c_this, void* lockedMutex);
	[LinkName("QWaitCondition_Wait2")]
	public static extern bool QWaitCondition_Wait2(void* c_this, void* lockedMutex, c_ulong time);
	[LinkName("QWaitCondition_WaitWithLockedReadWriteLock")]
	public static extern bool QWaitCondition_WaitWithLockedReadWriteLock(void* c_this, void* lockedReadWriteLock);
	[LinkName("QWaitCondition_Wait3")]
	public static extern bool QWaitCondition_Wait3(void* c_this, void* lockedReadWriteLock, c_ulong time);
	[LinkName("QWaitCondition_WakeOne")]
	public static extern void QWaitCondition_WakeOne(void* c_this);
	[LinkName("QWaitCondition_WakeAll")]
	public static extern void QWaitCondition_WakeAll(void* c_this);
	[LinkName("QWaitCondition_NotifyOne")]
	public static extern void QWaitCondition_NotifyOne(void* c_this);
	[LinkName("QWaitCondition_NotifyAll")]
	public static extern void QWaitCondition_NotifyAll(void* c_this);
	[LinkName("QWaitCondition_Wait22")]
	public static extern bool QWaitCondition_Wait22(void* c_this, void* lockedMutex, void deadline);
	[LinkName("QWaitCondition_Wait23")]
	public static extern bool QWaitCondition_Wait23(void* c_this, void* lockedReadWriteLock, void deadline);
	/// Delete this object from C++ memory
	[LinkName("QWaitCondition_Delete")]
	public static extern void QWaitCondition_Delete(void* self);
}