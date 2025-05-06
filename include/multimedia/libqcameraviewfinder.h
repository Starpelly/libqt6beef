#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQCAMERAVIEWFINDER_H
#define SRC_MULTIMEDIAC_LIBQCAMERAVIEWFINDER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "../qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QAbstractVideoSurface QAbstractVideoSurface;
typedef struct QAction QAction;
typedef struct QActionEvent QActionEvent;
typedef struct QBackingStore QBackingStore;
typedef struct QBitmap QBitmap;
typedef struct QCameraViewfinder QCameraViewfinder;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QCursor QCursor;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QFont QFont;
typedef struct QFontInfo QFontInfo;
typedef struct QFontMetrics QFontMetrics;
typedef struct QGraphicsEffect QGraphicsEffect;
typedef struct QGraphicsProxyWidget QGraphicsProxyWidget;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QKeySequence QKeySequence;
typedef struct QLayout QLayout;
typedef struct QLocale QLocale;
typedef struct QMargins QMargins;
typedef struct QMediaBindableInterface QMediaBindableInterface;
typedef struct QMediaObject QMediaObject;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QObjectUserData QObjectUserData;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPalette QPalette;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QRegion QRegion;
typedef struct QResizeEvent QResizeEvent;
typedef struct QScreen QScreen;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QSizePolicy QSizePolicy;
typedef struct QStyle QStyle;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVideoWidget QVideoWidget;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

