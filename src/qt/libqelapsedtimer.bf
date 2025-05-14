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
public interface IQElapsedTimer
{
	void* NativePtr { get; }
}
public struct QElapsedTimerPtr : IQElapsedTimer, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQElapsedTimer other)
	{
		return .(CQt.QElapsedTimer_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QElapsedTimer_Delete(this.nativePtr);
	}
	
	public static int64 ClockType()
	{
		return CQt.QElapsedTimer_ClockType();
	}
	
	public static bool IsMonotonic()
	{
		return CQt.QElapsedTimer_IsMonotonic();
	}
	
	public void Start()
	{
		CQt.QElapsedTimer_Start(this.nativePtr);
	}
	
	public int64 Restart()
	{
		return CQt.QElapsedTimer_Restart(this.nativePtr);
	}
	
	public void Invalidate()
	{
		CQt.QElapsedTimer_Invalidate(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QElapsedTimer_IsValid(this.nativePtr);
	}
	
	public int64 NsecsElapsed()
	{
		return CQt.QElapsedTimer_NsecsElapsed(this.nativePtr);
	}
	
	public int64 Elapsed()
	{
		return CQt.QElapsedTimer_Elapsed(this.nativePtr);
	}
	
	public bool HasExpired(int64 timeout)
	{
		return CQt.QElapsedTimer_HasExpired(this.nativePtr, timeout);
	}
	
	public int64 MsecsSinceReference()
	{
		return CQt.QElapsedTimer_MsecsSinceReference(this.nativePtr);
	}
	
	public int64 MsecsTo(IQElapsedTimer other)
	{
		return CQt.QElapsedTimer_MsecsTo(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public int64 SecsTo(IQElapsedTimer other)
	{
		return CQt.QElapsedTimer_SecsTo(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
}
public class QElapsedTimer
{
	public QElapsedTimerPtr handle;
	
	public static implicit operator QElapsedTimerPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQElapsedTimer other)
	{
		this.handle = QElapsedTimerPtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public static int64 ClockType()
	{
		return QElapsedTimerPtr.ClockType();
	}
	
	public static bool IsMonotonic()
	{
		return QElapsedTimerPtr.IsMonotonic();
	}
	
	public void Start()
	{
		this.handle.Start();
	}
	
	public int64 Restart()
	{
		return this.handle.Restart();
	}
	
	public void Invalidate()
	{
		this.handle.Invalidate();
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public int64 NsecsElapsed()
	{
		return this.handle.NsecsElapsed();
	}
	
	public int64 Elapsed()
	{
		return this.handle.Elapsed();
	}
	
	public bool HasExpired(int64 timeout)
	{
		return this.handle.HasExpired(timeout);
	}
	
	public int64 MsecsSinceReference()
	{
		return this.handle.MsecsSinceReference();
	}
	
	public int64 MsecsTo(IQElapsedTimer other)
	{
		return this.handle.MsecsTo(other);
	}
	
	public int64 SecsTo(IQElapsedTimer other)
	{
		return this.handle.SecsTo(other);
	}
	
}
extension CQt
{
	[LinkName("QElapsedTimer_new")]
	public static extern void* QElapsedTimer_new(void* other);
	[LinkName("QElapsedTimer_new2")]
	public static extern void* QElapsedTimer_new2(void* other);
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
	public static extern int64 QElapsedTimer_MsecsTo(void* c_this, void* other);
	[LinkName("QElapsedTimer_SecsTo")]
	public static extern int64 QElapsedTimer_SecsTo(void* c_this, void* other);
	/// Delete this object from C++ memory
	[LinkName("QElapsedTimer_Delete")]
	public static extern void QElapsedTimer_Delete(void* self);
}