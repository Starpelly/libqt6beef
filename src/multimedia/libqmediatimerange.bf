using System;
using System.Interop;
namespace Qt;

public struct QMediaTimeRange
{
	[LinkName("QMediaTimeRange_new")]
	public static extern void* QMediaTimeRange_new();
	[LinkName("QMediaTimeRange_new2")]
	public static extern void* QMediaTimeRange_new2(int64 start, int64 end);
	[LinkName("QMediaTimeRange_new3")]
	public static extern void* QMediaTimeRange_new3(QMediaTimeRange__Interval param1);
	[LinkName("QMediaTimeRange_new4")]
	public static extern void* QMediaTimeRange_new4(QMediaTimeRange range);
	[LinkName("QMediaTimeRange_OperatorAssign")]
	public static extern void QMediaTimeRange_OperatorAssign(void* c_this, QMediaTimeRange param1);
	[LinkName("QMediaTimeRange_Swap")]
	public static extern void QMediaTimeRange_Swap(void* c_this, QMediaTimeRange other);
	[LinkName("QMediaTimeRange_Detach")]
	public static extern void QMediaTimeRange_Detach(void* c_this);
	[LinkName("QMediaTimeRange_OperatorAssignWithQMediaTimeRangeInterval")]
	public static extern void QMediaTimeRange_OperatorAssignWithQMediaTimeRangeInterval(void* c_this, QMediaTimeRange__Interval param1);
	[LinkName("QMediaTimeRange_EarliestTime")]
	public static extern int64 QMediaTimeRange_EarliestTime(void* c_this);
	[LinkName("QMediaTimeRange_LatestTime")]
	public static extern int64 QMediaTimeRange_LatestTime(void* c_this);
	[LinkName("QMediaTimeRange_Intervals")]
	public static extern QMediaTimeRange__Interval[] QMediaTimeRange_Intervals(void* c_this);
	[LinkName("QMediaTimeRange_IsEmpty")]
	public static extern bool QMediaTimeRange_IsEmpty(void* c_this);
	[LinkName("QMediaTimeRange_IsContinuous")]
	public static extern bool QMediaTimeRange_IsContinuous(void* c_this);
	[LinkName("QMediaTimeRange_Contains")]
	public static extern bool QMediaTimeRange_Contains(void* c_this, int64 time);
	[LinkName("QMediaTimeRange_AddInterval")]
	public static extern void QMediaTimeRange_AddInterval(void* c_this, int64 start, int64 end);
	[LinkName("QMediaTimeRange_AddIntervalWithInterval")]
	public static extern void QMediaTimeRange_AddIntervalWithInterval(void* c_this, QMediaTimeRange__Interval interval);
	[LinkName("QMediaTimeRange_AddTimeRange")]
	public static extern void QMediaTimeRange_AddTimeRange(void* c_this, QMediaTimeRange param1);
	[LinkName("QMediaTimeRange_RemoveInterval")]
	public static extern void QMediaTimeRange_RemoveInterval(void* c_this, int64 start, int64 end);
	[LinkName("QMediaTimeRange_RemoveIntervalWithInterval")]
	public static extern void QMediaTimeRange_RemoveIntervalWithInterval(void* c_this, QMediaTimeRange__Interval interval);
	[LinkName("QMediaTimeRange_RemoveTimeRange")]
	public static extern void QMediaTimeRange_RemoveTimeRange(void* c_this, QMediaTimeRange param1);
	[LinkName("QMediaTimeRange_OperatorPlusAssign")]
	public static extern QMediaTimeRange QMediaTimeRange_OperatorPlusAssign(void* c_this, QMediaTimeRange param1);
	[LinkName("QMediaTimeRange_OperatorPlusAssignWithQMediaTimeRangeInterval")]
	public static extern QMediaTimeRange QMediaTimeRange_OperatorPlusAssignWithQMediaTimeRangeInterval(void* c_this, QMediaTimeRange__Interval param1);
	[LinkName("QMediaTimeRange_OperatorMinusAssign")]
	public static extern QMediaTimeRange QMediaTimeRange_OperatorMinusAssign(void* c_this, QMediaTimeRange param1);
	[LinkName("QMediaTimeRange_OperatorMinusAssignWithQMediaTimeRangeInterval")]
	public static extern QMediaTimeRange QMediaTimeRange_OperatorMinusAssignWithQMediaTimeRangeInterval(void* c_this, QMediaTimeRange__Interval param1);
	[LinkName("QMediaTimeRange_Clear")]
	public static extern void QMediaTimeRange_Clear(void* c_this);
}
public struct QMediaTimeRange__Interval
{
	[LinkName("QMediaTimeRange__Interval_new")]
	public static extern void* QMediaTimeRange__Interval_new(QMediaTimeRange__Interval other);
	[LinkName("QMediaTimeRange__Interval_new2")]
	public static extern void* QMediaTimeRange__Interval_new2(QMediaTimeRange__Interval other);
	[LinkName("QMediaTimeRange__Interval_new3")]
	public static extern void* QMediaTimeRange__Interval_new3();
	[LinkName("QMediaTimeRange__Interval_new4")]
	public static extern void* QMediaTimeRange__Interval_new4(int64 start, int64 end);
	[LinkName("QMediaTimeRange__Interval_new5")]
	public static extern void* QMediaTimeRange__Interval_new5(QMediaTimeRange__Interval param1);
	[LinkName("QMediaTimeRange__Interval_Start")]
	public static extern int64 QMediaTimeRange__Interval_Start(void* c_this);
	[LinkName("QMediaTimeRange__Interval_End")]
	public static extern int64 QMediaTimeRange__Interval_End(void* c_this);
	[LinkName("QMediaTimeRange__Interval_Contains")]
	public static extern bool QMediaTimeRange__Interval_Contains(void* c_this, int64 time);
	[LinkName("QMediaTimeRange__Interval_IsNormal")]
	public static extern bool QMediaTimeRange__Interval_IsNormal(void* c_this);
	[LinkName("QMediaTimeRange__Interval_Normalized")]
	public static extern QMediaTimeRange__Interval QMediaTimeRange__Interval_Normalized(void* c_this);
	[LinkName("QMediaTimeRange__Interval_Translated")]
	public static extern QMediaTimeRange__Interval QMediaTimeRange__Interval_Translated(void* c_this, int64 offset);
}