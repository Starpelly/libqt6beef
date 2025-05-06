#pragma once
#ifndef SRCC_LIBQFOCUSFRAME_H
#define SRCC_LIBQFOCUSFRAME_H

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
typedef struct QFocusFrame QFocusFrame;
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
typedef struct QStyleOption QStyleOption;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

QTLIBC_API QFocusFrame* QFocusFrame_new(QWidget* parent);
QTLIBC_API QFocusFrame* QFocusFrame_new2();
QTLIBC_API QMetaObject* QFocusFrame_MetaObject(const QFocusFrame* self);
QTLIBC_API void* QFocusFrame_Metacast(QFocusFrame* self, const char* param1);
QTLIBC_API int QFocusFrame_Metacall(QFocusFrame* self, int param1, int param2, void** param3);
QTLIBC_API void QFocusFrame_OnMetacall(QFocusFrame* self, intptr_t slot);
QTLIBC_API int QFocusFrame_QBaseMetacall(QFocusFrame* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QFocusFrame_Tr(const char* s);
QTLIBC_API void QFocusFrame_SetWidget(QFocusFrame* self, QWidget* widget);
QTLIBC_API QWidget* QFocusFrame_Widget(const QFocusFrame* self);
QTLIBC_API bool QFocusFrame_Event(QFocusFrame* self, QEvent* e);
QTLIBC_API void QFocusFrame_OnEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API bool QFocusFrame_QBaseEvent(QFocusFrame* self, QEvent* e);
QTLIBC_API bool QFocusFrame_EventFilter(QFocusFrame* self, QObject* param1, QEvent* param2);
QTLIBC_API void QFocusFrame_OnEventFilter(QFocusFrame* self, intptr_t slot);
QTLIBC_API bool QFocusFrame_QBaseEventFilter(QFocusFrame* self, QObject* param1, QEvent* param2);
QTLIBC_API void QFocusFrame_PaintEvent(QFocusFrame* self, QPaintEvent* param1);
QTLIBC_API void QFocusFrame_OnPaintEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBasePaintEvent(QFocusFrame* self, QPaintEvent* param1);
QTLIBC_API void QFocusFrame_InitStyleOption(const QFocusFrame* self, QStyleOption* option);
QTLIBC_API void QFocusFrame_OnInitStyleOption(const QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseInitStyleOption(const QFocusFrame* self, QStyleOption* option);
QTLIBC_API libqt_string QFocusFrame_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QFocusFrame_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QFocusFrame_DevType(const QFocusFrame* self);
QTLIBC_API void QFocusFrame_OnDevType(const QFocusFrame* self, intptr_t slot);
QTLIBC_API int QFocusFrame_QBaseDevType(const QFocusFrame* self);
QTLIBC_API void QFocusFrame_SetVisible(QFocusFrame* self, bool visible);
QTLIBC_API void QFocusFrame_OnSetVisible(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseSetVisible(QFocusFrame* self, bool visible);
QTLIBC_API QSize* QFocusFrame_SizeHint(const QFocusFrame* self);
QTLIBC_API void QFocusFrame_OnSizeHint(const QFocusFrame* self, intptr_t slot);
QTLIBC_API QSize* QFocusFrame_QBaseSizeHint(const QFocusFrame* self);
QTLIBC_API QSize* QFocusFrame_MinimumSizeHint(const QFocusFrame* self);
QTLIBC_API void QFocusFrame_OnMinimumSizeHint(const QFocusFrame* self, intptr_t slot);
QTLIBC_API QSize* QFocusFrame_QBaseMinimumSizeHint(const QFocusFrame* self);
QTLIBC_API int QFocusFrame_HeightForWidth(const QFocusFrame* self, int param1);
QTLIBC_API void QFocusFrame_OnHeightForWidth(const QFocusFrame* self, intptr_t slot);
QTLIBC_API int QFocusFrame_QBaseHeightForWidth(const QFocusFrame* self, int param1);
QTLIBC_API bool QFocusFrame_HasHeightForWidth(const QFocusFrame* self);
QTLIBC_API void QFocusFrame_OnHasHeightForWidth(const QFocusFrame* self, intptr_t slot);
QTLIBC_API bool QFocusFrame_QBaseHasHeightForWidth(const QFocusFrame* self);
QTLIBC_API QPaintEngine* QFocusFrame_PaintEngine(const QFocusFrame* self);
QTLIBC_API void QFocusFrame_OnPaintEngine(const QFocusFrame* self, intptr_t slot);
QTLIBC_API QPaintEngine* QFocusFrame_QBasePaintEngine(const QFocusFrame* self);
QTLIBC_API void QFocusFrame_MousePressEvent(QFocusFrame* self, QMouseEvent* event);
QTLIBC_API void QFocusFrame_OnMousePressEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseMousePressEvent(QFocusFrame* self, QMouseEvent* event);
QTLIBC_API void QFocusFrame_MouseReleaseEvent(QFocusFrame* self, QMouseEvent* event);
QTLIBC_API void QFocusFrame_OnMouseReleaseEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseMouseReleaseEvent(QFocusFrame* self, QMouseEvent* event);
QTLIBC_API void QFocusFrame_MouseDoubleClickEvent(QFocusFrame* self, QMouseEvent* event);
QTLIBC_API void QFocusFrame_OnMouseDoubleClickEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseMouseDoubleClickEvent(QFocusFrame* self, QMouseEvent* event);
QTLIBC_API void QFocusFrame_MouseMoveEvent(QFocusFrame* self, QMouseEvent* event);
QTLIBC_API void QFocusFrame_OnMouseMoveEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseMouseMoveEvent(QFocusFrame* self, QMouseEvent* event);
QTLIBC_API void QFocusFrame_WheelEvent(QFocusFrame* self, QWheelEvent* event);
QTLIBC_API void QFocusFrame_OnWheelEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseWheelEvent(QFocusFrame* self, QWheelEvent* event);
QTLIBC_API void QFocusFrame_KeyPressEvent(QFocusFrame* self, QKeyEvent* event);
QTLIBC_API void QFocusFrame_OnKeyPressEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseKeyPressEvent(QFocusFrame* self, QKeyEvent* event);
QTLIBC_API void QFocusFrame_KeyReleaseEvent(QFocusFrame* self, QKeyEvent* event);
QTLIBC_API void QFocusFrame_OnKeyReleaseEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseKeyReleaseEvent(QFocusFrame* self, QKeyEvent* event);
QTLIBC_API void QFocusFrame_FocusInEvent(QFocusFrame* self, QFocusEvent* event);
QTLIBC_API void QFocusFrame_OnFocusInEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseFocusInEvent(QFocusFrame* self, QFocusEvent* event);
QTLIBC_API void QFocusFrame_FocusOutEvent(QFocusFrame* self, QFocusEvent* event);
QTLIBC_API void QFocusFrame_OnFocusOutEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseFocusOutEvent(QFocusFrame* self, QFocusEvent* event);
QTLIBC_API void QFocusFrame_EnterEvent(QFocusFrame* self, QEnterEvent* event);
QTLIBC_API void QFocusFrame_OnEnterEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseEnterEvent(QFocusFrame* self, QEnterEvent* event);
QTLIBC_API void QFocusFrame_LeaveEvent(QFocusFrame* self, QEvent* event);
QTLIBC_API void QFocusFrame_OnLeaveEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseLeaveEvent(QFocusFrame* self, QEvent* event);
QTLIBC_API void QFocusFrame_MoveEvent(QFocusFrame* self, QMoveEvent* event);
QTLIBC_API void QFocusFrame_OnMoveEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseMoveEvent(QFocusFrame* self, QMoveEvent* event);
QTLIBC_API void QFocusFrame_ResizeEvent(QFocusFrame* self, QResizeEvent* event);
QTLIBC_API void QFocusFrame_OnResizeEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseResizeEvent(QFocusFrame* self, QResizeEvent* event);
QTLIBC_API void QFocusFrame_CloseEvent(QFocusFrame* self, QCloseEvent* event);
QTLIBC_API void QFocusFrame_OnCloseEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseCloseEvent(QFocusFrame* self, QCloseEvent* event);
QTLIBC_API void QFocusFrame_ContextMenuEvent(QFocusFrame* self, QContextMenuEvent* event);
QTLIBC_API void QFocusFrame_OnContextMenuEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseContextMenuEvent(QFocusFrame* self, QContextMenuEvent* event);
QTLIBC_API void QFocusFrame_TabletEvent(QFocusFrame* self, QTabletEvent* event);
QTLIBC_API void QFocusFrame_OnTabletEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseTabletEvent(QFocusFrame* self, QTabletEvent* event);
QTLIBC_API void QFocusFrame_ActionEvent(QFocusFrame* self, QActionEvent* event);
QTLIBC_API void QFocusFrame_OnActionEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseActionEvent(QFocusFrame* self, QActionEvent* event);
QTLIBC_API void QFocusFrame_DragEnterEvent(QFocusFrame* self, QDragEnterEvent* event);
QTLIBC_API void QFocusFrame_OnDragEnterEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseDragEnterEvent(QFocusFrame* self, QDragEnterEvent* event);
QTLIBC_API void QFocusFrame_DragMoveEvent(QFocusFrame* self, QDragMoveEvent* event);
QTLIBC_API void QFocusFrame_OnDragMoveEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseDragMoveEvent(QFocusFrame* self, QDragMoveEvent* event);
QTLIBC_API void QFocusFrame_DragLeaveEvent(QFocusFrame* self, QDragLeaveEvent* event);
QTLIBC_API void QFocusFrame_OnDragLeaveEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseDragLeaveEvent(QFocusFrame* self, QDragLeaveEvent* event);
QTLIBC_API void QFocusFrame_DropEvent(QFocusFrame* self, QDropEvent* event);
QTLIBC_API void QFocusFrame_OnDropEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseDropEvent(QFocusFrame* self, QDropEvent* event);
QTLIBC_API void QFocusFrame_ShowEvent(QFocusFrame* self, QShowEvent* event);
QTLIBC_API void QFocusFrame_OnShowEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseShowEvent(QFocusFrame* self, QShowEvent* event);
QTLIBC_API void QFocusFrame_HideEvent(QFocusFrame* self, QHideEvent* event);
QTLIBC_API void QFocusFrame_OnHideEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseHideEvent(QFocusFrame* self, QHideEvent* event);
QTLIBC_API bool QFocusFrame_NativeEvent(QFocusFrame* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QFocusFrame_OnNativeEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API bool QFocusFrame_QBaseNativeEvent(QFocusFrame* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QFocusFrame_ChangeEvent(QFocusFrame* self, QEvent* param1);
QTLIBC_API void QFocusFrame_OnChangeEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseChangeEvent(QFocusFrame* self, QEvent* param1);
QTLIBC_API void QFocusFrame_InputMethodEvent(QFocusFrame* self, QInputMethodEvent* param1);
QTLIBC_API void QFocusFrame_OnInputMethodEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseInputMethodEvent(QFocusFrame* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QFocusFrame_InputMethodQuery(const QFocusFrame* self, int param1);
QTLIBC_API void QFocusFrame_OnInputMethodQuery(const QFocusFrame* self, intptr_t slot);
QTLIBC_API QVariant* QFocusFrame_QBaseInputMethodQuery(const QFocusFrame* self, int param1);
QTLIBC_API bool QFocusFrame_FocusNextPrevChild(QFocusFrame* self, bool next);
QTLIBC_API void QFocusFrame_OnFocusNextPrevChild(QFocusFrame* self, intptr_t slot);
QTLIBC_API bool QFocusFrame_QBaseFocusNextPrevChild(QFocusFrame* self, bool next);
QTLIBC_API void QFocusFrame_TimerEvent(QFocusFrame* self, QTimerEvent* event);
QTLIBC_API void QFocusFrame_OnTimerEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseTimerEvent(QFocusFrame* self, QTimerEvent* event);
QTLIBC_API void QFocusFrame_ChildEvent(QFocusFrame* self, QChildEvent* event);
QTLIBC_API void QFocusFrame_OnChildEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseChildEvent(QFocusFrame* self, QChildEvent* event);
QTLIBC_API void QFocusFrame_CustomEvent(QFocusFrame* self, QEvent* event);
QTLIBC_API void QFocusFrame_OnCustomEvent(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseCustomEvent(QFocusFrame* self, QEvent* event);
QTLIBC_API void QFocusFrame_ConnectNotify(QFocusFrame* self, QMetaMethod* signal);
QTLIBC_API void QFocusFrame_OnConnectNotify(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseConnectNotify(QFocusFrame* self, QMetaMethod* signal);
QTLIBC_API void QFocusFrame_DisconnectNotify(QFocusFrame* self, QMetaMethod* signal);
QTLIBC_API void QFocusFrame_OnDisconnectNotify(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseDisconnectNotify(QFocusFrame* self, QMetaMethod* signal);
QTLIBC_API int QFocusFrame_Metric(const QFocusFrame* self, int param1);
QTLIBC_API void QFocusFrame_OnMetric(const QFocusFrame* self, intptr_t slot);
QTLIBC_API int QFocusFrame_QBaseMetric(const QFocusFrame* self, int param1);
QTLIBC_API void QFocusFrame_InitPainter(const QFocusFrame* self, QPainter* painter);
QTLIBC_API void QFocusFrame_OnInitPainter(const QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseInitPainter(const QFocusFrame* self, QPainter* painter);
QTLIBC_API QPaintDevice* QFocusFrame_Redirected(const QFocusFrame* self, QPoint* offset);
QTLIBC_API void QFocusFrame_OnRedirected(const QFocusFrame* self, intptr_t slot);
QTLIBC_API QPaintDevice* QFocusFrame_QBaseRedirected(const QFocusFrame* self, QPoint* offset);
QTLIBC_API QPainter* QFocusFrame_SharedPainter(const QFocusFrame* self);
QTLIBC_API void QFocusFrame_OnSharedPainter(const QFocusFrame* self, intptr_t slot);
QTLIBC_API QPainter* QFocusFrame_QBaseSharedPainter(const QFocusFrame* self);
QTLIBC_API void QFocusFrame_UpdateMicroFocus(QFocusFrame* self);
QTLIBC_API void QFocusFrame_OnUpdateMicroFocus(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseUpdateMicroFocus(QFocusFrame* self);
QTLIBC_API void QFocusFrame_Create(QFocusFrame* self);
QTLIBC_API void QFocusFrame_OnCreate(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseCreate(QFocusFrame* self);
QTLIBC_API void QFocusFrame_Destroy(QFocusFrame* self);
QTLIBC_API void QFocusFrame_OnDestroy(QFocusFrame* self, intptr_t slot);
QTLIBC_API void QFocusFrame_QBaseDestroy(QFocusFrame* self);
QTLIBC_API bool QFocusFrame_FocusNextChild(QFocusFrame* self);
QTLIBC_API void QFocusFrame_OnFocusNextChild(QFocusFrame* self, intptr_t slot);
QTLIBC_API bool QFocusFrame_QBaseFocusNextChild(QFocusFrame* self);
QTLIBC_API bool QFocusFrame_FocusPreviousChild(QFocusFrame* self);
QTLIBC_API void QFocusFrame_OnFocusPreviousChild(QFocusFrame* self, intptr_t slot);
QTLIBC_API bool QFocusFrame_QBaseFocusPreviousChild(QFocusFrame* self);
QTLIBC_API QObject* QFocusFrame_Sender(const QFocusFrame* self);
QTLIBC_API void QFocusFrame_OnSender(const QFocusFrame* self, intptr_t slot);
QTLIBC_API QObject* QFocusFrame_QBaseSender(const QFocusFrame* self);
QTLIBC_API int QFocusFrame_SenderSignalIndex(const QFocusFrame* self);
QTLIBC_API void QFocusFrame_OnSenderSignalIndex(const QFocusFrame* self, intptr_t slot);
QTLIBC_API int QFocusFrame_QBaseSenderSignalIndex(const QFocusFrame* self);
QTLIBC_API int QFocusFrame_Receivers(const QFocusFrame* self, const char* signal);
QTLIBC_API void QFocusFrame_OnReceivers(const QFocusFrame* self, intptr_t slot);
QTLIBC_API int QFocusFrame_QBaseReceivers(const QFocusFrame* self, const char* signal);
QTLIBC_API bool QFocusFrame_IsSignalConnected(const QFocusFrame* self, QMetaMethod* signal);
QTLIBC_API void QFocusFrame_OnIsSignalConnected(const QFocusFrame* self, intptr_t slot);
QTLIBC_API bool QFocusFrame_QBaseIsSignalConnected(const QFocusFrame* self, QMetaMethod* signal);
QTLIBC_API void QFocusFrame_Delete(QFocusFrame* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
