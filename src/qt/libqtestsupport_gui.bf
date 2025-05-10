using System;
using System.Interop;
namespace Qt;

public interface IQTest__QTouchEventSequence
{
	void* NativePtr { get; }
}
public class QTest__QTouchEventSequence : IQTest__QTouchEventSequence
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public ~this()
	{
		CQt.QTest__QTouchEventSequence_Delete(this.nativePtr);
	}
	
	public void* Press(int32 touchId, IQPoint pt)
	{
		return CQt.QTest__QTouchEventSequence_Press(this.nativePtr, touchId, (pt == default) ? default : (void*)pt.NativePtr);
	}
	
	public void* Move(int32 touchId, IQPoint pt)
	{
		return CQt.QTest__QTouchEventSequence_Move(this.nativePtr, touchId, (pt == default) ? default : (void*)pt.NativePtr);
	}
	
	public void* Release(int32 touchId, IQPoint pt)
	{
		return CQt.QTest__QTouchEventSequence_Release(this.nativePtr, touchId, (pt == default) ? default : (void*)pt.NativePtr);
	}
	
	public virtual void* Stationary(int32 touchId)
	{
		return CQt.QTest__QTouchEventSequence_Stationary(this.nativePtr, touchId);
	}
	
	public virtual bool Commit(bool processEvents)
	{
		return CQt.QTest__QTouchEventSequence_Commit(this.nativePtr, processEvents);
	}
	
	public void* Press3(int32 touchId, IQPoint pt, IQWindow window)
	{
		return CQt.QTest__QTouchEventSequence_Press3(this.nativePtr, touchId, (pt == default) ? default : (void*)pt.NativePtr, (window == null) ? null : (void*)window.NativePtr);
	}
	
	public void* Move3(int32 touchId, IQPoint pt, IQWindow window)
	{
		return CQt.QTest__QTouchEventSequence_Move3(this.nativePtr, touchId, (pt == default) ? default : (void*)pt.NativePtr, (window == null) ? null : (void*)window.NativePtr);
	}
	
	public void* Release3(int32 touchId, IQPoint pt, IQWindow window)
	{
		return CQt.QTest__QTouchEventSequence_Release3(this.nativePtr, touchId, (pt == default) ? default : (void*)pt.NativePtr, (window == null) ? null : (void*)window.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QTest__QTouchEventSequence_Press")]
	public static extern void* QTest__QTouchEventSequence_Press(void* c_this, int32 touchId, void* pt);
	[LinkName("QTest__QTouchEventSequence_Move")]
	public static extern void* QTest__QTouchEventSequence_Move(void* c_this, int32 touchId, void* pt);
	[LinkName("QTest__QTouchEventSequence_Release")]
	public static extern void* QTest__QTouchEventSequence_Release(void* c_this, int32 touchId, void* pt);
	[LinkName("QTest__QTouchEventSequence_Stationary")]
	public static extern void* QTest__QTouchEventSequence_Stationary(void* c_this, int32 touchId);
	[LinkName("QTest__QTouchEventSequence_Commit")]
	public static extern bool QTest__QTouchEventSequence_Commit(void* c_this, bool processEvents);
	[LinkName("QTest__QTouchEventSequence_Press3")]
	public static extern void* QTest__QTouchEventSequence_Press3(void* c_this, int32 touchId, void* pt, void* window);
	[LinkName("QTest__QTouchEventSequence_Move3")]
	public static extern void* QTest__QTouchEventSequence_Move3(void* c_this, int32 touchId, void* pt, void* window);
	[LinkName("QTest__QTouchEventSequence_Release3")]
	public static extern void* QTest__QTouchEventSequence_Release3(void* c_this, int32 touchId, void* pt, void* window);
	/// Delete this object from C++ memory
	[LinkName("QTest__QTouchEventSequence_Delete")]
	public static extern void QTest__QTouchEventSequence_Delete(void* self);
}