QCameraViewfinder* QCameraViewfinder_new(QWidget* parent);
QCameraViewfinder* QCameraViewfinder_new2();
QMetaObject* QCameraViewfinder_MetaObject(const QCameraViewfinder* self);
void* QCameraViewfinder_Metacast(QCameraViewfinder* self, const char* param1);
int QCameraViewfinder_Metacall(QCameraViewfinder* self, int param1, int param2, void** param3);
void QCameraViewfinder_OnMetacall(QCameraViewfinder* self, intptr_t slot);
int QCameraViewfinder_QBaseMetacall(QCameraViewfinder* self, int param1, int param2, void** param3);
libqt_string QCameraViewfinder_Tr(const char* s);
libqt_string QCameraViewfinder_TrUtf8(const char* s);
QMediaObject* QCameraViewfinder_MediaObject(const QCameraViewfinder* self);
void QCameraViewfinder_OnMediaObject(const QCameraViewfinder* self, intptr_t slot);
QMediaObject* QCameraViewfinder_QBaseMediaObject(const QCameraViewfinder* self);
bool QCameraViewfinder_SetMediaObject(QCameraViewfinder* self, QMediaObject* object);
void QCameraViewfinder_OnSetMediaObject(QCameraViewfinder* self, intptr_t slot);
bool QCameraViewfinder_QBaseSetMediaObject(QCameraViewfinder* self, QMediaObject* object);
libqt_string QCameraViewfinder_Tr2(const char* s, const char* c);
libqt_string QCameraViewfinder_Tr3(const char* s, const char* c, int n);
libqt_string QCameraViewfinder_TrUtf82(const char* s, const char* c);
libqt_string QCameraViewfinder_TrUtf83(const char* s, const char* c, int n);
QSize* QCameraViewfinder_SizeHint(const QCameraViewfinder* self);
void QCameraViewfinder_OnSizeHint(const QCameraViewfinder* self, intptr_t slot);
QSize* QCameraViewfinder_QBaseSizeHint(const QCameraViewfinder* self);
bool QCameraViewfinder_Event(QCameraViewfinder* self, QEvent* event);
void QCameraViewfinder_OnEvent(QCameraViewfinder* self, intptr_t slot);
bool QCameraViewfinder_QBaseEvent(QCameraViewfinder* self, QEvent* event);
void QCameraViewfinder_ShowEvent(QCameraViewfinder* self, QShowEvent* event);
void QCameraViewfinder_OnShowEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseShowEvent(QCameraViewfinder* self, QShowEvent* event);
void QCameraViewfinder_HideEvent(QCameraViewfinder* self, QHideEvent* event);
void QCameraViewfinder_OnHideEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseHideEvent(QCameraViewfinder* self, QHideEvent* event);
void QCameraViewfinder_ResizeEvent(QCameraViewfinder* self, QResizeEvent* event);
void QCameraViewfinder_OnResizeEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseResizeEvent(QCameraViewfinder* self, QResizeEvent* event);
void QCameraViewfinder_MoveEvent(QCameraViewfinder* self, QMoveEvent* event);
void QCameraViewfinder_OnMoveEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseMoveEvent(QCameraViewfinder* self, QMoveEvent* event);
void QCameraViewfinder_PaintEvent(QCameraViewfinder* self, QPaintEvent* event);
void QCameraViewfinder_OnPaintEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBasePaintEvent(QCameraViewfinder* self, QPaintEvent* event);
int QCameraViewfinder_DevType(const QCameraViewfinder* self);
void QCameraViewfinder_OnDevType(const QCameraViewfinder* self, intptr_t slot);
int QCameraViewfinder_QBaseDevType(const QCameraViewfinder* self);
void QCameraViewfinder_SetVisible(QCameraViewfinder* self, bool visible);
void QCameraViewfinder_OnSetVisible(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseSetVisible(QCameraViewfinder* self, bool visible);
QSize* QCameraViewfinder_MinimumSizeHint(const QCameraViewfinder* self);
void QCameraViewfinder_OnMinimumSizeHint(const QCameraViewfinder* self, intptr_t slot);
QSize* QCameraViewfinder_QBaseMinimumSizeHint(const QCameraViewfinder* self);
int QCameraViewfinder_HeightForWidth(const QCameraViewfinder* self, int param1);
void QCameraViewfinder_OnHeightForWidth(const QCameraViewfinder* self, intptr_t slot);
int QCameraViewfinder_QBaseHeightForWidth(const QCameraViewfinder* self, int param1);
bool QCameraViewfinder_HasHeightForWidth(const QCameraViewfinder* self);
void QCameraViewfinder_OnHasHeightForWidth(const QCameraViewfinder* self, intptr_t slot);
bool QCameraViewfinder_QBaseHasHeightForWidth(const QCameraViewfinder* self);
QPaintEngine* QCameraViewfinder_PaintEngine(const QCameraViewfinder* self);
void QCameraViewfinder_OnPaintEngine(const QCameraViewfinder* self, intptr_t slot);
QPaintEngine* QCameraViewfinder_QBasePaintEngine(const QCameraViewfinder* self);
void QCameraViewfinder_MousePressEvent(QCameraViewfinder* self, QMouseEvent* event);
void QCameraViewfinder_OnMousePressEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseMousePressEvent(QCameraViewfinder* self, QMouseEvent* event);
void QCameraViewfinder_MouseReleaseEvent(QCameraViewfinder* self, QMouseEvent* event);
void QCameraViewfinder_OnMouseReleaseEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseMouseReleaseEvent(QCameraViewfinder* self, QMouseEvent* event);
void QCameraViewfinder_MouseDoubleClickEvent(QCameraViewfinder* self, QMouseEvent* event);
void QCameraViewfinder_OnMouseDoubleClickEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseMouseDoubleClickEvent(QCameraViewfinder* self, QMouseEvent* event);
void QCameraViewfinder_MouseMoveEvent(QCameraViewfinder* self, QMouseEvent* event);
void QCameraViewfinder_OnMouseMoveEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseMouseMoveEvent(QCameraViewfinder* self, QMouseEvent* event);
void QCameraViewfinder_WheelEvent(QCameraViewfinder* self, QWheelEvent* event);
void QCameraViewfinder_OnWheelEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseWheelEvent(QCameraViewfinder* self, QWheelEvent* event);
void QCameraViewfinder_KeyPressEvent(QCameraViewfinder* self, QKeyEvent* event);
void QCameraViewfinder_OnKeyPressEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseKeyPressEvent(QCameraViewfinder* self, QKeyEvent* event);
void QCameraViewfinder_KeyReleaseEvent(QCameraViewfinder* self, QKeyEvent* event);
void QCameraViewfinder_OnKeyReleaseEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseKeyReleaseEvent(QCameraViewfinder* self, QKeyEvent* event);
void QCameraViewfinder_FocusInEvent(QCameraViewfinder* self, QFocusEvent* event);
void QCameraViewfinder_OnFocusInEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseFocusInEvent(QCameraViewfinder* self, QFocusEvent* event);
void QCameraViewfinder_FocusOutEvent(QCameraViewfinder* self, QFocusEvent* event);
void QCameraViewfinder_OnFocusOutEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseFocusOutEvent(QCameraViewfinder* self, QFocusEvent* event);
void QCameraViewfinder_EnterEvent(QCameraViewfinder* self, QEvent* event);
void QCameraViewfinder_OnEnterEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseEnterEvent(QCameraViewfinder* self, QEvent* event);
void QCameraViewfinder_LeaveEvent(QCameraViewfinder* self, QEvent* event);
void QCameraViewfinder_OnLeaveEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseLeaveEvent(QCameraViewfinder* self, QEvent* event);
void QCameraViewfinder_CloseEvent(QCameraViewfinder* self, QCloseEvent* event);
void QCameraViewfinder_OnCloseEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseCloseEvent(QCameraViewfinder* self, QCloseEvent* event);
void QCameraViewfinder_ContextMenuEvent(QCameraViewfinder* self, QContextMenuEvent* event);
void QCameraViewfinder_OnContextMenuEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseContextMenuEvent(QCameraViewfinder* self, QContextMenuEvent* event);
void QCameraViewfinder_TabletEvent(QCameraViewfinder* self, QTabletEvent* event);
void QCameraViewfinder_OnTabletEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseTabletEvent(QCameraViewfinder* self, QTabletEvent* event);
void QCameraViewfinder_ActionEvent(QCameraViewfinder* self, QActionEvent* event);
void QCameraViewfinder_OnActionEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseActionEvent(QCameraViewfinder* self, QActionEvent* event);
void QCameraViewfinder_DragEnterEvent(QCameraViewfinder* self, QDragEnterEvent* event);
void QCameraViewfinder_OnDragEnterEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseDragEnterEvent(QCameraViewfinder* self, QDragEnterEvent* event);
void QCameraViewfinder_DragMoveEvent(QCameraViewfinder* self, QDragMoveEvent* event);
void QCameraViewfinder_OnDragMoveEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseDragMoveEvent(QCameraViewfinder* self, QDragMoveEvent* event);
void QCameraViewfinder_DragLeaveEvent(QCameraViewfinder* self, QDragLeaveEvent* event);
void QCameraViewfinder_OnDragLeaveEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseDragLeaveEvent(QCameraViewfinder* self, QDragLeaveEvent* event);
void QCameraViewfinder_DropEvent(QCameraViewfinder* self, QDropEvent* event);
void QCameraViewfinder_OnDropEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseDropEvent(QCameraViewfinder* self, QDropEvent* event);
bool QCameraViewfinder_NativeEvent(QCameraViewfinder* self, libqt_string eventType, void* message, long* result);
void QCameraViewfinder_OnNativeEvent(QCameraViewfinder* self, intptr_t slot);
bool QCameraViewfinder_QBaseNativeEvent(QCameraViewfinder* self, libqt_string eventType, void* message, long* result);
void QCameraViewfinder_ChangeEvent(QCameraViewfinder* self, QEvent* param1);
void QCameraViewfinder_OnChangeEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseChangeEvent(QCameraViewfinder* self, QEvent* param1);
void QCameraViewfinder_InputMethodEvent(QCameraViewfinder* self, QInputMethodEvent* param1);
void QCameraViewfinder_OnInputMethodEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseInputMethodEvent(QCameraViewfinder* self, QInputMethodEvent* param1);
QVariant* QCameraViewfinder_InputMethodQuery(const QCameraViewfinder* self, int param1);
void QCameraViewfinder_OnInputMethodQuery(const QCameraViewfinder* self, intptr_t slot);
QVariant* QCameraViewfinder_QBaseInputMethodQuery(const QCameraViewfinder* self, int param1);
bool QCameraViewfinder_FocusNextPrevChild(QCameraViewfinder* self, bool next);
void QCameraViewfinder_OnFocusNextPrevChild(QCameraViewfinder* self, intptr_t slot);
bool QCameraViewfinder_QBaseFocusNextPrevChild(QCameraViewfinder* self, bool next);
bool QCameraViewfinder_EventFilter(QCameraViewfinder* self, QObject* watched, QEvent* event);
void QCameraViewfinder_OnEventFilter(QCameraViewfinder* self, intptr_t slot);
bool QCameraViewfinder_QBaseEventFilter(QCameraViewfinder* self, QObject* watched, QEvent* event);
void QCameraViewfinder_TimerEvent(QCameraViewfinder* self, QTimerEvent* event);
void QCameraViewfinder_OnTimerEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseTimerEvent(QCameraViewfinder* self, QTimerEvent* event);
void QCameraViewfinder_ChildEvent(QCameraViewfinder* self, QChildEvent* event);
void QCameraViewfinder_OnChildEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseChildEvent(QCameraViewfinder* self, QChildEvent* event);
void QCameraViewfinder_CustomEvent(QCameraViewfinder* self, QEvent* event);
void QCameraViewfinder_OnCustomEvent(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseCustomEvent(QCameraViewfinder* self, QEvent* event);
void QCameraViewfinder_ConnectNotify(QCameraViewfinder* self, QMetaMethod* signal);
void QCameraViewfinder_OnConnectNotify(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseConnectNotify(QCameraViewfinder* self, QMetaMethod* signal);
void QCameraViewfinder_DisconnectNotify(QCameraViewfinder* self, QMetaMethod* signal);
void QCameraViewfinder_OnDisconnectNotify(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseDisconnectNotify(QCameraViewfinder* self, QMetaMethod* signal);
int QCameraViewfinder_Metric(const QCameraViewfinder* self, int param1);
void QCameraViewfinder_OnMetric(const QCameraViewfinder* self, intptr_t slot);
int QCameraViewfinder_QBaseMetric(const QCameraViewfinder* self, int param1);
void QCameraViewfinder_InitPainter(const QCameraViewfinder* self, QPainter* painter);
void QCameraViewfinder_OnInitPainter(const QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseInitPainter(const QCameraViewfinder* self, QPainter* painter);
QPaintDevice* QCameraViewfinder_Redirected(const QCameraViewfinder* self, QPoint* offset);
void QCameraViewfinder_OnRedirected(const QCameraViewfinder* self, intptr_t slot);
QPaintDevice* QCameraViewfinder_QBaseRedirected(const QCameraViewfinder* self, QPoint* offset);
QPainter* QCameraViewfinder_SharedPainter(const QCameraViewfinder* self);
void QCameraViewfinder_OnSharedPainter(const QCameraViewfinder* self, intptr_t slot);
QPainter* QCameraViewfinder_QBaseSharedPainter(const QCameraViewfinder* self);
void QCameraViewfinder_UpdateMicroFocus(QCameraViewfinder* self);
void QCameraViewfinder_OnUpdateMicroFocus(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseUpdateMicroFocus(QCameraViewfinder* self);
void QCameraViewfinder_Create(QCameraViewfinder* self);
void QCameraViewfinder_OnCreate(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseCreate(QCameraViewfinder* self);
void QCameraViewfinder_Destroy(QCameraViewfinder* self);
void QCameraViewfinder_OnDestroy(QCameraViewfinder* self, intptr_t slot);
void QCameraViewfinder_QBaseDestroy(QCameraViewfinder* self);
bool QCameraViewfinder_FocusNextChild(QCameraViewfinder* self);
void QCameraViewfinder_OnFocusNextChild(QCameraViewfinder* self, intptr_t slot);
bool QCameraViewfinder_QBaseFocusNextChild(QCameraViewfinder* self);
bool QCameraViewfinder_FocusPreviousChild(QCameraViewfinder* self);
void QCameraViewfinder_OnFocusPreviousChild(QCameraViewfinder* self, intptr_t slot);
bool QCameraViewfinder_QBaseFocusPreviousChild(QCameraViewfinder* self);
QObject* QCameraViewfinder_Sender(const QCameraViewfinder* self);
void QCameraViewfinder_OnSender(const QCameraViewfinder* self, intptr_t slot);
QObject* QCameraViewfinder_QBaseSender(const QCameraViewfinder* self);
int QCameraViewfinder_SenderSignalIndex(const QCameraViewfinder* self);
void QCameraViewfinder_OnSenderSignalIndex(const QCameraViewfinder* self, intptr_t slot);
int QCameraViewfinder_QBaseSenderSignalIndex(const QCameraViewfinder* self);
int QCameraViewfinder_Receivers(const QCameraViewfinder* self, const char* signal);
void QCameraViewfinder_OnReceivers(const QCameraViewfinder* self, intptr_t slot);
int QCameraViewfinder_QBaseReceivers(const QCameraViewfinder* self, const char* signal);
bool QCameraViewfinder_IsSignalConnected(const QCameraViewfinder* self, QMetaMethod* signal);
void QCameraViewfinder_OnIsSignalConnected(const QCameraViewfinder* self, intptr_t slot);
bool QCameraViewfinder_QBaseIsSignalConnected(const QCameraViewfinder* self, QMetaMethod* signal);
void QCameraViewfinder_Delete(QCameraViewfinder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
