#pragma once
#ifndef SRCC_LIBQEVENT_H
#define SRCC_LIBQEVENT_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QTouchEvent__TouchPoint)
typedef QTouchEvent::TouchPoint QTouchEvent__TouchPoint;
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
typedef struct QExposeEvent QExposeEvent;
typedef struct QFile QFile;
typedef struct QFileOpenEvent QFileOpenEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHelpEvent QHelpEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QHoverEvent QHoverEvent;
typedef struct QIconDragEvent QIconDragEvent;
typedef struct QInputEvent QInputEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QInputMethodEvent__Attribute QInputMethodEvent__Attribute;
typedef struct QInputMethodQueryEvent QInputMethodQueryEvent;
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
typedef struct QPointingDeviceUniqueId QPointingDeviceUniqueId;
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
typedef struct QSize QSize;
typedef struct QSizeF QSizeF;
typedef struct QStatusTipEvent QStatusTipEvent;
typedef struct QTabletEvent QTabletEvent;
typedef struct QToolBarChangeEvent QToolBarChangeEvent;
typedef struct QTouchDevice QTouchDevice;
typedef struct QTouchEvent QTouchEvent;
typedef struct QTouchEvent__TouchPoint QTouchEvent__TouchPoint;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
typedef struct QVector2D QVector2D;
typedef struct QWhatsThisClickedEvent QWhatsThisClickedEvent;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWindow QWindow;
typedef struct QWindowStateChangeEvent QWindowStateChangeEvent;
#endif

#ifdef __cplusplus
typedef QContextMenuEvent::Reason Reason;                         // C++ enum
typedef QInputMethodEvent::AttributeType AttributeType;           // C++ enum
typedef QPlatformSurfaceEvent::SurfaceEventType SurfaceEventType; // C++ enum
typedef QPointingDeviceUniqueId::QtGadgetHelper QtGadgetHelper;   // C++ QFlags
typedef QScrollEvent::ScrollState ScrollState;                    // C++ enum
typedef QTabletEvent::PointerType PointerType;                    // C++ enum
typedef QTabletEvent::TabletDevice TabletDevice;                  // C++ enum
typedef QTouchEvent::TouchPoint::InfoFlag TouchPointInfoFlag;     // C++ enum
#else
typedef int AttributeType;       // C ABI enum
typedef int PointerType;         // C ABI enum
typedef int Reason;              // C ABI enum
typedef int ScrollState;         // C ABI enum
typedef int SurfaceEventType;    // C ABI enum
typedef int TabletDevice;        // C ABI enum
typedef int TouchPointInfoFlag;  // C ABI enum
typedef int TouchPointInfoFlags; // C ABI QFlags
typedef void QtGadgetHelper;     // C ABI QFlags
#endif

QInputEvent* QInputEvent_new(int typeVal);
QInputEvent* QInputEvent_new2(QInputEvent* param1);
QInputEvent* QInputEvent_new3(int typeVal, int modifiers);
int QInputEvent_Modifiers(const QInputEvent* self);
void QInputEvent_SetModifiers(QInputEvent* self, int amodifiers);
unsigned long QInputEvent_Timestamp(const QInputEvent* self);
void QInputEvent_SetTimestamp(QInputEvent* self, unsigned long atimestamp);
void QInputEvent_Delete(QInputEvent* self);

QEnterEvent* QEnterEvent_new(QPointF* localPos, QPointF* windowPos, QPointF* screenPos);
QEnterEvent* QEnterEvent_new2(QEnterEvent* param1);
QPoint* QEnterEvent_Pos(const QEnterEvent* self);
QPoint* QEnterEvent_GlobalPos(const QEnterEvent* self);
int QEnterEvent_X(const QEnterEvent* self);
int QEnterEvent_Y(const QEnterEvent* self);
int QEnterEvent_GlobalX(const QEnterEvent* self);
int QEnterEvent_GlobalY(const QEnterEvent* self);
QPointF* QEnterEvent_LocalPos(const QEnterEvent* self);
QPointF* QEnterEvent_WindowPos(const QEnterEvent* self);
QPointF* QEnterEvent_ScreenPos(const QEnterEvent* self);
void QEnterEvent_Delete(QEnterEvent* self);

