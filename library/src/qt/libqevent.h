#pragma once
#ifndef SRC_QTC_LIBQEVENT_H
#define SRC_QTC_LIBQEVENT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QInputMethodEvent__Attribute)
typedef QInputMethodEvent::Attribute QInputMethodEvent__Attribute;
#endif
#else
typedef struct QAction QAction;
typedef struct QActionEvent QActionEvent;
typedef struct QApplicationStateChangeEvent QApplicationStateChangeEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
typedef struct QEvent QEvent;
typedef struct QEventPoint QEventPoint;
typedef struct QExposeEvent QExposeEvent;
typedef struct QFile QFile;
typedef struct QFileOpenEvent QFileOpenEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHelpEvent QHelpEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QHoverEvent QHoverEvent;
typedef struct QIconDragEvent QIconDragEvent;
typedef struct QInputDevice QInputDevice;
typedef struct QInputEvent QInputEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QInputMethodEvent__Attribute QInputMethodEvent__Attribute;
typedef struct QInputMethodQueryEvent QInputMethodQueryEvent;
typedef struct QKeyCombination QKeyCombination;
typedef struct QKeyEvent QKeyEvent;
typedef struct QKeySequence QKeySequence;
typedef struct QMimeData QMimeData;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QNativeGestureEvent QNativeGestureEvent;
typedef struct QObject QObject;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPlatformSurfaceEvent QPlatformSurfaceEvent;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QPointerEvent QPointerEvent;
typedef struct QPointingDevice QPointingDevice;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QRegion QRegion;
typedef struct QResizeEvent QResizeEvent;
typedef struct QScreen QScreen;
typedef struct QScreenOrientationChangeEvent QScreenOrientationChangeEvent;
typedef struct QScrollEvent QScrollEvent;
typedef struct QScrollPrepareEvent QScrollPrepareEvent;
typedef struct QShortcutEvent QShortcutEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSinglePointEvent QSinglePointEvent;
typedef struct QSize QSize;
typedef struct QSizeF QSizeF;
typedef struct QStatusTipEvent QStatusTipEvent;
typedef struct QTabletEvent QTabletEvent;
typedef struct QToolBarChangeEvent QToolBarChangeEvent;
typedef struct QTouchEvent QTouchEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
typedef struct QWhatsThisClickedEvent QWhatsThisClickedEvent;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWindowStateChangeEvent QWindowStateChangeEvent;
#endif

#ifdef __cplusplus
typedef QContextMenuEvent::Reason Reason;                         // C++ enum
typedef QInputMethodEvent::AttributeType AttributeType;           // C++ enum
typedef QPlatformSurfaceEvent::SurfaceEventType SurfaceEventType; // C++ enum
typedef QScrollEvent::ScrollState ScrollState;                    // C++ enum
#else
typedef QEventPoint* TouchPoint; // C ABI QFlags
typedef int AttributeType;       // C ABI enum
typedef int Reason;              // C ABI enum
typedef int ScrollState;         // C ABI enum
typedef int SurfaceEventType;    // C ABI enum
typedef void QtGadgetHelper;     // C ABI QFlags
#endif

QTLIBC_API QInputEvent* QInputEvent_new(int typeVal, QInputDevice* m_dev);
QTLIBC_API QInputEvent* QInputEvent_new2(int typeVal, QInputDevice* m_dev, int modifiers);
QTLIBC_API QInputEvent* QInputEvent_Clone(const QInputEvent* self);
QTLIBC_API void QInputEvent_OnClone(const QInputEvent* self, intptr_t slot);
QTLIBC_API QInputEvent* QInputEvent_QBaseClone(const QInputEvent* self);
QTLIBC_API QInputDevice* QInputEvent_Device(const QInputEvent* self);
QTLIBC_API int QInputEvent_DeviceType(const QInputEvent* self);
QTLIBC_API int QInputEvent_Modifiers(const QInputEvent* self);
QTLIBC_API void QInputEvent_SetModifiers(QInputEvent* self, int modifiers);
QTLIBC_API unsigned long long QInputEvent_Timestamp(const QInputEvent* self);
QTLIBC_API void QInputEvent_SetTimestamp(QInputEvent* self, unsigned long long timestamp);
QTLIBC_API void QInputEvent_OnSetTimestamp(QInputEvent* self, intptr_t slot);
QTLIBC_API void QInputEvent_QBaseSetTimestamp(QInputEvent* self, unsigned long long timestamp);
QTLIBC_API void QInputEvent_SetAccepted(QInputEvent* self, bool accepted);
QTLIBC_API void QInputEvent_OnSetAccepted(QInputEvent* self, intptr_t slot);
QTLIBC_API void QInputEvent_QBaseSetAccepted(QInputEvent* self, bool accepted);
QTLIBC_API void QInputEvent_Delete(QInputEvent* self);

QTLIBC_API QPointerEvent* QPointerEvent_new(int typeVal, QPointingDevice* dev);
QTLIBC_API QPointerEvent* QPointerEvent_new2(int typeVal, QPointingDevice* dev, int modifiers);
QTLIBC_API QPointerEvent* QPointerEvent_new3(int typeVal, QPointingDevice* dev, int modifiers, libqt_list /* of QEventPoint* */ points);
QTLIBC_API QPointerEvent* QPointerEvent_Clone(const QPointerEvent* self);
QTLIBC_API void QPointerEvent_OnClone(const QPointerEvent* self, intptr_t slot);
QTLIBC_API QPointerEvent* QPointerEvent_QBaseClone(const QPointerEvent* self);
QTLIBC_API QPointingDevice* QPointerEvent_PointingDevice(const QPointerEvent* self);
QTLIBC_API int QPointerEvent_PointerType(const QPointerEvent* self);
QTLIBC_API void QPointerEvent_SetTimestamp(QPointerEvent* self, unsigned long long timestamp);
QTLIBC_API void QPointerEvent_OnSetTimestamp(QPointerEvent* self, intptr_t slot);
QTLIBC_API void QPointerEvent_QBaseSetTimestamp(QPointerEvent* self, unsigned long long timestamp);
QTLIBC_API ptrdiff_t QPointerEvent_PointCount(const QPointerEvent* self);
QTLIBC_API QEventPoint* QPointerEvent_Point(QPointerEvent* self, ptrdiff_t i);
QTLIBC_API libqt_list /* of QEventPoint* */ QPointerEvent_Points(const QPointerEvent* self);
QTLIBC_API QEventPoint* QPointerEvent_PointById(QPointerEvent* self, int id);
QTLIBC_API bool QPointerEvent_AllPointsGrabbed(const QPointerEvent* self);
QTLIBC_API bool QPointerEvent_IsBeginEvent(const QPointerEvent* self);
QTLIBC_API void QPointerEvent_OnIsBeginEvent(const QPointerEvent* self, intptr_t slot);
QTLIBC_API bool QPointerEvent_QBaseIsBeginEvent(const QPointerEvent* self);
QTLIBC_API bool QPointerEvent_IsUpdateEvent(const QPointerEvent* self);
QTLIBC_API void QPointerEvent_OnIsUpdateEvent(const QPointerEvent* self, intptr_t slot);
QTLIBC_API bool QPointerEvent_QBaseIsUpdateEvent(const QPointerEvent* self);
QTLIBC_API bool QPointerEvent_IsEndEvent(const QPointerEvent* self);
QTLIBC_API void QPointerEvent_OnIsEndEvent(const QPointerEvent* self, intptr_t slot);
QTLIBC_API bool QPointerEvent_QBaseIsEndEvent(const QPointerEvent* self);
QTLIBC_API bool QPointerEvent_AllPointsAccepted(const QPointerEvent* self);
QTLIBC_API void QPointerEvent_SetAccepted(QPointerEvent* self, bool accepted);
QTLIBC_API void QPointerEvent_OnSetAccepted(QPointerEvent* self, intptr_t slot);
QTLIBC_API void QPointerEvent_QBaseSetAccepted(QPointerEvent* self, bool accepted);
QTLIBC_API QObject* QPointerEvent_ExclusiveGrabber(const QPointerEvent* self, QEventPoint* point);
QTLIBC_API void QPointerEvent_SetExclusiveGrabber(QPointerEvent* self, QEventPoint* point, QObject* exclusiveGrabber);
QTLIBC_API void QPointerEvent_ClearPassiveGrabbers(QPointerEvent* self, QEventPoint* point);
QTLIBC_API bool QPointerEvent_AddPassiveGrabber(QPointerEvent* self, QEventPoint* point, QObject* grabber);
QTLIBC_API bool QPointerEvent_RemovePassiveGrabber(QPointerEvent* self, QEventPoint* point, QObject* grabber);
QTLIBC_API void QPointerEvent_Delete(QPointerEvent* self);

