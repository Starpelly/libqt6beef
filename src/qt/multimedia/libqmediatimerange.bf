using System;
using System.Interop;
namespace Qt;

public struct QMediaTimeRange
{
	[LinkName("QMediaTimeRange_new")]
	public static extern QMediaTimeRange* QMediaTimeRange_new();
	[LinkName("QMediaTimeRange_new2")]
	public static extern QMediaTimeRange* QMediaTimeRange_new2(int64 start, int64 end);
	[LinkName("QMediaTimeRange_new3")]
	public static extern QMediaTimeRange* QMediaTimeRange_new3(QMediaTimeRange__Interval* param1);
	[LinkName("QMediaTimeRange_new4")]
	public static extern QMediaTimeRange* QMediaTimeRange_new4(QMediaTimeRange* range);
	[LinkName("QMediaTimeRange_OperatorAssign")]
	public static extern void QMediaTimeRange_OperatorAssign(Self* c_this, QMediaTimeRange* param1);
	[LinkName("QMediaTimeRange_Swap")]
	public static extern void QMediaTimeRange_Swap(Self* c_this, QMediaTimeRange* other);
	[LinkName("QMediaTimeRange_Detach")]
	public static extern void QMediaTimeRange_Detach(Self* c_this);
	[LinkName("QMediaTimeRange_OperatorAssignWithQMediaTimeRangeInterval")]
	public static extern void QMediaTimeRange_OperatorAssignWithQMediaTimeRangeInterval(Self* c_this, QMediaTimeRange__Interval* param1);
	[LinkName("QMediaTimeRange_EarliestTime")]
	public static extern int64 QMediaTimeRange_EarliestTime(Self* c_this);
	[LinkName("QMediaTimeRange_LatestTime")]
	public static extern int64 QMediaTimeRange_LatestTime(Self* c_this);
	[LinkName("QMediaTimeRange_Intervals")]
	public static extern QMediaTimeRange__Interval[] QMediaTimeRange_Intervals(Self* c_this);
	[LinkName("QMediaTimeRange_IsEmpty")]
	public static extern bool QMediaTimeRange_IsEmpty(Self* c_this);
	[LinkName("QMediaTimeRange_IsContinuous")]
	public static extern bool QMediaTimeRange_IsContinuous(Self* c_this);
	[LinkName("QMediaTimeRange_Contains")]
	public static extern bool QMediaTimeRange_Contains(Self* c_this, int64 time);
	[LinkName("QMediaTimeRange_AddInterval")]
	public static extern void QMediaTimeRange_AddInterval(Self* c_this, int64 start, int64 end);
	[LinkName("QMediaTimeRange_AddIntervalWithInterval")]
	public static extern void QMediaTimeRange_AddIntervalWithInterval(Self* c_this, QMediaTimeRange__Interval* interval);
	[LinkName("QMediaTimeRange_AddTimeRange")]
	public static extern void QMediaTimeRange_AddTimeRange(Self* c_this, QMediaTimeRange* param1);
	[LinkName("QMediaTimeRange_RemoveInterval")]
	public static extern void QMediaTimeRange_RemoveInterval(Self* c_this, int64 start, int64 end);
	[LinkName("QMediaTimeRange_RemoveIntervalWithInterval")]
	public static extern void QMediaTimeRange_RemoveIntervalWithInterval(Self* c_this, QMediaTimeRange__Interval* interval);
	[LinkName("QMediaTimeRange_RemoveTimeRange")]
	public static extern void QMediaTimeRange_RemoveTimeRange(Self* c_this, QMediaTimeRange* param1);
	[LinkName("QMediaTimeRange_OperatorPlusAssign")]
	public static extern QMediaTimeRange* QMediaTimeRange_OperatorPlusAssign(Self* c_this, QMediaTimeRange* param1);
	[LinkName("QMediaTimeRange_OperatorPlusAssignWithQMediaTimeRangeInterval")]
	public static extern QMediaTimeRange* QMediaTimeRange_OperatorPlusAssignWithQMediaTimeRangeInterval(Self* c_this, QMediaTimeRange__Interval* param1);
	[LinkName("QMediaTimeRange_OperatorMinusAssign")]
	public static extern QMediaTimeRange* QMediaTimeRange_OperatorMinusAssign(Self* c_this, QMediaTimeRange* param1);
	[LinkName("QMediaTimeRange_OperatorMinusAssignWithQMediaTimeRangeInterval")]
	public static extern QMediaTimeRange* QMediaTimeRange_OperatorMinusAssignWithQMediaTimeRangeInterval(Self* c_this, QMediaTimeRange__Interval* param1);
	[LinkName("QMediaTimeRange_Clear")]
	public static extern void QMediaTimeRange_Clear(Self* c_this);
}
public struct QMediaTimeRange__Interval
{
	[LinkName("QMediaTimeRange__Interval_new")]
	public static extern QMediaTimeRange__Interval* QMediaTimeRange__Interval_new(QMediaTimeRange__Interval* other);
	[LinkName("QMediaTimeRange__Interval_new2")]
	public static extern QMediaTimeRange__Interval* QMediaTimeRange__Interval_new2(QMediaTimeRange__Interval* other);
	[LinkName("QMediaTimeRange__Interval_new3")]
	public static extern QMediaTimeRange__Interval* QMediaTimeRange__Interval_new3();
	[LinkName("QMediaTimeRange__Interval_new4")]
	public static extern QMediaTimeRange__Interval* QMediaTimeRange__Interval_new4(int64 start, int64 end);
	[LinkName("QMediaTimeRange__Interval_new5")]
	public static extern QMediaTimeRange__Interval* QMediaTimeRange__Interval_new5(QMediaTimeRange__Interval* param1);
	[LinkName("QMediaTimeRange__Interval_Start")]
	public static extern int64 QMediaTimeRange__Interval_Start(Self* c_this);
	[LinkName("QMediaTimeRange__Interval_End")]
	public static extern int64 QMediaTimeRange__Interval_End(Self* c_this);
	[LinkName("QMediaTimeRange__Interval_Contains")]
	public static extern bool QMediaTimeRange__Interval_Contains(Self* c_this, int64 time);
	[LinkName("QMediaTimeRange__Interval_IsNormal")]
	public static extern bool QMediaTimeRange__Interval_IsNormal(Self* c_this);
	[LinkName("QMediaTimeRange__Interval_Normalized")]
	public static extern QMediaTimeRange__Interval QMediaTimeRange__Interval_Normalized(Self* c_this);
	[LinkName("QMediaTimeRange__Interval_Translated")]
	public static extern QMediaTimeRange__Interval QMediaTimeRange__Interval_Translated(Self* c_this, int64 offset);
}