using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QElapsedTimer__ClockType
{
	SystemTime = 0,
	MonotonicClock = 1,
	MachAbsoluteTime = 2,
	PerformanceCounter = 3,
}
public struct QElapsedTimer
{
	[LinkName("QElapsedTimer_new")]
	public static extern void* QElapsedTimer_new(QElapsedTimer other);
	[LinkName("QElapsedTimer_new2")]
	public static extern void* QElapsedTimer_new2(QElapsedTimer other);
	[LinkName("QElapsedTimer_new3")]
	public static extern void* QElapsedTimer_new3();
	[LinkName("QElapsedTimer_ClockType")]
	public static extern int64 QElapsedTimer_ClockType();
	[LinkName("QElapsedTimer_IsMonotonic")]
	public static extern bool QElapsedTimer_IsMonotonic();
	[LinkName("QElapsedTimer_Start")]
	public static extern void QElapsedTimer_Start(void* c_this);
	[LinkName("QElapsedTimer_Restart")]
	public static extern int64 QElapsedTimer_Restart(void* c_this);
	[LinkName("QElapsedTimer_Invalidate")]
	public static extern void QElapsedTimer_Invalidate(void* c_this);
	[LinkName("QElapsedTimer_IsValid")]
	public static extern bool QElapsedTimer_IsValid(void* c_this);
	[LinkName("QElapsedTimer_NsecsElapsed")]
	public static extern int64 QElapsedTimer_NsecsElapsed(void* c_this);
	[LinkName("QElapsedTimer_Elapsed")]
	public static extern int64 QElapsedTimer_Elapsed(void* c_this);
	[LinkName("QElapsedTimer_HasExpired")]
	public static extern bool QElapsedTimer_HasExpired(void* c_this, int64 timeout);
	[LinkName("QElapsedTimer_MsecsSinceReference")]
	public static extern int64 QElapsedTimer_MsecsSinceReference(void* c_this);
	[LinkName("QElapsedTimer_MsecsTo")]
	public static extern int64 QElapsedTimer_MsecsTo(void* c_this, QElapsedTimer other);
	[LinkName("QElapsedTimer_SecsTo")]
	public static extern int64 QElapsedTimer_SecsTo(void* c_this, QElapsedTimer other);
}