QTLIBC_API int QSinglePointEvent_Button(const QSinglePointEvent* self);
QTLIBC_API int QSinglePointEvent_Buttons(const QSinglePointEvent* self);
QTLIBC_API QPointF* QSinglePointEvent_Position(const QSinglePointEvent* self);
QTLIBC_API QPointF* QSinglePointEvent_ScenePosition(const QSinglePointEvent* self);
QTLIBC_API QPointF* QSinglePointEvent_GlobalPosition(const QSinglePointEvent* self);
QTLIBC_API bool QSinglePointEvent_IsBeginEvent(const QSinglePointEvent* self);
QTLIBC_API bool QSinglePointEvent_IsUpdateEvent(const QSinglePointEvent* self);
QTLIBC_API bool QSinglePointEvent_IsEndEvent(const QSinglePointEvent* self);
QTLIBC_API QObject* QSinglePointEvent_ExclusivePointGrabber(const QSinglePointEvent* self);
QTLIBC_API void QSinglePointEvent_SetExclusivePointGrabber(QSinglePointEvent* self, QObject* exclusiveGrabber);
QTLIBC_API void QSinglePointEvent_SetTimestamp(QSinglePointEvent* self, unsigned long long timestamp);
QTLIBC_API void QSinglePointEvent_SetAccepted(QSinglePointEvent* self, bool accepted);
QTLIBC_API void QSinglePointEvent_Delete(QSinglePointEvent* self);

QTLIBC_API QEnterEvent* QEnterEvent_new(QPointF* localPos, QPointF* scenePos, QPointF* globalPos);
QTLIBC_API QEnterEvent* QEnterEvent_new2(QPointF* localPos, QPointF* scenePos, QPointF* globalPos, QPointingDevice* device);
QTLIBC_API QEnterEvent* QEnterEvent_Clone(const QEnterEvent* self);
QTLIBC_API void QEnterEvent_OnClone(const QEnterEvent* self, intptr_t slot);
QTLIBC_API QEnterEvent* QEnterEvent_QBaseClone(const QEnterEvent* self);
QTLIBC_API QPoint* QEnterEvent_Pos(const QEnterEvent* self);
QTLIBC_API QPoint* QEnterEvent_GlobalPos(const QEnterEvent* self);
QTLIBC_API int QEnterEvent_X(const QEnterEvent* self);
QTLIBC_API int QEnterEvent_Y(const QEnterEvent* self);
QTLIBC_API int QEnterEvent_GlobalX(const QEnterEvent* self);
QTLIBC_API int QEnterEvent_GlobalY(const QEnterEvent* self);
QTLIBC_API QPointF* QEnterEvent_LocalPos(const QEnterEvent* self);
QTLIBC_API QPointF* QEnterEvent_WindowPos(const QEnterEvent* self);
QTLIBC_API QPointF* QEnterEvent_ScreenPos(const QEnterEvent* self);
QTLIBC_API bool QEnterEvent_IsBeginEvent(const QEnterEvent* self);
QTLIBC_API void QEnterEvent_OnIsBeginEvent(const QEnterEvent* self, intptr_t slot);
QTLIBC_API bool QEnterEvent_QBaseIsBeginEvent(const QEnterEvent* self);
QTLIBC_API bool QEnterEvent_IsUpdateEvent(const QEnterEvent* self);
QTLIBC_API void QEnterEvent_OnIsUpdateEvent(const QEnterEvent* self, intptr_t slot);
QTLIBC_API bool QEnterEvent_QBaseIsUpdateEvent(const QEnterEvent* self);
QTLIBC_API bool QEnterEvent_IsEndEvent(const QEnterEvent* self);
QTLIBC_API void QEnterEvent_OnIsEndEvent(const QEnterEvent* self, intptr_t slot);
QTLIBC_API bool QEnterEvent_QBaseIsEndEvent(const QEnterEvent* self);
QTLIBC_API void QEnterEvent_SetTimestamp(QEnterEvent* self, unsigned long long timestamp);
QTLIBC_API void QEnterEvent_OnSetTimestamp(QEnterEvent* self, intptr_t slot);
QTLIBC_API void QEnterEvent_QBaseSetTimestamp(QEnterEvent* self, unsigned long long timestamp);
QTLIBC_API void QEnterEvent_SetAccepted(QEnterEvent* self, bool accepted);
QTLIBC_API void QEnterEvent_OnSetAccepted(QEnterEvent* self, intptr_t slot);
QTLIBC_API void QEnterEvent_QBaseSetAccepted(QEnterEvent* self, bool accepted);
QTLIBC_API void QEnterEvent_Delete(QEnterEvent* self);

QTLIBC_API QMouseEvent* QMouseEvent_new(int typeVal, QPointF* localPos, int button, int buttons, int modifiers);
QTLIBC_API QMouseEvent* QMouseEvent_new2(int typeVal, QPointF* localPos, QPointF* globalPos, int button, int buttons, int modifiers);
QTLIBC_API QMouseEvent* QMouseEvent_new3(int typeVal, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers);
QTLIBC_API QMouseEvent* QMouseEvent_new4(int typeVal, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers, int source);
QTLIBC_API QMouseEvent* QMouseEvent_new5(int typeVal, QPointF* localPos, int button, int buttons, int modifiers, QPointingDevice* device);
QTLIBC_API QMouseEvent* QMouseEvent_new6(int typeVal, QPointF* localPos, QPointF* globalPos, int button, int buttons, int modifiers, QPointingDevice* device);
QTLIBC_API QMouseEvent* QMouseEvent_new7(int typeVal, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers, QPointingDevice* device);
QTLIBC_API QMouseEvent* QMouseEvent_new8(int typeVal, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers, int source, QPointingDevice* device);
QTLIBC_API QMouseEvent* QMouseEvent_Clone(const QMouseEvent* self);
QTLIBC_API void QMouseEvent_OnClone(const QMouseEvent* self, intptr_t slot);
QTLIBC_API QMouseEvent* QMouseEvent_QBaseClone(const QMouseEvent* self);
QTLIBC_API QPoint* QMouseEvent_Pos(const QMouseEvent* self);
QTLIBC_API QPoint* QMouseEvent_GlobalPos(const QMouseEvent* self);
QTLIBC_API int QMouseEvent_X(const QMouseEvent* self);
QTLIBC_API int QMouseEvent_Y(const QMouseEvent* self);
QTLIBC_API int QMouseEvent_GlobalX(const QMouseEvent* self);
QTLIBC_API int QMouseEvent_GlobalY(const QMouseEvent* self);
QTLIBC_API QPointF* QMouseEvent_LocalPos(const QMouseEvent* self);
QTLIBC_API QPointF* QMouseEvent_WindowPos(const QMouseEvent* self);
QTLIBC_API QPointF* QMouseEvent_ScreenPos(const QMouseEvent* self);
QTLIBC_API int QMouseEvent_Source(const QMouseEvent* self);
QTLIBC_API int QMouseEvent_Flags(const QMouseEvent* self);
QTLIBC_API bool QMouseEvent_IsBeginEvent(const QMouseEvent* self);
QTLIBC_API void QMouseEvent_OnIsBeginEvent(const QMouseEvent* self, intptr_t slot);
QTLIBC_API bool QMouseEvent_QBaseIsBeginEvent(const QMouseEvent* self);
QTLIBC_API bool QMouseEvent_IsUpdateEvent(const QMouseEvent* self);
QTLIBC_API void QMouseEvent_OnIsUpdateEvent(const QMouseEvent* self, intptr_t slot);
QTLIBC_API bool QMouseEvent_QBaseIsUpdateEvent(const QMouseEvent* self);
QTLIBC_API bool QMouseEvent_IsEndEvent(const QMouseEvent* self);
QTLIBC_API void QMouseEvent_OnIsEndEvent(const QMouseEvent* self, intptr_t slot);
QTLIBC_API bool QMouseEvent_QBaseIsEndEvent(const QMouseEvent* self);
QTLIBC_API void QMouseEvent_SetTimestamp(QMouseEvent* self, unsigned long long timestamp);
QTLIBC_API void QMouseEvent_OnSetTimestamp(QMouseEvent* self, intptr_t slot);
QTLIBC_API void QMouseEvent_QBaseSetTimestamp(QMouseEvent* self, unsigned long long timestamp);
QTLIBC_API void QMouseEvent_SetAccepted(QMouseEvent* self, bool accepted);
QTLIBC_API void QMouseEvent_OnSetAccepted(QMouseEvent* self, intptr_t slot);
QTLIBC_API void QMouseEvent_QBaseSetAccepted(QMouseEvent* self, bool accepted);
QTLIBC_API void QMouseEvent_Delete(QMouseEvent* self);

