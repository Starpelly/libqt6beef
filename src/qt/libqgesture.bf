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
public struct QGesture : QObject
{
	[LinkName("QGesture_new")]
	public static extern QGesture* QGesture_new();
	[LinkName("QGesture_new2")]
	public static extern QGesture* QGesture_new2(QObject* parent);
	[LinkName("QGesture_MetaObject")]
	public static extern QMetaObject* QGesture_MetaObject(Self* c_this);
	[LinkName("QGesture_Metacast")]
	public static extern void* QGesture_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGesture_Metacall")]
	public static extern int32 QGesture_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGesture_Tr")]
	public static extern libqt_string QGesture_Tr(char8[] s);
	[LinkName("QGesture_GestureType")]
	public static extern int64 QGesture_GestureType(Self* c_this);
	[LinkName("QGesture_State")]
	public static extern int64 QGesture_State(Self* c_this);
	[LinkName("QGesture_HotSpot")]
	public static extern QPointF QGesture_HotSpot(Self* c_this);
	[LinkName("QGesture_SetHotSpot")]
	public static extern void QGesture_SetHotSpot(Self* c_this, QPointF* value);
	[LinkName("QGesture_HasHotSpot")]
	public static extern bool QGesture_HasHotSpot(Self* c_this);
	[LinkName("QGesture_UnsetHotSpot")]
	public static extern void QGesture_UnsetHotSpot(Self* c_this);
	[LinkName("QGesture_SetGestureCancelPolicy")]
	public static extern void QGesture_SetGestureCancelPolicy(Self* c_this, int64 policy);
	[LinkName("QGesture_GestureCancelPolicy")]
	public static extern int64 QGesture_GestureCancelPolicy(Self* c_this);
	[LinkName("QGesture_Tr2")]
	public static extern libqt_string QGesture_Tr2(char8[] s, char8[] c);
	[LinkName("QGesture_Tr3")]
	public static extern libqt_string QGesture_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QPanGesture : QGesture
{
	[LinkName("QPanGesture_new")]
	public static extern QPanGesture* QPanGesture_new();
	[LinkName("QPanGesture_new2")]
	public static extern QPanGesture* QPanGesture_new2(QObject* parent);
	[LinkName("QPanGesture_MetaObject")]
	public static extern QMetaObject* QPanGesture_MetaObject(Self* c_this);
	[LinkName("QPanGesture_Metacast")]
	public static extern void* QPanGesture_Metacast(Self* c_this, char8[] param1);
	[LinkName("QPanGesture_Metacall")]
	public static extern int32 QPanGesture_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QPanGesture_Tr")]
	public static extern libqt_string QPanGesture_Tr(char8[] s);
	[LinkName("QPanGesture_LastOffset")]
	public static extern QPointF QPanGesture_LastOffset(Self* c_this);
	[LinkName("QPanGesture_Offset")]
	public static extern QPointF QPanGesture_Offset(Self* c_this);
	[LinkName("QPanGesture_Delta")]
	public static extern QPointF QPanGesture_Delta(Self* c_this);
	[LinkName("QPanGesture_Acceleration")]
	public static extern double QPanGesture_Acceleration(Self* c_this);
	[LinkName("QPanGesture_SetLastOffset")]
	public static extern void QPanGesture_SetLastOffset(Self* c_this, QPointF* value);
	[LinkName("QPanGesture_SetOffset")]
	public static extern void QPanGesture_SetOffset(Self* c_this, QPointF* value);
	[LinkName("QPanGesture_SetAcceleration")]
	public static extern void QPanGesture_SetAcceleration(Self* c_this, double value);
	[LinkName("QPanGesture_Tr2")]
	public static extern libqt_string QPanGesture_Tr2(char8[] s, char8[] c);
	[LinkName("QPanGesture_Tr3")]
	public static extern libqt_string QPanGesture_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QPinchGesture : QGesture
{
	[LinkName("QPinchGesture_new")]
	public static extern QPinchGesture* QPinchGesture_new();
	[LinkName("QPinchGesture_new2")]
	public static extern QPinchGesture* QPinchGesture_new2(QObject* parent);
	[LinkName("QPinchGesture_MetaObject")]
	public static extern QMetaObject* QPinchGesture_MetaObject(Self* c_this);
	[LinkName("QPinchGesture_Metacast")]
	public static extern void* QPinchGesture_Metacast(Self* c_this, char8[] param1);
	[LinkName("QPinchGesture_Metacall")]
	public static extern int32 QPinchGesture_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QPinchGesture_Tr")]
	public static extern libqt_string QPinchGesture_Tr(char8[] s);
	[LinkName("QPinchGesture_TotalChangeFlags")]
	public static extern int64 QPinchGesture_TotalChangeFlags(Self* c_this);
	[LinkName("QPinchGesture_SetTotalChangeFlags")]
	public static extern void QPinchGesture_SetTotalChangeFlags(Self* c_this, int64 value);
	[LinkName("QPinchGesture_ChangeFlags")]
	public static extern int64 QPinchGesture_ChangeFlags(Self* c_this);
	[LinkName("QPinchGesture_SetChangeFlags")]
	public static extern void QPinchGesture_SetChangeFlags(Self* c_this, int64 value);
	[LinkName("QPinchGesture_StartCenterPoint")]
	public static extern QPointF QPinchGesture_StartCenterPoint(Self* c_this);
	[LinkName("QPinchGesture_LastCenterPoint")]
	public static extern QPointF QPinchGesture_LastCenterPoint(Self* c_this);
	[LinkName("QPinchGesture_CenterPoint")]
	public static extern QPointF QPinchGesture_CenterPoint(Self* c_this);
	[LinkName("QPinchGesture_SetStartCenterPoint")]
	public static extern void QPinchGesture_SetStartCenterPoint(Self* c_this, QPointF* value);
	[LinkName("QPinchGesture_SetLastCenterPoint")]
	public static extern void QPinchGesture_SetLastCenterPoint(Self* c_this, QPointF* value);
	[LinkName("QPinchGesture_SetCenterPoint")]
	public static extern void QPinchGesture_SetCenterPoint(Self* c_this, QPointF* value);
	[LinkName("QPinchGesture_TotalScaleFactor")]
	public static extern double QPinchGesture_TotalScaleFactor(Self* c_this);
	[LinkName("QPinchGesture_LastScaleFactor")]
	public static extern double QPinchGesture_LastScaleFactor(Self* c_this);
	[LinkName("QPinchGesture_ScaleFactor")]
	public static extern double QPinchGesture_ScaleFactor(Self* c_this);
	[LinkName("QPinchGesture_SetTotalScaleFactor")]
	public static extern void QPinchGesture_SetTotalScaleFactor(Self* c_this, double value);
	[LinkName("QPinchGesture_SetLastScaleFactor")]
	public static extern void QPinchGesture_SetLastScaleFactor(Self* c_this, double value);
	[LinkName("QPinchGesture_SetScaleFactor")]
	public static extern void QPinchGesture_SetScaleFactor(Self* c_this, double value);
	[LinkName("QPinchGesture_TotalRotationAngle")]
	public static extern double QPinchGesture_TotalRotationAngle(Self* c_this);
	[LinkName("QPinchGesture_LastRotationAngle")]
	public static extern double QPinchGesture_LastRotationAngle(Self* c_this);
	[LinkName("QPinchGesture_RotationAngle")]
	public static extern double QPinchGesture_RotationAngle(Self* c_this);
	[LinkName("QPinchGesture_SetTotalRotationAngle")]
	public static extern void QPinchGesture_SetTotalRotationAngle(Self* c_this, double value);
	[LinkName("QPinchGesture_SetLastRotationAngle")]
	public static extern void QPinchGesture_SetLastRotationAngle(Self* c_this, double value);
	[LinkName("QPinchGesture_SetRotationAngle")]
	public static extern void QPinchGesture_SetRotationAngle(Self* c_this, double value);
	[LinkName("QPinchGesture_Tr2")]
	public static extern libqt_string QPinchGesture_Tr2(char8[] s, char8[] c);
	[LinkName("QPinchGesture_Tr3")]
	public static extern libqt_string QPinchGesture_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QSwipeGesture : QGesture
{
	[LinkName("QSwipeGesture_new")]
	public static extern QSwipeGesture* QSwipeGesture_new();
	[LinkName("QSwipeGesture_new2")]
	public static extern QSwipeGesture* QSwipeGesture_new2(QObject* parent);
	[LinkName("QSwipeGesture_MetaObject")]
	public static extern QMetaObject* QSwipeGesture_MetaObject(Self* c_this);
	[LinkName("QSwipeGesture_Metacast")]
	public static extern void* QSwipeGesture_Metacast(Self* c_this, char8[] param1);
	[LinkName("QSwipeGesture_Metacall")]
	public static extern int32 QSwipeGesture_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSwipeGesture_Tr")]
	public static extern libqt_string QSwipeGesture_Tr(char8[] s);
	[LinkName("QSwipeGesture_HorizontalDirection")]
	public static extern int64 QSwipeGesture_HorizontalDirection(Self* c_this);
	[LinkName("QSwipeGesture_VerticalDirection")]
	public static extern int64 QSwipeGesture_VerticalDirection(Self* c_this);
	[LinkName("QSwipeGesture_SwipeAngle")]
	public static extern double QSwipeGesture_SwipeAngle(Self* c_this);
	[LinkName("QSwipeGesture_SetSwipeAngle")]
	public static extern void QSwipeGesture_SetSwipeAngle(Self* c_this, double value);
	[LinkName("QSwipeGesture_Tr2")]
	public static extern libqt_string QSwipeGesture_Tr2(char8[] s, char8[] c);
	[LinkName("QSwipeGesture_Tr3")]
	public static extern libqt_string QSwipeGesture_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QTapGesture : QGesture
{
	[LinkName("QTapGesture_new")]
	public static extern QTapGesture* QTapGesture_new();
	[LinkName("QTapGesture_new2")]
	public static extern QTapGesture* QTapGesture_new2(QObject* parent);
	[LinkName("QTapGesture_MetaObject")]
	public static extern QMetaObject* QTapGesture_MetaObject(Self* c_this);
	[LinkName("QTapGesture_Metacast")]
	public static extern void* QTapGesture_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTapGesture_Metacall")]
	public static extern int32 QTapGesture_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTapGesture_Tr")]
	public static extern libqt_string QTapGesture_Tr(char8[] s);
	[LinkName("QTapGesture_Position")]
	public static extern QPointF QTapGesture_Position(Self* c_this);
	[LinkName("QTapGesture_SetPosition")]
	public static extern void QTapGesture_SetPosition(Self* c_this, QPointF* pos);
	[LinkName("QTapGesture_Tr2")]
	public static extern libqt_string QTapGesture_Tr2(char8[] s, char8[] c);
	[LinkName("QTapGesture_Tr3")]
	public static extern libqt_string QTapGesture_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QTapAndHoldGesture : QGesture
{
	[LinkName("QTapAndHoldGesture_new")]
	public static extern QTapAndHoldGesture* QTapAndHoldGesture_new();
	[LinkName("QTapAndHoldGesture_new2")]
	public static extern QTapAndHoldGesture* QTapAndHoldGesture_new2(QObject* parent);
	[LinkName("QTapAndHoldGesture_MetaObject")]
	public static extern QMetaObject* QTapAndHoldGesture_MetaObject(Self* c_this);
	[LinkName("QTapAndHoldGesture_Metacast")]
	public static extern void* QTapAndHoldGesture_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTapAndHoldGesture_Metacall")]
	public static extern int32 QTapAndHoldGesture_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTapAndHoldGesture_Tr")]
	public static extern libqt_string QTapAndHoldGesture_Tr(char8[] s);
	[LinkName("QTapAndHoldGesture_Position")]
	public static extern QPointF QTapAndHoldGesture_Position(Self* c_this);
	[LinkName("QTapAndHoldGesture_SetPosition")]
	public static extern void QTapAndHoldGesture_SetPosition(Self* c_this, QPointF* pos);
	[LinkName("QTapAndHoldGesture_SetTimeout")]
	public static extern void QTapAndHoldGesture_SetTimeout(int32 msecs);
	[LinkName("QTapAndHoldGesture_Timeout")]
	public static extern int32 QTapAndHoldGesture_Timeout();
	[LinkName("QTapAndHoldGesture_Tr2")]
	public static extern libqt_string QTapAndHoldGesture_Tr2(char8[] s, char8[] c);
	[LinkName("QTapAndHoldGesture_Tr3")]
	public static extern libqt_string QTapAndHoldGesture_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QGestureEvent : QEvent
{
	[LinkName("QGestureEvent_new")]
	public static extern QGestureEvent* QGestureEvent_new(QGesture*[] gestures);
	[LinkName("QGestureEvent_new2")]
	public static extern QGestureEvent* QGestureEvent_new2(QGestureEvent* param1);
	[LinkName("QGestureEvent_Gestures")]
	public static extern QGesture*[] QGestureEvent_Gestures(Self* c_this);
	[LinkName("QGestureEvent_Gesture")]
	public static extern QGesture* QGestureEvent_Gesture(Self* c_this, int64 typeVal);
	[LinkName("QGestureEvent_ActiveGestures")]
	public static extern QGesture*[] QGestureEvent_ActiveGestures(Self* c_this);
	[LinkName("QGestureEvent_CanceledGestures")]
	public static extern QGesture*[] QGestureEvent_CanceledGestures(Self* c_this);
	[LinkName("QGestureEvent_SetAccepted")]
	public static extern void QGestureEvent_SetAccepted(Self* c_this, QGesture* param1, bool param2);
	[LinkName("QGestureEvent_Accept")]
	public static extern void QGestureEvent_Accept(Self* c_this, QGesture* param1);
	[LinkName("QGestureEvent_Ignore")]
	public static extern void QGestureEvent_Ignore(Self* c_this, QGesture* param1);
	[LinkName("QGestureEvent_IsAccepted")]
	public static extern bool QGestureEvent_IsAccepted(Self* c_this, QGesture* param1);
	[LinkName("QGestureEvent_SetAccepted2")]
	public static extern void QGestureEvent_SetAccepted2(Self* c_this, int64 param1, bool param2);
	[LinkName("QGestureEvent_AcceptWithQtGestureType")]
	public static extern void QGestureEvent_AcceptWithQtGestureType(Self* c_this, int64 param1);
	[LinkName("QGestureEvent_IgnoreWithQtGestureType")]
	public static extern void QGestureEvent_IgnoreWithQtGestureType(Self* c_this, int64 param1);
	[LinkName("QGestureEvent_IsAcceptedWithQtGestureType")]
	public static extern bool QGestureEvent_IsAcceptedWithQtGestureType(Self* c_this, int64 param1);
	[LinkName("QGestureEvent_SetWidget")]
	public static extern void QGestureEvent_SetWidget(Self* c_this, QWidget* widget);
	[LinkName("QGestureEvent_Widget")]
	public static extern QWidget* QGestureEvent_Widget(Self* c_this);
	[LinkName("QGestureEvent_MapToGraphicsScene")]
	public static extern QPointF QGestureEvent_MapToGraphicsScene(Self* c_this, QPointF* gesturePoint);
}