QMouseEvent* QMouseEvent_new(int typeVal, QPointF* localPos, int button, int buttons, int modifiers);
QMouseEvent* QMouseEvent_new2(int typeVal, QPointF* localPos, QPointF* screenPos, int button, int buttons, int modifiers);
QMouseEvent* QMouseEvent_new3(int typeVal, QPointF* localPos, QPointF* windowPos, QPointF* screenPos, int button, int buttons, int modifiers);
QMouseEvent* QMouseEvent_new4(int typeVal, QPointF* localPos, QPointF* windowPos, QPointF* screenPos, int button, int buttons, int modifiers, int source);
QMouseEvent* QMouseEvent_new5(QMouseEvent* param1);
QPoint* QMouseEvent_Pos(const QMouseEvent* self);
QPoint* QMouseEvent_GlobalPos(const QMouseEvent* self);
int QMouseEvent_X(const QMouseEvent* self);
int QMouseEvent_Y(const QMouseEvent* self);
int QMouseEvent_GlobalX(const QMouseEvent* self);
int QMouseEvent_GlobalY(const QMouseEvent* self);
QPointF* QMouseEvent_LocalPos(const QMouseEvent* self);
QPointF* QMouseEvent_WindowPos(const QMouseEvent* self);
QPointF* QMouseEvent_ScreenPos(const QMouseEvent* self);
int QMouseEvent_Button(const QMouseEvent* self);
int QMouseEvent_Buttons(const QMouseEvent* self);
void QMouseEvent_SetLocalPos(QMouseEvent* self, QPointF* localPosition);
int QMouseEvent_Source(const QMouseEvent* self);
int QMouseEvent_Flags(const QMouseEvent* self);
void QMouseEvent_Delete(QMouseEvent* self);

QHoverEvent* QHoverEvent_new(int typeVal, QPointF* pos, QPointF* oldPos);
QHoverEvent* QHoverEvent_new2(QHoverEvent* param1);
QHoverEvent* QHoverEvent_new3(int typeVal, QPointF* pos, QPointF* oldPos, int modifiers);
QPoint* QHoverEvent_Pos(const QHoverEvent* self);
QPoint* QHoverEvent_OldPos(const QHoverEvent* self);
QPointF* QHoverEvent_PosF(const QHoverEvent* self);
QPointF* QHoverEvent_OldPosF(const QHoverEvent* self);
void QHoverEvent_Delete(QHoverEvent* self);

QWheelEvent* QWheelEvent_new(QPointF* pos, int delta, int buttons, int modifiers);
QWheelEvent* QWheelEvent_new2(QPointF* pos, QPointF* globalPos, int delta, int buttons, int modifiers);
QWheelEvent* QWheelEvent_new3(QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int qt4Delta, int qt4Orientation, int buttons, int modifiers);
QWheelEvent* QWheelEvent_new4(QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int qt4Delta, int qt4Orientation, int buttons, int modifiers, int phase);
QWheelEvent* QWheelEvent_new5(QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int qt4Delta, int qt4Orientation, int buttons, int modifiers, int phase, int source);
QWheelEvent* QWheelEvent_new6(QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int qt4Delta, int qt4Orientation, int buttons, int modifiers, int phase, int source, bool inverted);
QWheelEvent* QWheelEvent_new7(QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted);
QWheelEvent* QWheelEvent_new8(QWheelEvent* param1);
QWheelEvent* QWheelEvent_new9(QPointF* pos, int delta, int buttons, int modifiers, int orient);
QWheelEvent* QWheelEvent_new10(QPointF* pos, QPointF* globalPos, int delta, int buttons, int modifiers, int orient);
QWheelEvent* QWheelEvent_new11(QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted, int source);
QPoint* QWheelEvent_PixelDelta(const QWheelEvent* self);
QPoint* QWheelEvent_AngleDelta(const QWheelEvent* self);
int QWheelEvent_Delta(const QWheelEvent* self);
int QWheelEvent_Orientation(const QWheelEvent* self);
QPoint* QWheelEvent_Pos(const QWheelEvent* self);
QPoint* QWheelEvent_GlobalPos(const QWheelEvent* self);
int QWheelEvent_X(const QWheelEvent* self);
int QWheelEvent_Y(const QWheelEvent* self);
int QWheelEvent_GlobalX(const QWheelEvent* self);
int QWheelEvent_GlobalY(const QWheelEvent* self);
QPointF* QWheelEvent_PosF(const QWheelEvent* self);
QPointF* QWheelEvent_GlobalPosF(const QWheelEvent* self);
QPointF* QWheelEvent_Position(const QWheelEvent* self);
QPointF* QWheelEvent_GlobalPosition(const QWheelEvent* self);
int QWheelEvent_Buttons(const QWheelEvent* self);
int QWheelEvent_Phase(const QWheelEvent* self);
bool QWheelEvent_Inverted(const QWheelEvent* self);
int QWheelEvent_Source(const QWheelEvent* self);
void QWheelEvent_Delete(QWheelEvent* self);

