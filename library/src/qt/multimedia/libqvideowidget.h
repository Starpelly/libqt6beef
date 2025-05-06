#pragma once
#ifndef SRC_QT_MULTIMEDIAC_LIBQVIDEOWIDGET_H
#define SRC_QT_MULTIMEDIAC_LIBQVIDEOWIDGET_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#endif
#else
typedef struct QAction QAction;
typedef struct QActionEvent QActionEvent;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBackingStore QBackingStore;
typedef struct QBindingStorage QBindingStorage;
typedef struct QBitmap QBitmap;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QCursor QCursor;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
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
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPalette QPalette;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
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
typedef struct QVideoSink QVideoSink;
typedef struct QVideoWidget QVideoWidget;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

QTLIBC_API QVideoWidget* QVideoWidget_new(QWidget* parent);
QTLIBC_API QVideoWidget* QVideoWidget_new2();
QTLIBC_API QMetaObject* QVideoWidget_MetaObject(const QVideoWidget* self);
QTLIBC_API void* QVideoWidget_Metacast(QVideoWidget* self, const char* param1);
QTLIBC_API int QVideoWidget_Metacall(QVideoWidget* self, int param1, int param2, void** param3);
QTLIBC_API void QVideoWidget_OnMetacall(QVideoWidget* self, intptr_t slot);
QTLIBC_API int QVideoWidget_QBaseMetacall(QVideoWidget* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QVideoWidget_Tr(const char* s);
QTLIBC_API QVideoSink* QVideoWidget_VideoSink(const QVideoWidget* self);
QTLIBC_API int QVideoWidget_AspectRatioMode(const QVideoWidget* self);
QTLIBC_API QSize* QVideoWidget_SizeHint(const QVideoWidget* self);
QTLIBC_API void QVideoWidget_OnSizeHint(const QVideoWidget* self, intptr_t slot);
QTLIBC_API QSize* QVideoWidget_QBaseSizeHint(const QVideoWidget* self);
QTLIBC_API void QVideoWidget_SetFullScreen(QVideoWidget* self, bool fullScreen);
QTLIBC_API void QVideoWidget_SetAspectRatioMode(QVideoWidget* self, int mode);
QTLIBC_API void QVideoWidget_FullScreenChanged(QVideoWidget* self, bool fullScreen);
QTLIBC_API void QVideoWidget_Connect_FullScreenChanged(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_AspectRatioModeChanged(QVideoWidget* self, int mode);
QTLIBC_API void QVideoWidget_Connect_AspectRatioModeChanged(QVideoWidget* self, intptr_t slot);
QTLIBC_API bool QVideoWidget_Event(QVideoWidget* self, QEvent* event);
QTLIBC_API void QVideoWidget_OnEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API bool QVideoWidget_QBaseEvent(QVideoWidget* self, QEvent* event);
QTLIBC_API void QVideoWidget_ShowEvent(QVideoWidget* self, QShowEvent* event);
QTLIBC_API void QVideoWidget_OnShowEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseShowEvent(QVideoWidget* self, QShowEvent* event);
QTLIBC_API void QVideoWidget_HideEvent(QVideoWidget* self, QHideEvent* event);
QTLIBC_API void QVideoWidget_OnHideEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseHideEvent(QVideoWidget* self, QHideEvent* event);
QTLIBC_API void QVideoWidget_ResizeEvent(QVideoWidget* self, QResizeEvent* event);
QTLIBC_API void QVideoWidget_OnResizeEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseResizeEvent(QVideoWidget* self, QResizeEvent* event);
QTLIBC_API void QVideoWidget_MoveEvent(QVideoWidget* self, QMoveEvent* event);
QTLIBC_API void QVideoWidget_OnMoveEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseMoveEvent(QVideoWidget* self, QMoveEvent* event);
QTLIBC_API libqt_string QVideoWidget_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QVideoWidget_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QVideoWidget_DevType(const QVideoWidget* self);
QTLIBC_API void QVideoWidget_OnDevType(const QVideoWidget* self, intptr_t slot);
QTLIBC_API int QVideoWidget_QBaseDevType(const QVideoWidget* self);
QTLIBC_API void QVideoWidget_SetVisible(QVideoWidget* self, bool visible);
QTLIBC_API void QVideoWidget_OnSetVisible(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseSetVisible(QVideoWidget* self, bool visible);
QTLIBC_API QSize* QVideoWidget_MinimumSizeHint(const QVideoWidget* self);
QTLIBC_API void QVideoWidget_OnMinimumSizeHint(const QVideoWidget* self, intptr_t slot);
QTLIBC_API QSize* QVideoWidget_QBaseMinimumSizeHint(const QVideoWidget* self);
QTLIBC_API int QVideoWidget_HeightForWidth(const QVideoWidget* self, int param1);
QTLIBC_API void QVideoWidget_OnHeightForWidth(const QVideoWidget* self, intptr_t slot);
QTLIBC_API int QVideoWidget_QBaseHeightForWidth(const QVideoWidget* self, int param1);
QTLIBC_API bool QVideoWidget_HasHeightForWidth(const QVideoWidget* self);
QTLIBC_API void QVideoWidget_OnHasHeightForWidth(const QVideoWidget* self, intptr_t slot);
QTLIBC_API bool QVideoWidget_QBaseHasHeightForWidth(const QVideoWidget* self);
QTLIBC_API QPaintEngine* QVideoWidget_PaintEngine(const QVideoWidget* self);
QTLIBC_API void QVideoWidget_OnPaintEngine(const QVideoWidget* self, intptr_t slot);
QTLIBC_API QPaintEngine* QVideoWidget_QBasePaintEngine(const QVideoWidget* self);
QTLIBC_API void QVideoWidget_MousePressEvent(QVideoWidget* self, QMouseEvent* event);
QTLIBC_API void QVideoWidget_OnMousePressEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseMousePressEvent(QVideoWidget* self, QMouseEvent* event);
QTLIBC_API void QVideoWidget_MouseReleaseEvent(QVideoWidget* self, QMouseEvent* event);
QTLIBC_API void QVideoWidget_OnMouseReleaseEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseMouseReleaseEvent(QVideoWidget* self, QMouseEvent* event);
QTLIBC_API void QVideoWidget_MouseDoubleClickEvent(QVideoWidget* self, QMouseEvent* event);
QTLIBC_API void QVideoWidget_OnMouseDoubleClickEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseMouseDoubleClickEvent(QVideoWidget* self, QMouseEvent* event);
QTLIBC_API void QVideoWidget_MouseMoveEvent(QVideoWidget* self, QMouseEvent* event);
QTLIBC_API void QVideoWidget_OnMouseMoveEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseMouseMoveEvent(QVideoWidget* self, QMouseEvent* event);
QTLIBC_API void QVideoWidget_WheelEvent(QVideoWidget* self, QWheelEvent* event);
QTLIBC_API void QVideoWidget_OnWheelEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseWheelEvent(QVideoWidget* self, QWheelEvent* event);
QTLIBC_API void QVideoWidget_KeyPressEvent(QVideoWidget* self, QKeyEvent* event);
QTLIBC_API void QVideoWidget_OnKeyPressEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseKeyPressEvent(QVideoWidget* self, QKeyEvent* event);
QTLIBC_API void QVideoWidget_KeyReleaseEvent(QVideoWidget* self, QKeyEvent* event);
QTLIBC_API void QVideoWidget_OnKeyReleaseEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseKeyReleaseEvent(QVideoWidget* self, QKeyEvent* event);
QTLIBC_API void QVideoWidget_FocusInEvent(QVideoWidget* self, QFocusEvent* event);
QTLIBC_API void QVideoWidget_OnFocusInEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseFocusInEvent(QVideoWidget* self, QFocusEvent* event);
QTLIBC_API void QVideoWidget_FocusOutEvent(QVideoWidget* self, QFocusEvent* event);
QTLIBC_API void QVideoWidget_OnFocusOutEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseFocusOutEvent(QVideoWidget* self, QFocusEvent* event);
QTLIBC_API void QVideoWidget_EnterEvent(QVideoWidget* self, QEnterEvent* event);
QTLIBC_API void QVideoWidget_OnEnterEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseEnterEvent(QVideoWidget* self, QEnterEvent* event);
QTLIBC_API void QVideoWidget_LeaveEvent(QVideoWidget* self, QEvent* event);
QTLIBC_API void QVideoWidget_OnLeaveEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseLeaveEvent(QVideoWidget* self, QEvent* event);
QTLIBC_API void QVideoWidget_PaintEvent(QVideoWidget* self, QPaintEvent* event);
QTLIBC_API void QVideoWidget_OnPaintEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBasePaintEvent(QVideoWidget* self, QPaintEvent* event);
QTLIBC_API void QVideoWidget_CloseEvent(QVideoWidget* self, QCloseEvent* event);
QTLIBC_API void QVideoWidget_OnCloseEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseCloseEvent(QVideoWidget* self, QCloseEvent* event);
QTLIBC_API void QVideoWidget_ContextMenuEvent(QVideoWidget* self, QContextMenuEvent* event);
QTLIBC_API void QVideoWidget_OnContextMenuEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseContextMenuEvent(QVideoWidget* self, QContextMenuEvent* event);
QTLIBC_API void QVideoWidget_TabletEvent(QVideoWidget* self, QTabletEvent* event);
QTLIBC_API void QVideoWidget_OnTabletEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseTabletEvent(QVideoWidget* self, QTabletEvent* event);
QTLIBC_API void QVideoWidget_ActionEvent(QVideoWidget* self, QActionEvent* event);
QTLIBC_API void QVideoWidget_OnActionEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseActionEvent(QVideoWidget* self, QActionEvent* event);
QTLIBC_API void QVideoWidget_DragEnterEvent(QVideoWidget* self, QDragEnterEvent* event);
QTLIBC_API void QVideoWidget_OnDragEnterEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseDragEnterEvent(QVideoWidget* self, QDragEnterEvent* event);
QTLIBC_API void QVideoWidget_DragMoveEvent(QVideoWidget* self, QDragMoveEvent* event);
QTLIBC_API void QVideoWidget_OnDragMoveEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseDragMoveEvent(QVideoWidget* self, QDragMoveEvent* event);
QTLIBC_API void QVideoWidget_DragLeaveEvent(QVideoWidget* self, QDragLeaveEvent* event);
QTLIBC_API void QVideoWidget_OnDragLeaveEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseDragLeaveEvent(QVideoWidget* self, QDragLeaveEvent* event);
QTLIBC_API void QVideoWidget_DropEvent(QVideoWidget* self, QDropEvent* event);
QTLIBC_API void QVideoWidget_OnDropEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseDropEvent(QVideoWidget* self, QDropEvent* event);
QTLIBC_API bool QVideoWidget_NativeEvent(QVideoWidget* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QVideoWidget_OnNativeEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API bool QVideoWidget_QBaseNativeEvent(QVideoWidget* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QVideoWidget_ChangeEvent(QVideoWidget* self, QEvent* param1);
QTLIBC_API void QVideoWidget_OnChangeEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseChangeEvent(QVideoWidget* self, QEvent* param1);
QTLIBC_API void QVideoWidget_InputMethodEvent(QVideoWidget* self, QInputMethodEvent* param1);
QTLIBC_API void QVideoWidget_OnInputMethodEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseInputMethodEvent(QVideoWidget* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QVideoWidget_InputMethodQuery(const QVideoWidget* self, int param1);
QTLIBC_API void QVideoWidget_OnInputMethodQuery(const QVideoWidget* self, intptr_t slot);
QTLIBC_API QVariant* QVideoWidget_QBaseInputMethodQuery(const QVideoWidget* self, int param1);
QTLIBC_API bool QVideoWidget_FocusNextPrevChild(QVideoWidget* self, bool next);
QTLIBC_API void QVideoWidget_OnFocusNextPrevChild(QVideoWidget* self, intptr_t slot);
QTLIBC_API bool QVideoWidget_QBaseFocusNextPrevChild(QVideoWidget* self, bool next);
QTLIBC_API bool QVideoWidget_EventFilter(QVideoWidget* self, QObject* watched, QEvent* event);
QTLIBC_API void QVideoWidget_OnEventFilter(QVideoWidget* self, intptr_t slot);
QTLIBC_API bool QVideoWidget_QBaseEventFilter(QVideoWidget* self, QObject* watched, QEvent* event);
QTLIBC_API void QVideoWidget_TimerEvent(QVideoWidget* self, QTimerEvent* event);
QTLIBC_API void QVideoWidget_OnTimerEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseTimerEvent(QVideoWidget* self, QTimerEvent* event);
QTLIBC_API void QVideoWidget_ChildEvent(QVideoWidget* self, QChildEvent* event);
QTLIBC_API void QVideoWidget_OnChildEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseChildEvent(QVideoWidget* self, QChildEvent* event);
QTLIBC_API void QVideoWidget_CustomEvent(QVideoWidget* self, QEvent* event);
QTLIBC_API void QVideoWidget_OnCustomEvent(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseCustomEvent(QVideoWidget* self, QEvent* event);
QTLIBC_API void QVideoWidget_ConnectNotify(QVideoWidget* self, QMetaMethod* signal);
QTLIBC_API void QVideoWidget_OnConnectNotify(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseConnectNotify(QVideoWidget* self, QMetaMethod* signal);
QTLIBC_API void QVideoWidget_DisconnectNotify(QVideoWidget* self, QMetaMethod* signal);
QTLIBC_API void QVideoWidget_OnDisconnectNotify(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseDisconnectNotify(QVideoWidget* self, QMetaMethod* signal);
QTLIBC_API int QVideoWidget_Metric(const QVideoWidget* self, int param1);
QTLIBC_API void QVideoWidget_OnMetric(const QVideoWidget* self, intptr_t slot);
QTLIBC_API int QVideoWidget_QBaseMetric(const QVideoWidget* self, int param1);
QTLIBC_API void QVideoWidget_InitPainter(const QVideoWidget* self, QPainter* painter);
QTLIBC_API void QVideoWidget_OnInitPainter(const QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseInitPainter(const QVideoWidget* self, QPainter* painter);
QTLIBC_API QPaintDevice* QVideoWidget_Redirected(const QVideoWidget* self, QPoint* offset);
QTLIBC_API void QVideoWidget_OnRedirected(const QVideoWidget* self, intptr_t slot);
QTLIBC_API QPaintDevice* QVideoWidget_QBaseRedirected(const QVideoWidget* self, QPoint* offset);
QTLIBC_API QPainter* QVideoWidget_SharedPainter(const QVideoWidget* self);
QTLIBC_API void QVideoWidget_OnSharedPainter(const QVideoWidget* self, intptr_t slot);
QTLIBC_API QPainter* QVideoWidget_QBaseSharedPainter(const QVideoWidget* self);
QTLIBC_API void QVideoWidget_UpdateMicroFocus(QVideoWidget* self);
QTLIBC_API void QVideoWidget_OnUpdateMicroFocus(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseUpdateMicroFocus(QVideoWidget* self);
QTLIBC_API void QVideoWidget_Create(QVideoWidget* self);
QTLIBC_API void QVideoWidget_OnCreate(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseCreate(QVideoWidget* self);
QTLIBC_API void QVideoWidget_Destroy(QVideoWidget* self);
QTLIBC_API void QVideoWidget_OnDestroy(QVideoWidget* self, intptr_t slot);
QTLIBC_API void QVideoWidget_QBaseDestroy(QVideoWidget* self);
QTLIBC_API bool QVideoWidget_FocusNextChild(QVideoWidget* self);
QTLIBC_API void QVideoWidget_OnFocusNextChild(QVideoWidget* self, intptr_t slot);
QTLIBC_API bool QVideoWidget_QBaseFocusNextChild(QVideoWidget* self);
QTLIBC_API bool QVideoWidget_FocusPreviousChild(QVideoWidget* self);
QTLIBC_API void QVideoWidget_OnFocusPreviousChild(QVideoWidget* self, intptr_t slot);
QTLIBC_API bool QVideoWidget_QBaseFocusPreviousChild(QVideoWidget* self);
QTLIBC_API QObject* QVideoWidget_Sender(const QVideoWidget* self);
QTLIBC_API void QVideoWidget_OnSender(const QVideoWidget* self, intptr_t slot);
QTLIBC_API QObject* QVideoWidget_QBaseSender(const QVideoWidget* self);
QTLIBC_API int QVideoWidget_SenderSignalIndex(const QVideoWidget* self);
QTLIBC_API void QVideoWidget_OnSenderSignalIndex(const QVideoWidget* self, intptr_t slot);
QTLIBC_API int QVideoWidget_QBaseSenderSignalIndex(const QVideoWidget* self);
QTLIBC_API int QVideoWidget_Receivers(const QVideoWidget* self, const char* signal);
QTLIBC_API void QVideoWidget_OnReceivers(const QVideoWidget* self, intptr_t slot);
QTLIBC_API int QVideoWidget_QBaseReceivers(const QVideoWidget* self, const char* signal);
QTLIBC_API bool QVideoWidget_IsSignalConnected(const QVideoWidget* self, QMetaMethod* signal);
QTLIBC_API void QVideoWidget_OnIsSignalConnected(const QVideoWidget* self, intptr_t slot);
QTLIBC_API bool QVideoWidget_QBaseIsSignalConnected(const QVideoWidget* self, QMetaMethod* signal);
QTLIBC_API void QVideoWidget_Delete(QVideoWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
