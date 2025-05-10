using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGestureRecognizer__ResultFlag
{
	Ignore = 1,
	MayBeGesture = 2,
	TriggerGesture = 4,
	FinishGesture = 8,
	CancelGesture = 16,
	ResultState_Mask = 255,
	ConsumeEventHint = 256,
	ResultHint_Mask = 65280,
}
public interface IQGestureRecognizer
{
	void* NativePtr { get; }
}
public class QGestureRecognizer : IQGestureRecognizer
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGestureRecognizer_new();
	}
	
	public ~this()
	{
		CQt.QGestureRecognizer_Delete(this.nativePtr);
	}
	
	public virtual void* Create(IQObject target)
	{
		return CQt.QGestureRecognizer_Create(this.nativePtr, (target == null) ? null : (void*)target.NativePtr);
	}
	
	public virtual int64 Recognize(IQGesture state, IQObject watched, IQEvent event)
	{
		return CQt.QGestureRecognizer_Recognize(this.nativePtr, (state == null) ? null : (void*)state.NativePtr, (watched == null) ? null : (void*)watched.NativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void Reset(IQGesture state)
	{
		CQt.QGestureRecognizer_Reset(this.nativePtr, (state == null) ? null : (void*)state.NativePtr);
	}
	
	public static int64 RegisterRecognizer(IQGestureRecognizer recognizer)
	{
		return CQt.QGestureRecognizer_RegisterRecognizer((recognizer == null) ? null : (void*)recognizer.NativePtr);
	}
	
	public static void UnregisterRecognizer(int64 typeVal)
	{
		CQt.QGestureRecognizer_UnregisterRecognizer(typeVal);
	}
	
	public void OperatorAssign(IQGestureRecognizer param1)
	{
		CQt.QGestureRecognizer_OperatorAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QGestureRecognizer_new")]
	public static extern void* QGestureRecognizer_new();
	[LinkName("QGestureRecognizer_Create")]
	public static extern void* QGestureRecognizer_Create(void* c_this, void* target);
	[LinkName("QGestureRecognizer_Recognize")]
	public static extern int64 QGestureRecognizer_Recognize(void* c_this, void* state, void* watched, void* event);
	[LinkName("QGestureRecognizer_Reset")]
	public static extern void QGestureRecognizer_Reset(void* c_this, void* state);
	[LinkName("QGestureRecognizer_RegisterRecognizer")]
	public static extern int64 QGestureRecognizer_RegisterRecognizer(void* recognizer);
	[LinkName("QGestureRecognizer_UnregisterRecognizer")]
	public static extern void QGestureRecognizer_UnregisterRecognizer(int64 typeVal);
	[LinkName("QGestureRecognizer_OperatorAssign")]
	public static extern void QGestureRecognizer_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QGestureRecognizer_Delete")]
	public static extern void QGestureRecognizer_Delete(void* self);
}