QTLIBC_API QHoverEvent* QHoverEvent_new(int typeVal, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos);
QTLIBC_API QHoverEvent* QHoverEvent_new2(int typeVal, QPointF* pos, QPointF* oldPos);
QTLIBC_API QHoverEvent* QHoverEvent_new3(int typeVal, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos, int modifiers);
QTLIBC_API QHoverEvent* QHoverEvent_new4(int typeVal, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos, int modifiers, QPointingDevice* device);
QTLIBC_API QHoverEvent* QHoverEvent_new5(int typeVal, QPointF* pos, QPointF* oldPos, int modifiers);
QTLIBC_API QHoverEvent* QHoverEvent_new6(int typeVal, QPointF* pos, QPointF* oldPos, int modifiers, QPointingDevice* device);
QTLIBC_API QHoverEvent* QHoverEvent_Clone(const QHoverEvent* self);
QTLIBC_API void QHoverEvent_OnClone(const QHoverEvent* self, intptr_t slot);
QTLIBC_API QHoverEvent* QHoverEvent_QBaseClone(const QHoverEvent* self);
QTLIBC_API QPoint* QHoverEvent_Pos(const QHoverEvent* self);
QTLIBC_API QPointF* QHoverEvent_PosF(const QHoverEvent* self);
QTLIBC_API bool QHoverEvent_IsUpdateEvent(const QHoverEvent* self);
QTLIBC_API void QHoverEvent_OnIsUpdateEvent(const QHoverEvent* self, intptr_t slot);
QTLIBC_API bool QHoverEvent_QBaseIsUpdateEvent(const QHoverEvent* self);
QTLIBC_API QPoint* QHoverEvent_OldPos(const QHoverEvent* self);
QTLIBC_API QPointF* QHoverEvent_OldPosF(const QHoverEvent* self);
QTLIBC_API bool QHoverEvent_IsBeginEvent(const QHoverEvent* self);
QTLIBC_API void QHoverEvent_OnIsBeginEvent(const QHoverEvent* self, intptr_t slot);
QTLIBC_API bool QHoverEvent_QBaseIsBeginEvent(const QHoverEvent* self);
QTLIBC_API bool QHoverEvent_IsEndEvent(const QHoverEvent* self);
QTLIBC_API void QHoverEvent_OnIsEndEvent(const QHoverEvent* self, intptr_t slot);
QTLIBC_API bool QHoverEvent_QBaseIsEndEvent(const QHoverEvent* self);
QTLIBC_API void QHoverEvent_SetTimestamp(QHoverEvent* self, unsigned long long timestamp);
QTLIBC_API void QHoverEvent_OnSetTimestamp(QHoverEvent* self, intptr_t slot);
QTLIBC_API void QHoverEvent_QBaseSetTimestamp(QHoverEvent* self, unsigned long long timestamp);
QTLIBC_API void QHoverEvent_SetAccepted(QHoverEvent* self, bool accepted);
QTLIBC_API void QHoverEvent_OnSetAccepted(QHoverEvent* self, intptr_t slot);
QTLIBC_API void QHoverEvent_QBaseSetAccepted(QHoverEvent* self, bool accepted);
QTLIBC_API void QHoverEvent_Delete(QHoverEvent* self);

QTLIBC_API QWheelEvent* QWheelEvent_new(QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted);
QTLIBC_API QWheelEvent* QWheelEvent_new2(QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted, int source);
QTLIBC_API QWheelEvent* QWheelEvent_new3(QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted, int source, QPointingDevice* device);
QTLIBC_API QWheelEvent* QWheelEvent_Clone(const QWheelEvent* self);
QTLIBC_API void QWheelEvent_OnClone(const QWheelEvent* self, intptr_t slot);
QTLIBC_API QWheelEvent* QWheelEvent_QBaseClone(const QWheelEvent* self);
QTLIBC_API QPoint* QWheelEvent_PixelDelta(const QWheelEvent* self);
QTLIBC_API QPoint* QWheelEvent_AngleDelta(const QWheelEvent* self);
QTLIBC_API int QWheelEvent_Phase(const QWheelEvent* self);
QTLIBC_API bool QWheelEvent_Inverted(const QWheelEvent* self);
QTLIBC_API bool QWheelEvent_IsInverted(const QWheelEvent* self);
QTLIBC_API bool QWheelEvent_HasPixelDelta(const QWheelEvent* self);
QTLIBC_API bool QWheelEvent_IsBeginEvent(const QWheelEvent* self);
QTLIBC_API void QWheelEvent_OnIsBeginEvent(const QWheelEvent* self, intptr_t slot);
QTLIBC_API bool QWheelEvent_QBaseIsBeginEvent(const QWheelEvent* self);
QTLIBC_API bool QWheelEvent_IsUpdateEvent(const QWheelEvent* self);
QTLIBC_API void QWheelEvent_OnIsUpdateEvent(const QWheelEvent* self, intptr_t slot);
QTLIBC_API bool QWheelEvent_QBaseIsUpdateEvent(const QWheelEvent* self);
QTLIBC_API bool QWheelEvent_IsEndEvent(const QWheelEvent* self);
QTLIBC_API void QWheelEvent_OnIsEndEvent(const QWheelEvent* self, intptr_t slot);
QTLIBC_API bool QWheelEvent_QBaseIsEndEvent(const QWheelEvent* self);
QTLIBC_API int QWheelEvent_Source(const QWheelEvent* self);
QTLIBC_API void QWheelEvent_SetTimestamp(QWheelEvent* self, unsigned long long timestamp);
QTLIBC_API void QWheelEvent_OnSetTimestamp(QWheelEvent* self, intptr_t slot);
QTLIBC_API void QWheelEvent_QBaseSetTimestamp(QWheelEvent* self, unsigned long long timestamp);
QTLIBC_API void QWheelEvent_SetAccepted(QWheelEvent* self, bool accepted);
QTLIBC_API void QWheelEvent_OnSetAccepted(QWheelEvent* self, intptr_t slot);
QTLIBC_API void QWheelEvent_QBaseSetAccepted(QWheelEvent* self, bool accepted);
QTLIBC_API void QWheelEvent_Delete(QWheelEvent* self);

QTLIBC_API QTabletEvent* QTabletEvent_new(int t, QPointingDevice* device, QPointF* pos, QPointF* globalPos, double pressure, float xTilt, float yTilt, float tangentialPressure, double rotation, float z, int keyState, int button, int buttons);
QTLIBC_API QTabletEvent* QTabletEvent_Clone(const QTabletEvent* self);
QTLIBC_API void QTabletEvent_OnClone(const QTabletEvent* self, intptr_t slot);
QTLIBC_API QTabletEvent* QTabletEvent_QBaseClone(const QTabletEvent* self);
QTLIBC_API QPoint* QTabletEvent_Pos(const QTabletEvent* self);
QTLIBC_API QPoint* QTabletEvent_GlobalPos(const QTabletEvent* self);
QTLIBC_API QPointF* QTabletEvent_PosF(const QTabletEvent* self);
QTLIBC_API QPointF* QTabletEvent_GlobalPosF(const QTabletEvent* self);
QTLIBC_API int QTabletEvent_X(const QTabletEvent* self);
QTLIBC_API int QTabletEvent_Y(const QTabletEvent* self);
QTLIBC_API int QTabletEvent_GlobalX(const QTabletEvent* self);
QTLIBC_API int QTabletEvent_GlobalY(const QTabletEvent* self);
QTLIBC_API double QTabletEvent_HiResGlobalX(const QTabletEvent* self);
QTLIBC_API double QTabletEvent_HiResGlobalY(const QTabletEvent* self);
QTLIBC_API long long QTabletEvent_UniqueId(const QTabletEvent* self);
QTLIBC_API double QTabletEvent_Pressure(const QTabletEvent* self);
QTLIBC_API double QTabletEvent_Rotation(const QTabletEvent* self);
QTLIBC_API double QTabletEvent_Z(const QTabletEvent* self);
QTLIBC_API double QTabletEvent_TangentialPressure(const QTabletEvent* self);
QTLIBC_API double QTabletEvent_XTilt(const QTabletEvent* self);
QTLIBC_API double QTabletEvent_YTilt(const QTabletEvent* self);
QTLIBC_API bool QTabletEvent_IsBeginEvent(const QTabletEvent* self);
QTLIBC_API void QTabletEvent_OnIsBeginEvent(const QTabletEvent* self, intptr_t slot);
QTLIBC_API bool QTabletEvent_QBaseIsBeginEvent(const QTabletEvent* self);
QTLIBC_API bool QTabletEvent_IsUpdateEvent(const QTabletEvent* self);
QTLIBC_API void QTabletEvent_OnIsUpdateEvent(const QTabletEvent* self, intptr_t slot);
QTLIBC_API bool QTabletEvent_QBaseIsUpdateEvent(const QTabletEvent* self);
QTLIBC_API bool QTabletEvent_IsEndEvent(const QTabletEvent* self);
QTLIBC_API void QTabletEvent_OnIsEndEvent(const QTabletEvent* self, intptr_t slot);
QTLIBC_API bool QTabletEvent_QBaseIsEndEvent(const QTabletEvent* self);
QTLIBC_API void QTabletEvent_SetTimestamp(QTabletEvent* self, unsigned long long timestamp);
QTLIBC_API void QTabletEvent_OnSetTimestamp(QTabletEvent* self, intptr_t slot);
QTLIBC_API void QTabletEvent_QBaseSetTimestamp(QTabletEvent* self, unsigned long long timestamp);
QTLIBC_API void QTabletEvent_SetAccepted(QTabletEvent* self, bool accepted);
QTLIBC_API void QTabletEvent_OnSetAccepted(QTabletEvent* self, intptr_t slot);
QTLIBC_API void QTabletEvent_QBaseSetAccepted(QTabletEvent* self, bool accepted);
QTLIBC_API void QTabletEvent_Delete(QTabletEvent* self);

