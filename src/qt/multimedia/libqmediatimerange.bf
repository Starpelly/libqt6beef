using System;
using System.Interop;
namespace Qt;

public interface IQMediaTimeRange
{
	void* NativePtr { get; }
}
public struct QMediaTimeRangePtr : IQMediaTimeRange, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QMediaTimeRange_new());
	}
	
	public void Dispose()
	{
		CQt.QMediaTimeRange_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQMediaTimeRange param1)
	{
		CQt.QMediaTimeRange_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Swap(IQMediaTimeRange other)
	{
		CQt.QMediaTimeRange_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Detach()
	{
		CQt.QMediaTimeRange_Detach(this.nativePtr);
	}
	
	public void OperatorAssignWithQMediaTimeRangeInterval(QMediaTimeRange__IntervalPtr param1)
	{
		CQt.QMediaTimeRange_OperatorAssignWithQMediaTimeRangeInterval(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public int64 EarliestTime()
	{
		return CQt.QMediaTimeRange_EarliestTime(this.nativePtr);
	}
	
	public int64 LatestTime()
	{
		return CQt.QMediaTimeRange_LatestTime(this.nativePtr);
	}
	
	public void[] Intervals()
	{
		return CQt.QMediaTimeRange_Intervals(this.nativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QMediaTimeRange_IsEmpty(this.nativePtr);
	}
	
	public bool IsContinuous()
	{
		return CQt.QMediaTimeRange_IsContinuous(this.nativePtr);
	}
	
	public bool Contains(int64 time)
	{
		return CQt.QMediaTimeRange_Contains(this.nativePtr, time);
	}
	
	public void AddInterval(int64 start, int64 end)
	{
		CQt.QMediaTimeRange_AddInterval(this.nativePtr, start, end);
	}
	
	public void AddIntervalWithInterval(QMediaTimeRange__IntervalPtr interval)
	{
		CQt.QMediaTimeRange_AddIntervalWithInterval(this.nativePtr, (interval == default || interval.NativePtr == default) ? default : interval.NativePtr);
	}
	
	public void AddTimeRange(IQMediaTimeRange param1)
	{
		CQt.QMediaTimeRange_AddTimeRange(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void RemoveInterval(int64 start, int64 end)
	{
		CQt.QMediaTimeRange_RemoveInterval(this.nativePtr, start, end);
	}
	
	public void RemoveIntervalWithInterval(QMediaTimeRange__IntervalPtr interval)
	{
		CQt.QMediaTimeRange_RemoveIntervalWithInterval(this.nativePtr, (interval == default || interval.NativePtr == default) ? default : interval.NativePtr);
	}
	
	public void RemoveTimeRange(IQMediaTimeRange param1)
	{
		CQt.QMediaTimeRange_RemoveTimeRange(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void* OperatorPlusAssign(IQMediaTimeRange param1)
	{
		return CQt.QMediaTimeRange_OperatorPlusAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void* OperatorPlusAssignWithQMediaTimeRangeInterval(QMediaTimeRange__IntervalPtr param1)
	{
		return CQt.QMediaTimeRange_OperatorPlusAssignWithQMediaTimeRangeInterval(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void* OperatorMinusAssign(IQMediaTimeRange param1)
	{
		return CQt.QMediaTimeRange_OperatorMinusAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void* OperatorMinusAssignWithQMediaTimeRangeInterval(QMediaTimeRange__IntervalPtr param1)
	{
		return CQt.QMediaTimeRange_OperatorMinusAssignWithQMediaTimeRangeInterval(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Clear()
	{
		CQt.QMediaTimeRange_Clear(this.nativePtr);
	}
	
}
public class QMediaTimeRange
{
	public QMediaTimeRangePtr handle;
	
	public static implicit operator QMediaTimeRangePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QMediaTimeRangePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQMediaTimeRange param1)
	{
		this.handle.OperatorAssign(param1);
	}
	
	public void Swap(IQMediaTimeRange other)
	{
		this.handle.Swap(other);
	}
	
	public void Detach()
	{
		this.handle.Detach();
	}
	
	public void OperatorAssignWithQMediaTimeRangeInterval(QMediaTimeRange__IntervalPtr param1)
	{
		this.handle.OperatorAssignWithQMediaTimeRangeInterval(param1);
	}
	
	public int64 EarliestTime()
	{
		return this.handle.EarliestTime();
	}
	
	public int64 LatestTime()
	{
		return this.handle.LatestTime();
	}
	
	public void[] Intervals()
	{
		return this.handle.Intervals();
	}
	
	public bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public bool IsContinuous()
	{
		return this.handle.IsContinuous();
	}
	
	public bool Contains(int64 time)
	{
		return this.handle.Contains(time);
	}
	
	public void AddInterval(int64 start, int64 end)
	{
		this.handle.AddInterval(start, end);
	}
	
	public void AddIntervalWithInterval(QMediaTimeRange__IntervalPtr interval)
	{
		this.handle.AddIntervalWithInterval(interval);
	}
	
	public void AddTimeRange(IQMediaTimeRange param1)
	{
		this.handle.AddTimeRange(param1);
	}
	
	public void RemoveInterval(int64 start, int64 end)
	{
		this.handle.RemoveInterval(start, end);
	}
	
	public void RemoveIntervalWithInterval(QMediaTimeRange__IntervalPtr interval)
	{
		this.handle.RemoveIntervalWithInterval(interval);
	}
	
	public void RemoveTimeRange(IQMediaTimeRange param1)
	{
		this.handle.RemoveTimeRange(param1);
	}
	
	public void* OperatorPlusAssign(IQMediaTimeRange param1)
	{
		return this.handle.OperatorPlusAssign(param1);
	}
	
	public void* OperatorPlusAssignWithQMediaTimeRangeInterval(QMediaTimeRange__IntervalPtr param1)
	{
		return this.handle.OperatorPlusAssignWithQMediaTimeRangeInterval(param1);
	}
	
	public void* OperatorMinusAssign(IQMediaTimeRange param1)
	{
		return this.handle.OperatorMinusAssign(param1);
	}
	
	public void* OperatorMinusAssignWithQMediaTimeRangeInterval(QMediaTimeRange__IntervalPtr param1)
	{
		return this.handle.OperatorMinusAssignWithQMediaTimeRangeInterval(param1);
	}
	
	public void Clear()
	{
		this.handle.Clear();
	}
	
}
extension CQt
{
	[LinkName("QMediaTimeRange_new")]
	public static extern void* QMediaTimeRange_new();
	[LinkName("QMediaTimeRange_new2")]
	public static extern void* QMediaTimeRange_new2(int64 start, int64 end);
	[LinkName("QMediaTimeRange_new3")]
	public static extern void* QMediaTimeRange_new3(void* param1);
	[LinkName("QMediaTimeRange_new4")]
	public static extern void* QMediaTimeRange_new4(void* range);
	[LinkName("QMediaTimeRange_OperatorAssign")]
	public static extern void QMediaTimeRange_OperatorAssign(void* c_this, void* param1);
	[LinkName("QMediaTimeRange_Swap")]
	public static extern void QMediaTimeRange_Swap(void* c_this, void* other);
	[LinkName("QMediaTimeRange_Detach")]
	public static extern void QMediaTimeRange_Detach(void* c_this);
	[LinkName("QMediaTimeRange_OperatorAssignWithQMediaTimeRangeInterval")]
	public static extern void QMediaTimeRange_OperatorAssignWithQMediaTimeRangeInterval(void* c_this, void* param1);
	[LinkName("QMediaTimeRange_EarliestTime")]
	public static extern int64 QMediaTimeRange_EarliestTime(void* c_this);
	[LinkName("QMediaTimeRange_LatestTime")]
	public static extern int64 QMediaTimeRange_LatestTime(void* c_this);
	[LinkName("QMediaTimeRange_Intervals")]
	public static extern void[] QMediaTimeRange_Intervals(void* c_this);
	[LinkName("QMediaTimeRange_IsEmpty")]
	public static extern bool QMediaTimeRange_IsEmpty(void* c_this);
	[LinkName("QMediaTimeRange_IsContinuous")]
	public static extern bool QMediaTimeRange_IsContinuous(void* c_this);
	[LinkName("QMediaTimeRange_Contains")]
	public static extern bool QMediaTimeRange_Contains(void* c_this, int64 time);
	[LinkName("QMediaTimeRange_AddInterval")]
	public static extern void QMediaTimeRange_AddInterval(void* c_this, int64 start, int64 end);
	[LinkName("QMediaTimeRange_AddIntervalWithInterval")]
	public static extern void QMediaTimeRange_AddIntervalWithInterval(void* c_this, void* interval);
	[LinkName("QMediaTimeRange_AddTimeRange")]
	public static extern void QMediaTimeRange_AddTimeRange(void* c_this, void* param1);
	[LinkName("QMediaTimeRange_RemoveInterval")]
	public static extern void QMediaTimeRange_RemoveInterval(void* c_this, int64 start, int64 end);
	[LinkName("QMediaTimeRange_RemoveIntervalWithInterval")]
	public static extern void QMediaTimeRange_RemoveIntervalWithInterval(void* c_this, void* interval);
	[LinkName("QMediaTimeRange_RemoveTimeRange")]
	public static extern void QMediaTimeRange_RemoveTimeRange(void* c_this, void* param1);
	[LinkName("QMediaTimeRange_OperatorPlusAssign")]
	public static extern void* QMediaTimeRange_OperatorPlusAssign(void* c_this, void* param1);
	[LinkName("QMediaTimeRange_OperatorPlusAssignWithQMediaTimeRangeInterval")]
	public static extern void* QMediaTimeRange_OperatorPlusAssignWithQMediaTimeRangeInterval(void* c_this, void* param1);
	[LinkName("QMediaTimeRange_OperatorMinusAssign")]
	public static extern void* QMediaTimeRange_OperatorMinusAssign(void* c_this, void* param1);
	[LinkName("QMediaTimeRange_OperatorMinusAssignWithQMediaTimeRangeInterval")]
	public static extern void* QMediaTimeRange_OperatorMinusAssignWithQMediaTimeRangeInterval(void* c_this, void* param1);
	[LinkName("QMediaTimeRange_Clear")]
	public static extern void QMediaTimeRange_Clear(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QMediaTimeRange_Delete")]
	public static extern void QMediaTimeRange_Delete(void* self);
}
public interface IQMediaTimeRange__Interval
{
	void* NativePtr { get; }
}
public struct QMediaTimeRange__IntervalPtr : IQMediaTimeRange__Interval, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QMediaTimeRange__IntervalPtr other)
	{
		return .(CQt.QMediaTimeRange__Interval_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QMediaTimeRange__Interval_Delete(this.nativePtr);
	}
	
	public int64 Start()
	{
		return CQt.QMediaTimeRange__Interval_Start(this.nativePtr);
	}
	
	public int64 End()
	{
		return CQt.QMediaTimeRange__Interval_End(this.nativePtr);
	}
	
	public bool Contains(int64 time)
	{
		return CQt.QMediaTimeRange__Interval_Contains(this.nativePtr, time);
	}
	
	public bool IsNormal()
	{
		return CQt.QMediaTimeRange__Interval_IsNormal(this.nativePtr);
	}
	
	public void Normalized()
	{
		CQt.QMediaTimeRange__Interval_Normalized(this.nativePtr);
	}
	
	public void Translated(int64 offset)
	{
		CQt.QMediaTimeRange__Interval_Translated(this.nativePtr, offset);
	}
	
}
public class QMediaTimeRange__Interval
{
	public QMediaTimeRange__IntervalPtr handle;
	
	public static implicit operator QMediaTimeRange__IntervalPtr(Self self)
	{
		return self.handle;
	}
	
	public this(QMediaTimeRange__IntervalPtr other)
	{
		this.handle = QMediaTimeRange__IntervalPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public int64 Start()
	{
		return this.handle.Start();
	}
	
	public int64 End()
	{
		return this.handle.End();
	}
	
	public bool Contains(int64 time)
	{
		return this.handle.Contains(time);
	}
	
	public bool IsNormal()
	{
		return this.handle.IsNormal();
	}
	
	public void Normalized()
	{
		this.handle.Normalized();
	}
	
	public void Translated(int64 offset)
	{
		this.handle.Translated(offset);
	}
	
}
extension CQt
{
	[LinkName("QMediaTimeRange__Interval_new")]
	public static extern void* QMediaTimeRange__Interval_new(void* other);
	[LinkName("QMediaTimeRange__Interval_new2")]
	public static extern void* QMediaTimeRange__Interval_new2(void* other);
	[LinkName("QMediaTimeRange__Interval_new3")]
	public static extern void* QMediaTimeRange__Interval_new3();
	[LinkName("QMediaTimeRange__Interval_new4")]
	public static extern void* QMediaTimeRange__Interval_new4(int64 start, int64 end);
	[LinkName("QMediaTimeRange__Interval_new5")]
	public static extern void* QMediaTimeRange__Interval_new5(void* param1);
	[LinkName("QMediaTimeRange__Interval_Start")]
	public static extern int64 QMediaTimeRange__Interval_Start(void* c_this);
	[LinkName("QMediaTimeRange__Interval_End")]
	public static extern int64 QMediaTimeRange__Interval_End(void* c_this);
	[LinkName("QMediaTimeRange__Interval_Contains")]
	public static extern bool QMediaTimeRange__Interval_Contains(void* c_this, int64 time);
	[LinkName("QMediaTimeRange__Interval_IsNormal")]
	public static extern bool QMediaTimeRange__Interval_IsNormal(void* c_this);
	[LinkName("QMediaTimeRange__Interval_Normalized")]
	public static extern void QMediaTimeRange__Interval_Normalized(void* c_this);
	[LinkName("QMediaTimeRange__Interval_Translated")]
	public static extern void QMediaTimeRange__Interval_Translated(void* c_this, int64 offset);
	/// Delete this object from C++ memory
	[LinkName("QMediaTimeRange__Interval_Delete")]
	public static extern void QMediaTimeRange__Interval_Delete(void* self);
}