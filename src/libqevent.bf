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
public struct QInputEvent
{
	[LinkName("QInputEvent_new")]
	public static extern void* QInputEvent_new(int64 typeVal, QInputDevice m_dev);
	[LinkName("QInputEvent_new2")]
	public static extern void* QInputEvent_new2(int64 typeVal, QInputDevice m_dev, int64 modifiers);
	[LinkName("QInputEvent_Clone")]
	public static extern QInputEvent QInputEvent_Clone(void* c_this);
	[LinkName("QInputEvent_Device")]
	public static extern QInputDevice QInputEvent_Device(void* c_this);
	[LinkName("QInputEvent_DeviceType")]
	public static extern int64 QInputEvent_DeviceType(void* c_this);
	[LinkName("QInputEvent_Modifiers")]
	public static extern int64 QInputEvent_Modifiers(void* c_this);
	[LinkName("QInputEvent_SetModifiers")]
	public static extern void QInputEvent_SetModifiers(void* c_this, int64 modifiers);
	[LinkName("QInputEvent_Timestamp")]
	public static extern uint64 QInputEvent_Timestamp(void* c_this);
	[LinkName("QInputEvent_SetTimestamp")]
	public static extern void QInputEvent_SetTimestamp(void* c_this, uint64 timestamp);
}
public struct QPointerEvent
{
	[LinkName("QPointerEvent_new")]
	public static extern void* QPointerEvent_new(int64 typeVal, QPointingDevice dev);
	[LinkName("QPointerEvent_new2")]
	public static extern void* QPointerEvent_new2(int64 typeVal, QPointingDevice dev, int64 modifiers);
	[LinkName("QPointerEvent_new3")]
	public static extern void* QPointerEvent_new3(int64 typeVal, QPointingDevice dev, int64 modifiers, QEventPoint[] points);
	[LinkName("QPointerEvent_Clone")]
	public static extern QPointerEvent QPointerEvent_Clone(void* c_this);
	[LinkName("QPointerEvent_PointingDevice")]
	public static extern QPointingDevice QPointerEvent_PointingDevice(void* c_this);
	[LinkName("QPointerEvent_PointerType")]
	public static extern int64 QPointerEvent_PointerType(void* c_this);
	[LinkName("QPointerEvent_SetTimestamp")]
	public static extern void QPointerEvent_SetTimestamp(void* c_this, uint64 timestamp);
	[LinkName("QPointerEvent_PointCount")]
	public static extern int32 QPointerEvent_PointCount(void* c_this);
	[LinkName("QPointerEvent_Point")]
	public static extern QEventPoint QPointerEvent_Point(void* c_this, int32 i);
	[LinkName("QPointerEvent_Points")]
	public static extern QEventPoint[] QPointerEvent_Points(void* c_this);
	[LinkName("QPointerEvent_PointById")]
	public static extern QEventPoint QPointerEvent_PointById(void* c_this, int32 id);
	[LinkName("QPointerEvent_AllPointsGrabbed")]
	public static extern bool QPointerEvent_AllPointsGrabbed(void* c_this);
	[LinkName("QPointerEvent_IsBeginEvent")]
	public static extern bool QPointerEvent_IsBeginEvent(void* c_this);
	[LinkName("QPointerEvent_IsUpdateEvent")]
	public static extern bool QPointerEvent_IsUpdateEvent(void* c_this);
	[LinkName("QPointerEvent_IsEndEvent")]
	public static extern bool QPointerEvent_IsEndEvent(void* c_this);
	[LinkName("QPointerEvent_AllPointsAccepted")]
	public static extern bool QPointerEvent_AllPointsAccepted(void* c_this);
	[LinkName("QPointerEvent_SetAccepted")]
	public static extern void QPointerEvent_SetAccepted(void* c_this, bool accepted);
	[LinkName("QPointerEvent_ExclusiveGrabber")]
	public static extern QObject QPointerEvent_ExclusiveGrabber(void* c_this, QEventPoint point);
	[LinkName("QPointerEvent_SetExclusiveGrabber")]
	public static extern void QPointerEvent_SetExclusiveGrabber(void* c_this, QEventPoint point, QObject exclusiveGrabber);
	[LinkName("QPointerEvent_ClearPassiveGrabbers")]
	public static extern void QPointerEvent_ClearPassiveGrabbers(void* c_this, QEventPoint point);
	[LinkName("QPointerEvent_AddPassiveGrabber")]
	public static extern bool QPointerEvent_AddPassiveGrabber(void* c_this, QEventPoint point, QObject grabber);
	[LinkName("QPointerEvent_RemovePassiveGrabber")]
	public static extern bool QPointerEvent_RemovePassiveGrabber(void* c_this, QEventPoint point, QObject grabber);
}
public struct QSinglePointEvent
{
	[LinkName("QSinglePointEvent_Clone")]
	public static extern QSinglePointEvent QSinglePointEvent_Clone(void* c_this);
	[LinkName("QSinglePointEvent_Button")]
	public static extern int64 QSinglePointEvent_Button(void* c_this);
	[LinkName("QSinglePointEvent_Buttons")]
	public static extern int64 QSinglePointEvent_Buttons(void* c_this);
	[LinkName("QSinglePointEvent_Position")]
	public static extern QPointF QSinglePointEvent_Position(void* c_this);
	[LinkName("QSinglePointEvent_ScenePosition")]
	public static extern QPointF QSinglePointEvent_ScenePosition(void* c_this);
	[LinkName("QSinglePointEvent_GlobalPosition")]
	public static extern QPointF QSinglePointEvent_GlobalPosition(void* c_this);
	[LinkName("QSinglePointEvent_IsBeginEvent")]
	public static extern bool QSinglePointEvent_IsBeginEvent(void* c_this);
	[LinkName("QSinglePointEvent_IsUpdateEvent")]
	public static extern bool QSinglePointEvent_IsUpdateEvent(void* c_this);
	[LinkName("QSinglePointEvent_IsEndEvent")]
	public static extern bool QSinglePointEvent_IsEndEvent(void* c_this);
	[LinkName("QSinglePointEvent_ExclusivePointGrabber")]
	public static extern QObject QSinglePointEvent_ExclusivePointGrabber(void* c_this);
	[LinkName("QSinglePointEvent_SetExclusivePointGrabber")]
	public static extern void QSinglePointEvent_SetExclusivePointGrabber(void* c_this, QObject exclusiveGrabber);
}
public struct QEnterEvent
{
	[LinkName("QEnterEvent_new")]
	public static extern void* QEnterEvent_new(QPointF localPos, QPointF scenePos, QPointF globalPos);
	[LinkName("QEnterEvent_new2")]
	public static extern void* QEnterEvent_new2(QPointF localPos, QPointF scenePos, QPointF globalPos, QPointingDevice device);
	[LinkName("QEnterEvent_Clone")]
	public static extern QEnterEvent QEnterEvent_Clone(void* c_this);
	[LinkName("QEnterEvent_Pos")]
	public static extern QPoint QEnterEvent_Pos(void* c_this);
	[LinkName("QEnterEvent_GlobalPos")]
	public static extern QPoint QEnterEvent_GlobalPos(void* c_this);
	[LinkName("QEnterEvent_X")]
	public static extern int32 QEnterEvent_X(void* c_this);
	[LinkName("QEnterEvent_Y")]
	public static extern int32 QEnterEvent_Y(void* c_this);
	[LinkName("QEnterEvent_GlobalX")]
	public static extern int32 QEnterEvent_GlobalX(void* c_this);
	[LinkName("QEnterEvent_GlobalY")]
	public static extern int32 QEnterEvent_GlobalY(void* c_this);
	[LinkName("QEnterEvent_LocalPos")]
	public static extern QPointF QEnterEvent_LocalPos(void* c_this);
	[LinkName("QEnterEvent_WindowPos")]
	public static extern QPointF QEnterEvent_WindowPos(void* c_this);
	[LinkName("QEnterEvent_ScreenPos")]
	public static extern QPointF QEnterEvent_ScreenPos(void* c_this);
}
public struct QMouseEvent
{
	[LinkName("QMouseEvent_new")]
	public static extern void* QMouseEvent_new(int64 typeVal, QPointF localPos, int64 button, int64 buttons, int64 modifiers);
	[LinkName("QMouseEvent_new2")]
	public static extern void* QMouseEvent_new2(int64 typeVal, QPointF localPos, QPointF globalPos, int64 button, int64 buttons, int64 modifiers);
	[LinkName("QMouseEvent_new3")]
	public static extern void* QMouseEvent_new3(int64 typeVal, QPointF localPos, QPointF scenePos, QPointF globalPos, int64 button, int64 buttons, int64 modifiers);
	[LinkName("QMouseEvent_new4")]
	public static extern void* QMouseEvent_new4(int64 typeVal, QPointF localPos, QPointF scenePos, QPointF globalPos, int64 button, int64 buttons, int64 modifiers, int64 source);
	[LinkName("QMouseEvent_new5")]
	public static extern void* QMouseEvent_new5(int64 typeVal, QPointF localPos, int64 button, int64 buttons, int64 modifiers, QPointingDevice device);
	[LinkName("QMouseEvent_new6")]
	public static extern void* QMouseEvent_new6(int64 typeVal, QPointF localPos, QPointF globalPos, int64 button, int64 buttons, int64 modifiers, QPointingDevice device);
	[LinkName("QMouseEvent_new7")]
	public static extern void* QMouseEvent_new7(int64 typeVal, QPointF localPos, QPointF scenePos, QPointF globalPos, int64 button, int64 buttons, int64 modifiers, QPointingDevice device);
	[LinkName("QMouseEvent_new8")]
	public static extern void* QMouseEvent_new8(int64 typeVal, QPointF localPos, QPointF scenePos, QPointF globalPos, int64 button, int64 buttons, int64 modifiers, int64 source, QPointingDevice device);
	[LinkName("QMouseEvent_Clone")]
	public static extern QMouseEvent QMouseEvent_Clone(void* c_this);
	[LinkName("QMouseEvent_Pos")]
	public static extern QPoint QMouseEvent_Pos(void* c_this);
	[LinkName("QMouseEvent_GlobalPos")]
	public static extern QPoint QMouseEvent_GlobalPos(void* c_this);
	[LinkName("QMouseEvent_X")]
	public static extern int32 QMouseEvent_X(void* c_this);
	[LinkName("QMouseEvent_Y")]
	public static extern int32 QMouseEvent_Y(void* c_this);
	[LinkName("QMouseEvent_GlobalX")]
	public static extern int32 QMouseEvent_GlobalX(void* c_this);
	[LinkName("QMouseEvent_GlobalY")]
	public static extern int32 QMouseEvent_GlobalY(void* c_this);
	[LinkName("QMouseEvent_LocalPos")]
	public static extern QPointF QMouseEvent_LocalPos(void* c_this);
	[LinkName("QMouseEvent_WindowPos")]
	public static extern QPointF QMouseEvent_WindowPos(void* c_this);
	[LinkName("QMouseEvent_ScreenPos")]
	public static extern QPointF QMouseEvent_ScreenPos(void* c_this);
	[LinkName("QMouseEvent_Source")]
	public static extern int64 QMouseEvent_Source(void* c_this);
	[LinkName("QMouseEvent_Flags")]
	public static extern int64 QMouseEvent_Flags(void* c_this);
}
public struct QHoverEvent
{
	[LinkName("QHoverEvent_new")]
	public static extern void* QHoverEvent_new(int64 typeVal, QPointF scenePos, QPointF globalPos, QPointF oldPos);
	[LinkName("QHoverEvent_new2")]
	public static extern void* QHoverEvent_new2(int64 typeVal, QPointF pos, QPointF oldPos);
	[LinkName("QHoverEvent_new3")]
	public static extern void* QHoverEvent_new3(int64 typeVal, QPointF scenePos, QPointF globalPos, QPointF oldPos, int64 modifiers);
	[LinkName("QHoverEvent_new4")]
	public static extern void* QHoverEvent_new4(int64 typeVal, QPointF scenePos, QPointF globalPos, QPointF oldPos, int64 modifiers, QPointingDevice device);
	[LinkName("QHoverEvent_new5")]
	public static extern void* QHoverEvent_new5(int64 typeVal, QPointF pos, QPointF oldPos, int64 modifiers);
	[LinkName("QHoverEvent_new6")]
	public static extern void* QHoverEvent_new6(int64 typeVal, QPointF pos, QPointF oldPos, int64 modifiers, QPointingDevice device);
	[LinkName("QHoverEvent_Clone")]
	public static extern QHoverEvent QHoverEvent_Clone(void* c_this);
	[LinkName("QHoverEvent_Pos")]
	public static extern QPoint QHoverEvent_Pos(void* c_this);
	[LinkName("QHoverEvent_PosF")]
	public static extern QPointF QHoverEvent_PosF(void* c_this);
	[LinkName("QHoverEvent_IsUpdateEvent")]
	public static extern bool QHoverEvent_IsUpdateEvent(void* c_this);
	[LinkName("QHoverEvent_OldPos")]
	public static extern QPoint QHoverEvent_OldPos(void* c_this);
	[LinkName("QHoverEvent_OldPosF")]
	public static extern QPointF QHoverEvent_OldPosF(void* c_this);
}
public struct QWheelEvent
{
	[LinkName("QWheelEvent_new")]
	public static extern void* QWheelEvent_new(QPointF pos, QPointF globalPos, QPoint pixelDelta, QPoint angleDelta, int64 buttons, int64 modifiers, int64 phase, bool inverted);
	[LinkName("QWheelEvent_new2")]
	public static extern void* QWheelEvent_new2(QPointF pos, QPointF globalPos, QPoint pixelDelta, QPoint angleDelta, int64 buttons, int64 modifiers, int64 phase, bool inverted, int64 source);
	[LinkName("QWheelEvent_new3")]
	public static extern void* QWheelEvent_new3(QPointF pos, QPointF globalPos, QPoint pixelDelta, QPoint angleDelta, int64 buttons, int64 modifiers, int64 phase, bool inverted, int64 source, QPointingDevice device);
	[LinkName("QWheelEvent_Clone")]
	public static extern QWheelEvent QWheelEvent_Clone(void* c_this);
	[LinkName("QWheelEvent_PixelDelta")]
	public static extern QPoint QWheelEvent_PixelDelta(void* c_this);
	[LinkName("QWheelEvent_AngleDelta")]
	public static extern QPoint QWheelEvent_AngleDelta(void* c_this);
	[LinkName("QWheelEvent_Phase")]
	public static extern int64 QWheelEvent_Phase(void* c_this);
	[LinkName("QWheelEvent_Inverted")]
	public static extern bool QWheelEvent_Inverted(void* c_this);
	[LinkName("QWheelEvent_IsInverted")]
	public static extern bool QWheelEvent_IsInverted(void* c_this);
	[LinkName("QWheelEvent_HasPixelDelta")]
	public static extern bool QWheelEvent_HasPixelDelta(void* c_this);
	[LinkName("QWheelEvent_IsBeginEvent")]
	public static extern bool QWheelEvent_IsBeginEvent(void* c_this);
	[LinkName("QWheelEvent_IsUpdateEvent")]
	public static extern bool QWheelEvent_IsUpdateEvent(void* c_this);
	[LinkName("QWheelEvent_IsEndEvent")]
	public static extern bool QWheelEvent_IsEndEvent(void* c_this);
	[LinkName("QWheelEvent_Source")]
	public static extern int64 QWheelEvent_Source(void* c_this);
}
public struct QTabletEvent
{
	[LinkName("QTabletEvent_new")]
	public static extern void* QTabletEvent_new(int64 t, QPointingDevice device, QPointF pos, QPointF globalPos, double pressure, float xTilt, float yTilt, float tangentialPressure, double rotation, float z, int64 keyState, int64 button, int64 buttons);
	[LinkName("QTabletEvent_Clone")]
	public static extern QTabletEvent QTabletEvent_Clone(void* c_this);
	[LinkName("QTabletEvent_Pos")]
	public static extern QPoint QTabletEvent_Pos(void* c_this);
	[LinkName("QTabletEvent_GlobalPos")]
	public static extern QPoint QTabletEvent_GlobalPos(void* c_this);
	[LinkName("QTabletEvent_PosF")]
	public static extern QPointF QTabletEvent_PosF(void* c_this);
	[LinkName("QTabletEvent_GlobalPosF")]
	public static extern QPointF QTabletEvent_GlobalPosF(void* c_this);
	[LinkName("QTabletEvent_X")]
	public static extern int32 QTabletEvent_X(void* c_this);
	[LinkName("QTabletEvent_Y")]
	public static extern int32 QTabletEvent_Y(void* c_this);
	[LinkName("QTabletEvent_GlobalX")]
	public static extern int32 QTabletEvent_GlobalX(void* c_this);
	[LinkName("QTabletEvent_GlobalY")]
	public static extern int32 QTabletEvent_GlobalY(void* c_this);
	[LinkName("QTabletEvent_HiResGlobalX")]
	public static extern double QTabletEvent_HiResGlobalX(void* c_this);
	[LinkName("QTabletEvent_HiResGlobalY")]
	public static extern double QTabletEvent_HiResGlobalY(void* c_this);
	[LinkName("QTabletEvent_UniqueId")]
	public static extern int64 QTabletEvent_UniqueId(void* c_this);
	[LinkName("QTabletEvent_Pressure")]
	public static extern double QTabletEvent_Pressure(void* c_this);
	[LinkName("QTabletEvent_Rotation")]
	public static extern double QTabletEvent_Rotation(void* c_this);
	[LinkName("QTabletEvent_Z")]
	public static extern double QTabletEvent_Z(void* c_this);
	[LinkName("QTabletEvent_TangentialPressure")]
	public static extern double QTabletEvent_TangentialPressure(void* c_this);
	[LinkName("QTabletEvent_XTilt")]
	public static extern double QTabletEvent_XTilt(void* c_this);
	[LinkName("QTabletEvent_YTilt")]
	public static extern double QTabletEvent_YTilt(void* c_this);
}
public struct QNativeGestureEvent
{
	[LinkName("QNativeGestureEvent_new")]
	public static extern void* QNativeGestureEvent_new(int64 typeVal, QPointingDevice dev, QPointF localPos, QPointF scenePos, QPointF globalPos, double value, uint64 sequenceId, uint64 intArgument);
	[LinkName("QNativeGestureEvent_new2")]
	public static extern void* QNativeGestureEvent_new2(int64 typeVal, QPointingDevice dev, int32 fingerCount, QPointF localPos, QPointF scenePos, QPointF globalPos, double value, QPointF delta);
	[LinkName("QNativeGestureEvent_new3")]
	public static extern void* QNativeGestureEvent_new3(int64 typeVal, QPointingDevice dev, int32 fingerCount, QPointF localPos, QPointF scenePos, QPointF globalPos, double value, QPointF delta, uint64 sequenceId);
	[LinkName("QNativeGestureEvent_Clone")]
	public static extern QNativeGestureEvent QNativeGestureEvent_Clone(void* c_this);
	[LinkName("QNativeGestureEvent_GestureType")]
	public static extern int64 QNativeGestureEvent_GestureType(void* c_this);
	[LinkName("QNativeGestureEvent_FingerCount")]
	public static extern int32 QNativeGestureEvent_FingerCount(void* c_this);
	[LinkName("QNativeGestureEvent_Value")]
	public static extern double QNativeGestureEvent_Value(void* c_this);
	[LinkName("QNativeGestureEvent_Delta")]
	public static extern QPointF QNativeGestureEvent_Delta(void* c_this);
	[LinkName("QNativeGestureEvent_Pos")]
	public static extern QPoint QNativeGestureEvent_Pos(void* c_this);
	[LinkName("QNativeGestureEvent_GlobalPos")]
	public static extern QPoint QNativeGestureEvent_GlobalPos(void* c_this);
	[LinkName("QNativeGestureEvent_LocalPos")]
	public static extern QPointF QNativeGestureEvent_LocalPos(void* c_this);
	[LinkName("QNativeGestureEvent_WindowPos")]
	public static extern QPointF QNativeGestureEvent_WindowPos(void* c_this);
	[LinkName("QNativeGestureEvent_ScreenPos")]
	public static extern QPointF QNativeGestureEvent_ScreenPos(void* c_this);
}
public struct QKeyEvent
{
	[LinkName("QKeyEvent_new")]
	public static extern void* QKeyEvent_new(int64 typeVal, int32 key, int64 modifiers);
	[LinkName("QKeyEvent_new2")]
	public static extern void* QKeyEvent_new2(int64 typeVal, int32 key, int64 modifiers, uint32 nativeScanCode, uint32 nativeVirtualKey, uint32 nativeModifiers);
	[LinkName("QKeyEvent_new3")]
	public static extern void* QKeyEvent_new3(int64 typeVal, int32 key, int64 modifiers, char8[] text);
	[LinkName("QKeyEvent_new4")]
	public static extern void* QKeyEvent_new4(int64 typeVal, int32 key, int64 modifiers, char8[] text, bool autorep);
	[LinkName("QKeyEvent_new5")]
	public static extern void* QKeyEvent_new5(int64 typeVal, int32 key, int64 modifiers, char8[] text, bool autorep, uint16 count);
	[LinkName("QKeyEvent_new6")]
	public static extern void* QKeyEvent_new6(int64 typeVal, int32 key, int64 modifiers, uint32 nativeScanCode, uint32 nativeVirtualKey, uint32 nativeModifiers, char8[] text);
	[LinkName("QKeyEvent_new7")]
	public static extern void* QKeyEvent_new7(int64 typeVal, int32 key, int64 modifiers, uint32 nativeScanCode, uint32 nativeVirtualKey, uint32 nativeModifiers, char8[] text, bool autorep);
	[LinkName("QKeyEvent_new8")]
	public static extern void* QKeyEvent_new8(int64 typeVal, int32 key, int64 modifiers, uint32 nativeScanCode, uint32 nativeVirtualKey, uint32 nativeModifiers, char8[] text, bool autorep, uint16 count);
	[LinkName("QKeyEvent_new9")]
	public static extern void* QKeyEvent_new9(int64 typeVal, int32 key, int64 modifiers, uint32 nativeScanCode, uint32 nativeVirtualKey, uint32 nativeModifiers, char8[] text, bool autorep, uint16 count, QInputDevice device);
	[LinkName("QKeyEvent_Clone")]
	public static extern QKeyEvent QKeyEvent_Clone(void* c_this);
	[LinkName("QKeyEvent_Key")]
	public static extern int32 QKeyEvent_Key(void* c_this);
	[LinkName("QKeyEvent_Matches")]
	public static extern bool QKeyEvent_Matches(void* c_this, int64 key);
	[LinkName("QKeyEvent_Modifiers")]
	public static extern int64 QKeyEvent_Modifiers(void* c_this);
	[LinkName("QKeyEvent_KeyCombination")]
	public static extern QKeyCombination QKeyEvent_KeyCombination(void* c_this);
	[LinkName("QKeyEvent_Text")]
	public static extern char8[] QKeyEvent_Text(void* c_this);
	[LinkName("QKeyEvent_IsAutoRepeat")]
	public static extern bool QKeyEvent_IsAutoRepeat(void* c_this);
	[LinkName("QKeyEvent_Count")]
	public static extern int32 QKeyEvent_Count(void* c_this);
	[LinkName("QKeyEvent_NativeScanCode")]
	public static extern uint32 QKeyEvent_NativeScanCode(void* c_this);
	[LinkName("QKeyEvent_NativeVirtualKey")]
	public static extern uint32 QKeyEvent_NativeVirtualKey(void* c_this);
	[LinkName("QKeyEvent_NativeModifiers")]
	public static extern uint32 QKeyEvent_NativeModifiers(void* c_this);
}
public struct QFocusEvent
{
	[LinkName("QFocusEvent_new")]
	public static extern void* QFocusEvent_new(int64 typeVal);
	[LinkName("QFocusEvent_new2")]
	public static extern void* QFocusEvent_new2(int64 typeVal, int64 reason);
	[LinkName("QFocusEvent_Clone")]
	public static extern QFocusEvent QFocusEvent_Clone(void* c_this);
	[LinkName("QFocusEvent_GotFocus")]
	public static extern bool QFocusEvent_GotFocus(void* c_this);
	[LinkName("QFocusEvent_LostFocus")]
	public static extern bool QFocusEvent_LostFocus(void* c_this);
	[LinkName("QFocusEvent_Reason")]
	public static extern int64 QFocusEvent_Reason(void* c_this);
}
public struct QPaintEvent
{
	[LinkName("QPaintEvent_new")]
	public static extern void* QPaintEvent_new(QRegion paintRegion);
	[LinkName("QPaintEvent_new2")]
	public static extern void* QPaintEvent_new2(QRect paintRect);
	[LinkName("QPaintEvent_Clone")]
	public static extern QPaintEvent QPaintEvent_Clone(void* c_this);
	[LinkName("QPaintEvent_Rect")]
	public static extern QRect QPaintEvent_Rect(void* c_this);
	[LinkName("QPaintEvent_Region")]
	public static extern QRegion QPaintEvent_Region(void* c_this);
}
public struct QMoveEvent
{
	[LinkName("QMoveEvent_new")]
	public static extern void* QMoveEvent_new(QPoint pos, QPoint oldPos);
	[LinkName("QMoveEvent_Clone")]
	public static extern QMoveEvent QMoveEvent_Clone(void* c_this);
	[LinkName("QMoveEvent_Pos")]
	public static extern QPoint QMoveEvent_Pos(void* c_this);
	[LinkName("QMoveEvent_OldPos")]
	public static extern QPoint QMoveEvent_OldPos(void* c_this);
}
public struct QExposeEvent
{
	[LinkName("QExposeEvent_new")]
	public static extern void* QExposeEvent_new(QRegion m_region);
	[LinkName("QExposeEvent_Clone")]
	public static extern QExposeEvent QExposeEvent_Clone(void* c_this);
	[LinkName("QExposeEvent_Region")]
	public static extern QRegion QExposeEvent_Region(void* c_this);
}
public struct QPlatformSurfaceEvent
{
	[LinkName("QPlatformSurfaceEvent_new")]
	public static extern void* QPlatformSurfaceEvent_new(int64 surfaceEventType);
	[LinkName("QPlatformSurfaceEvent_Clone")]
	public static extern QPlatformSurfaceEvent QPlatformSurfaceEvent_Clone(void* c_this);
	[LinkName("QPlatformSurfaceEvent_SurfaceEventType")]
	public static extern int64 QPlatformSurfaceEvent_SurfaceEventType(void* c_this);
}
public struct QResizeEvent
{
	[LinkName("QResizeEvent_new")]
	public static extern void* QResizeEvent_new(QSize size, QSize oldSize);
	[LinkName("QResizeEvent_Clone")]
	public static extern QResizeEvent QResizeEvent_Clone(void* c_this);
	[LinkName("QResizeEvent_Size")]
	public static extern QSize QResizeEvent_Size(void* c_this);
	[LinkName("QResizeEvent_OldSize")]
	public static extern QSize QResizeEvent_OldSize(void* c_this);
}
public struct QCloseEvent
{
	[LinkName("QCloseEvent_new")]
	public static extern void* QCloseEvent_new();
	[LinkName("QCloseEvent_Clone")]
	public static extern QCloseEvent QCloseEvent_Clone(void* c_this);
}
public struct QIconDragEvent
{
	[LinkName("QIconDragEvent_new")]
	public static extern void* QIconDragEvent_new();
	[LinkName("QIconDragEvent_Clone")]
	public static extern QIconDragEvent QIconDragEvent_Clone(void* c_this);
}
public struct QShowEvent
{
	[LinkName("QShowEvent_new")]
	public static extern void* QShowEvent_new();
	[LinkName("QShowEvent_Clone")]
	public static extern QShowEvent QShowEvent_Clone(void* c_this);
}
public struct QHideEvent
{
	[LinkName("QHideEvent_new")]
	public static extern void* QHideEvent_new();
	[LinkName("QHideEvent_Clone")]
	public static extern QHideEvent QHideEvent_Clone(void* c_this);
}
public struct QContextMenuEvent
{
	[LinkName("QContextMenuEvent_new")]
	public static extern void* QContextMenuEvent_new(int64 reason, QPoint pos, QPoint globalPos);
	[LinkName("QContextMenuEvent_new2")]
	public static extern void* QContextMenuEvent_new2(int64 reason, QPoint pos);
	[LinkName("QContextMenuEvent_new3")]
	public static extern void* QContextMenuEvent_new3(int64 reason, QPoint pos, QPoint globalPos, int64 modifiers);
	[LinkName("QContextMenuEvent_Clone")]
	public static extern QContextMenuEvent QContextMenuEvent_Clone(void* c_this);
	[LinkName("QContextMenuEvent_X")]
	public static extern int32 QContextMenuEvent_X(void* c_this);
	[LinkName("QContextMenuEvent_Y")]
	public static extern int32 QContextMenuEvent_Y(void* c_this);
	[LinkName("QContextMenuEvent_GlobalX")]
	public static extern int32 QContextMenuEvent_GlobalX(void* c_this);
	[LinkName("QContextMenuEvent_GlobalY")]
	public static extern int32 QContextMenuEvent_GlobalY(void* c_this);
	[LinkName("QContextMenuEvent_Pos")]
	public static extern QPoint QContextMenuEvent_Pos(void* c_this);
	[LinkName("QContextMenuEvent_GlobalPos")]
	public static extern QPoint QContextMenuEvent_GlobalPos(void* c_this);
	[LinkName("QContextMenuEvent_Reason")]
	public static extern int64 QContextMenuEvent_Reason(void* c_this);
}
public struct QInputMethodEvent
{
	[LinkName("QInputMethodEvent_new")]
	public static extern void* QInputMethodEvent_new();
	[LinkName("QInputMethodEvent_new2")]
	public static extern void* QInputMethodEvent_new2(char8[] preeditText, QInputMethodEvent__Attribute[] attributes);
	[LinkName("QInputMethodEvent_Clone")]
	public static extern QInputMethodEvent QInputMethodEvent_Clone(void* c_this);
	[LinkName("QInputMethodEvent_SetCommitString")]
	public static extern void QInputMethodEvent_SetCommitString(void* c_this, char8[] commitString);
	[LinkName("QInputMethodEvent_Attributes")]
	public static extern QInputMethodEvent__Attribute[] QInputMethodEvent_Attributes(void* c_this);
	[LinkName("QInputMethodEvent_PreeditString")]
	public static extern char8[] QInputMethodEvent_PreeditString(void* c_this);
	[LinkName("QInputMethodEvent_CommitString")]
	public static extern char8[] QInputMethodEvent_CommitString(void* c_this);
	[LinkName("QInputMethodEvent_ReplacementStart")]
	public static extern int32 QInputMethodEvent_ReplacementStart(void* c_this);
	[LinkName("QInputMethodEvent_ReplacementLength")]
	public static extern int32 QInputMethodEvent_ReplacementLength(void* c_this);
	[LinkName("QInputMethodEvent_SetCommitString2")]
	public static extern void QInputMethodEvent_SetCommitString2(void* c_this, char8[] commitString, int32 replaceFrom);
	[LinkName("QInputMethodEvent_SetCommitString3")]
	public static extern void QInputMethodEvent_SetCommitString3(void* c_this, char8[] commitString, int32 replaceFrom, int32 replaceLength);
}
public struct QInputMethodQueryEvent
{
	[LinkName("QInputMethodQueryEvent_new")]
	public static extern void* QInputMethodQueryEvent_new(int64 queries);
	[LinkName("QInputMethodQueryEvent_Clone")]
	public static extern QInputMethodQueryEvent QInputMethodQueryEvent_Clone(void* c_this);
	[LinkName("QInputMethodQueryEvent_Queries")]
	public static extern int64 QInputMethodQueryEvent_Queries(void* c_this);
	[LinkName("QInputMethodQueryEvent_SetValue")]
	public static extern void QInputMethodQueryEvent_SetValue(void* c_this, int64 query, QVariant value);
	[LinkName("QInputMethodQueryEvent_Value")]
	public static extern QVariant QInputMethodQueryEvent_Value(void* c_this, int64 query);
}
public struct QDropEvent
{
	[LinkName("QDropEvent_new")]
	public static extern void* QDropEvent_new(QPointF pos, int64 actions, QMimeData data, int64 buttons, int64 modifiers);
	[LinkName("QDropEvent_new2")]
	public static extern void* QDropEvent_new2(QPointF pos, int64 actions, QMimeData data, int64 buttons, int64 modifiers, int64 typeVal);
	[LinkName("QDropEvent_Clone")]
	public static extern QDropEvent QDropEvent_Clone(void* c_this);
	[LinkName("QDropEvent_Pos")]
	public static extern QPoint QDropEvent_Pos(void* c_this);
	[LinkName("QDropEvent_PosF")]
	public static extern QPointF QDropEvent_PosF(void* c_this);
	[LinkName("QDropEvent_MouseButtons")]
	public static extern int64 QDropEvent_MouseButtons(void* c_this);
	[LinkName("QDropEvent_KeyboardModifiers")]
	public static extern int64 QDropEvent_KeyboardModifiers(void* c_this);
	[LinkName("QDropEvent_Position")]
	public static extern QPointF QDropEvent_Position(void* c_this);
	[LinkName("QDropEvent_Buttons")]
	public static extern int64 QDropEvent_Buttons(void* c_this);
	[LinkName("QDropEvent_Modifiers")]
	public static extern int64 QDropEvent_Modifiers(void* c_this);
	[LinkName("QDropEvent_PossibleActions")]
	public static extern int64 QDropEvent_PossibleActions(void* c_this);
	[LinkName("QDropEvent_ProposedAction")]
	public static extern int64 QDropEvent_ProposedAction(void* c_this);
	[LinkName("QDropEvent_AcceptProposedAction")]
	public static extern void QDropEvent_AcceptProposedAction(void* c_this);
	[LinkName("QDropEvent_DropAction")]
	public static extern int64 QDropEvent_DropAction(void* c_this);
	[LinkName("QDropEvent_SetDropAction")]
	public static extern void QDropEvent_SetDropAction(void* c_this, int64 action);
	[LinkName("QDropEvent_Source")]
	public static extern QObject QDropEvent_Source(void* c_this);
	[LinkName("QDropEvent_MimeData")]
	public static extern QMimeData QDropEvent_MimeData(void* c_this);
}
public struct QDragMoveEvent
{
	[LinkName("QDragMoveEvent_new")]
	public static extern void* QDragMoveEvent_new(QPoint pos, int64 actions, QMimeData data, int64 buttons, int64 modifiers);
	[LinkName("QDragMoveEvent_new2")]
	public static extern void* QDragMoveEvent_new2(QPoint pos, int64 actions, QMimeData data, int64 buttons, int64 modifiers, int64 typeVal);
	[LinkName("QDragMoveEvent_Clone")]
	public static extern QDragMoveEvent QDragMoveEvent_Clone(void* c_this);
	[LinkName("QDragMoveEvent_AnswerRect")]
	public static extern QRect QDragMoveEvent_AnswerRect(void* c_this);
	[LinkName("QDragMoveEvent_Accept")]
	public static extern void QDragMoveEvent_Accept(void* c_this);
	[LinkName("QDragMoveEvent_Ignore")]
	public static extern void QDragMoveEvent_Ignore(void* c_this);
	[LinkName("QDragMoveEvent_AcceptWithQRect")]
	public static extern void QDragMoveEvent_AcceptWithQRect(void* c_this, QRect r);
	[LinkName("QDragMoveEvent_IgnoreWithQRect")]
	public static extern void QDragMoveEvent_IgnoreWithQRect(void* c_this, QRect r);
}
public struct QDragEnterEvent
{
	[LinkName("QDragEnterEvent_new")]
	public static extern void* QDragEnterEvent_new(QPoint pos, int64 actions, QMimeData data, int64 buttons, int64 modifiers);
	[LinkName("QDragEnterEvent_Clone")]
	public static extern QDragEnterEvent QDragEnterEvent_Clone(void* c_this);
}
public struct QDragLeaveEvent
{
	[LinkName("QDragLeaveEvent_new")]
	public static extern void* QDragLeaveEvent_new();
	[LinkName("QDragLeaveEvent_Clone")]
	public static extern QDragLeaveEvent QDragLeaveEvent_Clone(void* c_this);
}
public struct QHelpEvent
{
	[LinkName("QHelpEvent_new")]
	public static extern void* QHelpEvent_new(int64 typeVal, QPoint pos, QPoint globalPos);
	[LinkName("QHelpEvent_Clone")]
	public static extern QHelpEvent QHelpEvent_Clone(void* c_this);
	[LinkName("QHelpEvent_X")]
	public static extern int32 QHelpEvent_X(void* c_this);
	[LinkName("QHelpEvent_Y")]
	public static extern int32 QHelpEvent_Y(void* c_this);
	[LinkName("QHelpEvent_GlobalX")]
	public static extern int32 QHelpEvent_GlobalX(void* c_this);
	[LinkName("QHelpEvent_GlobalY")]
	public static extern int32 QHelpEvent_GlobalY(void* c_this);
	[LinkName("QHelpEvent_Pos")]
	public static extern QPoint QHelpEvent_Pos(void* c_this);
	[LinkName("QHelpEvent_GlobalPos")]
	public static extern QPoint QHelpEvent_GlobalPos(void* c_this);
}
public struct QStatusTipEvent
{
	[LinkName("QStatusTipEvent_new")]
	public static extern void* QStatusTipEvent_new(char8[] tip);
	[LinkName("QStatusTipEvent_Clone")]
	public static extern QStatusTipEvent QStatusTipEvent_Clone(void* c_this);
	[LinkName("QStatusTipEvent_Tip")]
	public static extern char8[] QStatusTipEvent_Tip(void* c_this);
}
public struct QWhatsThisClickedEvent
{
	[LinkName("QWhatsThisClickedEvent_new")]
	public static extern void* QWhatsThisClickedEvent_new(char8[] href);
	[LinkName("QWhatsThisClickedEvent_Clone")]
	public static extern QWhatsThisClickedEvent QWhatsThisClickedEvent_Clone(void* c_this);
	[LinkName("QWhatsThisClickedEvent_Href")]
	public static extern char8[] QWhatsThisClickedEvent_Href(void* c_this);
}
public struct QActionEvent
{
	[LinkName("QActionEvent_new")]
	public static extern void* QActionEvent_new(int32 typeVal, QAction action);
	[LinkName("QActionEvent_new2")]
	public static extern void* QActionEvent_new2(int32 typeVal, QAction action, QAction before);
	[LinkName("QActionEvent_Clone")]
	public static extern QActionEvent QActionEvent_Clone(void* c_this);
	[LinkName("QActionEvent_Action")]
	public static extern QAction QActionEvent_Action(void* c_this);
	[LinkName("QActionEvent_Before")]
	public static extern QAction QActionEvent_Before(void* c_this);
}
public struct QFileOpenEvent
{
	[LinkName("QFileOpenEvent_new")]
	public static extern void* QFileOpenEvent_new(char8[] file);
	[LinkName("QFileOpenEvent_new2")]
	public static extern void* QFileOpenEvent_new2(QUrl url);
	[LinkName("QFileOpenEvent_Clone")]
	public static extern QFileOpenEvent QFileOpenEvent_Clone(void* c_this);
	[LinkName("QFileOpenEvent_File")]
	public static extern char8[] QFileOpenEvent_File(void* c_this);
	[LinkName("QFileOpenEvent_Url")]
	public static extern QUrl QFileOpenEvent_Url(void* c_this);
	[LinkName("QFileOpenEvent_OpenFile")]
	public static extern bool QFileOpenEvent_OpenFile(void* c_this, QFile file, int64 flags);
}
public struct QToolBarChangeEvent
{
	[LinkName("QToolBarChangeEvent_new")]
	public static extern void* QToolBarChangeEvent_new(bool t);
	[LinkName("QToolBarChangeEvent_Clone")]
	public static extern QToolBarChangeEvent QToolBarChangeEvent_Clone(void* c_this);
	[LinkName("QToolBarChangeEvent_Toggle")]
	public static extern bool QToolBarChangeEvent_Toggle(void* c_this);
}
public struct QShortcutEvent
{
	[LinkName("QShortcutEvent_new")]
	public static extern void* QShortcutEvent_new(QKeySequence key, int32 id);
	[LinkName("QShortcutEvent_new2")]
	public static extern void* QShortcutEvent_new2(QKeySequence key, int32 id, bool ambiguous);
	[LinkName("QShortcutEvent_Clone")]
	public static extern QShortcutEvent QShortcutEvent_Clone(void* c_this);
	[LinkName("QShortcutEvent_Key")]
	public static extern QKeySequence QShortcutEvent_Key(void* c_this);
	[LinkName("QShortcutEvent_ShortcutId")]
	public static extern int32 QShortcutEvent_ShortcutId(void* c_this);
	[LinkName("QShortcutEvent_IsAmbiguous")]
	public static extern bool QShortcutEvent_IsAmbiguous(void* c_this);
}
public struct QWindowStateChangeEvent
{
	[LinkName("QWindowStateChangeEvent_new")]
	public static extern void* QWindowStateChangeEvent_new(int64 oldState);
	[LinkName("QWindowStateChangeEvent_new2")]
	public static extern void* QWindowStateChangeEvent_new2(int64 oldState, bool isOverride);
	[LinkName("QWindowStateChangeEvent_Clone")]
	public static extern QWindowStateChangeEvent QWindowStateChangeEvent_Clone(void* c_this);
	[LinkName("QWindowStateChangeEvent_OldState")]
	public static extern int64 QWindowStateChangeEvent_OldState(void* c_this);
	[LinkName("QWindowStateChangeEvent_IsOverride")]
	public static extern bool QWindowStateChangeEvent_IsOverride(void* c_this);
}
public struct QTouchEvent
{
	[LinkName("QTouchEvent_new")]
	public static extern void* QTouchEvent_new(int64 eventType);
	[LinkName("QTouchEvent_new2")]
	public static extern void* QTouchEvent_new2(int64 eventType, QPointingDevice device, int64 modifiers, int64 touchPointStates);
	[LinkName("QTouchEvent_new3")]
	public static extern void* QTouchEvent_new3(int64 eventType, QPointingDevice device);
	[LinkName("QTouchEvent_new4")]
	public static extern void* QTouchEvent_new4(int64 eventType, QPointingDevice device, int64 modifiers);
	[LinkName("QTouchEvent_new5")]
	public static extern void* QTouchEvent_new5(int64 eventType, QPointingDevice device, int64 modifiers, QEventPoint[] touchPoints);
	[LinkName("QTouchEvent_new6")]
	public static extern void* QTouchEvent_new6(int64 eventType, QPointingDevice device, int64 modifiers, int64 touchPointStates, QEventPoint[] touchPoints);
	[LinkName("QTouchEvent_Clone")]
	public static extern QTouchEvent QTouchEvent_Clone(void* c_this);
	[LinkName("QTouchEvent_Target")]
	public static extern QObject QTouchEvent_Target(void* c_this);
	[LinkName("QTouchEvent_TouchPointStates")]
	public static extern int64 QTouchEvent_TouchPointStates(void* c_this);
	[LinkName("QTouchEvent_TouchPoints")]
	public static extern QEventPoint[] QTouchEvent_TouchPoints(void* c_this);
	[LinkName("QTouchEvent_IsBeginEvent")]
	public static extern bool QTouchEvent_IsBeginEvent(void* c_this);
	[LinkName("QTouchEvent_IsUpdateEvent")]
	public static extern bool QTouchEvent_IsUpdateEvent(void* c_this);
	[LinkName("QTouchEvent_IsEndEvent")]
	public static extern bool QTouchEvent_IsEndEvent(void* c_this);
}
public struct QScrollPrepareEvent
{
	[LinkName("QScrollPrepareEvent_new")]
	public static extern void* QScrollPrepareEvent_new(QPointF startPos);
	[LinkName("QScrollPrepareEvent_Clone")]
	public static extern QScrollPrepareEvent QScrollPrepareEvent_Clone(void* c_this);
	[LinkName("QScrollPrepareEvent_StartPos")]
	public static extern QPointF QScrollPrepareEvent_StartPos(void* c_this);
	[LinkName("QScrollPrepareEvent_ViewportSize")]
	public static extern QSizeF QScrollPrepareEvent_ViewportSize(void* c_this);
	[LinkName("QScrollPrepareEvent_ContentPosRange")]
	public static extern QRectF QScrollPrepareEvent_ContentPosRange(void* c_this);
	[LinkName("QScrollPrepareEvent_ContentPos")]
	public static extern QPointF QScrollPrepareEvent_ContentPos(void* c_this);
	[LinkName("QScrollPrepareEvent_SetViewportSize")]
	public static extern void QScrollPrepareEvent_SetViewportSize(void* c_this, QSizeF size);
	[LinkName("QScrollPrepareEvent_SetContentPosRange")]
	public static extern void QScrollPrepareEvent_SetContentPosRange(void* c_this, QRectF rect);
	[LinkName("QScrollPrepareEvent_SetContentPos")]
	public static extern void QScrollPrepareEvent_SetContentPos(void* c_this, QPointF pos);
}
public struct QScrollEvent
{
	[LinkName("QScrollEvent_new")]
	public static extern void* QScrollEvent_new(QPointF contentPos, QPointF overshoot, int64 scrollState);
	[LinkName("QScrollEvent_Clone")]
	public static extern QScrollEvent QScrollEvent_Clone(void* c_this);
	[LinkName("QScrollEvent_ContentPos")]
	public static extern QPointF QScrollEvent_ContentPos(void* c_this);
	[LinkName("QScrollEvent_OvershootDistance")]
	public static extern QPointF QScrollEvent_OvershootDistance(void* c_this);
	[LinkName("QScrollEvent_ScrollState")]
	public static extern int64 QScrollEvent_ScrollState(void* c_this);
}
public struct QScreenOrientationChangeEvent
{
	[LinkName("QScreenOrientationChangeEvent_new")]
	public static extern void* QScreenOrientationChangeEvent_new(QScreen screen, int64 orientation);
	[LinkName("QScreenOrientationChangeEvent_Clone")]
	public static extern QScreenOrientationChangeEvent QScreenOrientationChangeEvent_Clone(void* c_this);
	[LinkName("QScreenOrientationChangeEvent_Screen")]
	public static extern QScreen QScreenOrientationChangeEvent_Screen(void* c_this);
	[LinkName("QScreenOrientationChangeEvent_Orientation")]
	public static extern int64 QScreenOrientationChangeEvent_Orientation(void* c_this);
}
public struct QApplicationStateChangeEvent
{
	[LinkName("QApplicationStateChangeEvent_new")]
	public static extern void* QApplicationStateChangeEvent_new(int64 state);
	[LinkName("QApplicationStateChangeEvent_Clone")]
	public static extern QApplicationStateChangeEvent QApplicationStateChangeEvent_Clone(void* c_this);
	[LinkName("QApplicationStateChangeEvent_ApplicationState")]
	public static extern int64 QApplicationStateChangeEvent_ApplicationState(void* c_this);
}
public struct QInputMethodEvent__Attribute
{
	[LinkName("QInputMethodEvent__Attribute_new")]
	public static extern void* QInputMethodEvent__Attribute_new(int64 typ, int32 s, int32 l, QVariant val);
	[LinkName("QInputMethodEvent__Attribute_new2")]
	public static extern void* QInputMethodEvent__Attribute_new2(int64 typ, int32 s, int32 l);
	[LinkName("QInputMethodEvent__Attribute_new3")]
	public static extern void* QInputMethodEvent__Attribute_new3(QInputMethodEvent__Attribute param1);
	[LinkName("QInputMethodEvent__Attribute_OperatorAssign")]
	public static extern void QInputMethodEvent__Attribute_OperatorAssign(void* c_this, QInputMethodEvent__Attribute param1);
}