QTLIBC_API QNativeGestureEvent* QNativeGestureEvent_new(int typeVal, QPointingDevice* dev, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, unsigned long long sequenceId, unsigned long long intArgument);
QTLIBC_API QNativeGestureEvent* QNativeGestureEvent_new2(int typeVal, QPointingDevice* dev, int fingerCount, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, QPointF* delta);
QTLIBC_API QNativeGestureEvent* QNativeGestureEvent_new3(int typeVal, QPointingDevice* dev, int fingerCount, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, QPointF* delta, unsigned long long sequenceId);
QTLIBC_API QNativeGestureEvent* QNativeGestureEvent_Clone(const QNativeGestureEvent* self);
QTLIBC_API void QNativeGestureEvent_OnClone(const QNativeGestureEvent* self, intptr_t slot);
QTLIBC_API QNativeGestureEvent* QNativeGestureEvent_QBaseClone(const QNativeGestureEvent* self);
QTLIBC_API int QNativeGestureEvent_GestureType(const QNativeGestureEvent* self);
QTLIBC_API int QNativeGestureEvent_FingerCount(const QNativeGestureEvent* self);
QTLIBC_API double QNativeGestureEvent_Value(const QNativeGestureEvent* self);
QTLIBC_API QPointF* QNativeGestureEvent_Delta(const QNativeGestureEvent* self);
QTLIBC_API QPoint* QNativeGestureEvent_Pos(const QNativeGestureEvent* self);
QTLIBC_API QPoint* QNativeGestureEvent_GlobalPos(const QNativeGestureEvent* self);
QTLIBC_API QPointF* QNativeGestureEvent_LocalPos(const QNativeGestureEvent* self);
QTLIBC_API QPointF* QNativeGestureEvent_WindowPos(const QNativeGestureEvent* self);
QTLIBC_API QPointF* QNativeGestureEvent_ScreenPos(const QNativeGestureEvent* self);
QTLIBC_API bool QNativeGestureEvent_IsBeginEvent(const QNativeGestureEvent* self);
QTLIBC_API void QNativeGestureEvent_OnIsBeginEvent(const QNativeGestureEvent* self, intptr_t slot);
QTLIBC_API bool QNativeGestureEvent_QBaseIsBeginEvent(const QNativeGestureEvent* self);
QTLIBC_API bool QNativeGestureEvent_IsUpdateEvent(const QNativeGestureEvent* self);
QTLIBC_API void QNativeGestureEvent_OnIsUpdateEvent(const QNativeGestureEvent* self, intptr_t slot);
QTLIBC_API bool QNativeGestureEvent_QBaseIsUpdateEvent(const QNativeGestureEvent* self);
QTLIBC_API bool QNativeGestureEvent_IsEndEvent(const QNativeGestureEvent* self);
QTLIBC_API void QNativeGestureEvent_OnIsEndEvent(const QNativeGestureEvent* self, intptr_t slot);
QTLIBC_API bool QNativeGestureEvent_QBaseIsEndEvent(const QNativeGestureEvent* self);
QTLIBC_API void QNativeGestureEvent_SetTimestamp(QNativeGestureEvent* self, unsigned long long timestamp);
QTLIBC_API void QNativeGestureEvent_OnSetTimestamp(QNativeGestureEvent* self, intptr_t slot);
QTLIBC_API void QNativeGestureEvent_QBaseSetTimestamp(QNativeGestureEvent* self, unsigned long long timestamp);
QTLIBC_API void QNativeGestureEvent_SetAccepted(QNativeGestureEvent* self, bool accepted);
QTLIBC_API void QNativeGestureEvent_OnSetAccepted(QNativeGestureEvent* self, intptr_t slot);
QTLIBC_API void QNativeGestureEvent_QBaseSetAccepted(QNativeGestureEvent* self, bool accepted);
QTLIBC_API void QNativeGestureEvent_Delete(QNativeGestureEvent* self);

QTLIBC_API QKeyEvent* QKeyEvent_new(int typeVal, int key, int modifiers);
QTLIBC_API QKeyEvent* QKeyEvent_new2(int typeVal, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers);
QTLIBC_API QKeyEvent* QKeyEvent_new3(int typeVal, int key, int modifiers, libqt_string text);
QTLIBC_API QKeyEvent* QKeyEvent_new4(int typeVal, int key, int modifiers, libqt_string text, bool autorep);
QTLIBC_API QKeyEvent* QKeyEvent_new5(int typeVal, int key, int modifiers, libqt_string text, bool autorep, uint16_t count);
QTLIBC_API QKeyEvent* QKeyEvent_new6(int typeVal, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, libqt_string text);
QTLIBC_API QKeyEvent* QKeyEvent_new7(int typeVal, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, libqt_string text, bool autorep);
QTLIBC_API QKeyEvent* QKeyEvent_new8(int typeVal, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, libqt_string text, bool autorep, uint16_t count);
QTLIBC_API QKeyEvent* QKeyEvent_new9(int typeVal, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, libqt_string text, bool autorep, uint16_t count, QInputDevice* device);
QTLIBC_API QKeyEvent* QKeyEvent_Clone(const QKeyEvent* self);
QTLIBC_API void QKeyEvent_OnClone(const QKeyEvent* self, intptr_t slot);
QTLIBC_API QKeyEvent* QKeyEvent_QBaseClone(const QKeyEvent* self);
QTLIBC_API int QKeyEvent_Key(const QKeyEvent* self);
QTLIBC_API bool QKeyEvent_Matches(const QKeyEvent* self, int key);
QTLIBC_API int QKeyEvent_Modifiers(const QKeyEvent* self);
QTLIBC_API QKeyCombination* QKeyEvent_KeyCombination(const QKeyEvent* self);
QTLIBC_API libqt_string QKeyEvent_Text(const QKeyEvent* self);
QTLIBC_API bool QKeyEvent_IsAutoRepeat(const QKeyEvent* self);
QTLIBC_API int QKeyEvent_Count(const QKeyEvent* self);
QTLIBC_API unsigned int QKeyEvent_NativeScanCode(const QKeyEvent* self);
QTLIBC_API unsigned int QKeyEvent_NativeVirtualKey(const QKeyEvent* self);
QTLIBC_API unsigned int QKeyEvent_NativeModifiers(const QKeyEvent* self);
QTLIBC_API void QKeyEvent_SetTimestamp(QKeyEvent* self, unsigned long long timestamp);
QTLIBC_API void QKeyEvent_OnSetTimestamp(QKeyEvent* self, intptr_t slot);
QTLIBC_API void QKeyEvent_QBaseSetTimestamp(QKeyEvent* self, unsigned long long timestamp);
QTLIBC_API void QKeyEvent_SetAccepted(QKeyEvent* self, bool accepted);
QTLIBC_API void QKeyEvent_OnSetAccepted(QKeyEvent* self, intptr_t slot);
QTLIBC_API void QKeyEvent_QBaseSetAccepted(QKeyEvent* self, bool accepted);
QTLIBC_API void QKeyEvent_Delete(QKeyEvent* self);

QTLIBC_API QFocusEvent* QFocusEvent_new(int typeVal);
QTLIBC_API QFocusEvent* QFocusEvent_new2(int typeVal, int reason);
QTLIBC_API QFocusEvent* QFocusEvent_Clone(const QFocusEvent* self);
QTLIBC_API void QFocusEvent_OnClone(const QFocusEvent* self, intptr_t slot);
QTLIBC_API QFocusEvent* QFocusEvent_QBaseClone(const QFocusEvent* self);
QTLIBC_API bool QFocusEvent_GotFocus(const QFocusEvent* self);
QTLIBC_API bool QFocusEvent_LostFocus(const QFocusEvent* self);
QTLIBC_API int QFocusEvent_Reason(const QFocusEvent* self);
QTLIBC_API void QFocusEvent_SetAccepted(QFocusEvent* self, bool accepted);
QTLIBC_API void QFocusEvent_OnSetAccepted(QFocusEvent* self, intptr_t slot);
QTLIBC_API void QFocusEvent_QBaseSetAccepted(QFocusEvent* self, bool accepted);
QTLIBC_API void QFocusEvent_Delete(QFocusEvent* self);

QTLIBC_API QPaintEvent* QPaintEvent_new(QRegion* paintRegion);
QTLIBC_API QPaintEvent* QPaintEvent_new2(QRect* paintRect);
QTLIBC_API QPaintEvent* QPaintEvent_Clone(const QPaintEvent* self);
QTLIBC_API void QPaintEvent_OnClone(const QPaintEvent* self, intptr_t slot);
QTLIBC_API QPaintEvent* QPaintEvent_QBaseClone(const QPaintEvent* self);
QTLIBC_API QRect* QPaintEvent_Rect(const QPaintEvent* self);
QTLIBC_API QRegion* QPaintEvent_Region(const QPaintEvent* self);
QTLIBC_API void QPaintEvent_SetAccepted(QPaintEvent* self, bool accepted);
QTLIBC_API void QPaintEvent_OnSetAccepted(QPaintEvent* self, intptr_t slot);
QTLIBC_API void QPaintEvent_QBaseSetAccepted(QPaintEvent* self, bool accepted);
QTLIBC_API void QPaintEvent_Delete(QPaintEvent* self);