QTabletEvent* QTabletEvent_new(int t, QPointF* pos, QPointF* globalPos, int device, int pointerType, double pressure, int xTilt, int yTilt, double tangentialPressure, double rotation, int z, int keyState, long long uniqueID);
QTabletEvent* QTabletEvent_new2(int t, QPointF* pos, QPointF* globalPos, int device, int pointerType, double pressure, int xTilt, int yTilt, double tangentialPressure, double rotation, int z, int keyState, long long uniqueID, int button, int buttons);
QTabletEvent* QTabletEvent_new3(QTabletEvent* param1);
QPoint* QTabletEvent_Pos(const QTabletEvent* self);
QPoint* QTabletEvent_GlobalPos(const QTabletEvent* self);
QPointF* QTabletEvent_PosF(const QTabletEvent* self);
QPointF* QTabletEvent_GlobalPosF(const QTabletEvent* self);
int QTabletEvent_X(const QTabletEvent* self);
int QTabletEvent_Y(const QTabletEvent* self);
int QTabletEvent_GlobalX(const QTabletEvent* self);
int QTabletEvent_GlobalY(const QTabletEvent* self);
double QTabletEvent_HiResGlobalX(const QTabletEvent* self);
double QTabletEvent_HiResGlobalY(const QTabletEvent* self);
int QTabletEvent_Device(const QTabletEvent* self);
int QTabletEvent_DeviceType(const QTabletEvent* self);
int QTabletEvent_PointerType(const QTabletEvent* self);
long long QTabletEvent_UniqueId(const QTabletEvent* self);
double QTabletEvent_Pressure(const QTabletEvent* self);
int QTabletEvent_Z(const QTabletEvent* self);
double QTabletEvent_TangentialPressure(const QTabletEvent* self);
double QTabletEvent_Rotation(const QTabletEvent* self);
int QTabletEvent_XTilt(const QTabletEvent* self);
int QTabletEvent_YTilt(const QTabletEvent* self);
int QTabletEvent_Button(const QTabletEvent* self);
int QTabletEvent_Buttons(const QTabletEvent* self);
void QTabletEvent_Delete(QTabletEvent* self);

QNativeGestureEvent* QNativeGestureEvent_new(int typeVal, QPointF* localPos, QPointF* windowPos, QPointF* screenPos, double value, unsigned long sequenceId, unsigned long long intArgument);
QNativeGestureEvent* QNativeGestureEvent_new2(int typeVal, QTouchDevice* dev, QPointF* localPos, QPointF* windowPos, QPointF* screenPos, double value, unsigned long sequenceId, unsigned long long intArgument);
QNativeGestureEvent* QNativeGestureEvent_new3(QNativeGestureEvent* param1);
int QNativeGestureEvent_GestureType(const QNativeGestureEvent* self);
double QNativeGestureEvent_Value(const QNativeGestureEvent* self);
QPoint* QNativeGestureEvent_Pos(const QNativeGestureEvent* self);
QPoint* QNativeGestureEvent_GlobalPos(const QNativeGestureEvent* self);
QPointF* QNativeGestureEvent_LocalPos(const QNativeGestureEvent* self);
QPointF* QNativeGestureEvent_WindowPos(const QNativeGestureEvent* self);
QPointF* QNativeGestureEvent_ScreenPos(const QNativeGestureEvent* self);
QTouchDevice* QNativeGestureEvent_Device(const QNativeGestureEvent* self);
void QNativeGestureEvent_Delete(QNativeGestureEvent* self);

QKeyEvent* QKeyEvent_new(int typeVal, int key, int modifiers);
QKeyEvent* QKeyEvent_new2(int typeVal, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers);
QKeyEvent* QKeyEvent_new3(QKeyEvent* param1);
QKeyEvent* QKeyEvent_new4(int typeVal, int key, int modifiers, libqt_string text);
QKeyEvent* QKeyEvent_new5(int typeVal, int key, int modifiers, libqt_string text, bool autorep);
QKeyEvent* QKeyEvent_new6(int typeVal, int key, int modifiers, libqt_string text, bool autorep, uint16_t count);
QKeyEvent* QKeyEvent_new7(int typeVal, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, libqt_string text);
QKeyEvent* QKeyEvent_new8(int typeVal, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, libqt_string text, bool autorep);
QKeyEvent* QKeyEvent_new9(int typeVal, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, libqt_string text, bool autorep, uint16_t count);
int QKeyEvent_Key(const QKeyEvent* self);
bool QKeyEvent_Matches(const QKeyEvent* self, int key);
int QKeyEvent_Modifiers(const QKeyEvent* self);
libqt_string QKeyEvent_Text(const QKeyEvent* self);
bool QKeyEvent_IsAutoRepeat(const QKeyEvent* self);
int QKeyEvent_Count(const QKeyEvent* self);
unsigned int QKeyEvent_NativeScanCode(const QKeyEvent* self);
unsigned int QKeyEvent_NativeVirtualKey(const QKeyEvent* self);
unsigned int QKeyEvent_NativeModifiers(const QKeyEvent* self);
void QKeyEvent_Delete(QKeyEvent* self);

QFocusEvent* QFocusEvent_new(int typeVal);
QFocusEvent* QFocusEvent_new2(QFocusEvent* param1);
QFocusEvent* QFocusEvent_new3(int typeVal, int reason);
bool QFocusEvent_GotFocus(const QFocusEvent* self);
bool QFocusEvent_LostFocus(const QFocusEvent* self);
int QFocusEvent_Reason(const QFocusEvent* self);
void QFocusEvent_Delete(QFocusEvent* self);

