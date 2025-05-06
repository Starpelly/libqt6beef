using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGesture__GestureCancelPolicy
{
	CancelNone = 0,
	CancelAllInContext = 1,
}
[AllowDuplicates]
public enum QPinchGesture__ChangeFlag
{
	ScaleFactorChanged = 1,
	RotationAngleChanged = 2,
	CenterPointChanged = 4,
}
[AllowDuplicates]
public enum QSwipeGesture__SwipeDirection
{
	NoDirection = 0,
	Left = 1,
	Right = 2,
	Up = 3,
	Down = 4,
}
public struct QGesture
{
	[LinkName("QGesture_new")]
	public static extern void* QGesture_new();
	[LinkName("QGesture_new2")]
	public static extern void* QGesture_new2(QObject parent);
	[LinkName("QGesture_MetaObject")]
	public static extern QMetaObject QGesture_MetaObject(void* c_this);
	[LinkName("QGesture_Metacast")]
	public static extern void QGesture_Metacast(void* c_this, char8[] param1);
	[LinkName("QGesture_Metacall")]
	public static extern int32 QGesture_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QGesture_Tr")]
	public static extern char8[] QGesture_Tr(char8[] s);
	[LinkName("QGesture_GestureType")]
	public static extern int64 QGesture_GestureType(void* c_this);
	[LinkName("QGesture_State")]
	public static extern int64 QGesture_State(void* c_this);
	[LinkName("QGesture_HotSpot")]
	public static extern QPointF QGesture_HotSpot(void* c_this);
	[LinkName("QGesture_SetHotSpot")]
	public static extern void QGesture_SetHotSpot(void* c_this, QPointF value);
	[LinkName("QGesture_HasHotSpot")]
	public static extern bool QGesture_HasHotSpot(void* c_this);
	[LinkName("QGesture_UnsetHotSpot")]
	public static extern void QGesture_UnsetHotSpot(void* c_this);
	[LinkName("QGesture_SetGestureCancelPolicy")]
	public static extern void QGesture_SetGestureCancelPolicy(void* c_this, int64 policy);
	[LinkName("QGesture_GestureCancelPolicy")]
	public static extern int64 QGesture_GestureCancelPolicy(void* c_this);
	[LinkName("QGesture_Tr2")]
	public static extern char8[] QGesture_Tr2(char8[] s, char8[] c);
	[LinkName("QGesture_Tr3")]
	public static extern char8[] QGesture_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QPanGesture
{
	[LinkName("QPanGesture_new")]
	public static extern void* QPanGesture_new();
	[LinkName("QPanGesture_new2")]
	public static extern void* QPanGesture_new2(QObject parent);
	[LinkName("QPanGesture_MetaObject")]
	public static extern QMetaObject QPanGesture_MetaObject(void* c_this);
	[LinkName("QPanGesture_Metacast")]
	public static extern void QPanGesture_Metacast(void* c_this, char8[] param1);
	[LinkName("QPanGesture_Metacall")]
	public static extern int32 QPanGesture_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QPanGesture_Tr")]
	public static extern char8[] QPanGesture_Tr(char8[] s);
	[LinkName("QPanGesture_LastOffset")]
	public static extern QPointF QPanGesture_LastOffset(void* c_this);
	[LinkName("QPanGesture_Offset")]
	public static extern QPointF QPanGesture_Offset(void* c_this);
	[LinkName("QPanGesture_Delta")]
	public static extern QPointF QPanGesture_Delta(void* c_this);
	[LinkName("QPanGesture_Acceleration")]
	public static extern double QPanGesture_Acceleration(void* c_this);
	[LinkName("QPanGesture_SetLastOffset")]
	public static extern void QPanGesture_SetLastOffset(void* c_this, QPointF value);
	[LinkName("QPanGesture_SetOffset")]
	public static extern void QPanGesture_SetOffset(void* c_this, QPointF value);
	[LinkName("QPanGesture_SetAcceleration")]
	public static extern void QPanGesture_SetAcceleration(void* c_this, double value);
	[LinkName("QPanGesture_Tr2")]
	public static extern char8[] QPanGesture_Tr2(char8[] s, char8[] c);
	[LinkName("QPanGesture_Tr3")]
	public static extern char8[] QPanGesture_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QPinchGesture
{
	[LinkName("QPinchGesture_new")]
	public static extern void* QPinchGesture_new();
	[LinkName("QPinchGesture_new2")]
	public static extern void* QPinchGesture_new2(QObject parent);
	[LinkName("QPinchGesture_MetaObject")]
	public static extern QMetaObject QPinchGesture_MetaObject(void* c_this);
	[LinkName("QPinchGesture_Metacast")]
	public static extern void QPinchGesture_Metacast(void* c_this, char8[] param1);
	[LinkName("QPinchGesture_Metacall")]
	public static extern int32 QPinchGesture_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QPinchGesture_Tr")]
	public static extern char8[] QPinchGesture_Tr(char8[] s);
	[LinkName("QPinchGesture_TotalChangeFlags")]
	public static extern int64 QPinchGesture_TotalChangeFlags(void* c_this);
	[LinkName("QPinchGesture_SetTotalChangeFlags")]
	public static extern void QPinchGesture_SetTotalChangeFlags(void* c_this, int64 value);
	[LinkName("QPinchGesture_ChangeFlags")]
	public static extern int64 QPinchGesture_ChangeFlags(void* c_this);
	[LinkName("QPinchGesture_SetChangeFlags")]
	public static extern void QPinchGesture_SetChangeFlags(void* c_this, int64 value);
	[LinkName("QPinchGesture_StartCenterPoint")]
	public static extern QPointF QPinchGesture_StartCenterPoint(void* c_this);
	[LinkName("QPinchGesture_LastCenterPoint")]
	public static extern QPointF QPinchGesture_LastCenterPoint(void* c_this);
	[LinkName("QPinchGesture_CenterPoint")]
	public static extern QPointF QPinchGesture_CenterPoint(void* c_this);
	[LinkName("QPinchGesture_SetStartCenterPoint")]
	public static extern void QPinchGesture_SetStartCenterPoint(void* c_this, QPointF value);
	[LinkName("QPinchGesture_SetLastCenterPoint")]
	public static extern void QPinchGesture_SetLastCenterPoint(void* c_this, QPointF value);
	[LinkName("QPinchGesture_SetCenterPoint")]
	public static extern void QPinchGesture_SetCenterPoint(void* c_this, QPointF value);
	[LinkName("QPinchGesture_TotalScaleFactor")]
	public static extern double QPinchGesture_TotalScaleFactor(void* c_this);
	[LinkName("QPinchGesture_LastScaleFactor")]
	public static extern double QPinchGesture_LastScaleFactor(void* c_this);
	[LinkName("QPinchGesture_ScaleFactor")]
	public static extern double QPinchGesture_ScaleFactor(void* c_this);
	[LinkName("QPinchGesture_SetTotalScaleFactor")]
	public static extern void QPinchGesture_SetTotalScaleFactor(void* c_this, double value);
	[LinkName("QPinchGesture_SetLastScaleFactor")]
	public static extern void QPinchGesture_SetLastScaleFactor(void* c_this, double value);
	[LinkName("QPinchGesture_SetScaleFactor")]
	public static extern void QPinchGesture_SetScaleFactor(void* c_this, double value);
	[LinkName("QPinchGesture_TotalRotationAngle")]
	public static extern double QPinchGesture_TotalRotationAngle(void* c_this);
	[LinkName("QPinchGesture_LastRotationAngle")]
	public static extern double QPinchGesture_LastRotationAngle(void* c_this);
	[LinkName("QPinchGesture_RotationAngle")]
	public static extern double QPinchGesture_RotationAngle(void* c_this);
	[LinkName("QPinchGesture_SetTotalRotationAngle")]
	public static extern void QPinchGesture_SetTotalRotationAngle(void* c_this, double value);
	[LinkName("QPinchGesture_SetLastRotationAngle")]
	public static extern void QPinchGesture_SetLastRotationAngle(void* c_this, double value);
	[LinkName("QPinchGesture_SetRotationAngle")]
	public static extern void QPinchGesture_SetRotationAngle(void* c_this, double value);
	[LinkName("QPinchGesture_Tr2")]
	public static extern char8[] QPinchGesture_Tr2(char8[] s, char8[] c);
	[LinkName("QPinchGesture_Tr3")]
	public static extern char8[] QPinchGesture_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QSwipeGesture
{
	[LinkName("QSwipeGesture_new")]
	public static extern void* QSwipeGesture_new();
	[LinkName("QSwipeGesture_new2")]
	public static extern void* QSwipeGesture_new2(QObject parent);
	[LinkName("QSwipeGesture_MetaObject")]
	public static extern QMetaObject QSwipeGesture_MetaObject(void* c_this);
	[LinkName("QSwipeGesture_Metacast")]
	public static extern void QSwipeGesture_Metacast(void* c_this, char8[] param1);
	[LinkName("QSwipeGesture_Metacall")]
	public static extern int32 QSwipeGesture_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSwipeGesture_Tr")]
	public static extern char8[] QSwipeGesture_Tr(char8[] s);
	[LinkName("QSwipeGesture_HorizontalDirection")]
	public static extern int64 QSwipeGesture_HorizontalDirection(void* c_this);
	[LinkName("QSwipeGesture_VerticalDirection")]
	public static extern int64 QSwipeGesture_VerticalDirection(void* c_this);
	[LinkName("QSwipeGesture_SwipeAngle")]
	public static extern double QSwipeGesture_SwipeAngle(void* c_this);
	[LinkName("QSwipeGesture_SetSwipeAngle")]
	public static extern void QSwipeGesture_SetSwipeAngle(void* c_this, double value);
	[LinkName("QSwipeGesture_Tr2")]
	public static extern char8[] QSwipeGesture_Tr2(char8[] s, char8[] c);
	[LinkName("QSwipeGesture_Tr3")]
	public static extern char8[] QSwipeGesture_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QTapGesture
{
	[LinkName("QTapGesture_new")]
	public static extern void* QTapGesture_new();
	[LinkName("QTapGesture_new2")]
	public static extern void* QTapGesture_new2(QObject parent);
	[LinkName("QTapGesture_MetaObject")]
	public static extern QMetaObject QTapGesture_MetaObject(void* c_this);
	[LinkName("QTapGesture_Metacast")]
	public static extern void QTapGesture_Metacast(void* c_this, char8[] param1);
	[LinkName("QTapGesture_Metacall")]
	public static extern int32 QTapGesture_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QTapGesture_Tr")]
	public static extern char8[] QTapGesture_Tr(char8[] s);
	[LinkName("QTapGesture_Position")]
	public static extern QPointF QTapGesture_Position(void* c_this);
	[LinkName("QTapGesture_SetPosition")]
	public static extern void QTapGesture_SetPosition(void* c_this, QPointF pos);
	[LinkName("QTapGesture_Tr2")]
	public static extern char8[] QTapGesture_Tr2(char8[] s, char8[] c);
	[LinkName("QTapGesture_Tr3")]
	public static extern char8[] QTapGesture_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QTapAndHoldGesture
{
	[LinkName("QTapAndHoldGesture_new")]
	public static extern void* QTapAndHoldGesture_new();
	[LinkName("QTapAndHoldGesture_new2")]
	public static extern void* QTapAndHoldGesture_new2(QObject parent);
	[LinkName("QTapAndHoldGesture_MetaObject")]
	public static extern QMetaObject QTapAndHoldGesture_MetaObject(void* c_this);
	[LinkName("QTapAndHoldGesture_Metacast")]
	public static extern void QTapAndHoldGesture_Metacast(void* c_this, char8[] param1);
	[LinkName("QTapAndHoldGesture_Metacall")]
	public static extern int32 QTapAndHoldGesture_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QTapAndHoldGesture_Tr")]
	public static extern char8[] QTapAndHoldGesture_Tr(char8[] s);
	[LinkName("QTapAndHoldGesture_Position")]
	public static extern QPointF QTapAndHoldGesture_Position(void* c_this);
	[LinkName("QTapAndHoldGesture_SetPosition")]
	public static extern void QTapAndHoldGesture_SetPosition(void* c_this, QPointF pos);
	[LinkName("QTapAndHoldGesture_SetTimeout")]
	public static extern void QTapAndHoldGesture_SetTimeout(int32 msecs);
	[LinkName("QTapAndHoldGesture_Timeout")]
	public static extern int32 QTapAndHoldGesture_Timeout();
	[LinkName("QTapAndHoldGesture_Tr2")]
	public static extern char8[] QTapAndHoldGesture_Tr2(char8[] s, char8[] c);
	[LinkName("QTapAndHoldGesture_Tr3")]
	public static extern char8[] QTapAndHoldGesture_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QGestureEvent
{
	[LinkName("QGestureEvent_new")]
	public static extern void* QGestureEvent_new(QGesture[] gestures);
	[LinkName("QGestureEvent_new2")]
	public static extern void* QGestureEvent_new2(QGestureEvent param1);
	[LinkName("QGestureEvent_Gestures")]
	public static extern QGesture[] QGestureEvent_Gestures(void* c_this);
	[LinkName("QGestureEvent_Gesture")]
	public static extern QGesture QGestureEvent_Gesture(void* c_this, int64 typeVal);
	[LinkName("QGestureEvent_ActiveGestures")]
	public static extern QGesture[] QGestureEvent_ActiveGestures(void* c_this);
	[LinkName("QGestureEvent_CanceledGestures")]
	public static extern QGesture[] QGestureEvent_CanceledGestures(void* c_this);
	[LinkName("QGestureEvent_SetAccepted")]
	public static extern void QGestureEvent_SetAccepted(void* c_this, QGesture param1, bool param2);
	[LinkName("QGestureEvent_Accept")]
	public static extern void QGestureEvent_Accept(void* c_this, QGesture param1);
	[LinkName("QGestureEvent_Ignore")]
	public static extern void QGestureEvent_Ignore(void* c_this, QGesture param1);
	[LinkName("QGestureEvent_IsAccepted")]
	public static extern bool QGestureEvent_IsAccepted(void* c_this, QGesture param1);
	[LinkName("QGestureEvent_SetAccepted2")]
	public static extern void QGestureEvent_SetAccepted2(void* c_this, int64 param1, bool param2);
	[LinkName("QGestureEvent_AcceptWithQtGestureType")]
	public static extern void QGestureEvent_AcceptWithQtGestureType(void* c_this, int64 param1);
	[LinkName("QGestureEvent_IgnoreWithQtGestureType")]
	public static extern void QGestureEvent_IgnoreWithQtGestureType(void* c_this, int64 param1);
	[LinkName("QGestureEvent_IsAcceptedWithQtGestureType")]
	public static extern bool QGestureEvent_IsAcceptedWithQtGestureType(void* c_this, int64 param1);
	[LinkName("QGestureEvent_SetWidget")]
	public static extern void QGestureEvent_SetWidget(void* c_this, QWidget widget);
	[LinkName("QGestureEvent_Widget")]
	public static extern QWidget QGestureEvent_Widget(void* c_this);
	[LinkName("QGestureEvent_MapToGraphicsScene")]
	public static extern QPointF QGestureEvent_MapToGraphicsScene(void* c_this, QPointF gesturePoint);
}