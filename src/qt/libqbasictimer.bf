using System;
using System.Interop;
namespace Qt;

public struct QBasicTimer
{
	[LinkName("QBasicTimer_new")]
	public static extern QBasicTimer* QBasicTimer_new();
	[LinkName("QBasicTimer_Swap")]
	public static extern void QBasicTimer_Swap(Self* c_this, QBasicTimer* other);
	[LinkName("QBasicTimer_IsActive")]
	public static extern bool QBasicTimer_IsActive(Self* c_this);
	[LinkName("QBasicTimer_TimerId")]
	public static extern int32 QBasicTimer_TimerId(Self* c_this);
	[LinkName("QBasicTimer_Start")]
	public static extern void QBasicTimer_Start(Self* c_this, int32 msec, QObject* obj);
	[LinkName("QBasicTimer_Start2")]
	public static extern void QBasicTimer_Start2(Self* c_this, int32 msec, int64 timerType, QObject* obj);
	[LinkName("QBasicTimer_Stop")]
	public static extern void QBasicTimer_Stop(Self* c_this);
}