QPaintEvent* QPaintEvent_new(QRegion* paintRegion);
QPaintEvent* QPaintEvent_new2(QRect* paintRect);
QPaintEvent* QPaintEvent_new3(QPaintEvent* param1);
QRect* QPaintEvent_Rect(const QPaintEvent* self);
QRegion* QPaintEvent_Region(const QPaintEvent* self);
void QPaintEvent_Delete(QPaintEvent* self);

QMoveEvent* QMoveEvent_new(QPoint* pos, QPoint* oldPos);
QMoveEvent* QMoveEvent_new2(QMoveEvent* param1);
QPoint* QMoveEvent_Pos(const QMoveEvent* self);
QPoint* QMoveEvent_OldPos(const QMoveEvent* self);
void QMoveEvent_Delete(QMoveEvent* self);

QExposeEvent* QExposeEvent_new(QRegion* rgn);
QExposeEvent* QExposeEvent_new2(QExposeEvent* param1);
QRegion* QExposeEvent_Region(const QExposeEvent* self);
void QExposeEvent_Delete(QExposeEvent* self);

QPlatformSurfaceEvent* QPlatformSurfaceEvent_new(int surfaceEventType);
QPlatformSurfaceEvent* QPlatformSurfaceEvent_new2(QPlatformSurfaceEvent* param1);
int QPlatformSurfaceEvent_SurfaceEventType(const QPlatformSurfaceEvent* self);
void QPlatformSurfaceEvent_Delete(QPlatformSurfaceEvent* self);

QResizeEvent* QResizeEvent_new(QSize* size, QSize* oldSize);
QResizeEvent* QResizeEvent_new2(QResizeEvent* param1);
QSize* QResizeEvent_Size(const QResizeEvent* self);
QSize* QResizeEvent_OldSize(const QResizeEvent* self);
void QResizeEvent_Delete(QResizeEvent* self);

QCloseEvent* QCloseEvent_new();
QCloseEvent* QCloseEvent_new2(QCloseEvent* param1);
void QCloseEvent_OperatorAssign(QCloseEvent* self, QCloseEvent* param1);
void QCloseEvent_Delete(QCloseEvent* self);

QIconDragEvent* QIconDragEvent_new();
QIconDragEvent* QIconDragEvent_new2(QIconDragEvent* param1);
void QIconDragEvent_OperatorAssign(QIconDragEvent* self, QIconDragEvent* param1);
void QIconDragEvent_Delete(QIconDragEvent* self);

QShowEvent* QShowEvent_new();
QShowEvent* QShowEvent_new2(QShowEvent* param1);
void QShowEvent_OperatorAssign(QShowEvent* self, QShowEvent* param1);
void QShowEvent_Delete(QShowEvent* self);

QHideEvent* QHideEvent_new();
QHideEvent* QHideEvent_new2(QHideEvent* param1);
void QHideEvent_OperatorAssign(QHideEvent* self, QHideEvent* param1);
void QHideEvent_Delete(QHideEvent* self);

QContextMenuEvent* QContextMenuEvent_new(int reason, QPoint* pos, QPoint* globalPos, int modifiers);
QContextMenuEvent* QContextMenuEvent_new2(int reason, QPoint* pos, QPoint* globalPos);
QContextMenuEvent* QContextMenuEvent_new3(int reason, QPoint* pos);
QContextMenuEvent* QContextMenuEvent_new4(QContextMenuEvent* param1);
int QContextMenuEvent_X(const QContextMenuEvent* self);
int QContextMenuEvent_Y(const QContextMenuEvent* self);
int QContextMenuEvent_GlobalX(const QContextMenuEvent* self);
int QContextMenuEvent_GlobalY(const QContextMenuEvent* self);
QPoint* QContextMenuEvent_Pos(const QContextMenuEvent* self);
QPoint* QContextMenuEvent_GlobalPos(const QContextMenuEvent* self);
int QContextMenuEvent_Reason(const QContextMenuEvent* self);
void QContextMenuEvent_Delete(QContextMenuEvent* self);

QInputMethodEvent* QInputMethodEvent_new();
QInputMethodEvent* QInputMethodEvent_new2(libqt_string preeditText, libqt_list /* of QInputMethodEvent__Attribute* */ attributes);
QInputMethodEvent* QInputMethodEvent_new3(QInputMethodEvent* other);
void QInputMethodEvent_SetCommitString(QInputMethodEvent* self, libqt_string commitString);
libqt_list /* of QInputMethodEvent__Attribute* */ QInputMethodEvent_Attributes(const QInputMethodEvent* self);
libqt_string QInputMethodEvent_PreeditString(const QInputMethodEvent* self);
libqt_string QInputMethodEvent_CommitString(const QInputMethodEvent* self);
int QInputMethodEvent_ReplacementStart(const QInputMethodEvent* self);
int QInputMethodEvent_ReplacementLength(const QInputMethodEvent* self);
void QInputMethodEvent_SetCommitString2(QInputMethodEvent* self, libqt_string commitString, int replaceFrom);
void QInputMethodEvent_SetCommitString3(QInputMethodEvent* self, libqt_string commitString, int replaceFrom, int replaceLength);
void QInputMethodEvent_Delete(QInputMethodEvent* self);

