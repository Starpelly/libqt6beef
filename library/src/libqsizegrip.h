#pragma once
#ifndef SRCC_LIBQSIZEGRIP_H
#define SRCC_LIBQSIZEGRIP_H

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
typedef struct QSizeGrip QSizeGrip;
typedef struct QSizePolicy QSizePolicy;
typedef struct QStyle QStyle;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

QTLIBC_API QSizeGrip* QSizeGrip_new(QWidget* parent);
QTLIBC_API QMetaObject* QSizeGrip_MetaObject(const QSizeGrip* self);
QTLIBC_API void* QSizeGrip_Metacast(QSizeGrip* self, const char* param1);
QTLIBC_API int QSizeGrip_Metacall(QSizeGrip* self, int param1, int param2, void** param3);
QTLIBC_API void QSizeGrip_OnMetacall(QSizeGrip* self, intptr_t slot);
QTLIBC_API int QSizeGrip_QBaseMetacall(QSizeGrip* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QSizeGrip_Tr(const char* s);
QTLIBC_API QSize* QSizeGrip_SizeHint(const QSizeGrip* self);
QTLIBC_API void QSizeGrip_OnSizeHint(const QSizeGrip* self, intptr_t slot);
QTLIBC_API QSize* QSizeGrip_QBaseSizeHint(const QSizeGrip* self);
QTLIBC_API void QSizeGrip_SetVisible(QSizeGrip* self, bool visible);
QTLIBC_API void QSizeGrip_OnSetVisible(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseSetVisible(QSizeGrip* self, bool visible);
QTLIBC_API void QSizeGrip_PaintEvent(QSizeGrip* self, QPaintEvent* param1);
QTLIBC_API void QSizeGrip_OnPaintEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBasePaintEvent(QSizeGrip* self, QPaintEvent* param1);
QTLIBC_API void QSizeGrip_MousePressEvent(QSizeGrip* self, QMouseEvent* param1);
QTLIBC_API void QSizeGrip_OnMousePressEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseMousePressEvent(QSizeGrip* self, QMouseEvent* param1);
QTLIBC_API void QSizeGrip_MouseMoveEvent(QSizeGrip* self, QMouseEvent* param1);
QTLIBC_API void QSizeGrip_OnMouseMoveEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseMouseMoveEvent(QSizeGrip* self, QMouseEvent* param1);
QTLIBC_API void QSizeGrip_MouseReleaseEvent(QSizeGrip* self, QMouseEvent* mouseEvent);
QTLIBC_API void QSizeGrip_OnMouseReleaseEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseMouseReleaseEvent(QSizeGrip* self, QMouseEvent* mouseEvent);
QTLIBC_API void QSizeGrip_MoveEvent(QSizeGrip* self, QMoveEvent* moveEvent);
QTLIBC_API void QSizeGrip_OnMoveEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseMoveEvent(QSizeGrip* self, QMoveEvent* moveEvent);
QTLIBC_API void QSizeGrip_ShowEvent(QSizeGrip* self, QShowEvent* showEvent);
QTLIBC_API void QSizeGrip_OnShowEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseShowEvent(QSizeGrip* self, QShowEvent* showEvent);
QTLIBC_API void QSizeGrip_HideEvent(QSizeGrip* self, QHideEvent* hideEvent);
QTLIBC_API void QSizeGrip_OnHideEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseHideEvent(QSizeGrip* self, QHideEvent* hideEvent);
QTLIBC_API bool QSizeGrip_EventFilter(QSizeGrip* self, QObject* param1, QEvent* param2);
QTLIBC_API void QSizeGrip_OnEventFilter(QSizeGrip* self, intptr_t slot);
QTLIBC_API bool QSizeGrip_QBaseEventFilter(QSizeGrip* self, QObject* param1, QEvent* param2);
QTLIBC_API bool QSizeGrip_Event(QSizeGrip* self, QEvent* param1);
QTLIBC_API void QSizeGrip_OnEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API bool QSizeGrip_QBaseEvent(QSizeGrip* self, QEvent* param1);
QTLIBC_API libqt_string QSizeGrip_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QSizeGrip_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QSizeGrip_DevType(const QSizeGrip* self);
QTLIBC_API void QSizeGrip_OnDevType(const QSizeGrip* self, intptr_t slot);
QTLIBC_API int QSizeGrip_QBaseDevType(const QSizeGrip* self);
QTLIBC_API QSize* QSizeGrip_MinimumSizeHint(const QSizeGrip* self);
QTLIBC_API void QSizeGrip_OnMinimumSizeHint(const QSizeGrip* self, intptr_t slot);
QTLIBC_API QSize* QSizeGrip_QBaseMinimumSizeHint(const QSizeGrip* self);
QTLIBC_API int QSizeGrip_HeightForWidth(const QSizeGrip* self, int param1);
QTLIBC_API void QSizeGrip_OnHeightForWidth(const QSizeGrip* self, intptr_t slot);
QTLIBC_API int QSizeGrip_QBaseHeightForWidth(const QSizeGrip* self, int param1);
QTLIBC_API bool QSizeGrip_HasHeightForWidth(const QSizeGrip* self);
QTLIBC_API void QSizeGrip_OnHasHeightForWidth(const QSizeGrip* self, intptr_t slot);
QTLIBC_API bool QSizeGrip_QBaseHasHeightForWidth(const QSizeGrip* self);
QTLIBC_API QPaintEngine* QSizeGrip_PaintEngine(const QSizeGrip* self);
QTLIBC_API void QSizeGrip_OnPaintEngine(const QSizeGrip* self, intptr_t slot);
QTLIBC_API QPaintEngine* QSizeGrip_QBasePaintEngine(const QSizeGrip* self);
QTLIBC_API void QSizeGrip_MouseDoubleClickEvent(QSizeGrip* self, QMouseEvent* event);
QTLIBC_API void QSizeGrip_OnMouseDoubleClickEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseMouseDoubleClickEvent(QSizeGrip* self, QMouseEvent* event);
QTLIBC_API void QSizeGrip_WheelEvent(QSizeGrip* self, QWheelEvent* event);
QTLIBC_API void QSizeGrip_OnWheelEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseWheelEvent(QSizeGrip* self, QWheelEvent* event);
QTLIBC_API void QSizeGrip_KeyPressEvent(QSizeGrip* self, QKeyEvent* event);
QTLIBC_API void QSizeGrip_OnKeyPressEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseKeyPressEvent(QSizeGrip* self, QKeyEvent* event);
QTLIBC_API void QSizeGrip_KeyReleaseEvent(QSizeGrip* self, QKeyEvent* event);
QTLIBC_API void QSizeGrip_OnKeyReleaseEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseKeyReleaseEvent(QSizeGrip* self, QKeyEvent* event);
QTLIBC_API void QSizeGrip_FocusInEvent(QSizeGrip* self, QFocusEvent* event);
QTLIBC_API void QSizeGrip_OnFocusInEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseFocusInEvent(QSizeGrip* self, QFocusEvent* event);
QTLIBC_API void QSizeGrip_FocusOutEvent(QSizeGrip* self, QFocusEvent* event);
QTLIBC_API void QSizeGrip_OnFocusOutEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseFocusOutEvent(QSizeGrip* self, QFocusEvent* event);
QTLIBC_API void QSizeGrip_EnterEvent(QSizeGrip* self, QEnterEvent* event);
QTLIBC_API void QSizeGrip_OnEnterEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseEnterEvent(QSizeGrip* self, QEnterEvent* event);
QTLIBC_API void QSizeGrip_LeaveEvent(QSizeGrip* self, QEvent* event);
QTLIBC_API void QSizeGrip_OnLeaveEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseLeaveEvent(QSizeGrip* self, QEvent* event);
QTLIBC_API void QSizeGrip_ResizeEvent(QSizeGrip* self, QResizeEvent* event);
QTLIBC_API void QSizeGrip_OnResizeEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseResizeEvent(QSizeGrip* self, QResizeEvent* event);
QTLIBC_API void QSizeGrip_CloseEvent(QSizeGrip* self, QCloseEvent* event);
QTLIBC_API void QSizeGrip_OnCloseEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseCloseEvent(QSizeGrip* self, QCloseEvent* event);
QTLIBC_API void QSizeGrip_ContextMenuEvent(QSizeGrip* self, QContextMenuEvent* event);
QTLIBC_API void QSizeGrip_OnContextMenuEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseContextMenuEvent(QSizeGrip* self, QContextMenuEvent* event);
QTLIBC_API void QSizeGrip_TabletEvent(QSizeGrip* self, QTabletEvent* event);
QTLIBC_API void QSizeGrip_OnTabletEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseTabletEvent(QSizeGrip* self, QTabletEvent* event);
QTLIBC_API void QSizeGrip_ActionEvent(QSizeGrip* self, QActionEvent* event);
QTLIBC_API void QSizeGrip_OnActionEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseActionEvent(QSizeGrip* self, QActionEvent* event);
QTLIBC_API void QSizeGrip_DragEnterEvent(QSizeGrip* self, QDragEnterEvent* event);
QTLIBC_API void QSizeGrip_OnDragEnterEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseDragEnterEvent(QSizeGrip* self, QDragEnterEvent* event);
QTLIBC_API void QSizeGrip_DragMoveEvent(QSizeGrip* self, QDragMoveEvent* event);
QTLIBC_API void QSizeGrip_OnDragMoveEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseDragMoveEvent(QSizeGrip* self, QDragMoveEvent* event);
QTLIBC_API void QSizeGrip_DragLeaveEvent(QSizeGrip* self, QDragLeaveEvent* event);
QTLIBC_API void QSizeGrip_OnDragLeaveEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseDragLeaveEvent(QSizeGrip* self, QDragLeaveEvent* event);
QTLIBC_API void QSizeGrip_DropEvent(QSizeGrip* self, QDropEvent* event);
QTLIBC_API void QSizeGrip_OnDropEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseDropEvent(QSizeGrip* self, QDropEvent* event);
QTLIBC_API bool QSizeGrip_NativeEvent(QSizeGrip* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QSizeGrip_OnNativeEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API bool QSizeGrip_QBaseNativeEvent(QSizeGrip* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QSizeGrip_ChangeEvent(QSizeGrip* self, QEvent* param1);
QTLIBC_API void QSizeGrip_OnChangeEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseChangeEvent(QSizeGrip* self, QEvent* param1);
QTLIBC_API void QSizeGrip_InputMethodEvent(QSizeGrip* self, QInputMethodEvent* param1);
QTLIBC_API void QSizeGrip_OnInputMethodEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseInputMethodEvent(QSizeGrip* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QSizeGrip_InputMethodQuery(const QSizeGrip* self, int param1);
QTLIBC_API void QSizeGrip_OnInputMethodQuery(const QSizeGrip* self, intptr_t slot);
QTLIBC_API QVariant* QSizeGrip_QBaseInputMethodQuery(const QSizeGrip* self, int param1);
QTLIBC_API bool QSizeGrip_FocusNextPrevChild(QSizeGrip* self, bool next);
QTLIBC_API void QSizeGrip_OnFocusNextPrevChild(QSizeGrip* self, intptr_t slot);
QTLIBC_API bool QSizeGrip_QBaseFocusNextPrevChild(QSizeGrip* self, bool next);
QTLIBC_API void QSizeGrip_TimerEvent(QSizeGrip* self, QTimerEvent* event);
QTLIBC_API void QSizeGrip_OnTimerEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseTimerEvent(QSizeGrip* self, QTimerEvent* event);
QTLIBC_API void QSizeGrip_ChildEvent(QSizeGrip* self, QChildEvent* event);
QTLIBC_API void QSizeGrip_OnChildEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseChildEvent(QSizeGrip* self, QChildEvent* event);
QTLIBC_API void QSizeGrip_CustomEvent(QSizeGrip* self, QEvent* event);
QTLIBC_API void QSizeGrip_OnCustomEvent(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseCustomEvent(QSizeGrip* self, QEvent* event);
QTLIBC_API void QSizeGrip_ConnectNotify(QSizeGrip* self, QMetaMethod* signal);
QTLIBC_API void QSizeGrip_OnConnectNotify(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseConnectNotify(QSizeGrip* self, QMetaMethod* signal);
QTLIBC_API void QSizeGrip_DisconnectNotify(QSizeGrip* self, QMetaMethod* signal);
QTLIBC_API void QSizeGrip_OnDisconnectNotify(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseDisconnectNotify(QSizeGrip* self, QMetaMethod* signal);
QTLIBC_API int QSizeGrip_Metric(const QSizeGrip* self, int param1);
QTLIBC_API void QSizeGrip_OnMetric(const QSizeGrip* self, intptr_t slot);
QTLIBC_API int QSizeGrip_QBaseMetric(const QSizeGrip* self, int param1);
QTLIBC_API void QSizeGrip_InitPainter(const QSizeGrip* self, QPainter* painter);
QTLIBC_API void QSizeGrip_OnInitPainter(const QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseInitPainter(const QSizeGrip* self, QPainter* painter);
QTLIBC_API QPaintDevice* QSizeGrip_Redirected(const QSizeGrip* self, QPoint* offset);
QTLIBC_API void QSizeGrip_OnRedirected(const QSizeGrip* self, intptr_t slot);
QTLIBC_API QPaintDevice* QSizeGrip_QBaseRedirected(const QSizeGrip* self, QPoint* offset);
QTLIBC_API QPainter* QSizeGrip_SharedPainter(const QSizeGrip* self);
QTLIBC_API void QSizeGrip_OnSharedPainter(const QSizeGrip* self, intptr_t slot);
QTLIBC_API QPainter* QSizeGrip_QBaseSharedPainter(const QSizeGrip* self);
QTLIBC_API void QSizeGrip_UpdateMicroFocus(QSizeGrip* self);
QTLIBC_API void QSizeGrip_OnUpdateMicroFocus(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseUpdateMicroFocus(QSizeGrip* self);
QTLIBC_API void QSizeGrip_Create(QSizeGrip* self);
QTLIBC_API void QSizeGrip_OnCreate(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseCreate(QSizeGrip* self);
QTLIBC_API void QSizeGrip_Destroy(QSizeGrip* self);
QTLIBC_API void QSizeGrip_OnDestroy(QSizeGrip* self, intptr_t slot);
QTLIBC_API void QSizeGrip_QBaseDestroy(QSizeGrip* self);
QTLIBC_API bool QSizeGrip_FocusNextChild(QSizeGrip* self);
QTLIBC_API void QSizeGrip_OnFocusNextChild(QSizeGrip* self, intptr_t slot);
QTLIBC_API bool QSizeGrip_QBaseFocusNextChild(QSizeGrip* self);
QTLIBC_API bool QSizeGrip_FocusPreviousChild(QSizeGrip* self);
QTLIBC_API void QSizeGrip_OnFocusPreviousChild(QSizeGrip* self, intptr_t slot);
QTLIBC_API bool QSizeGrip_QBaseFocusPreviousChild(QSizeGrip* self);
QTLIBC_API QObject* QSizeGrip_Sender(const QSizeGrip* self);
QTLIBC_API void QSizeGrip_OnSender(const QSizeGrip* self, intptr_t slot);
QTLIBC_API QObject* QSizeGrip_QBaseSender(const QSizeGrip* self);
QTLIBC_API int QSizeGrip_SenderSignalIndex(const QSizeGrip* self);
QTLIBC_API void QSizeGrip_OnSenderSignalIndex(const QSizeGrip* self, intptr_t slot);
QTLIBC_API int QSizeGrip_QBaseSenderSignalIndex(const QSizeGrip* self);
QTLIBC_API int QSizeGrip_Receivers(const QSizeGrip* self, const char* signal);
QTLIBC_API void QSizeGrip_OnReceivers(const QSizeGrip* self, intptr_t slot);
QTLIBC_API int QSizeGrip_QBaseReceivers(const QSizeGrip* self, const char* signal);
QTLIBC_API bool QSizeGrip_IsSignalConnected(const QSizeGrip* self, QMetaMethod* signal);
QTLIBC_API void QSizeGrip_OnIsSignalConnected(const QSizeGrip* self, intptr_t slot);
QTLIBC_API bool QSizeGrip_QBaseIsSignalConnected(const QSizeGrip* self, QMetaMethod* signal);
QTLIBC_API void QSizeGrip_Delete(QSizeGrip* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
