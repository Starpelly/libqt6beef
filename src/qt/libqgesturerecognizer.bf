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
public struct QGestureRecognizer
{
	[LinkName("QGestureRecognizer_new")]
	public static extern QGestureRecognizer* QGestureRecognizer_new();
	[LinkName("QGestureRecognizer_Create")]
	public static extern QGesture* QGestureRecognizer_Create(Self* c_this, QObject* target);
	[LinkName("QGestureRecognizer_Recognize")]
	public static extern int64 QGestureRecognizer_Recognize(Self* c_this, QGesture* state, QObject* watched, QEvent* event);
	[LinkName("QGestureRecognizer_Reset")]
	public static extern void QGestureRecognizer_Reset(Self* c_this, QGesture* state);
	[LinkName("QGestureRecognizer_RegisterRecognizer")]
	public static extern int64 QGestureRecognizer_RegisterRecognizer(QGestureRecognizer* recognizer);
	[LinkName("QGestureRecognizer_UnregisterRecognizer")]
	public static extern void QGestureRecognizer_UnregisterRecognizer(int64 typeVal);
	[LinkName("QGestureRecognizer_OperatorAssign")]
	public static extern void QGestureRecognizer_OperatorAssign(Self* c_this, QGestureRecognizer* param1);
}