QInputMethodQueryEvent* QInputMethodQueryEvent_new(int queries);
QInputMethodQueryEvent* QInputMethodQueryEvent_new2(QInputMethodQueryEvent* param1);
int QInputMethodQueryEvent_Queries(const QInputMethodQueryEvent* self);
void QInputMethodQueryEvent_SetValue(QInputMethodQueryEvent* self, int query, QVariant* value);
QVariant* QInputMethodQueryEvent_Value(const QInputMethodQueryEvent* self, int query);
void QInputMethodQueryEvent_Delete(QInputMethodQueryEvent* self);

QDropEvent* QDropEvent_new(QPointF* pos, int actions, QMimeData* data, int buttons, int modifiers);
QDropEvent* QDropEvent_new2(QDropEvent* param1);
QDropEvent* QDropEvent_new3(QPointF* pos, int actions, QMimeData* data, int buttons, int modifiers, int typeVal);
QPoint* QDropEvent_Pos(const QDropEvent* self);
QPointF* QDropEvent_PosF(const QDropEvent* self);
int QDropEvent_MouseButtons(const QDropEvent* self);
int QDropEvent_KeyboardModifiers(const QDropEvent* self);
int QDropEvent_PossibleActions(const QDropEvent* self);
int QDropEvent_ProposedAction(const QDropEvent* self);
void QDropEvent_AcceptProposedAction(QDropEvent* self);
int QDropEvent_DropAction(const QDropEvent* self);
void QDropEvent_SetDropAction(QDropEvent* self, int action);
QObject* QDropEvent_Source(const QDropEvent* self);
QMimeData* QDropEvent_MimeData(const QDropEvent* self);
void QDropEvent_Delete(QDropEvent* self);

QDragMoveEvent* QDragMoveEvent_new(QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers);
QDragMoveEvent* QDragMoveEvent_new2(QDragMoveEvent* param1);
QDragMoveEvent* QDragMoveEvent_new3(QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers, int typeVal);
QRect* QDragMoveEvent_AnswerRect(const QDragMoveEvent* self);
void QDragMoveEvent_Accept(QDragMoveEvent* self);
void QDragMoveEvent_Ignore(QDragMoveEvent* self);
void QDragMoveEvent_AcceptWithQRect(QDragMoveEvent* self, QRect* r);
void QDragMoveEvent_IgnoreWithQRect(QDragMoveEvent* self, QRect* r);
void QDragMoveEvent_Delete(QDragMoveEvent* self);

QDragEnterEvent* QDragEnterEvent_new(QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers);
QDragEnterEvent* QDragEnterEvent_new2(QDragEnterEvent* param1);
void QDragEnterEvent_OperatorAssign(QDragEnterEvent* self, QDragEnterEvent* param1);
void QDragEnterEvent_Delete(QDragEnterEvent* self);

QDragLeaveEvent* QDragLeaveEvent_new();
QDragLeaveEvent* QDragLeaveEvent_new2(QDragLeaveEvent* param1);
void QDragLeaveEvent_OperatorAssign(QDragLeaveEvent* self, QDragLeaveEvent* param1);
void QDragLeaveEvent_Delete(QDragLeaveEvent* self);

QHelpEvent* QHelpEvent_new(int typeVal, QPoint* pos, QPoint* globalPos);
QHelpEvent* QHelpEvent_new2(QHelpEvent* param1);
int QHelpEvent_X(const QHelpEvent* self);
int QHelpEvent_Y(const QHelpEvent* self);
int QHelpEvent_GlobalX(const QHelpEvent* self);
int QHelpEvent_GlobalY(const QHelpEvent* self);
QPoint* QHelpEvent_Pos(const QHelpEvent* self);
QPoint* QHelpEvent_GlobalPos(const QHelpEvent* self);
void QHelpEvent_Delete(QHelpEvent* self);

QStatusTipEvent* QStatusTipEvent_new(libqt_string tip);
QStatusTipEvent* QStatusTipEvent_new2(QStatusTipEvent* param1);
libqt_string QStatusTipEvent_Tip(const QStatusTipEvent* self);
void QStatusTipEvent_Delete(QStatusTipEvent* self);

QWhatsThisClickedEvent* QWhatsThisClickedEvent_new(libqt_string href);
QWhatsThisClickedEvent* QWhatsThisClickedEvent_new2(QWhatsThisClickedEvent* param1);
libqt_string QWhatsThisClickedEvent_Href(const QWhatsThisClickedEvent* self);
void QWhatsThisClickedEvent_Delete(QWhatsThisClickedEvent* self);

