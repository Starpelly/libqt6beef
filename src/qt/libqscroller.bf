using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QScroller__State
{
	Inactive = 0,
	Pressed = 1,
	Dragging = 2,
	Scrolling = 3,
}
[AllowDuplicates]
public enum QScroller__ScrollerGestureType
{
	TouchGesture = 0,
	LeftMouseButtonGesture = 1,
	RightMouseButtonGesture = 2,
	MiddleMouseButtonGesture = 3,
}
[AllowDuplicates]
public enum QScroller__Input
{
	InputPress = 1,
	InputMove = 2,
	InputRelease = 3,
}
public struct QScroller : QObject
{
	[LinkName("QScroller_MetaObject")]
	public static extern QMetaObject* QScroller_MetaObject(Self* c_this);
	[LinkName("QScroller_Metacast")]
	public static extern void* QScroller_Metacast(Self* c_this, char8[] param1);
	[LinkName("QScroller_Metacall")]
	public static extern int32 QScroller_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QScroller_Tr")]
	public static extern libqt_string QScroller_Tr(char8[] s);
	[LinkName("QScroller_HasScroller")]
	public static extern bool QScroller_HasScroller(QObject* target);
	[LinkName("QScroller_Scroller")]
	public static extern QScroller* QScroller_Scroller(QObject* target);
	[LinkName("QScroller_ScrollerWithTarget")]
	public static extern QScroller* QScroller_ScrollerWithTarget(QObject* target);
	[LinkName("QScroller_GrabGesture")]
	public static extern int64 QScroller_GrabGesture(QObject* target);
	[LinkName("QScroller_GrabbedGesture")]
	public static extern int64 QScroller_GrabbedGesture(QObject* target);
	[LinkName("QScroller_UngrabGesture")]
	public static extern void QScroller_UngrabGesture(QObject* target);
	[LinkName("QScroller_ActiveScrollers")]
	public static extern QScroller*[] QScroller_ActiveScrollers();
	[LinkName("QScroller_Target")]
	public static extern QObject* QScroller_Target(Self* c_this);
	[LinkName("QScroller_State")]
	public static extern int64 QScroller_State(Self* c_this);
	[LinkName("QScroller_HandleInput")]
	public static extern bool QScroller_HandleInput(Self* c_this, int64 input, QPointF* position);
	[LinkName("QScroller_Stop")]
	public static extern void QScroller_Stop(Self* c_this);
	[LinkName("QScroller_Velocity")]
	public static extern QPointF QScroller_Velocity(Self* c_this);
	[LinkName("QScroller_FinalPosition")]
	public static extern QPointF QScroller_FinalPosition(Self* c_this);
	[LinkName("QScroller_PixelPerMeter")]
	public static extern QPointF QScroller_PixelPerMeter(Self* c_this);
	[LinkName("QScroller_ScrollerProperties")]
	public static extern QScrollerProperties QScroller_ScrollerProperties(Self* c_this);
	[LinkName("QScroller_SetSnapPositionsX")]
	public static extern void QScroller_SetSnapPositionsX(Self* c_this, double[] positions);
	[LinkName("QScroller_SetSnapPositionsX2")]
	public static extern void QScroller_SetSnapPositionsX2(Self* c_this, double first, double interval);
	[LinkName("QScroller_SetSnapPositionsY")]
	public static extern void QScroller_SetSnapPositionsY(Self* c_this, double[] positions);
	[LinkName("QScroller_SetSnapPositionsY2")]
	public static extern void QScroller_SetSnapPositionsY2(Self* c_this, double first, double interval);
	[LinkName("QScroller_SetScrollerProperties")]
	public static extern void QScroller_SetScrollerProperties(Self* c_this, QScrollerProperties* prop);
	[LinkName("QScroller_ScrollTo")]
	public static extern void QScroller_ScrollTo(Self* c_this, QPointF* pos);
	[LinkName("QScroller_ScrollTo2")]
	public static extern void QScroller_ScrollTo2(Self* c_this, QPointF* pos, int32 scrollTime);
	[LinkName("QScroller_EnsureVisible")]
	public static extern void QScroller_EnsureVisible(Self* c_this, QRectF* rect, double xmargin, double ymargin);
	[LinkName("QScroller_EnsureVisible2")]
	public static extern void QScroller_EnsureVisible2(Self* c_this, QRectF* rect, double xmargin, double ymargin, int32 scrollTime);
	[LinkName("QScroller_ResendPrepareEvent")]
	public static extern void QScroller_ResendPrepareEvent(Self* c_this);
	[LinkName("QScroller_StateChanged")]
	public static extern void QScroller_StateChanged(Self* c_this, int64 newstate);
	[LinkName("QScroller_ScrollerPropertiesChanged")]
	public static extern void QScroller_ScrollerPropertiesChanged(Self* c_this, QScrollerProperties* param1);
	[LinkName("QScroller_Tr2")]
	public static extern libqt_string QScroller_Tr2(char8[] s, char8[] c);
	[LinkName("QScroller_Tr3")]
	public static extern libqt_string QScroller_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QScroller_GrabGesture2")]
	public static extern int64 QScroller_GrabGesture2(QObject* target, int64 gestureType);
	[LinkName("QScroller_HandleInput3")]
	public static extern bool QScroller_HandleInput3(Self* c_this, int64 input, QPointF* position, int64 timestamp);
}