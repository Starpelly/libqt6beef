using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDeadlineTimer__ForeverConstant
{
	Forever = 0,
}
public interface IQDeadlineTimer
{
	void* NativePtr { get; }
}
public struct QDeadlineTimerPtr : IQDeadlineTimer, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQDeadlineTimer other)
	{
		return .(CQt.QDeadlineTimer_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QDeadlineTimer_Delete(this.nativePtr);
	}
	
	public void Swap(IQDeadlineTimer other)
	{
		CQt.QDeadlineTimer_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsForever()
	{
		return CQt.QDeadlineTimer_IsForever(this.nativePtr);
	}
	
	public bool HasExpired()
	{
		return CQt.QDeadlineTimer_HasExpired(this.nativePtr);
	}
	
	public int64 TimerType()
	{
		return CQt.QDeadlineTimer_TimerType(this.nativePtr);
	}
	
	public void SetTimerType(int64 typeVal)
	{
		CQt.QDeadlineTimer_SetTimerType(this.nativePtr, (int64)typeVal);
	}
	
	public int64 RemainingTime()
	{
		return CQt.QDeadlineTimer_RemainingTime(this.nativePtr);
	}
	
	public int64 RemainingTimeNSecs()
	{
		return CQt.QDeadlineTimer_RemainingTimeNSecs(this.nativePtr);
	}
	
	public void SetRemainingTime(int64 msecs)
	{
		CQt.QDeadlineTimer_SetRemainingTime(this.nativePtr, msecs);
	}
	
	public void SetPreciseRemainingTime(int64 secs)
	{
		CQt.QDeadlineTimer_SetPreciseRemainingTime(this.nativePtr, secs);
	}
	
	public int64 Deadline()
	{
		return CQt.QDeadlineTimer_Deadline(this.nativePtr);
	}
	
	public int64 DeadlineNSecs()
	{
		return CQt.QDeadlineTimer_DeadlineNSecs(this.nativePtr);
	}
	
	public void SetDeadline(int64 msecs)
	{
		CQt.QDeadlineTimer_SetDeadline(this.nativePtr, msecs);
	}
	
	public void SetPreciseDeadline(int64 secs)
	{
		CQt.QDeadlineTimer_SetPreciseDeadline(this.nativePtr, secs);
	}
	
	public static void AddNSecs(IQDeadlineTimer dt, int64 nsecs)
	{
		CQt.QDeadlineTimer_AddNSecs(default, nsecs);
	}
	
	public static void Current()
	{
		CQt.QDeadlineTimer_Current();
	}
	
	public void* OperatorPlusAssign(int64 msecs)
	{
		return CQt.QDeadlineTimer_OperatorPlusAssign(this.nativePtr, msecs);
	}
	
	public void* OperatorMinusAssign(int64 msecs)
	{
		return CQt.QDeadlineTimer_OperatorMinusAssign(this.nativePtr, msecs);
	}
	
	public void OperatorAssign(IQDeadlineTimer param1)
	{
		CQt.QDeadlineTimer_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void SetRemainingTime2(int64 msecs, int64 typeVal)
	{
		CQt.QDeadlineTimer_SetRemainingTime2(this.nativePtr, msecs, (int64)typeVal);
	}
	
	public void SetPreciseRemainingTime2(int64 secs, int64 nsecs)
	{
		CQt.QDeadlineTimer_SetPreciseRemainingTime2(this.nativePtr, secs, nsecs);
	}
	
	public void SetPreciseRemainingTime3(int64 secs, int64 nsecs, int64 typeVal)
	{
		CQt.QDeadlineTimer_SetPreciseRemainingTime3(this.nativePtr, secs, nsecs, (int64)typeVal);
	}
	
	public void SetDeadline2(int64 msecs, int64 timerType)
	{
		CQt.QDeadlineTimer_SetDeadline2(this.nativePtr, msecs, (int64)timerType);
	}
	
	public void SetPreciseDeadline2(int64 secs, int64 nsecs)
	{
		CQt.QDeadlineTimer_SetPreciseDeadline2(this.nativePtr, secs, nsecs);
	}
	
	public void SetPreciseDeadline3(int64 secs, int64 nsecs, int64 typeVal)
	{
		CQt.QDeadlineTimer_SetPreciseDeadline3(this.nativePtr, secs, nsecs, (int64)typeVal);
	}
	
	public static void Current1(int64 timerType)
	{
		CQt.QDeadlineTimer_Current1((int64)timerType);
	}
	
}
public class QDeadlineTimer
{
	public QDeadlineTimerPtr handle;
	
	public static implicit operator QDeadlineTimerPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQDeadlineTimer other)
	{
		this.handle = QDeadlineTimerPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Swap(IQDeadlineTimer other)
	{
		this.handle.Swap(other);
	}
	
	public bool IsForever()
	{
		return this.handle.IsForever();
	}
	
	public bool HasExpired()
	{
		return this.handle.HasExpired();
	}
	
	public int64 TimerType()
	{
		return this.handle.TimerType();
	}
	
	public void SetTimerType(int64 typeVal)
	{
		this.handle.SetTimerType(typeVal);
	}
	
	public int64 RemainingTime()
	{
		return this.handle.RemainingTime();
	}
	
	public int64 RemainingTimeNSecs()
	{
		return this.handle.RemainingTimeNSecs();
	}
	
	public void SetRemainingTime(int64 msecs)
	{
		this.handle.SetRemainingTime(msecs);
	}
	
	public void SetPreciseRemainingTime(int64 secs)
	{
		this.handle.SetPreciseRemainingTime(secs);
	}
	
	public int64 Deadline()
	{
		return this.handle.Deadline();
	}
	
	public int64 DeadlineNSecs()
	{
		return this.handle.DeadlineNSecs();
	}
	
	public void SetDeadline(int64 msecs)
	{
		this.handle.SetDeadline(msecs);
	}
	
	public void SetPreciseDeadline(int64 secs)
	{
		this.handle.SetPreciseDeadline(secs);
	}
	
	public static void AddNSecs(IQDeadlineTimer dt, int64 nsecs)
	{
		QDeadlineTimerPtr.AddNSecs(default, nsecs);
	}
	
	public static void Current()
	{
		QDeadlineTimerPtr.Current();
	}
	
	public void* OperatorPlusAssign(int64 msecs)
	{
		return this.handle.OperatorPlusAssign(msecs);
	}
	
	public void* OperatorMinusAssign(int64 msecs)
	{
		return this.handle.OperatorMinusAssign(msecs);
	}
	
	public void OperatorAssign(IQDeadlineTimer param1)
	{
		this.handle.OperatorAssign(param1);
	}
	
	public void SetRemainingTime2(int64 msecs, int64 typeVal)
	{
		this.handle.SetRemainingTime2(msecs, typeVal);
	}
	
	public void SetPreciseRemainingTime2(int64 secs, int64 nsecs)
	{
		this.handle.SetPreciseRemainingTime2(secs, nsecs);
	}
	
	public void SetPreciseRemainingTime3(int64 secs, int64 nsecs, int64 typeVal)
	{
		this.handle.SetPreciseRemainingTime3(secs, nsecs, typeVal);
	}
	
	public void SetDeadline2(int64 msecs, int64 timerType)
	{
		this.handle.SetDeadline2(msecs, timerType);
	}
	
	public void SetPreciseDeadline2(int64 secs, int64 nsecs)
	{
		this.handle.SetPreciseDeadline2(secs, nsecs);
	}
	
	public void SetPreciseDeadline3(int64 secs, int64 nsecs, int64 typeVal)
	{
		this.handle.SetPreciseDeadline3(secs, nsecs, typeVal);
	}
	
	public static void Current1(int64 timerType)
	{
		QDeadlineTimerPtr.Current1(timerType);
	}
	
}
extension CQt
{
	[LinkName("QDeadlineTimer_new")]
	public static extern void* QDeadlineTimer_new(void* other);
	[LinkName("QDeadlineTimer_new2")]
	public static extern void* QDeadlineTimer_new2(void* other);
	[LinkName("QDeadlineTimer_new3")]
	public static extern void* QDeadlineTimer_new3();
	[LinkName("QDeadlineTimer_new4")]
	public static extern void* QDeadlineTimer_new4(int64 param1);
	[LinkName("QDeadlineTimer_new5")]
	public static extern void* QDeadlineTimer_new5(int64 msecs);
	[LinkName("QDeadlineTimer_new6")]
	public static extern void* QDeadlineTimer_new6(void* param1);
	[LinkName("QDeadlineTimer_new7")]
	public static extern void* QDeadlineTimer_new7(int64 type_);
	[LinkName("QDeadlineTimer_new8")]
	public static extern void* QDeadlineTimer_new8(int64 param1, int64 type_);
	[LinkName("QDeadlineTimer_new9")]
	public static extern void* QDeadlineTimer_new9(int64 msecs, int64 typeVal);
	[LinkName("QDeadlineTimer_Swap")]
	public static extern void QDeadlineTimer_Swap(void* c_this, void* other);
	[LinkName("QDeadlineTimer_IsForever")]
	public static extern bool QDeadlineTimer_IsForever(void* c_this);
	[LinkName("QDeadlineTimer_HasExpired")]
	public static extern bool QDeadlineTimer_HasExpired(void* c_this);
	[LinkName("QDeadlineTimer_TimerType")]
	public static extern int64 QDeadlineTimer_TimerType(void* c_this);
	[LinkName("QDeadlineTimer_SetTimerType")]
	public static extern void QDeadlineTimer_SetTimerType(void* c_this, int64 typeVal);
	[LinkName("QDeadlineTimer_RemainingTime")]
	public static extern int64 QDeadlineTimer_RemainingTime(void* c_this);
	[LinkName("QDeadlineTimer_RemainingTimeNSecs")]
	public static extern int64 QDeadlineTimer_RemainingTimeNSecs(void* c_this);
	[LinkName("QDeadlineTimer_SetRemainingTime")]
	public static extern void QDeadlineTimer_SetRemainingTime(void* c_this, int64 msecs);
	[LinkName("QDeadlineTimer_SetPreciseRemainingTime")]
	public static extern void QDeadlineTimer_SetPreciseRemainingTime(void* c_this, int64 secs);
	[LinkName("QDeadlineTimer_Deadline")]
	public static extern int64 QDeadlineTimer_Deadline(void* c_this);
	[LinkName("QDeadlineTimer_DeadlineNSecs")]
	public static extern int64 QDeadlineTimer_DeadlineNSecs(void* c_this);
	[LinkName("QDeadlineTimer_SetDeadline")]
	public static extern void QDeadlineTimer_SetDeadline(void* c_this, int64 msecs);
	[LinkName("QDeadlineTimer_SetPreciseDeadline")]
	public static extern void QDeadlineTimer_SetPreciseDeadline(void* c_this, int64 secs);
	[LinkName("QDeadlineTimer_AddNSecs")]
	public static extern void QDeadlineTimer_AddNSecs(void dt, int64 nsecs);
	[LinkName("QDeadlineTimer_Current")]
	public static extern void QDeadlineTimer_Current();
	[LinkName("QDeadlineTimer_OperatorPlusAssign")]
	public static extern void* QDeadlineTimer_OperatorPlusAssign(void* c_this, int64 msecs);
	[LinkName("QDeadlineTimer_OperatorMinusAssign")]
	public static extern void* QDeadlineTimer_OperatorMinusAssign(void* c_this, int64 msecs);
	[LinkName("QDeadlineTimer_OperatorAssign")]
	public static extern void QDeadlineTimer_OperatorAssign(void* c_this, void* param1);
	[LinkName("QDeadlineTimer_SetRemainingTime2")]
	public static extern void QDeadlineTimer_SetRemainingTime2(void* c_this, int64 msecs, int64 typeVal);
	[LinkName("QDeadlineTimer_SetPreciseRemainingTime2")]
	public static extern void QDeadlineTimer_SetPreciseRemainingTime2(void* c_this, int64 secs, int64 nsecs);
	[LinkName("QDeadlineTimer_SetPreciseRemainingTime3")]
	public static extern void QDeadlineTimer_SetPreciseRemainingTime3(void* c_this, int64 secs, int64 nsecs, int64 typeVal);
	[LinkName("QDeadlineTimer_SetDeadline2")]
	public static extern void QDeadlineTimer_SetDeadline2(void* c_this, int64 msecs, int64 timerType);
	[LinkName("QDeadlineTimer_SetPreciseDeadline2")]
	public static extern void QDeadlineTimer_SetPreciseDeadline2(void* c_this, int64 secs, int64 nsecs);
	[LinkName("QDeadlineTimer_SetPreciseDeadline3")]
	public static extern void QDeadlineTimer_SetPreciseDeadline3(void* c_this, int64 secs, int64 nsecs, int64 typeVal);
	[LinkName("QDeadlineTimer_Current1")]
	public static extern void QDeadlineTimer_Current1(int64 timerType);
	/// Delete this object from C++ memory
	[LinkName("QDeadlineTimer_Delete")]
	public static extern void QDeadlineTimer_Delete(void* self);
}