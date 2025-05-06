#pragma once
#ifndef SRCC_LIBQERRORMESSAGE_H
#define SRCC_LIBQERRORMESSAGE_H

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
typedef struct QDialog QDialog;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
typedef struct QErrorMessage QErrorMessage;
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
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

QTLIBC_API QErrorMessage* QErrorMessage_new(QWidget* parent);
QTLIBC_API QErrorMessage* QErrorMessage_new2();
QTLIBC_API QMetaObject* QErrorMessage_MetaObject(const QErrorMessage* self);
QTLIBC_API void* QErrorMessage_Metacast(QErrorMessage* self, const char* param1);
QTLIBC_API int QErrorMessage_Metacall(QErrorMessage* self, int param1, int param2, void** param3);
QTLIBC_API void QErrorMessage_OnMetacall(QErrorMessage* self, intptr_t slot);
QTLIBC_API int QErrorMessage_QBaseMetacall(QErrorMessage* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QErrorMessage_Tr(const char* s);
QTLIBC_API QErrorMessage* QErrorMessage_QtHandler();
QTLIBC_API void QErrorMessage_ShowMessage(QErrorMessage* self, libqt_string message);
QTLIBC_API void QErrorMessage_ShowMessage2(QErrorMessage* self, libqt_string message, libqt_string typeVal);
QTLIBC_API void QErrorMessage_Done(QErrorMessage* self, int param1);
QTLIBC_API void QErrorMessage_OnDone(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseDone(QErrorMessage* self, int param1);
QTLIBC_API void QErrorMessage_ChangeEvent(QErrorMessage* self, QEvent* e);
QTLIBC_API void QErrorMessage_OnChangeEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseChangeEvent(QErrorMessage* self, QEvent* e);
QTLIBC_API libqt_string QErrorMessage_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QErrorMessage_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QErrorMessage_SetVisible(QErrorMessage* self, bool visible);
QTLIBC_API void QErrorMessage_OnSetVisible(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseSetVisible(QErrorMessage* self, bool visible);
QTLIBC_API QSize* QErrorMessage_SizeHint(const QErrorMessage* self);
QTLIBC_API void QErrorMessage_OnSizeHint(const QErrorMessage* self, intptr_t slot);
QTLIBC_API QSize* QErrorMessage_QBaseSizeHint(const QErrorMessage* self);
QTLIBC_API QSize* QErrorMessage_MinimumSizeHint(const QErrorMessage* self);
QTLIBC_API void QErrorMessage_OnMinimumSizeHint(const QErrorMessage* self, intptr_t slot);
QTLIBC_API QSize* QErrorMessage_QBaseMinimumSizeHint(const QErrorMessage* self);
QTLIBC_API void QErrorMessage_Open(QErrorMessage* self);
QTLIBC_API void QErrorMessage_OnOpen(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseOpen(QErrorMessage* self);
QTLIBC_API int QErrorMessage_Exec(QErrorMessage* self);
QTLIBC_API void QErrorMessage_OnExec(QErrorMessage* self, intptr_t slot);
QTLIBC_API int QErrorMessage_QBaseExec(QErrorMessage* self);
QTLIBC_API void QErrorMessage_Accept(QErrorMessage* self);
QTLIBC_API void QErrorMessage_OnAccept(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseAccept(QErrorMessage* self);
QTLIBC_API void QErrorMessage_Reject(QErrorMessage* self);
QTLIBC_API void QErrorMessage_OnReject(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseReject(QErrorMessage* self);
QTLIBC_API void QErrorMessage_KeyPressEvent(QErrorMessage* self, QKeyEvent* param1);
QTLIBC_API void QErrorMessage_OnKeyPressEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseKeyPressEvent(QErrorMessage* self, QKeyEvent* param1);
QTLIBC_API void QErrorMessage_CloseEvent(QErrorMessage* self, QCloseEvent* param1);
QTLIBC_API void QErrorMessage_OnCloseEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseCloseEvent(QErrorMessage* self, QCloseEvent* param1);
QTLIBC_API void QErrorMessage_ShowEvent(QErrorMessage* self, QShowEvent* param1);
QTLIBC_API void QErrorMessage_OnShowEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseShowEvent(QErrorMessage* self, QShowEvent* param1);
QTLIBC_API void QErrorMessage_ResizeEvent(QErrorMessage* self, QResizeEvent* param1);
QTLIBC_API void QErrorMessage_OnResizeEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseResizeEvent(QErrorMessage* self, QResizeEvent* param1);
QTLIBC_API void QErrorMessage_ContextMenuEvent(QErrorMessage* self, QContextMenuEvent* param1);
QTLIBC_API void QErrorMessage_OnContextMenuEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseContextMenuEvent(QErrorMessage* self, QContextMenuEvent* param1);
QTLIBC_API bool QErrorMessage_EventFilter(QErrorMessage* self, QObject* param1, QEvent* param2);
QTLIBC_API void QErrorMessage_OnEventFilter(QErrorMessage* self, intptr_t slot);
QTLIBC_API bool QErrorMessage_QBaseEventFilter(QErrorMessage* self, QObject* param1, QEvent* param2);
QTLIBC_API int QErrorMessage_DevType(const QErrorMessage* self);
QTLIBC_API void QErrorMessage_OnDevType(const QErrorMessage* self, intptr_t slot);
QTLIBC_API int QErrorMessage_QBaseDevType(const QErrorMessage* self);
QTLIBC_API int QErrorMessage_HeightForWidth(const QErrorMessage* self, int param1);
QTLIBC_API void QErrorMessage_OnHeightForWidth(const QErrorMessage* self, intptr_t slot);
QTLIBC_API int QErrorMessage_QBaseHeightForWidth(const QErrorMessage* self, int param1);
QTLIBC_API bool QErrorMessage_HasHeightForWidth(const QErrorMessage* self);
QTLIBC_API void QErrorMessage_OnHasHeightForWidth(const QErrorMessage* self, intptr_t slot);
QTLIBC_API bool QErrorMessage_QBaseHasHeightForWidth(const QErrorMessage* self);
QTLIBC_API QPaintEngine* QErrorMessage_PaintEngine(const QErrorMessage* self);
QTLIBC_API void QErrorMessage_OnPaintEngine(const QErrorMessage* self, intptr_t slot);
QTLIBC_API QPaintEngine* QErrorMessage_QBasePaintEngine(const QErrorMessage* self);
QTLIBC_API bool QErrorMessage_Event(QErrorMessage* self, QEvent* event);
QTLIBC_API void QErrorMessage_OnEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API bool QErrorMessage_QBaseEvent(QErrorMessage* self, QEvent* event);
QTLIBC_API void QErrorMessage_MousePressEvent(QErrorMessage* self, QMouseEvent* event);
QTLIBC_API void QErrorMessage_OnMousePressEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseMousePressEvent(QErrorMessage* self, QMouseEvent* event);
QTLIBC_API void QErrorMessage_MouseReleaseEvent(QErrorMessage* self, QMouseEvent* event);
QTLIBC_API void QErrorMessage_OnMouseReleaseEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseMouseReleaseEvent(QErrorMessage* self, QMouseEvent* event);
QTLIBC_API void QErrorMessage_MouseDoubleClickEvent(QErrorMessage* self, QMouseEvent* event);
QTLIBC_API void QErrorMessage_OnMouseDoubleClickEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseMouseDoubleClickEvent(QErrorMessage* self, QMouseEvent* event);
QTLIBC_API void QErrorMessage_MouseMoveEvent(QErrorMessage* self, QMouseEvent* event);
QTLIBC_API void QErrorMessage_OnMouseMoveEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseMouseMoveEvent(QErrorMessage* self, QMouseEvent* event);
QTLIBC_API void QErrorMessage_WheelEvent(QErrorMessage* self, QWheelEvent* event);
QTLIBC_API void QErrorMessage_OnWheelEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseWheelEvent(QErrorMessage* self, QWheelEvent* event);
QTLIBC_API void QErrorMessage_KeyReleaseEvent(QErrorMessage* self, QKeyEvent* event);
QTLIBC_API void QErrorMessage_OnKeyReleaseEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseKeyReleaseEvent(QErrorMessage* self, QKeyEvent* event);
QTLIBC_API void QErrorMessage_FocusInEvent(QErrorMessage* self, QFocusEvent* event);
QTLIBC_API void QErrorMessage_OnFocusInEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseFocusInEvent(QErrorMessage* self, QFocusEvent* event);
QTLIBC_API void QErrorMessage_FocusOutEvent(QErrorMessage* self, QFocusEvent* event);
QTLIBC_API void QErrorMessage_OnFocusOutEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseFocusOutEvent(QErrorMessage* self, QFocusEvent* event);
QTLIBC_API void QErrorMessage_EnterEvent(QErrorMessage* self, QEnterEvent* event);
QTLIBC_API void QErrorMessage_OnEnterEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseEnterEvent(QErrorMessage* self, QEnterEvent* event);
QTLIBC_API void QErrorMessage_LeaveEvent(QErrorMessage* self, QEvent* event);
QTLIBC_API void QErrorMessage_OnLeaveEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseLeaveEvent(QErrorMessage* self, QEvent* event);
QTLIBC_API void QErrorMessage_PaintEvent(QErrorMessage* self, QPaintEvent* event);
QTLIBC_API void QErrorMessage_OnPaintEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBasePaintEvent(QErrorMessage* self, QPaintEvent* event);
QTLIBC_API void QErrorMessage_MoveEvent(QErrorMessage* self, QMoveEvent* event);
QTLIBC_API void QErrorMessage_OnMoveEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseMoveEvent(QErrorMessage* self, QMoveEvent* event);
QTLIBC_API void QErrorMessage_TabletEvent(QErrorMessage* self, QTabletEvent* event);
QTLIBC_API void QErrorMessage_OnTabletEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseTabletEvent(QErrorMessage* self, QTabletEvent* event);
QTLIBC_API void QErrorMessage_ActionEvent(QErrorMessage* self, QActionEvent* event);
QTLIBC_API void QErrorMessage_OnActionEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseActionEvent(QErrorMessage* self, QActionEvent* event);
QTLIBC_API void QErrorMessage_DragEnterEvent(QErrorMessage* self, QDragEnterEvent* event);
QTLIBC_API void QErrorMessage_OnDragEnterEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseDragEnterEvent(QErrorMessage* self, QDragEnterEvent* event);
QTLIBC_API void QErrorMessage_DragMoveEvent(QErrorMessage* self, QDragMoveEvent* event);
QTLIBC_API void QErrorMessage_OnDragMoveEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseDragMoveEvent(QErrorMessage* self, QDragMoveEvent* event);
QTLIBC_API void QErrorMessage_DragLeaveEvent(QErrorMessage* self, QDragLeaveEvent* event);
QTLIBC_API void QErrorMessage_OnDragLeaveEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseDragLeaveEvent(QErrorMessage* self, QDragLeaveEvent* event);
QTLIBC_API void QErrorMessage_DropEvent(QErrorMessage* self, QDropEvent* event);
QTLIBC_API void QErrorMessage_OnDropEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseDropEvent(QErrorMessage* self, QDropEvent* event);
QTLIBC_API void QErrorMessage_HideEvent(QErrorMessage* self, QHideEvent* event);
QTLIBC_API void QErrorMessage_OnHideEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseHideEvent(QErrorMessage* self, QHideEvent* event);
QTLIBC_API bool QErrorMessage_NativeEvent(QErrorMessage* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QErrorMessage_OnNativeEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API bool QErrorMessage_QBaseNativeEvent(QErrorMessage* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QErrorMessage_InputMethodEvent(QErrorMessage* self, QInputMethodEvent* param1);
QTLIBC_API void QErrorMessage_OnInputMethodEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseInputMethodEvent(QErrorMessage* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QErrorMessage_InputMethodQuery(const QErrorMessage* self, int param1);
QTLIBC_API void QErrorMessage_OnInputMethodQuery(const QErrorMessage* self, intptr_t slot);
QTLIBC_API QVariant* QErrorMessage_QBaseInputMethodQuery(const QErrorMessage* self, int param1);
QTLIBC_API bool QErrorMessage_FocusNextPrevChild(QErrorMessage* self, bool next);
QTLIBC_API void QErrorMessage_OnFocusNextPrevChild(QErrorMessage* self, intptr_t slot);
QTLIBC_API bool QErrorMessage_QBaseFocusNextPrevChild(QErrorMessage* self, bool next);
QTLIBC_API void QErrorMessage_TimerEvent(QErrorMessage* self, QTimerEvent* event);
QTLIBC_API void QErrorMessage_OnTimerEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseTimerEvent(QErrorMessage* self, QTimerEvent* event);
QTLIBC_API void QErrorMessage_ChildEvent(QErrorMessage* self, QChildEvent* event);
QTLIBC_API void QErrorMessage_OnChildEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseChildEvent(QErrorMessage* self, QChildEvent* event);
QTLIBC_API void QErrorMessage_CustomEvent(QErrorMessage* self, QEvent* event);
QTLIBC_API void QErrorMessage_OnCustomEvent(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseCustomEvent(QErrorMessage* self, QEvent* event);
QTLIBC_API void QErrorMessage_ConnectNotify(QErrorMessage* self, QMetaMethod* signal);
QTLIBC_API void QErrorMessage_OnConnectNotify(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseConnectNotify(QErrorMessage* self, QMetaMethod* signal);
QTLIBC_API void QErrorMessage_DisconnectNotify(QErrorMessage* self, QMetaMethod* signal);
QTLIBC_API void QErrorMessage_OnDisconnectNotify(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseDisconnectNotify(QErrorMessage* self, QMetaMethod* signal);
QTLIBC_API int QErrorMessage_Metric(const QErrorMessage* self, int param1);
QTLIBC_API void QErrorMessage_OnMetric(const QErrorMessage* self, intptr_t slot);
QTLIBC_API int QErrorMessage_QBaseMetric(const QErrorMessage* self, int param1);
QTLIBC_API void QErrorMessage_InitPainter(const QErrorMessage* self, QPainter* painter);
QTLIBC_API void QErrorMessage_OnInitPainter(const QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseInitPainter(const QErrorMessage* self, QPainter* painter);
QTLIBC_API QPaintDevice* QErrorMessage_Redirected(const QErrorMessage* self, QPoint* offset);
QTLIBC_API void QErrorMessage_OnRedirected(const QErrorMessage* self, intptr_t slot);
QTLIBC_API QPaintDevice* QErrorMessage_QBaseRedirected(const QErrorMessage* self, QPoint* offset);
QTLIBC_API QPainter* QErrorMessage_SharedPainter(const QErrorMessage* self);
QTLIBC_API void QErrorMessage_OnSharedPainter(const QErrorMessage* self, intptr_t slot);
QTLIBC_API QPainter* QErrorMessage_QBaseSharedPainter(const QErrorMessage* self);
QTLIBC_API void QErrorMessage_AdjustPosition(QErrorMessage* self, QWidget* param1);
QTLIBC_API void QErrorMessage_OnAdjustPosition(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseAdjustPosition(QErrorMessage* self, QWidget* param1);
QTLIBC_API void QErrorMessage_UpdateMicroFocus(QErrorMessage* self);
QTLIBC_API void QErrorMessage_OnUpdateMicroFocus(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseUpdateMicroFocus(QErrorMessage* self);
QTLIBC_API void QErrorMessage_Create(QErrorMessage* self);
QTLIBC_API void QErrorMessage_OnCreate(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseCreate(QErrorMessage* self);
QTLIBC_API void QErrorMessage_Destroy(QErrorMessage* self);
QTLIBC_API void QErrorMessage_OnDestroy(QErrorMessage* self, intptr_t slot);
QTLIBC_API void QErrorMessage_QBaseDestroy(QErrorMessage* self);
QTLIBC_API bool QErrorMessage_FocusNextChild(QErrorMessage* self);
QTLIBC_API void QErrorMessage_OnFocusNextChild(QErrorMessage* self, intptr_t slot);
QTLIBC_API bool QErrorMessage_QBaseFocusNextChild(QErrorMessage* self);
QTLIBC_API bool QErrorMessage_FocusPreviousChild(QErrorMessage* self);
QTLIBC_API void QErrorMessage_OnFocusPreviousChild(QErrorMessage* self, intptr_t slot);
QTLIBC_API bool QErrorMessage_QBaseFocusPreviousChild(QErrorMessage* self);
QTLIBC_API QObject* QErrorMessage_Sender(const QErrorMessage* self);
QTLIBC_API void QErrorMessage_OnSender(const QErrorMessage* self, intptr_t slot);
QTLIBC_API QObject* QErrorMessage_QBaseSender(const QErrorMessage* self);
QTLIBC_API int QErrorMessage_SenderSignalIndex(const QErrorMessage* self);
QTLIBC_API void QErrorMessage_OnSenderSignalIndex(const QErrorMessage* self, intptr_t slot);
QTLIBC_API int QErrorMessage_QBaseSenderSignalIndex(const QErrorMessage* self);
QTLIBC_API int QErrorMessage_Receivers(const QErrorMessage* self, const char* signal);
QTLIBC_API void QErrorMessage_OnReceivers(const QErrorMessage* self, intptr_t slot);
QTLIBC_API int QErrorMessage_QBaseReceivers(const QErrorMessage* self, const char* signal);
QTLIBC_API bool QErrorMessage_IsSignalConnected(const QErrorMessage* self, QMetaMethod* signal);
QTLIBC_API void QErrorMessage_OnIsSignalConnected(const QErrorMessage* self, intptr_t slot);
QTLIBC_API bool QErrorMessage_QBaseIsSignalConnected(const QErrorMessage* self, QMetaMethod* signal);
QTLIBC_API void QErrorMessage_Delete(QErrorMessage* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