QTLIBC_API QMoveEvent* QMoveEvent_new(QPoint* pos, QPoint* oldPos);
QTLIBC_API QMoveEvent* QMoveEvent_Clone(const QMoveEvent* self);
QTLIBC_API void QMoveEvent_OnClone(const QMoveEvent* self, intptr_t slot);
QTLIBC_API QMoveEvent* QMoveEvent_QBaseClone(const QMoveEvent* self);
QTLIBC_API QPoint* QMoveEvent_Pos(const QMoveEvent* self);
QTLIBC_API QPoint* QMoveEvent_OldPos(const QMoveEvent* self);
QTLIBC_API void QMoveEvent_SetAccepted(QMoveEvent* self, bool accepted);
QTLIBC_API void QMoveEvent_OnSetAccepted(QMoveEvent* self, intptr_t slot);
QTLIBC_API void QMoveEvent_QBaseSetAccepted(QMoveEvent* self, bool accepted);
QTLIBC_API void QMoveEvent_Delete(QMoveEvent* self);

QTLIBC_API QExposeEvent* QExposeEvent_new(QRegion* m_region);
QTLIBC_API QExposeEvent* QExposeEvent_Clone(const QExposeEvent* self);
QTLIBC_API void QExposeEvent_OnClone(const QExposeEvent* self, intptr_t slot);
QTLIBC_API QExposeEvent* QExposeEvent_QBaseClone(const QExposeEvent* self);
QTLIBC_API QRegion* QExposeEvent_Region(const QExposeEvent* self);
QTLIBC_API void QExposeEvent_SetAccepted(QExposeEvent* self, bool accepted);
QTLIBC_API void QExposeEvent_OnSetAccepted(QExposeEvent* self, intptr_t slot);
QTLIBC_API void QExposeEvent_QBaseSetAccepted(QExposeEvent* self, bool accepted);
QTLIBC_API void QExposeEvent_Delete(QExposeEvent* self);

QTLIBC_API QPlatformSurfaceEvent* QPlatformSurfaceEvent_new(int surfaceEventType);
QTLIBC_API QPlatformSurfaceEvent* QPlatformSurfaceEvent_Clone(const QPlatformSurfaceEvent* self);
QTLIBC_API void QPlatformSurfaceEvent_OnClone(const QPlatformSurfaceEvent* self, intptr_t slot);
QTLIBC_API QPlatformSurfaceEvent* QPlatformSurfaceEvent_QBaseClone(const QPlatformSurfaceEvent* self);
QTLIBC_API int QPlatformSurfaceEvent_SurfaceEventType(const QPlatformSurfaceEvent* self);
QTLIBC_API void QPlatformSurfaceEvent_SetAccepted(QPlatformSurfaceEvent* self, bool accepted);
QTLIBC_API void QPlatformSurfaceEvent_OnSetAccepted(QPlatformSurfaceEvent* self, intptr_t slot);
QTLIBC_API void QPlatformSurfaceEvent_QBaseSetAccepted(QPlatformSurfaceEvent* self, bool accepted);
QTLIBC_API void QPlatformSurfaceEvent_Delete(QPlatformSurfaceEvent* self);

QTLIBC_API QResizeEvent* QResizeEvent_new(QSize* size, QSize* oldSize);
QTLIBC_API QResizeEvent* QResizeEvent_Clone(const QResizeEvent* self);
QTLIBC_API void QResizeEvent_OnClone(const QResizeEvent* self, intptr_t slot);
QTLIBC_API QResizeEvent* QResizeEvent_QBaseClone(const QResizeEvent* self);
QTLIBC_API QSize* QResizeEvent_Size(const QResizeEvent* self);
QTLIBC_API QSize* QResizeEvent_OldSize(const QResizeEvent* self);
QTLIBC_API void QResizeEvent_SetAccepted(QResizeEvent* self, bool accepted);
QTLIBC_API void QResizeEvent_OnSetAccepted(QResizeEvent* self, intptr_t slot);
QTLIBC_API void QResizeEvent_QBaseSetAccepted(QResizeEvent* self, bool accepted);
QTLIBC_API void QResizeEvent_Delete(QResizeEvent* self);

QTLIBC_API QCloseEvent* QCloseEvent_new();
QTLIBC_API QCloseEvent* QCloseEvent_Clone(const QCloseEvent* self);
QTLIBC_API void QCloseEvent_OnClone(const QCloseEvent* self, intptr_t slot);
QTLIBC_API QCloseEvent* QCloseEvent_QBaseClone(const QCloseEvent* self);
QTLIBC_API void QCloseEvent_SetAccepted(QCloseEvent* self, bool accepted);
QTLIBC_API void QCloseEvent_OnSetAccepted(QCloseEvent* self, intptr_t slot);
QTLIBC_API void QCloseEvent_QBaseSetAccepted(QCloseEvent* self, bool accepted);
QTLIBC_API void QCloseEvent_Delete(QCloseEvent* self);

QTLIBC_API QIconDragEvent* QIconDragEvent_new();
QTLIBC_API QIconDragEvent* QIconDragEvent_Clone(const QIconDragEvent* self);
QTLIBC_API void QIconDragEvent_OnClone(const QIconDragEvent* self, intptr_t slot);
QTLIBC_API QIconDragEvent* QIconDragEvent_QBaseClone(const QIconDragEvent* self);
QTLIBC_API void QIconDragEvent_SetAccepted(QIconDragEvent* self, bool accepted);
QTLIBC_API void QIconDragEvent_OnSetAccepted(QIconDragEvent* self, intptr_t slot);
QTLIBC_API void QIconDragEvent_QBaseSetAccepted(QIconDragEvent* self, bool accepted);
QTLIBC_API void QIconDragEvent_Delete(QIconDragEvent* self);

QTLIBC_API QShowEvent* QShowEvent_new();
QTLIBC_API QShowEvent* QShowEvent_Clone(const QShowEvent* self);
QTLIBC_API void QShowEvent_OnClone(const QShowEvent* self, intptr_t slot);
QTLIBC_API QShowEvent* QShowEvent_QBaseClone(const QShowEvent* self);
QTLIBC_API void QShowEvent_SetAccepted(QShowEvent* self, bool accepted);
QTLIBC_API void QShowEvent_OnSetAccepted(QShowEvent* self, intptr_t slot);
QTLIBC_API void QShowEvent_QBaseSetAccepted(QShowEvent* self, bool accepted);
QTLIBC_API void QShowEvent_Delete(QShowEvent* self);

QTLIBC_API QHideEvent* QHideEvent_new();
QTLIBC_API QHideEvent* QHideEvent_Clone(const QHideEvent* self);
QTLIBC_API void QHideEvent_OnClone(const QHideEvent* self, intptr_t slot);
QTLIBC_API QHideEvent* QHideEvent_QBaseClone(const QHideEvent* self);
QTLIBC_API void QHideEvent_SetAccepted(QHideEvent* self, bool accepted);
QTLIBC_API void QHideEvent_OnSetAccepted(QHideEvent* self, intptr_t slot);
QTLIBC_API void QHideEvent_QBaseSetAccepted(QHideEvent* self, bool accepted);
QTLIBC_API void QHideEvent_Delete(QHideEvent* self);

QTLIBC_API QContextMenuEvent* QContextMenuEvent_new(int reason, QPoint* pos, QPoint* globalPos);
QTLIBC_API QContextMenuEvent* QContextMenuEvent_new2(int reason, QPoint* pos);
QTLIBC_API QContextMenuEvent* QContextMenuEvent_new3(int reason, QPoint* pos, QPoint* globalPos, int modifiers);
QTLIBC_API QContextMenuEvent* QContextMenuEvent_Clone(const QContextMenuEvent* self);
QTLIBC_API void QContextMenuEvent_OnClone(const QContextMenuEvent* self, intptr_t slot);
QTLIBC_API QContextMenuEvent* QContextMenuEvent_QBaseClone(const QContextMenuEvent* self);
QTLIBC_API int QContextMenuEvent_X(const QContextMenuEvent* self);
QTLIBC_API int QContextMenuEvent_Y(const QContextMenuEvent* self);
QTLIBC_API int QContextMenuEvent_GlobalX(const QContextMenuEvent* self);
QTLIBC_API int QContextMenuEvent_GlobalY(const QContextMenuEvent* self);
QTLIBC_API QPoint* QContextMenuEvent_Pos(const QContextMenuEvent* self);
QTLIBC_API QPoint* QContextMenuEvent_GlobalPos(const QContextMenuEvent* self);
QTLIBC_API int QContextMenuEvent_Reason(const QContextMenuEvent* self);
QTLIBC_API void QContextMenuEvent_SetTimestamp(QContextMenuEvent* self, unsigned long long timestamp);
QTLIBC_API void QContextMenuEvent_OnSetTimestamp(QContextMenuEvent* self, intptr_t slot);
QTLIBC_API void QContextMenuEvent_QBaseSetTimestamp(QContextMenuEvent* self, unsigned long long timestamp);
QTLIBC_API void QContextMenuEvent_SetAccepted(QContextMenuEvent* self, bool accepted);
QTLIBC_API void QContextMenuEvent_OnSetAccepted(QContextMenuEvent* self, intptr_t slot);
QTLIBC_API void QContextMenuEvent_QBaseSetAccepted(QContextMenuEvent* self, bool accepted);
QTLIBC_API void QContextMenuEvent_Delete(QContextMenuEvent* self);