QActionEvent* QActionEvent_new(int typeVal, QAction* action);
QActionEvent* QActionEvent_new2(QActionEvent* param1);
QActionEvent* QActionEvent_new3(int typeVal, QAction* action, QAction* before);
QAction* QActionEvent_Action(const QActionEvent* self);
QAction* QActionEvent_Before(const QActionEvent* self);
void QActionEvent_OperatorAssign(QActionEvent* self, QActionEvent* param1);
void QActionEvent_Delete(QActionEvent* self);

QFileOpenEvent* QFileOpenEvent_new(libqt_string file);
QFileOpenEvent* QFileOpenEvent_new2(QUrl* url);
QFileOpenEvent* QFileOpenEvent_new3(QFileOpenEvent* param1);
libqt_string QFileOpenEvent_File(const QFileOpenEvent* self);
QUrl* QFileOpenEvent_Url(const QFileOpenEvent* self);
bool QFileOpenEvent_OpenFile(const QFileOpenEvent* self, QFile* file, int flags);
void QFileOpenEvent_Delete(QFileOpenEvent* self);

QToolBarChangeEvent* QToolBarChangeEvent_new(bool t);
QToolBarChangeEvent* QToolBarChangeEvent_new2(QToolBarChangeEvent* param1);
bool QToolBarChangeEvent_Toggle(const QToolBarChangeEvent* self);
void QToolBarChangeEvent_Delete(QToolBarChangeEvent* self);

QShortcutEvent* QShortcutEvent_new(QKeySequence* key, int id);
QShortcutEvent* QShortcutEvent_new2(QShortcutEvent* param1);
QShortcutEvent* QShortcutEvent_new3(QKeySequence* key, int id, bool ambiguous);
QKeySequence* QShortcutEvent_Key(const QShortcutEvent* self);
int QShortcutEvent_ShortcutId(const QShortcutEvent* self);
bool QShortcutEvent_IsAmbiguous(const QShortcutEvent* self);
void QShortcutEvent_Delete(QShortcutEvent* self);

QWindowStateChangeEvent* QWindowStateChangeEvent_new(int aOldState);
QWindowStateChangeEvent* QWindowStateChangeEvent_new2(QWindowStateChangeEvent* param1);
QWindowStateChangeEvent* QWindowStateChangeEvent_new3(int aOldState, bool isOverride);
int QWindowStateChangeEvent_OldState(const QWindowStateChangeEvent* self);
bool QWindowStateChangeEvent_IsOverride(const QWindowStateChangeEvent* self);
void QWindowStateChangeEvent_Delete(QWindowStateChangeEvent* self);

QPointingDeviceUniqueId* QPointingDeviceUniqueId_new(QPointingDeviceUniqueId* other);
QPointingDeviceUniqueId* QPointingDeviceUniqueId_new2(QPointingDeviceUniqueId* other);
QPointingDeviceUniqueId* QPointingDeviceUniqueId_new3();
QPointingDeviceUniqueId* QPointingDeviceUniqueId_new4(QPointingDeviceUniqueId* param1);
void QPointingDeviceUniqueId_CopyAssign(QPointingDeviceUniqueId* self, QPointingDeviceUniqueId* other);
void QPointingDeviceUniqueId_MoveAssign(QPointingDeviceUniqueId* self, QPointingDeviceUniqueId* other);
QPointingDeviceUniqueId* QPointingDeviceUniqueId_FromNumericId(long long id);
bool QPointingDeviceUniqueId_IsValid(const QPointingDeviceUniqueId* self);
long long QPointingDeviceUniqueId_NumericId(const QPointingDeviceUniqueId* self);
void QPointingDeviceUniqueId_Delete(QPointingDeviceUniqueId* self);

QTouchEvent* QTouchEvent_new(int eventType);
QTouchEvent* QTouchEvent_new2(QTouchEvent* param1);
QTouchEvent* QTouchEvent_new3(int eventType, QTouchDevice* device);
QTouchEvent* QTouchEvent_new4(int eventType, QTouchDevice* device, int modifiers);
QTouchEvent* QTouchEvent_new5(int eventType, QTouchDevice* device, int modifiers, int touchPointStates);
QTouchEvent* QTouchEvent_new6(int eventType, QTouchDevice* device, int modifiers, int touchPointStates, libqt_list /* of QTouchEvent__TouchPoint* */ touchPoints);
QWindow* QTouchEvent_Window(const QTouchEvent* self);
QObject* QTouchEvent_Target(const QTouchEvent* self);
int QTouchEvent_TouchPointStates(const QTouchEvent* self);
libqt_list /* of QTouchEvent__TouchPoint* */ QTouchEvent_TouchPoints(const QTouchEvent* self);
QTouchDevice* QTouchEvent_Device(const QTouchEvent* self);
void QTouchEvent_SetWindow(QTouchEvent* self, QWindow* awindow);
void QTouchEvent_SetTarget(QTouchEvent* self, QObject* atarget);
void QTouchEvent_SetTouchPointStates(QTouchEvent* self, int aTouchPointStates);
void QTouchEvent_SetTouchPoints(QTouchEvent* self, libqt_list /* of QTouchEvent__TouchPoint* */ atouchPoints);
void QTouchEvent_SetDevice(QTouchEvent* self, QTouchDevice* adevice);
void QTouchEvent_Delete(QTouchEvent* self);

