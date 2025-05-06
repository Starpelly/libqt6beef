using System;
using System.Interop;
namespace Qt;

public struct QBasicTimer
{
	[LinkName("QBasicTimer_new")]
	public static extern void* QBasicTimer_new();
	[LinkName("QBasicTimer_Swap")]
	public static extern void QBasicTimer_Swap(void* c_this, QBasicTimer other);
	[LinkName("QBasicTimer_IsActive")]
	public static extern bool QBasicTimer_IsActive(void* c_this);
	[LinkName("QBasicTimer_TimerId")]
	public static extern int32 QBasicTimer_TimerId(void* c_this);
	[LinkName("QBasicTimer_Start")]
	public static extern void QBasicTimer_Start(void* c_this, int32 msec, QObject obj);
	[LinkName("QBasicTimer_Start2")]
	public static extern void QBasicTimer_Start2(void* c_this, int32 msec, int64 timerType, QObject obj);
	[LinkName("QBasicTimer_Stop")]
	public static extern void QBasicTimer_Stop(void* c_this);
}