QTLIBC_API QInputMethodEvent* QInputMethodEvent_new();
QTLIBC_API QInputMethodEvent* QInputMethodEvent_new2(libqt_string preeditText, libqt_list /* of QInputMethodEvent__Attribute* */ attributes);
QTLIBC_API QInputMethodEvent* QInputMethodEvent_Clone(const QInputMethodEvent* self);
QTLIBC_API void QInputMethodEvent_OnClone(const QInputMethodEvent* self, intptr_t slot);
QTLIBC_API QInputMethodEvent* QInputMethodEvent_QBaseClone(const QInputMethodEvent* self);
QTLIBC_API void QInputMethodEvent_SetCommitString(QInputMethodEvent* self, libqt_string commitString);
QTLIBC_API libqt_list /* of QInputMethodEvent__Attribute* */ QInputMethodEvent_Attributes(const QInputMethodEvent* self);
QTLIBC_API libqt_string QInputMethodEvent_PreeditString(const QInputMethodEvent* self);
QTLIBC_API libqt_string QInputMethodEvent_CommitString(const QInputMethodEvent* self);
QTLIBC_API int QInputMethodEvent_ReplacementStart(const QInputMethodEvent* self);
QTLIBC_API int QInputMethodEvent_ReplacementLength(const QInputMethodEvent* self);
QTLIBC_API void QInputMethodEvent_SetCommitString2(QInputMethodEvent* self, libqt_string commitString, int replaceFrom);
QTLIBC_API void QInputMethodEvent_SetCommitString3(QInputMethodEvent* self, libqt_string commitString, int replaceFrom, int replaceLength);
QTLIBC_API void QInputMethodEvent_SetAccepted(QInputMethodEvent* self, bool accepted);
QTLIBC_API void QInputMethodEvent_OnSetAccepted(QInputMethodEvent* self, intptr_t slot);
QTLIBC_API void QInputMethodEvent_QBaseSetAccepted(QInputMethodEvent* self, bool accepted);
QTLIBC_API void QInputMethodEvent_Delete(QInputMethodEvent* self);

QTLIBC_API QInputMethodQueryEvent* QInputMethodQueryEvent_new(int queries);
QTLIBC_API QInputMethodQueryEvent* QInputMethodQueryEvent_Clone(const QInputMethodQueryEvent* self);
QTLIBC_API void QInputMethodQueryEvent_OnClone(const QInputMethodQueryEvent* self, intptr_t slot);
QTLIBC_API QInputMethodQueryEvent* QInputMethodQueryEvent_QBaseClone(const QInputMethodQueryEvent* self);
QTLIBC_API int QInputMethodQueryEvent_Queries(const QInputMethodQueryEvent* self);
QTLIBC_API void QInputMethodQueryEvent_SetValue(QInputMethodQueryEvent* self, int query, QVariant* value);
QTLIBC_API QVariant* QInputMethodQueryEvent_Value(const QInputMethodQueryEvent* self, int query);
QTLIBC_API void QInputMethodQueryEvent_SetAccepted(QInputMethodQueryEvent* self, bool accepted);
QTLIBC_API void QInputMethodQueryEvent_OnSetAccepted(QInputMethodQueryEvent* self, intptr_t slot);
QTLIBC_API void QInputMethodQueryEvent_QBaseSetAccepted(QInputMethodQueryEvent* self, bool accepted);
QTLIBC_API void QInputMethodQueryEvent_Delete(QInputMethodQueryEvent* self);

QTLIBC_API QDropEvent* QDropEvent_new(QPointF* pos, int actions, QMimeData* data, int buttons, int modifiers);
QTLIBC_API QDropEvent* QDropEvent_new2(QPointF* pos, int actions, QMimeData* data, int buttons, int modifiers, int typeVal);
QTLIBC_API QDropEvent* QDropEvent_Clone(const QDropEvent* self);
QTLIBC_API void QDropEvent_OnClone(const QDropEvent* self, intptr_t slot);
QTLIBC_API QDropEvent* QDropEvent_QBaseClone(const QDropEvent* self);
QTLIBC_API QPoint* QDropEvent_Pos(const QDropEvent* self);
QTLIBC_API QPointF* QDropEvent_PosF(const QDropEvent* self);
QTLIBC_API int QDropEvent_MouseButtons(const QDropEvent* self);
QTLIBC_API int QDropEvent_KeyboardModifiers(const QDropEvent* self);
QTLIBC_API QPointF* QDropEvent_Position(const QDropEvent* self);
QTLIBC_API int QDropEvent_Buttons(const QDropEvent* self);
QTLIBC_API int QDropEvent_Modifiers(const QDropEvent* self);
QTLIBC_API int QDropEvent_PossibleActions(const QDropEvent* self);
QTLIBC_API int QDropEvent_ProposedAction(const QDropEvent* self);
QTLIBC_API void QDropEvent_AcceptProposedAction(QDropEvent* self);
QTLIBC_API int QDropEvent_DropAction(const QDropEvent* self);
QTLIBC_API void QDropEvent_SetDropAction(QDropEvent* self, int action);
QTLIBC_API QObject* QDropEvent_Source(const QDropEvent* self);
QTLIBC_API QMimeData* QDropEvent_MimeData(const QDropEvent* self);
QTLIBC_API void QDropEvent_SetAccepted(QDropEvent* self, bool accepted);
QTLIBC_API void QDropEvent_OnSetAccepted(QDropEvent* self, intptr_t slot);
QTLIBC_API void QDropEvent_QBaseSetAccepted(QDropEvent* self, bool accepted);
QTLIBC_API void QDropEvent_Delete(QDropEvent* self);

QTLIBC_API QDragMoveEvent* QDragMoveEvent_new(QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers);
QTLIBC_API QDragMoveEvent* QDragMoveEvent_new2(QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers, int typeVal);
QTLIBC_API QDragMoveEvent* QDragMoveEvent_Clone(const QDragMoveEvent* self);
QTLIBC_API void QDragMoveEvent_OnClone(const QDragMoveEvent* self, intptr_t slot);
QTLIBC_API QDragMoveEvent* QDragMoveEvent_QBaseClone(const QDragMoveEvent* self);
QTLIBC_API QRect* QDragMoveEvent_AnswerRect(const QDragMoveEvent* self);
QTLIBC_API void QDragMoveEvent_Accept(QDragMoveEvent* self);
QTLIBC_API void QDragMoveEvent_Ignore(QDragMoveEvent* self);
QTLIBC_API void QDragMoveEvent_AcceptWithQRect(QDragMoveEvent* self, QRect* r);
QTLIBC_API void QDragMoveEvent_IgnoreWithQRect(QDragMoveEvent* self, QRect* r);
QTLIBC_API void QDragMoveEvent_SetAccepted(QDragMoveEvent* self, bool accepted);
QTLIBC_API void QDragMoveEvent_OnSetAccepted(QDragMoveEvent* self, intptr_t slot);
QTLIBC_API void QDragMoveEvent_QBaseSetAccepted(QDragMoveEvent* self, bool accepted);
QTLIBC_API void QDragMoveEvent_Delete(QDragMoveEvent* self);

QTLIBC_API QDragEnterEvent* QDragEnterEvent_new(QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers);
QTLIBC_API QDragEnterEvent* QDragEnterEvent_Clone(const QDragEnterEvent* self);
QTLIBC_API void QDragEnterEvent_OnClone(const QDragEnterEvent* self, intptr_t slot);
QTLIBC_API QDragEnterEvent* QDragEnterEvent_QBaseClone(const QDragEnterEvent* self);
QTLIBC_API void QDragEnterEvent_SetAccepted(QDragEnterEvent* self, bool accepted);
QTLIBC_API void QDragEnterEvent_OnSetAccepted(QDragEnterEvent* self, intptr_t slot);
QTLIBC_API void QDragEnterEvent_QBaseSetAccepted(QDragEnterEvent* self, bool accepted);
QTLIBC_API void QDragEnterEvent_Delete(QDragEnterEvent* self);

QTLIBC_API QDragLeaveEvent* QDragLeaveEvent_new();
QTLIBC_API QDragLeaveEvent* QDragLeaveEvent_Clone(const QDragLeaveEvent* self);
QTLIBC_API void QDragLeaveEvent_OnClone(const QDragLeaveEvent* self, intptr_t slot);
QTLIBC_API QDragLeaveEvent* QDragLeaveEvent_QBaseClone(const QDragLeaveEvent* self);
QTLIBC_API void QDragLeaveEvent_SetAccepted(QDragLeaveEvent* self, bool accepted);
QTLIBC_API void QDragLeaveEvent_OnSetAccepted(QDragLeaveEvent* self, intptr_t slot);
QTLIBC_API void QDragLeaveEvent_QBaseSetAccepted(QDragLeaveEvent* self, bool accepted);
QTLIBC_API void QDragLeaveEvent_Delete(QDragLeaveEvent* self);

