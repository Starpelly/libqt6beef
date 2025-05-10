using System;
using System.Interop;
namespace Qt;

public interface IQBasicTimer
{
	void* NativePtr { get; }
}
public class QBasicTimer : IQBasicTimer
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QBasicTimer_new();
	}
	
	public ~this()
	{
		CQt.QBasicTimer_Delete(this.nativePtr);
	}
	
	public void Swap(IQBasicTimer other)
	{
		CQt.QBasicTimer_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool IsActive()
	{
		return CQt.QBasicTimer_IsActive(this.nativePtr);
	}
	
	public int32 TimerId()
	{
		return CQt.QBasicTimer_TimerId(this.nativePtr);
	}
	
	public void Start(int32 msec, IQObject obj)
	{
		CQt.QBasicTimer_Start(this.nativePtr, msec, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public void Start2(int32 msec, int64 timerType, IQObject obj)
	{
		CQt.QBasicTimer_Start2(this.nativePtr, msec, timerType, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public void Stop()
	{
		CQt.QBasicTimer_Stop(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QBasicTimer_new")]
	public static extern void* QBasicTimer_new();
	[LinkName("QBasicTimer_Swap")]
	public static extern void QBasicTimer_Swap(void* c_this, void* other);
	[LinkName("QBasicTimer_IsActive")]
	public static extern bool QBasicTimer_IsActive(void* c_this);
	[LinkName("QBasicTimer_TimerId")]
	public static extern int32 QBasicTimer_TimerId(void* c_this);
	[LinkName("QBasicTimer_Start")]
	public static extern void QBasicTimer_Start(void* c_this, int32 msec, void* obj);
	[LinkName("QBasicTimer_Start2")]
	public static extern void QBasicTimer_Start2(void* c_this, int32 msec, int64 timerType, void* obj);
	[LinkName("QBasicTimer_Stop")]
	public static extern void QBasicTimer_Stop(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QBasicTimer_Delete")]
	public static extern void QBasicTimer_Delete(void* self);
}