using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QWheelEvent__
{
	DefaultDeltasPerStep = 120,
}
[AllowDuplicates]
public enum QPlatformSurfaceEvent__SurfaceEventType
{
	SurfaceCreated = 0,
	SurfaceAboutToBeDestroyed = 1,
}
[AllowDuplicates]
public enum QContextMenuEvent__Reason
{
	Mouse = 0,
	Keyboard = 1,
	Other = 2,
}
[AllowDuplicates]
public enum QInputMethodEvent__AttributeType
{
	TextFormat = 0,
	Cursor = 1,
	Language = 2,
	Ruby = 3,
	Selection = 4,
}
[AllowDuplicates]
public enum QScrollEvent__ScrollState
{
	ScrollStarted = 0,
	ScrollUpdated = 1,
	ScrollFinished = 2,
}
public struct QInputEvent : QEvent
{
	[LinkName("QInputEvent_new")]
	public static extern QInputEvent* QInputEvent_new(int64 typeVal, QInputDevice* m_dev);
	[LinkName("QInputEvent_new2")]
	public static extern QInputEvent* QInputEvent_new2(int64 typeVal, QInputDevice* m_dev, int64 modifiers);
	[LinkName("QInputEvent_Clone")]
	public static extern QInputEvent* QInputEvent_Clone(Self* c_this);
	[LinkName("QInputEvent_Device")]
	public static extern QInputDevice* QInputEvent_Device(Self* c_this);
	[LinkName("QInputEvent_DeviceType")]
	public static extern int64 QInputEvent_DeviceType(Self* c_this);
	[LinkName("QInputEvent_Modifiers")]
	public static extern int64 QInputEvent_Modifiers(Self* c_this);
	[LinkName("QInputEvent_SetModifiers")]
	public static extern void QInputEvent_SetModifiers(Self* c_this, int64 modifiers);
	[LinkName("QInputEvent_Timestamp")]
	public static extern uint64 QInputEvent_Timestamp(Self* c_this);
	[LinkName("QInputEvent_SetTimestamp")]
	public static extern void QInputEvent_SetTimestamp(Self* c_this, uint64 timestamp);
}
public struct QPointerEvent : QInputEvent
{
	[LinkName("QPointerEvent_new")]
	public static extern QPointerEvent* QPointerEvent_new(int64 typeVal, QPointingDevice* dev);
	[LinkName("QPointerEvent_new2")]
	public static extern QPointerEvent* QPointerEvent_new2(int64 typeVal, QPointingDevice* dev, int64 modifiers);
	[LinkName("QPointerEvent_new3")]
	public static extern QPointerEvent* QPointerEvent_new3(int64 typeVal, QPointingDevice* dev, int64 modifiers, QEventPoint[] points);
	[LinkName("QPointerEvent_Clone")]
	public static extern QPointerEvent* QPointerEvent_Clone(Self* c_this);
	[LinkName("QPointerEvent_PointingDevice")]
	public static extern QPointingDevice* QPointerEvent_PointingDevice(Self* c_this);
	[LinkName("QPointerEvent_PointerType")]
	public static extern int64 QPointerEvent_PointerType(Self* c_this);
	[LinkName("QPointerEvent_SetTimestamp")]
	public static extern void QPointerEvent_SetTimestamp(Self* c_this, uint64 timestamp);
	[LinkName("QPointerEvent_PointCount")]
	public static extern int32 QPointerEvent_PointCount(Self* c_this);
	[LinkName("QPointerEvent_Point")]
	public static extern QEventPoint* QPointerEvent_Point(Self* c_this, int32 i);
	[LinkName("QPointerEvent_Points")]
	public static extern QEventPoint[] QPointerEvent_Points(Self* c_this);
	[LinkName("QPointerEvent_PointById")]
	public static extern QEventPoint* QPointerEvent_PointById(Self* c_this, int32 id);
	[LinkName("QPointerEvent_AllPointsGrabbed")]
	public static extern bool QPointerEvent_AllPointsGrabbed(Self* c_this);
	[LinkName("QPointerEvent_IsBeginEvent")]
	public static extern bool QPointerEvent_IsBeginEvent(Self* c_this);
	[LinkName("QPointerEvent_IsUpdateEvent")]
	public static extern bool QPointerEvent_IsUpdateEvent(Self* c_this);
	[LinkName("QPointerEvent_IsEndEvent")]
	public static extern bool QPointerEvent_IsEndEvent(Self* c_this);
	[LinkName("QPointerEvent_AllPointsAccepted")]
	public static extern bool QPointerEvent_AllPointsAccepted(Self* c_this);
	[LinkName("QPointerEvent_SetAccepted")]
	public static extern void QPointerEvent_SetAccepted(Self* c_this, bool accepted);
	[LinkName("QPointerEvent_ExclusiveGrabber")]
	public static extern QObject* QPointerEvent_ExclusiveGrabber(Self* c_this, QEventPoint* point);
	[LinkName("QPointerEvent_SetExclusiveGrabber")]
	public static extern void QPointerEvent_SetExclusiveGrabber(Self* c_this, QEventPoint* point, QObject* exclusiveGrabber);
	[LinkName("QPointerEvent_ClearPassiveGrabbers")]
	public static extern void QPointerEvent_ClearPassiveGrabbers(Self* c_this, QEventPoint* point);
	[LinkName("QPointerEvent_AddPassiveGrabber")]
	public static extern bool QPointerEvent_AddPassiveGrabber(Self* c_this, QEventPoint* point, QObject* grabber);
	[LinkName("QPointerEvent_RemovePassiveGrabber")]
	public static extern bool QPointerEvent_RemovePassiveGrabber(Self* c_this, QEventPoint* point, QObject* grabber);
}
public struct QSinglePointEvent : QPointerEvent
{
	[LinkName("QSinglePointEvent_Clone")]
	public static extern QSinglePointEvent* QSinglePointEvent_Clone(Self* c_this);
	[LinkName("QSinglePointEvent_Button")]
	public static extern int64 QSinglePointEvent_Button(Self* c_this);
	[LinkName("QSinglePointEvent_Buttons")]
	public static extern int64 QSinglePointEvent_Buttons(Self* c_this);
	[LinkName("QSinglePointEvent_Position")]
	public static extern QPointF QSinglePointEvent_Position(Self* c_this);
	[LinkName("QSinglePointEvent_ScenePosition")]
	public static extern QPointF QSinglePointEvent_ScenePosition(Self* c_this);
	[LinkName("QSinglePointEvent_GlobalPosition")]
	public static extern QPointF QSinglePointEvent_GlobalPosition(Self* c_this);
	[LinkName("QSinglePointEvent_IsBeginEvent")]
	public static extern bool QSinglePointEvent_IsBeginEvent(Self* c_this);
	[LinkName("QSinglePointEvent_IsUpdateEvent")]
	public static extern bool QSinglePointEvent_IsUpdateEvent(Self* c_this);
	[LinkName("QSinglePointEvent_IsEndEvent")]
	public static extern bool QSinglePointEvent_IsEndEvent(Self* c_this);
	[LinkName("QSinglePointEvent_ExclusivePointGrabber")]
	public static extern QObject* QSinglePointEvent_ExclusivePointGrabber(Self* c_this);
	[LinkName("QSinglePointEvent_SetExclusivePointGrabber")]
	public static extern void QSinglePointEvent_SetExclusivePointGrabber(Self* c_this, QObject* exclusiveGrabber);
}
public struct QEnterEvent : QSinglePointEvent
{
	[LinkName("QEnterEvent_new")]
	public static extern QEnterEvent* QEnterEvent_new(QPointF* localPos, QPointF* scenePos, QPointF* globalPos);
	[LinkName("QEnterEvent_new2")]
	public static extern QEnterEvent* QEnterEvent_new2(QPointF* localPos, QPointF* scenePos, QPointF* globalPos, QPointingDevice* device);
	[LinkName("QEnterEvent_Clone")]
	public static extern QEnterEvent* QEnterEvent_Clone(Self* c_this);
	[LinkName("QEnterEvent_Pos")]
	public static extern QPoint QEnterEvent_Pos(Self* c_this);
	[LinkName("QEnterEvent_GlobalPos")]
	public static extern QPoint QEnterEvent_GlobalPos(Self* c_this);
	[LinkName("QEnterEvent_X")]
	public static extern int32 QEnterEvent_X(Self* c_this);
	[LinkName("QEnterEvent_Y")]
	public static extern int32 QEnterEvent_Y(Self* c_this);
	[LinkName("QEnterEvent_GlobalX")]
	public static extern int32 QEnterEvent_GlobalX(Self* c_this);
	[LinkName("QEnterEvent_GlobalY")]
	public static extern int32 QEnterEvent_GlobalY(Self* c_this);
	[LinkName("QEnterEvent_LocalPos")]
	public static extern QPointF QEnterEvent_LocalPos(Self* c_this);
	[LinkName("QEnterEvent_WindowPos")]
	public static extern QPointF QEnterEvent_WindowPos(Self* c_this);
	[LinkName("QEnterEvent_ScreenPos")]
	public static extern QPointF QEnterEvent_ScreenPos(Self* c_this);
}
public struct QMouseEvent : QSinglePointEvent
{
	[LinkName("QMouseEvent_new")]
	public static extern QMouseEvent* QMouseEvent_new(int64 typeVal, QPointF* localPos, int64 button, int64 buttons, int64 modifiers);
	[LinkName("QMouseEvent_new2")]
	public static extern QMouseEvent* QMouseEvent_new2(int64 typeVal, QPointF* localPos, QPointF* globalPos, int64 button, int64 buttons, int64 modifiers);
	[LinkName("QMouseEvent_new3")]
	public static extern QMouseEvent* QMouseEvent_new3(int64 typeVal, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int64 button, int64 buttons, int64 modifiers);
	[LinkName("QMouseEvent_new4")]
	public static extern QMouseEvent* QMouseEvent_new4(int64 typeVal, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int64 button, int64 buttons, int64 modifiers, int64 source);
	[LinkName("QMouseEvent_new5")]
	public static extern QMouseEvent* QMouseEvent_new5(int64 typeVal, QPointF* localPos, int64 button, int64 buttons, int64 modifiers, QPointingDevice* device);
	[LinkName("QMouseEvent_new6")]
	public static extern QMouseEvent* QMouseEvent_new6(int64 typeVal, QPointF* localPos, QPointF* globalPos, int64 button, int64 buttons, int64 modifiers, QPointingDevice* device);
	[LinkName("QMouseEvent_new7")]
	public static extern QMouseEvent* QMouseEvent_new7(int64 typeVal, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int64 button, int64 buttons, int64 modifiers, QPointingDevice* device);
	[LinkName("QMouseEvent_new8")]
	public static extern QMouseEvent* QMouseEvent_new8(int64 typeVal, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int64 button, int64 buttons, int64 modifiers, int64 source, QPointingDevice* device);
	[LinkName("QMouseEvent_Clone")]
	public static extern QMouseEvent* QMouseEvent_Clone(Self* c_this);
	[LinkName("QMouseEvent_Pos")]
	public static extern QPoint QMouseEvent_Pos(Self* c_this);
	[LinkName("QMouseEvent_GlobalPos")]
	public static extern QPoint QMouseEvent_GlobalPos(Self* c_this);
	[LinkName("QMouseEvent_X")]
	public static extern int32 QMouseEvent_X(Self* c_this);
	[LinkName("QMouseEvent_Y")]
	public static extern int32 QMouseEvent_Y(Self* c_this);
	[LinkName("QMouseEvent_GlobalX")]
	public static extern int32 QMouseEvent_GlobalX(Self* c_this);
	[LinkName("QMouseEvent_GlobalY")]
	public static extern int32 QMouseEvent_GlobalY(Self* c_this);
	[LinkName("QMouseEvent_LocalPos")]
	public static extern QPointF QMouseEvent_LocalPos(Self* c_this);
	[LinkName("QMouseEvent_WindowPos")]
	public static extern QPointF QMouseEvent_WindowPos(Self* c_this);
	[LinkName("QMouseEvent_ScreenPos")]
	public static extern QPointF QMouseEvent_ScreenPos(Self* c_this);
	[LinkName("QMouseEvent_Source")]
	public static extern int64 QMouseEvent_Source(Self* c_this);
	[LinkName("QMouseEvent_Flags")]
	public static extern int64 QMouseEvent_Flags(Self* c_this);
}
public struct QHoverEvent : QSinglePointEvent
{
	[LinkName("QHoverEvent_new")]
	public static extern QHoverEvent* QHoverEvent_new(int64 typeVal, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos);
	[LinkName("QHoverEvent_new2")]
	public static extern QHoverEvent* QHoverEvent_new2(int64 typeVal, QPointF* pos, QPointF* oldPos);
	[LinkName("QHoverEvent_new3")]
	public static extern QHoverEvent* QHoverEvent_new3(int64 typeVal, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos, int64 modifiers);
	[LinkName("QHoverEvent_new4")]
	public static extern QHoverEvent* QHoverEvent_new4(int64 typeVal, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos, int64 modifiers, QPointingDevice* device);
	[LinkName("QHoverEvent_new5")]
	public static extern QHoverEvent* QHoverEvent_new5(int64 typeVal, QPointF* pos, QPointF* oldPos, int64 modifiers);
	[LinkName("QHoverEvent_new6")]
	public static extern QHoverEvent* QHoverEvent_new6(int64 typeVal, QPointF* pos, QPointF* oldPos, int64 modifiers, QPointingDevice* device);
	[LinkName("QHoverEvent_Clone")]
	public static extern QHoverEvent* QHoverEvent_Clone(Self* c_this);
	[LinkName("QHoverEvent_Pos")]
	public static extern QPoint QHoverEvent_Pos(Self* c_this);
	[LinkName("QHoverEvent_PosF")]
	public static extern QPointF QHoverEvent_PosF(Self* c_this);
	[LinkName("QHoverEvent_IsUpdateEvent")]
	public static extern bool QHoverEvent_IsUpdateEvent(Self* c_this);
	[LinkName("QHoverEvent_OldPos")]
	public static extern QPoint QHoverEvent_OldPos(Self* c_this);
	[LinkName("QHoverEvent_OldPosF")]
	public static extern QPointF QHoverEvent_OldPosF(Self* c_this);
}
public struct QWheelEvent : QSinglePointEvent
{
	[LinkName("QWheelEvent_new")]
	public static extern QWheelEvent* QWheelEvent_new(QPointF* pos, QPointF* globalPos, QPoint pixelDelta, QPoint angleDelta, int64 buttons, int64 modifiers, int64 phase, bool inverted);
	[LinkName("QWheelEvent_new2")]
	public static extern QWheelEvent* QWheelEvent_new2(QPointF* pos, QPointF* globalPos, QPoint pixelDelta, QPoint angleDelta, int64 buttons, int64 modifiers, int64 phase, bool inverted, int64 source);
	[LinkName("QWheelEvent_new3")]
	public static extern QWheelEvent* QWheelEvent_new3(QPointF* pos, QPointF* globalPos, QPoint pixelDelta, QPoint angleDelta, int64 buttons, int64 modifiers, int64 phase, bool inverted, int64 source, QPointingDevice* device);
	[LinkName("QWheelEvent_Clone")]
	public static extern QWheelEvent* QWheelEvent_Clone(Self* c_this);
	[LinkName("QWheelEvent_PixelDelta")]
	public static extern QPoint QWheelEvent_PixelDelta(Self* c_this);
	[LinkName("QWheelEvent_AngleDelta")]
	public static extern QPoint QWheelEvent_AngleDelta(Self* c_this);
	[LinkName("QWheelEvent_Phase")]
	public static extern int64 QWheelEvent_Phase(Self* c_this);
	[LinkName("QWheelEvent_Inverted")]
	public static extern bool QWheelEvent_Inverted(Self* c_this);
	[LinkName("QWheelEvent_IsInverted")]
	public static extern bool QWheelEvent_IsInverted(Self* c_this);
	[LinkName("QWheelEvent_HasPixelDelta")]
	public static extern bool QWheelEvent_HasPixelDelta(Self* c_this);
	[LinkName("QWheelEvent_IsBeginEvent")]
	public static extern bool QWheelEvent_IsBeginEvent(Self* c_this);
	[LinkName("QWheelEvent_IsUpdateEvent")]
	public static extern bool QWheelEvent_IsUpdateEvent(Self* c_this);
	[LinkName("QWheelEvent_IsEndEvent")]
	public static extern bool QWheelEvent_IsEndEvent(Self* c_this);
	[LinkName("QWheelEvent_Source")]
	public static extern int64 QWheelEvent_Source(Self* c_this);
}
public struct QTabletEvent : QSinglePointEvent
{
	[LinkName("QTabletEvent_new")]
	public static extern QTabletEvent* QTabletEvent_new(int64 t, QPointingDevice* device, QPointF* pos, QPointF* globalPos, double pressure, float xTilt, float yTilt, float tangentialPressure, double rotation, float z, int64 keyState, int64 button, int64 buttons);
	[LinkName("QTabletEvent_Clone")]
	public static extern QTabletEvent* QTabletEvent_Clone(Self* c_this);
	[LinkName("QTabletEvent_Pos")]
	public static extern QPoint QTabletEvent_Pos(Self* c_this);
	[LinkName("QTabletEvent_GlobalPos")]
	public static extern QPoint QTabletEvent_GlobalPos(Self* c_this);
	[LinkName("QTabletEvent_PosF")]
	public static extern QPointF QTabletEvent_PosF(Self* c_this);
	[LinkName("QTabletEvent_GlobalPosF")]
	public static extern QPointF QTabletEvent_GlobalPosF(Self* c_this);
	[LinkName("QTabletEvent_X")]
	public static extern int32 QTabletEvent_X(Self* c_this);
	[LinkName("QTabletEvent_Y")]
	public static extern int32 QTabletEvent_Y(Self* c_this);
	[LinkName("QTabletEvent_GlobalX")]
	public static extern int32 QTabletEvent_GlobalX(Self* c_this);
	[LinkName("QTabletEvent_GlobalY")]
	public static extern int32 QTabletEvent_GlobalY(Self* c_this);
	[LinkName("QTabletEvent_HiResGlobalX")]
	public static extern double QTabletEvent_HiResGlobalX(Self* c_this);
	[LinkName("QTabletEvent_HiResGlobalY")]
	public static extern double QTabletEvent_HiResGlobalY(Self* c_this);
	[LinkName("QTabletEvent_UniqueId")]
	public static extern int64 QTabletEvent_UniqueId(Self* c_this);
	[LinkName("QTabletEvent_Pressure")]
	public static extern double QTabletEvent_Pressure(Self* c_this);
	[LinkName("QTabletEvent_Rotation")]
	public static extern double QTabletEvent_Rotation(Self* c_this);
	[LinkName("QTabletEvent_Z")]
	public static extern double QTabletEvent_Z(Self* c_this);
	[LinkName("QTabletEvent_TangentialPressure")]
	public static extern double QTabletEvent_TangentialPressure(Self* c_this);
	[LinkName("QTabletEvent_XTilt")]
	public static extern double QTabletEvent_XTilt(Self* c_this);
	[LinkName("QTabletEvent_YTilt")]
	public static extern double QTabletEvent_YTilt(Self* c_this);
}
public struct QNativeGestureEvent : QSinglePointEvent
{
	[LinkName("QNativeGestureEvent_new")]
	public static extern QNativeGestureEvent* QNativeGestureEvent_new(int64 typeVal, QPointingDevice* dev, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, uint64 sequenceId, uint64 intArgument);
	[LinkName("QNativeGestureEvent_new2")]
	public static extern QNativeGestureEvent* QNativeGestureEvent_new2(int64 typeVal, QPointingDevice* dev, int32 fingerCount, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, QPointF* delta);
	[LinkName("QNativeGestureEvent_new3")]
	public static extern QNativeGestureEvent* QNativeGestureEvent_new3(int64 typeVal, QPointingDevice* dev, int32 fingerCount, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, QPointF* delta, uint64 sequenceId);
	[LinkName("QNativeGestureEvent_Clone")]
	public static extern QNativeGestureEvent* QNativeGestureEvent_Clone(Self* c_this);
	[LinkName("QNativeGestureEvent_GestureType")]
	public static extern int64 QNativeGestureEvent_GestureType(Self* c_this);
	[LinkName("QNativeGestureEvent_FingerCount")]
	public static extern int32 QNativeGestureEvent_FingerCount(Self* c_this);
	[LinkName("QNativeGestureEvent_Value")]
	public static extern double QNativeGestureEvent_Value(Self* c_this);
	[LinkName("QNativeGestureEvent_Delta")]
	public static extern QPointF QNativeGestureEvent_Delta(Self* c_this);
	[LinkName("QNativeGestureEvent_Pos")]
	public static extern QPoint QNativeGestureEvent_Pos(Self* c_this);
	[LinkName("QNativeGestureEvent_GlobalPos")]
	public static extern QPoint QNativeGestureEvent_GlobalPos(Self* c_this);
	[LinkName("QNativeGestureEvent_LocalPos")]
	public static extern QPointF QNativeGestureEvent_LocalPos(Self* c_this);
	[LinkName("QNativeGestureEvent_WindowPos")]
	public static extern QPointF QNativeGestureEvent_WindowPos(Self* c_this);
	[LinkName("QNativeGestureEvent_ScreenPos")]
	public static extern QPointF QNativeGestureEvent_ScreenPos(Self* c_this);
}
public struct QKeyEvent : QInputEvent
{
	[LinkName("QKeyEvent_new")]
	public static extern QKeyEvent* QKeyEvent_new(int64 typeVal, int32 key, int64 modifiers);
	[LinkName("QKeyEvent_new2")]
	public static extern QKeyEvent* QKeyEvent_new2(int64 typeVal, int32 key, int64 modifiers, uint32 nativeScanCode, uint32 nativeVirtualKey, uint32 nativeModifiers);
	[LinkName("QKeyEvent_new3")]
	public static extern QKeyEvent* QKeyEvent_new3(int64 typeVal, int32 key, int64 modifiers, libqt_string text);
	[LinkName("QKeyEvent_new4")]
	public static extern QKeyEvent* QKeyEvent_new4(int64 typeVal, int32 key, int64 modifiers, libqt_string text, bool autorep);
	[LinkName("QKeyEvent_new5")]
	public static extern QKeyEvent* QKeyEvent_new5(int64 typeVal, int32 key, int64 modifiers, libqt_string text, bool autorep, uint16 count);
	[LinkName("QKeyEvent_new6")]
	public static extern QKeyEvent* QKeyEvent_new6(int64 typeVal, int32 key, int64 modifiers, uint32 nativeScanCode, uint32 nativeVirtualKey, uint32 nativeModifiers, libqt_string text);
	[LinkName("QKeyEvent_new7")]
	public static extern QKeyEvent* QKeyEvent_new7(int64 typeVal, int32 key, int64 modifiers, uint32 nativeScanCode, uint32 nativeVirtualKey, uint32 nativeModifiers, libqt_string text, bool autorep);
	[LinkName("QKeyEvent_new8")]
	public static extern QKeyEvent* QKeyEvent_new8(int64 typeVal, int32 key, int64 modifiers, uint32 nativeScanCode, uint32 nativeVirtualKey, uint32 nativeModifiers, libqt_string text, bool autorep, uint16 count);
	[LinkName("QKeyEvent_new9")]
	public static extern QKeyEvent* QKeyEvent_new9(int64 typeVal, int32 key, int64 modifiers, uint32 nativeScanCode, uint32 nativeVirtualKey, uint32 nativeModifiers, libqt_string text, bool autorep, uint16 count, QInputDevice* device);
	[LinkName("QKeyEvent_Clone")]
	public static extern QKeyEvent* QKeyEvent_Clone(Self* c_this);
	[LinkName("QKeyEvent_Key")]
	public static extern int32 QKeyEvent_Key(Self* c_this);
	[LinkName("QKeyEvent_Matches")]
	public static extern bool QKeyEvent_Matches(Self* c_this, int64 key);
	[LinkName("QKeyEvent_Modifiers")]
	public static extern int64 QKeyEvent_Modifiers(Self* c_this);
	[LinkName("QKeyEvent_KeyCombination")]
	public static extern QKeyCombination QKeyEvent_KeyCombination(Self* c_this);
	[LinkName("QKeyEvent_Text")]
	public static extern libqt_string QKeyEvent_Text(Self* c_this);
	[LinkName("QKeyEvent_IsAutoRepeat")]
	public static extern bool QKeyEvent_IsAutoRepeat(Self* c_this);
	[LinkName("QKeyEvent_Count")]
	public static extern int32 QKeyEvent_Count(Self* c_this);
	[LinkName("QKeyEvent_NativeScanCode")]
	public static extern uint32 QKeyEvent_NativeScanCode(Self* c_this);
	[LinkName("QKeyEvent_NativeVirtualKey")]
	public static extern uint32 QKeyEvent_NativeVirtualKey(Self* c_this);
	[LinkName("QKeyEvent_NativeModifiers")]
	public static extern uint32 QKeyEvent_NativeModifiers(Self* c_this);
}
public struct QFocusEvent : QEvent
{
	[LinkName("QFocusEvent_new")]
	public static extern QFocusEvent* QFocusEvent_new(int64 typeVal);
	[LinkName("QFocusEvent_new2")]
	public static extern QFocusEvent* QFocusEvent_new2(int64 typeVal, int64 reason);
	[LinkName("QFocusEvent_Clone")]
	public static extern QFocusEvent* QFocusEvent_Clone(Self* c_this);
	[LinkName("QFocusEvent_GotFocus")]
	public static extern bool QFocusEvent_GotFocus(Self* c_this);
	[LinkName("QFocusEvent_LostFocus")]
	public static extern bool QFocusEvent_LostFocus(Self* c_this);
	[LinkName("QFocusEvent_Reason")]
	public static extern int64 QFocusEvent_Reason(Self* c_this);
}
public struct QPaintEvent : QEvent
{
	[LinkName("QPaintEvent_new")]
	public static extern QPaintEvent* QPaintEvent_new(QRegion* paintRegion);
	[LinkName("QPaintEvent_new2")]
	public static extern QPaintEvent* QPaintEvent_new2(QRect* paintRect);
	[LinkName("QPaintEvent_Clone")]
	public static extern QPaintEvent* QPaintEvent_Clone(Self* c_this);
	[LinkName("QPaintEvent_Rect")]
	public static extern QRect* QPaintEvent_Rect(Self* c_this);
	[LinkName("QPaintEvent_Region")]
	public static extern QRegion* QPaintEvent_Region(Self* c_this);
}
public struct QMoveEvent : QEvent
{
	[LinkName("QMoveEvent_new")]
	public static extern QMoveEvent* QMoveEvent_new(QPoint* pos, QPoint* oldPos);
	[LinkName("QMoveEvent_Clone")]
	public static extern QMoveEvent* QMoveEvent_Clone(Self* c_this);
	[LinkName("QMoveEvent_Pos")]
	public static extern QPoint* QMoveEvent_Pos(Self* c_this);
	[LinkName("QMoveEvent_OldPos")]
	public static extern QPoint* QMoveEvent_OldPos(Self* c_this);
}
public struct QExposeEvent : QEvent
{
	[LinkName("QExposeEvent_new")]
	public static extern QExposeEvent* QExposeEvent_new(QRegion* m_region);
	[LinkName("QExposeEvent_Clone")]
	public static extern QExposeEvent* QExposeEvent_Clone(Self* c_this);
	[LinkName("QExposeEvent_Region")]
	public static extern QRegion* QExposeEvent_Region(Self* c_this);
}
public struct QPlatformSurfaceEvent : QEvent
{
	[LinkName("QPlatformSurfaceEvent_new")]
	public static extern QPlatformSurfaceEvent* QPlatformSurfaceEvent_new(int64 surfaceEventType);
	[LinkName("QPlatformSurfaceEvent_Clone")]
	public static extern QPlatformSurfaceEvent* QPlatformSurfaceEvent_Clone(Self* c_this);
	[LinkName("QPlatformSurfaceEvent_SurfaceEventType")]
	public static extern int64 QPlatformSurfaceEvent_SurfaceEventType(Self* c_this);
}
public struct QResizeEvent : QEvent
{
	[LinkName("QResizeEvent_new")]
	public static extern QResizeEvent* QResizeEvent_new(QSize* size, QSize* oldSize);
	[LinkName("QResizeEvent_Clone")]
	public static extern QResizeEvent* QResizeEvent_Clone(Self* c_this);
	[LinkName("QResizeEvent_Size")]
	public static extern QSize* QResizeEvent_Size(Self* c_this);
	[LinkName("QResizeEvent_OldSize")]
	public static extern QSize* QResizeEvent_OldSize(Self* c_this);
}
public struct QCloseEvent : QEvent
{
	[LinkName("QCloseEvent_new")]
	public static extern QCloseEvent* QCloseEvent_new();
	[LinkName("QCloseEvent_Clone")]
	public static extern QCloseEvent* QCloseEvent_Clone(Self* c_this);
}
public struct QIconDragEvent : QEvent
{
	[LinkName("QIconDragEvent_new")]
	public static extern QIconDragEvent* QIconDragEvent_new();
	[LinkName("QIconDragEvent_Clone")]
	public static extern QIconDragEvent* QIconDragEvent_Clone(Self* c_this);
}
public struct QShowEvent : QEvent
{
	[LinkName("QShowEvent_new")]
	public static extern QShowEvent* QShowEvent_new();
	[LinkName("QShowEvent_Clone")]
	public static extern QShowEvent* QShowEvent_Clone(Self* c_this);
}
public struct QHideEvent : QEvent
{
	[LinkName("QHideEvent_new")]
	public static extern QHideEvent* QHideEvent_new();
	[LinkName("QHideEvent_Clone")]
	public static extern QHideEvent* QHideEvent_Clone(Self* c_this);
}
public struct QContextMenuEvent : QInputEvent
{
	[LinkName("QContextMenuEvent_new")]
	public static extern QContextMenuEvent* QContextMenuEvent_new(int64 reason, QPoint* pos, QPoint* globalPos);
	[LinkName("QContextMenuEvent_new2")]
	public static extern QContextMenuEvent* QContextMenuEvent_new2(int64 reason, QPoint* pos);
	[LinkName("QContextMenuEvent_new3")]
	public static extern QContextMenuEvent* QContextMenuEvent_new3(int64 reason, QPoint* pos, QPoint* globalPos, int64 modifiers);
	[LinkName("QContextMenuEvent_Clone")]
	public static extern QContextMenuEvent* QContextMenuEvent_Clone(Self* c_this);
	[LinkName("QContextMenuEvent_X")]
	public static extern int32 QContextMenuEvent_X(Self* c_this);
	[LinkName("QContextMenuEvent_Y")]
	public static extern int32 QContextMenuEvent_Y(Self* c_this);
	[LinkName("QContextMenuEvent_GlobalX")]
	public static extern int32 QContextMenuEvent_GlobalX(Self* c_this);
	[LinkName("QContextMenuEvent_GlobalY")]
	public static extern int32 QContextMenuEvent_GlobalY(Self* c_this);
	[LinkName("QContextMenuEvent_Pos")]
	public static extern QPoint* QContextMenuEvent_Pos(Self* c_this);
	[LinkName("QContextMenuEvent_GlobalPos")]
	public static extern QPoint* QContextMenuEvent_GlobalPos(Self* c_this);
	[LinkName("QContextMenuEvent_Reason")]
	public static extern int64 QContextMenuEvent_Reason(Self* c_this);
}
public struct QInputMethodEvent : QEvent
{
	[LinkName("QInputMethodEvent_new")]
	public static extern QInputMethodEvent* QInputMethodEvent_new();
	[LinkName("QInputMethodEvent_new2")]
	public static extern QInputMethodEvent* QInputMethodEvent_new2(libqt_string preeditText, QInputMethodEvent__Attribute[] attributes);
	[LinkName("QInputMethodEvent_Clone")]
	public static extern QInputMethodEvent* QInputMethodEvent_Clone(Self* c_this);
	[LinkName("QInputMethodEvent_SetCommitString")]
	public static extern void QInputMethodEvent_SetCommitString(Self* c_this, libqt_string commitString);
	[LinkName("QInputMethodEvent_Attributes")]
	public static extern QInputMethodEvent__Attribute[] QInputMethodEvent_Attributes(Self* c_this);
	[LinkName("QInputMethodEvent_PreeditString")]
	public static extern libqt_string QInputMethodEvent_PreeditString(Self* c_this);
	[LinkName("QInputMethodEvent_CommitString")]
	public static extern libqt_string QInputMethodEvent_CommitString(Self* c_this);
	[LinkName("QInputMethodEvent_ReplacementStart")]
	public static extern int32 QInputMethodEvent_ReplacementStart(Self* c_this);
	[LinkName("QInputMethodEvent_ReplacementLength")]
	public static extern int32 QInputMethodEvent_ReplacementLength(Self* c_this);
	[LinkName("QInputMethodEvent_SetCommitString2")]
	public static extern void QInputMethodEvent_SetCommitString2(Self* c_this, libqt_string commitString, int32 replaceFrom);
	[LinkName("QInputMethodEvent_SetCommitString3")]
	public static extern void QInputMethodEvent_SetCommitString3(Self* c_this, libqt_string commitString, int32 replaceFrom, int32 replaceLength);
}
public struct QInputMethodQueryEvent : QEvent
{
	[LinkName("QInputMethodQueryEvent_new")]
	public static extern QInputMethodQueryEvent* QInputMethodQueryEvent_new(int64 queries);
	[LinkName("QInputMethodQueryEvent_Clone")]
	public static extern QInputMethodQueryEvent* QInputMethodQueryEvent_Clone(Self* c_this);
	[LinkName("QInputMethodQueryEvent_Queries")]
	public static extern int64 QInputMethodQueryEvent_Queries(Self* c_this);
	[LinkName("QInputMethodQueryEvent_SetValue")]
	public static extern void QInputMethodQueryEvent_SetValue(Self* c_this, int64 query, QVariant* value);
	[LinkName("QInputMethodQueryEvent_Value")]
	public static extern QVariant QInputMethodQueryEvent_Value(Self* c_this, int64 query);
}
public struct QDropEvent : QEvent
{
	[LinkName("QDropEvent_new")]
	public static extern QDropEvent* QDropEvent_new(QPointF* pos, int64 actions, QMimeData* data, int64 buttons, int64 modifiers);
	[LinkName("QDropEvent_new2")]
	public static extern QDropEvent* QDropEvent_new2(QPointF* pos, int64 actions, QMimeData* data, int64 buttons, int64 modifiers, int64 typeVal);
	[LinkName("QDropEvent_Clone")]
	public static extern QDropEvent* QDropEvent_Clone(Self* c_this);
	[LinkName("QDropEvent_Pos")]
	public static extern QPoint QDropEvent_Pos(Self* c_this);
	[LinkName("QDropEvent_PosF")]
	public static extern QPointF QDropEvent_PosF(Self* c_this);
	[LinkName("QDropEvent_MouseButtons")]
	public static extern int64 QDropEvent_MouseButtons(Self* c_this);
	[LinkName("QDropEvent_KeyboardModifiers")]
	public static extern int64 QDropEvent_KeyboardModifiers(Self* c_this);
	[LinkName("QDropEvent_Position")]
	public static extern QPointF QDropEvent_Position(Self* c_this);
	[LinkName("QDropEvent_Buttons")]
	public static extern int64 QDropEvent_Buttons(Self* c_this);
	[LinkName("QDropEvent_Modifiers")]
	public static extern int64 QDropEvent_Modifiers(Self* c_this);
	[LinkName("QDropEvent_PossibleActions")]
	public static extern int64 QDropEvent_PossibleActions(Self* c_this);
	[LinkName("QDropEvent_ProposedAction")]
	public static extern int64 QDropEvent_ProposedAction(Self* c_this);
	[LinkName("QDropEvent_AcceptProposedAction")]
	public static extern void QDropEvent_AcceptProposedAction(Self* c_this);
	[LinkName("QDropEvent_DropAction")]
	public static extern int64 QDropEvent_DropAction(Self* c_this);
	[LinkName("QDropEvent_SetDropAction")]
	public static extern void QDropEvent_SetDropAction(Self* c_this, int64 action);
	[LinkName("QDropEvent_Source")]
	public static extern QObject* QDropEvent_Source(Self* c_this);
	[LinkName("QDropEvent_MimeData")]
	public static extern QMimeData* QDropEvent_MimeData(Self* c_this);
}
public struct QDragMoveEvent : QDropEvent
{
	[LinkName("QDragMoveEvent_new")]
	public static extern QDragMoveEvent* QDragMoveEvent_new(QPoint* pos, int64 actions, QMimeData* data, int64 buttons, int64 modifiers);
	[LinkName("QDragMoveEvent_new2")]
	public static extern QDragMoveEvent* QDragMoveEvent_new2(QPoint* pos, int64 actions, QMimeData* data, int64 buttons, int64 modifiers, int64 typeVal);
	[LinkName("QDragMoveEvent_Clone")]
	public static extern QDragMoveEvent* QDragMoveEvent_Clone(Self* c_this);
	[LinkName("QDragMoveEvent_AnswerRect")]
	public static extern QRect QDragMoveEvent_AnswerRect(Self* c_this);
	[LinkName("QDragMoveEvent_Accept")]
	public static extern void QDragMoveEvent_Accept(Self* c_this);
	[LinkName("QDragMoveEvent_Ignore")]
	public static extern void QDragMoveEvent_Ignore(Self* c_this);
	[LinkName("QDragMoveEvent_AcceptWithQRect")]
	public static extern void QDragMoveEvent_AcceptWithQRect(Self* c_this, QRect* r);
	[LinkName("QDragMoveEvent_IgnoreWithQRect")]
	public static extern void QDragMoveEvent_IgnoreWithQRect(Self* c_this, QRect* r);
}
public struct QDragEnterEvent : QDragMoveEvent
{
	[LinkName("QDragEnterEvent_new")]
	public static extern QDragEnterEvent* QDragEnterEvent_new(QPoint* pos, int64 actions, QMimeData* data, int64 buttons, int64 modifiers);
	[LinkName("QDragEnterEvent_Clone")]
	public static extern QDragEnterEvent* QDragEnterEvent_Clone(Self* c_this);
}
public struct QDragLeaveEvent : QEvent
{
	[LinkName("QDragLeaveEvent_new")]
	public static extern QDragLeaveEvent* QDragLeaveEvent_new();
	[LinkName("QDragLeaveEvent_Clone")]
	public static extern QDragLeaveEvent* QDragLeaveEvent_Clone(Self* c_this);
}
public struct QHelpEvent : QEvent
{
	[LinkName("QHelpEvent_new")]
	public static extern QHelpEvent* QHelpEvent_new(int64 typeVal, QPoint* pos, QPoint* globalPos);
	[LinkName("QHelpEvent_Clone")]
	public static extern QHelpEvent* QHelpEvent_Clone(Self* c_this);
	[LinkName("QHelpEvent_X")]
	public static extern int32 QHelpEvent_X(Self* c_this);
	[LinkName("QHelpEvent_Y")]
	public static extern int32 QHelpEvent_Y(Self* c_this);
	[LinkName("QHelpEvent_GlobalX")]
	public static extern int32 QHelpEvent_GlobalX(Self* c_this);
	[LinkName("QHelpEvent_GlobalY")]
	public static extern int32 QHelpEvent_GlobalY(Self* c_this);
	[LinkName("QHelpEvent_Pos")]
	public static extern QPoint* QHelpEvent_Pos(Self* c_this);
	[LinkName("QHelpEvent_GlobalPos")]
	public static extern QPoint* QHelpEvent_GlobalPos(Self* c_this);
}
public struct QStatusTipEvent : QEvent
{
	[LinkName("QStatusTipEvent_new")]
	public static extern QStatusTipEvent* QStatusTipEvent_new(libqt_string tip);
	[LinkName("QStatusTipEvent_Clone")]
	public static extern QStatusTipEvent* QStatusTipEvent_Clone(Self* c_this);
	[LinkName("QStatusTipEvent_Tip")]
	public static extern libqt_string QStatusTipEvent_Tip(Self* c_this);
}
public struct QWhatsThisClickedEvent : QEvent
{
	[LinkName("QWhatsThisClickedEvent_new")]
	public static extern QWhatsThisClickedEvent* QWhatsThisClickedEvent_new(libqt_string href);
	[LinkName("QWhatsThisClickedEvent_Clone")]
	public static extern QWhatsThisClickedEvent* QWhatsThisClickedEvent_Clone(Self* c_this);
	[LinkName("QWhatsThisClickedEvent_Href")]
	public static extern libqt_string QWhatsThisClickedEvent_Href(Self* c_this);
}
public struct QActionEvent : QEvent
{
	[LinkName("QActionEvent_new")]
	public static extern QActionEvent* QActionEvent_new(int32 typeVal, QAction* action);
	[LinkName("QActionEvent_new2")]
	public static extern QActionEvent* QActionEvent_new2(int32 typeVal, QAction* action, QAction* before);
	[LinkName("QActionEvent_Clone")]
	public static extern QActionEvent* QActionEvent_Clone(Self* c_this);
	[LinkName("QActionEvent_Action")]
	public static extern QAction* QActionEvent_Action(Self* c_this);
	[LinkName("QActionEvent_Before")]
	public static extern QAction* QActionEvent_Before(Self* c_this);
}
public struct QFileOpenEvent : QEvent
{
	[LinkName("QFileOpenEvent_new")]
	public static extern QFileOpenEvent* QFileOpenEvent_new(libqt_string file);
	[LinkName("QFileOpenEvent_new2")]
	public static extern QFileOpenEvent* QFileOpenEvent_new2(QUrl* url);
	[LinkName("QFileOpenEvent_Clone")]
	public static extern QFileOpenEvent* QFileOpenEvent_Clone(Self* c_this);
	[LinkName("QFileOpenEvent_File")]
	public static extern libqt_string QFileOpenEvent_File(Self* c_this);
	[LinkName("QFileOpenEvent_Url")]
	public static extern QUrl QFileOpenEvent_Url(Self* c_this);
	[LinkName("QFileOpenEvent_OpenFile")]
	public static extern bool QFileOpenEvent_OpenFile(Self* c_this, QFile* file, int64 flags);
}
public struct QToolBarChangeEvent : QEvent
{
	[LinkName("QToolBarChangeEvent_new")]
	public static extern QToolBarChangeEvent* QToolBarChangeEvent_new(bool t);
	[LinkName("QToolBarChangeEvent_Clone")]
	public static extern QToolBarChangeEvent* QToolBarChangeEvent_Clone(Self* c_this);
	[LinkName("QToolBarChangeEvent_Toggle")]
	public static extern bool QToolBarChangeEvent_Toggle(Self* c_this);
}
public struct QShortcutEvent : QEvent
{
	[LinkName("QShortcutEvent_new")]
	public static extern QShortcutEvent* QShortcutEvent_new(QKeySequence* key, int32 id);
	[LinkName("QShortcutEvent_new2")]
	public static extern QShortcutEvent* QShortcutEvent_new2(QKeySequence* key, int32 id, bool ambiguous);
	[LinkName("QShortcutEvent_Clone")]
	public static extern QShortcutEvent* QShortcutEvent_Clone(Self* c_this);
	[LinkName("QShortcutEvent_Key")]
	public static extern QKeySequence* QShortcutEvent_Key(Self* c_this);
	[LinkName("QShortcutEvent_ShortcutId")]
	public static extern int32 QShortcutEvent_ShortcutId(Self* c_this);
	[LinkName("QShortcutEvent_IsAmbiguous")]
	public static extern bool QShortcutEvent_IsAmbiguous(Self* c_this);
}
public struct QWindowStateChangeEvent : QEvent
{
	[LinkName("QWindowStateChangeEvent_new")]
	public static extern QWindowStateChangeEvent* QWindowStateChangeEvent_new(int64 oldState);
	[LinkName("QWindowStateChangeEvent_new2")]
	public static extern QWindowStateChangeEvent* QWindowStateChangeEvent_new2(int64 oldState, bool isOverride);
	[LinkName("QWindowStateChangeEvent_Clone")]
	public static extern QWindowStateChangeEvent* QWindowStateChangeEvent_Clone(Self* c_this);
	[LinkName("QWindowStateChangeEvent_OldState")]
	public static extern int64 QWindowStateChangeEvent_OldState(Self* c_this);
	[LinkName("QWindowStateChangeEvent_IsOverride")]
	public static extern bool QWindowStateChangeEvent_IsOverride(Self* c_this);
}
public struct QTouchEvent : QPointerEvent
{
	[LinkName("QTouchEvent_new")]
	public static extern QTouchEvent* QTouchEvent_new(int64 eventType);
	[LinkName("QTouchEvent_new2")]
	public static extern QTouchEvent* QTouchEvent_new2(int64 eventType, QPointingDevice* device, int64 modifiers, int64 touchPointStates);
	[LinkName("QTouchEvent_new3")]
	public static extern QTouchEvent* QTouchEvent_new3(int64 eventType, QPointingDevice* device);
	[LinkName("QTouchEvent_new4")]
	public static extern QTouchEvent* QTouchEvent_new4(int64 eventType, QPointingDevice* device, int64 modifiers);
	[LinkName("QTouchEvent_new5")]
	public static extern QTouchEvent* QTouchEvent_new5(int64 eventType, QPointingDevice* device, int64 modifiers, QEventPoint[] touchPoints);
	[LinkName("QTouchEvent_new6")]
	public static extern QTouchEvent* QTouchEvent_new6(int64 eventType, QPointingDevice* device, int64 modifiers, int64 touchPointStates, QEventPoint[] touchPoints);
	[LinkName("QTouchEvent_Clone")]
	public static extern QTouchEvent* QTouchEvent_Clone(Self* c_this);
	[LinkName("QTouchEvent_Target")]
	public static extern QObject* QTouchEvent_Target(Self* c_this);
	[LinkName("QTouchEvent_TouchPointStates")]
	public static extern int64 QTouchEvent_TouchPointStates(Self* c_this);
	[LinkName("QTouchEvent_TouchPoints")]
	public static extern QEventPoint[] QTouchEvent_TouchPoints(Self* c_this);
	[LinkName("QTouchEvent_IsBeginEvent")]
	public static extern bool QTouchEvent_IsBeginEvent(Self* c_this);
	[LinkName("QTouchEvent_IsUpdateEvent")]
	public static extern bool QTouchEvent_IsUpdateEvent(Self* c_this);
	[LinkName("QTouchEvent_IsEndEvent")]
	public static extern bool QTouchEvent_IsEndEvent(Self* c_this);
}
public struct QScrollPrepareEvent : QEvent
{
	[LinkName("QScrollPrepareEvent_new")]
	public static extern QScrollPrepareEvent* QScrollPrepareEvent_new(QPointF* startPos);
	[LinkName("QScrollPrepareEvent_Clone")]
	public static extern QScrollPrepareEvent* QScrollPrepareEvent_Clone(Self* c_this);
	[LinkName("QScrollPrepareEvent_StartPos")]
	public static extern QPointF QScrollPrepareEvent_StartPos(Self* c_this);
	[LinkName("QScrollPrepareEvent_ViewportSize")]
	public static extern QSizeF QScrollPrepareEvent_ViewportSize(Self* c_this);
	[LinkName("QScrollPrepareEvent_ContentPosRange")]
	public static extern QRectF QScrollPrepareEvent_ContentPosRange(Self* c_this);
	[LinkName("QScrollPrepareEvent_ContentPos")]
	public static extern QPointF QScrollPrepareEvent_ContentPos(Self* c_this);
	[LinkName("QScrollPrepareEvent_SetViewportSize")]
	public static extern void QScrollPrepareEvent_SetViewportSize(Self* c_this, QSizeF* size);
	[LinkName("QScrollPrepareEvent_SetContentPosRange")]
	public static extern void QScrollPrepareEvent_SetContentPosRange(Self* c_this, QRectF* rect);
	[LinkName("QScrollPrepareEvent_SetContentPos")]
	public static extern void QScrollPrepareEvent_SetContentPos(Self* c_this, QPointF* pos);
}
public struct QScrollEvent : QEvent
{
	[LinkName("QScrollEvent_new")]
	public static extern QScrollEvent* QScrollEvent_new(QPointF* contentPos, QPointF* overshoot, int64 scrollState);
	[LinkName("QScrollEvent_Clone")]
	public static extern QScrollEvent* QScrollEvent_Clone(Self* c_this);
	[LinkName("QScrollEvent_ContentPos")]
	public static extern QPointF QScrollEvent_ContentPos(Self* c_this);
	[LinkName("QScrollEvent_OvershootDistance")]
	public static extern QPointF QScrollEvent_OvershootDistance(Self* c_this);
	[LinkName("QScrollEvent_ScrollState")]
	public static extern int64 QScrollEvent_ScrollState(Self* c_this);
}
public struct QScreenOrientationChangeEvent : QEvent
{
	[LinkName("QScreenOrientationChangeEvent_new")]
	public static extern QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_new(QScreen* screen, int64 orientation);
	[LinkName("QScreenOrientationChangeEvent_Clone")]
	public static extern QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_Clone(Self* c_this);
	[LinkName("QScreenOrientationChangeEvent_Screen")]
	public static extern QScreen* QScreenOrientationChangeEvent_Screen(Self* c_this);
	[LinkName("QScreenOrientationChangeEvent_Orientation")]
	public static extern int64 QScreenOrientationChangeEvent_Orientation(Self* c_this);
}
public struct QApplicationStateChangeEvent : QEvent
{
	[LinkName("QApplicationStateChangeEvent_new")]
	public static extern QApplicationStateChangeEvent* QApplicationStateChangeEvent_new(int64 state);
	[LinkName("QApplicationStateChangeEvent_Clone")]
	public static extern QApplicationStateChangeEvent* QApplicationStateChangeEvent_Clone(Self* c_this);
	[LinkName("QApplicationStateChangeEvent_ApplicationState")]
	public static extern int64 QApplicationStateChangeEvent_ApplicationState(Self* c_this);
}
public struct QInputMethodEvent__Attribute
{
	[LinkName("QInputMethodEvent__Attribute_new")]
	public static extern QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new(int64 typ, int32 s, int32 l, QVariant val);
	[LinkName("QInputMethodEvent__Attribute_new2")]
	public static extern QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new2(int64 typ, int32 s, int32 l);
	[LinkName("QInputMethodEvent__Attribute_new3")]
	public static extern QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new3(QInputMethodEvent__Attribute* param1);
	[LinkName("QInputMethodEvent__Attribute_OperatorAssign")]
	public static extern void QInputMethodEvent__Attribute_OperatorAssign(Self* c_this, QInputMethodEvent__Attribute* param1);
}