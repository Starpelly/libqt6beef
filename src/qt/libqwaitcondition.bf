using System;
using System.Interop;
namespace Qt;

public struct QWaitCondition
{
	[LinkName("QWaitCondition_new")]
	public static extern QWaitCondition* QWaitCondition_new();
	[LinkName("QWaitCondition_Wait")]
	public static extern bool QWaitCondition_Wait(Self* c_this, QMutex* lockedMutex);
	[LinkName("QWaitCondition_Wait2")]
	public static extern bool QWaitCondition_Wait2(Self* c_this, QMutex* lockedMutex, c_ulong time);
	[LinkName("QWaitCondition_WaitWithLockedReadWriteLock")]
	public static extern bool QWaitCondition_WaitWithLockedReadWriteLock(Self* c_this, QReadWriteLock* lockedReadWriteLock);
	[LinkName("QWaitCondition_Wait3")]
	public static extern bool QWaitCondition_Wait3(Self* c_this, QReadWriteLock* lockedReadWriteLock, c_ulong time);
	[LinkName("QWaitCondition_WakeOne")]
	public static extern void QWaitCondition_WakeOne(Self* c_this);
	[LinkName("QWaitCondition_WakeAll")]
	public static extern void QWaitCondition_WakeAll(Self* c_this);
	[LinkName("QWaitCondition_NotifyOne")]
	public static extern void QWaitCondition_NotifyOne(Self* c_this);
	[LinkName("QWaitCondition_NotifyAll")]
	public static extern void QWaitCondition_NotifyAll(Self* c_this);
	[LinkName("QWaitCondition_Wait22")]
	public static extern bool QWaitCondition_Wait22(Self* c_this, QMutex* lockedMutex, QDeadlineTimer deadline);
	[LinkName("QWaitCondition_Wait23")]
	public static extern bool QWaitCondition_Wait23(Self* c_this, QReadWriteLock* lockedReadWriteLock, QDeadlineTimer deadline);
}