QScrollPrepareEvent* QScrollPrepareEvent_new(QPointF* startPos);
QScrollPrepareEvent* QScrollPrepareEvent_new2(QScrollPrepareEvent* param1);
QPointF* QScrollPrepareEvent_StartPos(const QScrollPrepareEvent* self);
QSizeF* QScrollPrepareEvent_ViewportSize(const QScrollPrepareEvent* self);
QRectF* QScrollPrepareEvent_ContentPosRange(const QScrollPrepareEvent* self);
QPointF* QScrollPrepareEvent_ContentPos(const QScrollPrepareEvent* self);
void QScrollPrepareEvent_SetViewportSize(QScrollPrepareEvent* self, QSizeF* size);
void QScrollPrepareEvent_SetContentPosRange(QScrollPrepareEvent* self, QRectF* rect);
void QScrollPrepareEvent_SetContentPos(QScrollPrepareEvent* self, QPointF* pos);
void QScrollPrepareEvent_Delete(QScrollPrepareEvent* self);

QScrollEvent* QScrollEvent_new(QPointF* contentPos, QPointF* overshoot, int scrollState);
QScrollEvent* QScrollEvent_new2(QScrollEvent* param1);
QPointF* QScrollEvent_ContentPos(const QScrollEvent* self);
QPointF* QScrollEvent_OvershootDistance(const QScrollEvent* self);
int QScrollEvent_ScrollState(const QScrollEvent* self);
void QScrollEvent_Delete(QScrollEvent* self);

QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_new(QScreen* screen, int orientation);
QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_new2(QScreenOrientationChangeEvent* param1);
QScreen* QScreenOrientationChangeEvent_Screen(const QScreenOrientationChangeEvent* self);
int QScreenOrientationChangeEvent_Orientation(const QScreenOrientationChangeEvent* self);
void QScreenOrientationChangeEvent_Delete(QScreenOrientationChangeEvent* self);

QApplicationStateChangeEvent* QApplicationStateChangeEvent_new(int state);
QApplicationStateChangeEvent* QApplicationStateChangeEvent_new2(QApplicationStateChangeEvent* param1);
int QApplicationStateChangeEvent_ApplicationState(const QApplicationStateChangeEvent* self);
void QApplicationStateChangeEvent_Delete(QApplicationStateChangeEvent* self);

QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new(int typ, int s, int l, QVariant* val);
QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new2(int typ, int s, int l);
QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new3(QInputMethodEvent__Attribute* param1);
void QInputMethodEvent__Attribute_OperatorAssign(QInputMethodEvent__Attribute* self, QInputMethodEvent__Attribute* param1);
void QInputMethodEvent__Attribute_Delete(QInputMethodEvent__Attribute* self);

