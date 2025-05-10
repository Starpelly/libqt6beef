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
public class QElapsedTimer : IQElapsedTimer
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQElapsedTimer other)
	{
		this.nativePtr = CQt.QElapsedTimer_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
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
		return CQt.QElapsedTimer_MsecsTo(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public int64 SecsTo(IQElapsedTimer other)
	{
		return CQt.QElapsedTimer_SecsTo(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
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