using System;
using System.Interop;
namespace Qt;

public struct QTest__QTouchEventSequence
{
	[LinkName("QTest__QTouchEventSequence_Press")]
	public static extern QTest__QTouchEventSequence* QTest__QTouchEventSequence_Press(Self* c_this, int32 touchId, QPoint* pt);
	[LinkName("QTest__QTouchEventSequence_Move")]
	public static extern QTest__QTouchEventSequence* QTest__QTouchEventSequence_Move(Self* c_this, int32 touchId, QPoint* pt);
	[LinkName("QTest__QTouchEventSequence_Release")]
	public static extern QTest__QTouchEventSequence* QTest__QTouchEventSequence_Release(Self* c_this, int32 touchId, QPoint* pt);
	[LinkName("QTest__QTouchEventSequence_Stationary")]
	public static extern QTest__QTouchEventSequence* QTest__QTouchEventSequence_Stationary(Self* c_this, int32 touchId);
	[LinkName("QTest__QTouchEventSequence_Commit")]
	public static extern bool QTest__QTouchEventSequence_Commit(Self* c_this, bool processEvents);
	[LinkName("QTest__QTouchEventSequence_Press3")]
	public static extern QTest__QTouchEventSequence* QTest__QTouchEventSequence_Press3(Self* c_this, int32 touchId, QPoint* pt, QWindow* window);
	[LinkName("QTest__QTouchEventSequence_Move3")]
	public static extern QTest__QTouchEventSequence* QTest__QTouchEventSequence_Move3(Self* c_this, int32 touchId, QPoint* pt, QWindow* window);
	[LinkName("QTest__QTouchEventSequence_Release3")]
	public static extern QTest__QTouchEventSequence* QTest__QTouchEventSequence_Release3(Self* c_this, int32 touchId, QPoint* pt, QWindow* window);
}