QTouchEvent__TouchPoint* QTouchEvent__TouchPoint_new();
QTouchEvent__TouchPoint* QTouchEvent__TouchPoint_new2(QTouchEvent__TouchPoint* other);
QTouchEvent__TouchPoint* QTouchEvent__TouchPoint_new3(int id);
void QTouchEvent__TouchPoint_OperatorAssign(QTouchEvent__TouchPoint* self, QTouchEvent__TouchPoint* other);
void QTouchEvent__TouchPoint_Swap(QTouchEvent__TouchPoint* self, QTouchEvent__TouchPoint* other);
int QTouchEvent__TouchPoint_Id(const QTouchEvent__TouchPoint* self);
QPointingDeviceUniqueId* QTouchEvent__TouchPoint_UniqueId(const QTouchEvent__TouchPoint* self);
int QTouchEvent__TouchPoint_State(const QTouchEvent__TouchPoint* self);
QPointF* QTouchEvent__TouchPoint_Pos(const QTouchEvent__TouchPoint* self);
QPointF* QTouchEvent__TouchPoint_StartPos(const QTouchEvent__TouchPoint* self);
QPointF* QTouchEvent__TouchPoint_LastPos(const QTouchEvent__TouchPoint* self);
QPointF* QTouchEvent__TouchPoint_ScenePos(const QTouchEvent__TouchPoint* self);
QPointF* QTouchEvent__TouchPoint_StartScenePos(const QTouchEvent__TouchPoint* self);
QPointF* QTouchEvent__TouchPoint_LastScenePos(const QTouchEvent__TouchPoint* self);
QPointF* QTouchEvent__TouchPoint_ScreenPos(const QTouchEvent__TouchPoint* self);
QPointF* QTouchEvent__TouchPoint_StartScreenPos(const QTouchEvent__TouchPoint* self);
QPointF* QTouchEvent__TouchPoint_LastScreenPos(const QTouchEvent__TouchPoint* self);
QPointF* QTouchEvent__TouchPoint_NormalizedPos(const QTouchEvent__TouchPoint* self);
QPointF* QTouchEvent__TouchPoint_StartNormalizedPos(const QTouchEvent__TouchPoint* self);
QPointF* QTouchEvent__TouchPoint_LastNormalizedPos(const QTouchEvent__TouchPoint* self);
QRectF* QTouchEvent__TouchPoint_Rect(const QTouchEvent__TouchPoint* self);
QRectF* QTouchEvent__TouchPoint_SceneRect(const QTouchEvent__TouchPoint* self);
QRectF* QTouchEvent__TouchPoint_ScreenRect(const QTouchEvent__TouchPoint* self);
void QTouchEvent__TouchPoint_SetRect(QTouchEvent__TouchPoint* self, QRectF* rect);
void QTouchEvent__TouchPoint_SetSceneRect(QTouchEvent__TouchPoint* self, QRectF* sceneRect);
void QTouchEvent__TouchPoint_SetScreenRect(QTouchEvent__TouchPoint* self, QRectF* screenRect);
double QTouchEvent__TouchPoint_Pressure(const QTouchEvent__TouchPoint* self);
double QTouchEvent__TouchPoint_Rotation(const QTouchEvent__TouchPoint* self);
QSizeF* QTouchEvent__TouchPoint_EllipseDiameters(const QTouchEvent__TouchPoint* self);
QVector2D* QTouchEvent__TouchPoint_Velocity(const QTouchEvent__TouchPoint* self);
int QTouchEvent__TouchPoint_Flags(const QTouchEvent__TouchPoint* self);
libqt_list /* of QPointF* */ QTouchEvent__TouchPoint_RawScreenPositions(const QTouchEvent__TouchPoint* self);
void QTouchEvent__TouchPoint_SetId(QTouchEvent__TouchPoint* self, int id);
void QTouchEvent__TouchPoint_SetUniqueId(QTouchEvent__TouchPoint* self, long long uid);
void QTouchEvent__TouchPoint_SetState(QTouchEvent__TouchPoint* self, int state);
void QTouchEvent__TouchPoint_SetPos(QTouchEvent__TouchPoint* self, QPointF* pos);
void QTouchEvent__TouchPoint_SetScenePos(QTouchEvent__TouchPoint* self, QPointF* scenePos);
void QTouchEvent__TouchPoint_SetScreenPos(QTouchEvent__TouchPoint* self, QPointF* screenPos);
void QTouchEvent__TouchPoint_SetNormalizedPos(QTouchEvent__TouchPoint* self, QPointF* normalizedPos);
void QTouchEvent__TouchPoint_SetStartPos(QTouchEvent__TouchPoint* self, QPointF* startPos);
void QTouchEvent__TouchPoint_SetStartScenePos(QTouchEvent__TouchPoint* self, QPointF* startScenePos);
void QTouchEvent__TouchPoint_SetStartScreenPos(QTouchEvent__TouchPoint* self, QPointF* startScreenPos);
void QTouchEvent__TouchPoint_SetStartNormalizedPos(QTouchEvent__TouchPoint* self, QPointF* startNormalizedPos);
void QTouchEvent__TouchPoint_SetLastPos(QTouchEvent__TouchPoint* self, QPointF* lastPos);
void QTouchEvent__TouchPoint_SetLastScenePos(QTouchEvent__TouchPoint* self, QPointF* lastScenePos);
void QTouchEvent__TouchPoint_SetLastScreenPos(QTouchEvent__TouchPoint* self, QPointF* lastScreenPos);
void QTouchEvent__TouchPoint_SetLastNormalizedPos(QTouchEvent__TouchPoint* self, QPointF* lastNormalizedPos);
void QTouchEvent__TouchPoint_SetPressure(QTouchEvent__TouchPoint* self, double pressure);
void QTouchEvent__TouchPoint_SetRotation(QTouchEvent__TouchPoint* self, double angle);
void QTouchEvent__TouchPoint_SetEllipseDiameters(QTouchEvent__TouchPoint* self, QSizeF* dia);
void QTouchEvent__TouchPoint_SetVelocity(QTouchEvent__TouchPoint* self, QVector2D* v);
void QTouchEvent__TouchPoint_SetFlags(QTouchEvent__TouchPoint* self, int flags);
void QTouchEvent__TouchPoint_SetRawScreenPositions(QTouchEvent__TouchPoint* self, libqt_list /* of QPointF* */ positions);
void QTouchEvent__TouchPoint_Delete(QTouchEvent__TouchPoint* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