QTLIBC_API QHelpEvent* QHelpEvent_new(int typeVal, QPoint* pos, QPoint* globalPos);
QTLIBC_API QHelpEvent* QHelpEvent_Clone(const QHelpEvent* self);
QTLIBC_API void QHelpEvent_OnClone(const QHelpEvent* self, intptr_t slot);
QTLIBC_API QHelpEvent* QHelpEvent_QBaseClone(const QHelpEvent* self);
QTLIBC_API int QHelpEvent_X(const QHelpEvent* self);
QTLIBC_API int QHelpEvent_Y(const QHelpEvent* self);
QTLIBC_API int QHelpEvent_GlobalX(const QHelpEvent* self);
QTLIBC_API int QHelpEvent_GlobalY(const QHelpEvent* self);
QTLIBC_API QPoint* QHelpEvent_Pos(const QHelpEvent* self);
QTLIBC_API QPoint* QHelpEvent_GlobalPos(const QHelpEvent* self);
QTLIBC_API void QHelpEvent_SetAccepted(QHelpEvent* self, bool accepted);
QTLIBC_API void QHelpEvent_OnSetAccepted(QHelpEvent* self, intptr_t slot);
QTLIBC_API void QHelpEvent_QBaseSetAccepted(QHelpEvent* self, bool accepted);
QTLIBC_API void QHelpEvent_Delete(QHelpEvent* self);

QTLIBC_API QStatusTipEvent* QStatusTipEvent_new(libqt_string tip);
QTLIBC_API QStatusTipEvent* QStatusTipEvent_Clone(const QStatusTipEvent* self);
QTLIBC_API void QStatusTipEvent_OnClone(const QStatusTipEvent* self, intptr_t slot);
QTLIBC_API QStatusTipEvent* QStatusTipEvent_QBaseClone(const QStatusTipEvent* self);
QTLIBC_API libqt_string QStatusTipEvent_Tip(const QStatusTipEvent* self);
QTLIBC_API void QStatusTipEvent_SetAccepted(QStatusTipEvent* self, bool accepted);
QTLIBC_API void QStatusTipEvent_OnSetAccepted(QStatusTipEvent* self, intptr_t slot);
QTLIBC_API void QStatusTipEvent_QBaseSetAccepted(QStatusTipEvent* self, bool accepted);
QTLIBC_API void QStatusTipEvent_Delete(QStatusTipEvent* self);

QTLIBC_API QWhatsThisClickedEvent* QWhatsThisClickedEvent_new(libqt_string href);
QTLIBC_API QWhatsThisClickedEvent* QWhatsThisClickedEvent_Clone(const QWhatsThisClickedEvent* self);
QTLIBC_API void QWhatsThisClickedEvent_OnClone(const QWhatsThisClickedEvent* self, intptr_t slot);
QTLIBC_API QWhatsThisClickedEvent* QWhatsThisClickedEvent_QBaseClone(const QWhatsThisClickedEvent* self);
QTLIBC_API libqt_string QWhatsThisClickedEvent_Href(const QWhatsThisClickedEvent* self);
QTLIBC_API void QWhatsThisClickedEvent_SetAccepted(QWhatsThisClickedEvent* self, bool accepted);
QTLIBC_API void QWhatsThisClickedEvent_OnSetAccepted(QWhatsThisClickedEvent* self, intptr_t slot);
QTLIBC_API void QWhatsThisClickedEvent_QBaseSetAccepted(QWhatsThisClickedEvent* self, bool accepted);
QTLIBC_API void QWhatsThisClickedEvent_Delete(QWhatsThisClickedEvent* self);

QTLIBC_API QActionEvent* QActionEvent_new(int typeVal, QAction* action);
QTLIBC_API QActionEvent* QActionEvent_new2(int typeVal, QAction* action, QAction* before);
QTLIBC_API QActionEvent* QActionEvent_Clone(const QActionEvent* self);
QTLIBC_API void QActionEvent_OnClone(const QActionEvent* self, intptr_t slot);
QTLIBC_API QActionEvent* QActionEvent_QBaseClone(const QActionEvent* self);
QTLIBC_API QAction* QActionEvent_Action(const QActionEvent* self);
QTLIBC_API QAction* QActionEvent_Before(const QActionEvent* self);
QTLIBC_API void QActionEvent_SetAccepted(QActionEvent* self, bool accepted);
QTLIBC_API void QActionEvent_OnSetAccepted(QActionEvent* self, intptr_t slot);
QTLIBC_API void QActionEvent_QBaseSetAccepted(QActionEvent* self, bool accepted);
QTLIBC_API void QActionEvent_Delete(QActionEvent* self);

QTLIBC_API QFileOpenEvent* QFileOpenEvent_new(libqt_string file);
QTLIBC_API QFileOpenEvent* QFileOpenEvent_new2(QUrl* url);
QTLIBC_API QFileOpenEvent* QFileOpenEvent_Clone(const QFileOpenEvent* self);
QTLIBC_API void QFileOpenEvent_OnClone(const QFileOpenEvent* self, intptr_t slot);
QTLIBC_API QFileOpenEvent* QFileOpenEvent_QBaseClone(const QFileOpenEvent* self);
QTLIBC_API libqt_string QFileOpenEvent_File(const QFileOpenEvent* self);
QTLIBC_API QUrl* QFileOpenEvent_Url(const QFileOpenEvent* self);
QTLIBC_API bool QFileOpenEvent_OpenFile(const QFileOpenEvent* self, QFile* file, int flags);
QTLIBC_API void QFileOpenEvent_SetAccepted(QFileOpenEvent* self, bool accepted);
QTLIBC_API void QFileOpenEvent_OnSetAccepted(QFileOpenEvent* self, intptr_t slot);
QTLIBC_API void QFileOpenEvent_QBaseSetAccepted(QFileOpenEvent* self, bool accepted);
QTLIBC_API void QFileOpenEvent_Delete(QFileOpenEvent* self);

QTLIBC_API QToolBarChangeEvent* QToolBarChangeEvent_new(bool t);
QTLIBC_API QToolBarChangeEvent* QToolBarChangeEvent_Clone(const QToolBarChangeEvent* self);
QTLIBC_API void QToolBarChangeEvent_OnClone(const QToolBarChangeEvent* self, intptr_t slot);
QTLIBC_API QToolBarChangeEvent* QToolBarChangeEvent_QBaseClone(const QToolBarChangeEvent* self);
QTLIBC_API bool QToolBarChangeEvent_Toggle(const QToolBarChangeEvent* self);
QTLIBC_API void QToolBarChangeEvent_SetAccepted(QToolBarChangeEvent* self, bool accepted);
QTLIBC_API void QToolBarChangeEvent_OnSetAccepted(QToolBarChangeEvent* self, intptr_t slot);
QTLIBC_API void QToolBarChangeEvent_QBaseSetAccepted(QToolBarChangeEvent* self, bool accepted);
QTLIBC_API void QToolBarChangeEvent_Delete(QToolBarChangeEvent* self);

QTLIBC_API QShortcutEvent* QShortcutEvent_new(QKeySequence* key, int id);
QTLIBC_API QShortcutEvent* QShortcutEvent_new2(QKeySequence* key, int id, bool ambiguous);
QTLIBC_API QShortcutEvent* QShortcutEvent_Clone(const QShortcutEvent* self);
QTLIBC_API void QShortcutEvent_OnClone(const QShortcutEvent* self, intptr_t slot);
QTLIBC_API QShortcutEvent* QShortcutEvent_QBaseClone(const QShortcutEvent* self);
QTLIBC_API QKeySequence* QShortcutEvent_Key(const QShortcutEvent* self);
QTLIBC_API int QShortcutEvent_ShortcutId(const QShortcutEvent* self);
QTLIBC_API bool QShortcutEvent_IsAmbiguous(const QShortcutEvent* self);
QTLIBC_API void QShortcutEvent_SetAccepted(QShortcutEvent* self, bool accepted);
QTLIBC_API void QShortcutEvent_OnSetAccepted(QShortcutEvent* self, intptr_t slot);
QTLIBC_API void QShortcutEvent_QBaseSetAccepted(QShortcutEvent* self, bool accepted);
QTLIBC_API void QShortcutEvent_Delete(QShortcutEvent* self);

QTLIBC_API QWindowStateChangeEvent* QWindowStateChangeEvent_new(int oldState);
QTLIBC_API QWindowStateChangeEvent* QWindowStateChangeEvent_new2(int oldState, bool isOverride);
QTLIBC_API QWindowStateChangeEvent* QWindowStateChangeEvent_Clone(const QWindowStateChangeEvent* self);
QTLIBC_API void QWindowStateChangeEvent_OnClone(const QWindowStateChangeEvent* self, intptr_t slot);
QTLIBC_API QWindowStateChangeEvent* QWindowStateChangeEvent_QBaseClone(const QWindowStateChangeEvent* self);
QTLIBC_API int QWindowStateChangeEvent_OldState(const QWindowStateChangeEvent* self);
QTLIBC_API bool QWindowStateChangeEvent_IsOverride(const QWindowStateChangeEvent* self);
QTLIBC_API void QWindowStateChangeEvent_SetAccepted(QWindowStateChangeEvent* self, bool accepted);
QTLIBC_API void QWindowStateChangeEvent_OnSetAccepted(QWindowStateChangeEvent* self, intptr_t slot);
QTLIBC_API void QWindowStateChangeEvent_QBaseSetAccepted(QWindowStateChangeEvent* self, bool accepted);
QTLIBC_API void QWindowStateChangeEvent_Delete(QWindowStateChangeEvent* self);

