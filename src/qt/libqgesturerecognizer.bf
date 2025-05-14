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
public struct QGestureRecognizerPtr : IQGestureRecognizer, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGestureRecognizer_new());
	}
	
	public void Dispose()
	{
		CQt.QGestureRecognizer_Delete(this.nativePtr);
	}
	
	public void* Create(IQObject target)
	{
		return CQt.QGestureRecognizer_Create(this.nativePtr, (target == default || target.NativePtr == default) ? default : target.NativePtr);
	}
	
	public int64 Recognize(IQGesture state, IQObject watched, IQEvent event)
	{
		return CQt.QGestureRecognizer_Recognize(this.nativePtr, (state == default || state.NativePtr == default) ? default : state.NativePtr, (watched == default || watched.NativePtr == default) ? default : watched.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void Reset(IQGesture state)
	{
		CQt.QGestureRecognizer_Reset(this.nativePtr, (state == default || state.NativePtr == default) ? default : state.NativePtr);
	}
	
	public static int64 RegisterRecognizer(IQGestureRecognizer recognizer)
	{
		return CQt.QGestureRecognizer_RegisterRecognizer((recognizer == default || recognizer.NativePtr == default) ? default : recognizer.NativePtr);
	}
	
	public static void UnregisterRecognizer(int64 typeVal)
	{
		CQt.QGestureRecognizer_UnregisterRecognizer((int64)typeVal);
	}
	
	public void OperatorAssign(IQGestureRecognizer param1)
	{
		CQt.QGestureRecognizer_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
}
public class QGestureRecognizer
{
	public QGestureRecognizerPtr handle;
	
	public static implicit operator QGestureRecognizerPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGestureRecognizerPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Create(IQObject target)
	{
		return this.handle.Create(target);
	}
	
	public virtual int64 Recognize(IQGesture state, IQObject watched, IQEvent event)
	{
		return this.handle.Recognize(state, watched, event);
	}
	
	public virtual void Reset(IQGesture state)
	{
		this.handle.Reset(state);
	}
	
	public static int64 RegisterRecognizer(IQGestureRecognizer recognizer)
	{
		return QGestureRecognizerPtr.RegisterRecognizer(recognizer);
	}
	
	public static void UnregisterRecognizer(int64 typeVal)
	{
		QGestureRecognizerPtr.UnregisterRecognizer(typeVal);
	}
	
	public void OperatorAssign(IQGestureRecognizer param1)
	{
		this.handle.OperatorAssign(param1);
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