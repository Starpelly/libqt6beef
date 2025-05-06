using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDeadlineTimer__ForeverConstant
{
	Forever = 0,
}
public struct QDeadlineTimer
{
	[LinkName("QDeadlineTimer_new")]
	public static extern QDeadlineTimer* QDeadlineTimer_new(QDeadlineTimer* other);
	[LinkName("QDeadlineTimer_new2")]
	public static extern QDeadlineTimer* QDeadlineTimer_new2(QDeadlineTimer* other);
	[LinkName("QDeadlineTimer_new3")]
	public static extern QDeadlineTimer* QDeadlineTimer_new3();
	[LinkName("QDeadlineTimer_new4")]
	public static extern QDeadlineTimer* QDeadlineTimer_new4(int64 param1);
	[LinkName("QDeadlineTimer_new5")]
	public static extern QDeadlineTimer* QDeadlineTimer_new5(int64 msecs);
	[LinkName("QDeadlineTimer_new6")]
	public static extern QDeadlineTimer* QDeadlineTimer_new6(QDeadlineTimer* param1);
	[LinkName("QDeadlineTimer_new7")]
	public static extern QDeadlineTimer* QDeadlineTimer_new7(int64 type_);
	[LinkName("QDeadlineTimer_new8")]
	public static extern QDeadlineTimer* QDeadlineTimer_new8(int64 param1, int64 type_);
	[LinkName("QDeadlineTimer_new9")]
	public static extern QDeadlineTimer* QDeadlineTimer_new9(int64 msecs, int64 typeVal);
	[LinkName("QDeadlineTimer_Swap")]
	public static extern void QDeadlineTimer_Swap(Self* c_this, QDeadlineTimer* other);
	[LinkName("QDeadlineTimer_IsForever")]
	public static extern bool QDeadlineTimer_IsForever(Self* c_this);
	[LinkName("QDeadlineTimer_HasExpired")]
	public static extern bool QDeadlineTimer_HasExpired(Self* c_this);
	[LinkName("QDeadlineTimer_TimerType")]
	public static extern int64 QDeadlineTimer_TimerType(Self* c_this);
	[LinkName("QDeadlineTimer_SetTimerType")]
	public static extern void QDeadlineTimer_SetTimerType(Self* c_this, int64 typeVal);
	[LinkName("QDeadlineTimer_RemainingTime")]
	public static extern int64 QDeadlineTimer_RemainingTime(Self* c_this);
	[LinkName("QDeadlineTimer_RemainingTimeNSecs")]
	public static extern int64 QDeadlineTimer_RemainingTimeNSecs(Self* c_this);
	[LinkName("QDeadlineTimer_SetRemainingTime")]
	public static extern void QDeadlineTimer_SetRemainingTime(Self* c_this, int64 msecs);
	[LinkName("QDeadlineTimer_SetPreciseRemainingTime")]
	public static extern void QDeadlineTimer_SetPreciseRemainingTime(Self* c_this, int64 secs);
	[LinkName("QDeadlineTimer_Deadline")]
	public static extern int64 QDeadlineTimer_Deadline(Self* c_this);
	[LinkName("QDeadlineTimer_DeadlineNSecs")]
	public static extern int64 QDeadlineTimer_DeadlineNSecs(Self* c_this);
	[LinkName("QDeadlineTimer_SetDeadline")]
	public static extern void QDeadlineTimer_SetDeadline(Self* c_this, int64 msecs);
	[LinkName("QDeadlineTimer_SetPreciseDeadline")]
	public static extern void QDeadlineTimer_SetPreciseDeadline(Self* c_this, int64 secs);
	[LinkName("QDeadlineTimer_AddNSecs")]
	public static extern QDeadlineTimer QDeadlineTimer_AddNSecs(QDeadlineTimer dt, int64 nsecs);
	[LinkName("QDeadlineTimer_Current")]
	public static extern QDeadlineTimer QDeadlineTimer_Current();
	[LinkName("QDeadlineTimer_OperatorPlusAssign")]
	public static extern QDeadlineTimer* QDeadlineTimer_OperatorPlusAssign(Self* c_this, int64 msecs);
	[LinkName("QDeadlineTimer_OperatorMinusAssign")]
	public static extern QDeadlineTimer* QDeadlineTimer_OperatorMinusAssign(Self* c_this, int64 msecs);
	[LinkName("QDeadlineTimer_OperatorAssign")]
	public static extern void QDeadlineTimer_OperatorAssign(Self* c_this, QDeadlineTimer* param1);
	[LinkName("QDeadlineTimer_SetRemainingTime2")]
	public static extern void QDeadlineTimer_SetRemainingTime2(Self* c_this, int64 msecs, int64 typeVal);
	[LinkName("QDeadlineTimer_SetPreciseRemainingTime2")]
	public static extern void QDeadlineTimer_SetPreciseRemainingTime2(Self* c_this, int64 secs, int64 nsecs);
	[LinkName("QDeadlineTimer_SetPreciseRemainingTime3")]
	public static extern void QDeadlineTimer_SetPreciseRemainingTime3(Self* c_this, int64 secs, int64 nsecs, int64 typeVal);
	[LinkName("QDeadlineTimer_SetDeadline2")]
	public static extern void QDeadlineTimer_SetDeadline2(Self* c_this, int64 msecs, int64 timerType);
	[LinkName("QDeadlineTimer_SetPreciseDeadline2")]
	public static extern void QDeadlineTimer_SetPreciseDeadline2(Self* c_this, int64 secs, int64 nsecs);
	[LinkName("QDeadlineTimer_SetPreciseDeadline3")]
	public static extern void QDeadlineTimer_SetPreciseDeadline3(Self* c_this, int64 secs, int64 nsecs, int64 typeVal);
	[LinkName("QDeadlineTimer_Current1")]
	public static extern QDeadlineTimer QDeadlineTimer_Current1(int64 timerType);
}