QTLIBC_API QTouchEvent* QTouchEvent_new(int eventType);
QTLIBC_API QTouchEvent* QTouchEvent_new2(int eventType, QPointingDevice* device, int modifiers, int touchPointStates);
QTLIBC_API QTouchEvent* QTouchEvent_new3(int eventType, QPointingDevice* device);
QTLIBC_API QTouchEvent* QTouchEvent_new4(int eventType, QPointingDevice* device, int modifiers);
QTLIBC_API QTouchEvent* QTouchEvent_new5(int eventType, QPointingDevice* device, int modifiers, libqt_list /* of QEventPoint* */ touchPoints);
QTLIBC_API QTouchEvent* QTouchEvent_new6(int eventType, QPointingDevice* device, int modifiers, int touchPointStates, libqt_list /* of QEventPoint* */ touchPoints);
QTLIBC_API QTouchEvent* QTouchEvent_Clone(const QTouchEvent* self);
QTLIBC_API void QTouchEvent_OnClone(const QTouchEvent* self, intptr_t slot);
QTLIBC_API QTouchEvent* QTouchEvent_QBaseClone(const QTouchEvent* self);
QTLIBC_API QObject* QTouchEvent_Target(const QTouchEvent* self);
QTLIBC_API int QTouchEvent_TouchPointStates(const QTouchEvent* self);
QTLIBC_API libqt_list /* of QEventPoint* */ QTouchEvent_TouchPoints(const QTouchEvent* self);
QTLIBC_API bool QTouchEvent_IsBeginEvent(const QTouchEvent* self);
QTLIBC_API void QTouchEvent_OnIsBeginEvent(const QTouchEvent* self, intptr_t slot);
QTLIBC_API bool QTouchEvent_QBaseIsBeginEvent(const QTouchEvent* self);
QTLIBC_API bool QTouchEvent_IsUpdateEvent(const QTouchEvent* self);
QTLIBC_API void QTouchEvent_OnIsUpdateEvent(const QTouchEvent* self, intptr_t slot);
QTLIBC_API bool QTouchEvent_QBaseIsUpdateEvent(const QTouchEvent* self);
QTLIBC_API bool QTouchEvent_IsEndEvent(const QTouchEvent* self);
QTLIBC_API void QTouchEvent_OnIsEndEvent(const QTouchEvent* self, intptr_t slot);
QTLIBC_API bool QTouchEvent_QBaseIsEndEvent(const QTouchEvent* self);
QTLIBC_API void QTouchEvent_SetTimestamp(QTouchEvent* self, unsigned long long timestamp);
QTLIBC_API void QTouchEvent_OnSetTimestamp(QTouchEvent* self, intptr_t slot);
QTLIBC_API void QTouchEvent_QBaseSetTimestamp(QTouchEvent* self, unsigned long long timestamp);
QTLIBC_API void QTouchEvent_SetAccepted(QTouchEvent* self, bool accepted);
QTLIBC_API void QTouchEvent_OnSetAccepted(QTouchEvent* self, intptr_t slot);
QTLIBC_API void QTouchEvent_QBaseSetAccepted(QTouchEvent* self, bool accepted);
QTLIBC_API void QTouchEvent_Delete(QTouchEvent* self);

QTLIBC_API QScrollPrepareEvent* QScrollPrepareEvent_new(QPointF* startPos);
QTLIBC_API QScrollPrepareEvent* QScrollPrepareEvent_Clone(const QScrollPrepareEvent* self);
QTLIBC_API void QScrollPrepareEvent_OnClone(const QScrollPrepareEvent* self, intptr_t slot);
QTLIBC_API QScrollPrepareEvent* QScrollPrepareEvent_QBaseClone(const QScrollPrepareEvent* self);
QTLIBC_API QPointF* QScrollPrepareEvent_StartPos(const QScrollPrepareEvent* self);
QTLIBC_API QSizeF* QScrollPrepareEvent_ViewportSize(const QScrollPrepareEvent* self);
QTLIBC_API QRectF* QScrollPrepareEvent_ContentPosRange(const QScrollPrepareEvent* self);
QTLIBC_API QPointF* QScrollPrepareEvent_ContentPos(const QScrollPrepareEvent* self);
QTLIBC_API void QScrollPrepareEvent_SetViewportSize(QScrollPrepareEvent* self, QSizeF* size);
QTLIBC_API void QScrollPrepareEvent_SetContentPosRange(QScrollPrepareEvent* self, QRectF* rect);
QTLIBC_API void QScrollPrepareEvent_SetContentPos(QScrollPrepareEvent* self, QPointF* pos);
QTLIBC_API void QScrollPrepareEvent_SetAccepted(QScrollPrepareEvent* self, bool accepted);
QTLIBC_API void QScrollPrepareEvent_OnSetAccepted(QScrollPrepareEvent* self, intptr_t slot);
QTLIBC_API void QScrollPrepareEvent_QBaseSetAccepted(QScrollPrepareEvent* self, bool accepted);
QTLIBC_API void QScrollPrepareEvent_Delete(QScrollPrepareEvent* self);

QTLIBC_API QScrollEvent* QScrollEvent_new(QPointF* contentPos, QPointF* overshoot, int scrollState);
QTLIBC_API QScrollEvent* QScrollEvent_Clone(const QScrollEvent* self);
QTLIBC_API void QScrollEvent_OnClone(const QScrollEvent* self, intptr_t slot);
QTLIBC_API QScrollEvent* QScrollEvent_QBaseClone(const QScrollEvent* self);
QTLIBC_API QPointF* QScrollEvent_ContentPos(const QScrollEvent* self);
QTLIBC_API QPointF* QScrollEvent_OvershootDistance(const QScrollEvent* self);
QTLIBC_API int QScrollEvent_ScrollState(const QScrollEvent* self);
QTLIBC_API void QScrollEvent_SetAccepted(QScrollEvent* self, bool accepted);
QTLIBC_API void QScrollEvent_OnSetAccepted(QScrollEvent* self, intptr_t slot);
QTLIBC_API void QScrollEvent_QBaseSetAccepted(QScrollEvent* self, bool accepted);
QTLIBC_API void QScrollEvent_Delete(QScrollEvent* self);

QTLIBC_API QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_new(QScreen* screen, int orientation);
QTLIBC_API QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_Clone(const QScreenOrientationChangeEvent* self);
QTLIBC_API void QScreenOrientationChangeEvent_OnClone(const QScreenOrientationChangeEvent* self, intptr_t slot);
QTLIBC_API QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_QBaseClone(const QScreenOrientationChangeEvent* self);
QTLIBC_API QScreen* QScreenOrientationChangeEvent_Screen(const QScreenOrientationChangeEvent* self);
QTLIBC_API int QScreenOrientationChangeEvent_Orientation(const QScreenOrientationChangeEvent* self);
QTLIBC_API void QScreenOrientationChangeEvent_SetAccepted(QScreenOrientationChangeEvent* self, bool accepted);
QTLIBC_API void QScreenOrientationChangeEvent_OnSetAccepted(QScreenOrientationChangeEvent* self, intptr_t slot);
QTLIBC_API void QScreenOrientationChangeEvent_QBaseSetAccepted(QScreenOrientationChangeEvent* self, bool accepted);
QTLIBC_API void QScreenOrientationChangeEvent_Delete(QScreenOrientationChangeEvent* self);

QTLIBC_API QApplicationStateChangeEvent* QApplicationStateChangeEvent_new(int state);
QTLIBC_API QApplicationStateChangeEvent* QApplicationStateChangeEvent_Clone(const QApplicationStateChangeEvent* self);
QTLIBC_API void QApplicationStateChangeEvent_OnClone(const QApplicationStateChangeEvent* self, intptr_t slot);
QTLIBC_API QApplicationStateChangeEvent* QApplicationStateChangeEvent_QBaseClone(const QApplicationStateChangeEvent* self);
QTLIBC_API int QApplicationStateChangeEvent_ApplicationState(const QApplicationStateChangeEvent* self);
QTLIBC_API void QApplicationStateChangeEvent_SetAccepted(QApplicationStateChangeEvent* self, bool accepted);
QTLIBC_API void QApplicationStateChangeEvent_OnSetAccepted(QApplicationStateChangeEvent* self, intptr_t slot);
QTLIBC_API void QApplicationStateChangeEvent_QBaseSetAccepted(QApplicationStateChangeEvent* self, bool accepted);
QTLIBC_API void QApplicationStateChangeEvent_Delete(QApplicationStateChangeEvent* self);

QTLIBC_API QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new(int typ, int s, int l, QVariant* val);
QTLIBC_API QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new2(int typ, int s, int l);
QTLIBC_API QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new3(QInputMethodEvent__Attribute* param1);
QTLIBC_API void QInputMethodEvent__Attribute_OperatorAssign(QInputMethodEvent__Attribute* self, QInputMethodEvent__Attribute* param1);
QTLIBC_API void QInputMethodEvent__Attribute_Delete(QInputMethodEvent__Attribute* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
