#pragma once
#ifndef SRC_QTC_LIBQSTACKEDWIDGET_H
#define SRC_QTC_LIBQSTACKEDWIDGET_H

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
typedef struct QFrame QFrame;
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
typedef struct QStackedWidget QStackedWidget;
typedef struct QStyle QStyle;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

QTLIBC_API QStackedWidget* QStackedWidget_new(QWidget* parent);
QTLIBC_API QStackedWidget* QStackedWidget_new2();
QTLIBC_API QMetaObject* QStackedWidget_MetaObject(const QStackedWidget* self);
QTLIBC_API void* QStackedWidget_Metacast(QStackedWidget* self, const char* param1);
QTLIBC_API int QStackedWidget_Metacall(QStackedWidget* self, int param1, int param2, void** param3);
QTLIBC_API void QStackedWidget_OnMetacall(QStackedWidget* self, intptr_t slot);
QTLIBC_API int QStackedWidget_QBaseMetacall(QStackedWidget* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QStackedWidget_Tr(const char* s);
QTLIBC_API int QStackedWidget_AddWidget(QStackedWidget* self, QWidget* w);
QTLIBC_API int QStackedWidget_InsertWidget(QStackedWidget* self, int index, QWidget* w);
QTLIBC_API void QStackedWidget_RemoveWidget(QStackedWidget* self, QWidget* w);
QTLIBC_API QWidget* QStackedWidget_CurrentWidget(const QStackedWidget* self);
QTLIBC_API int QStackedWidget_CurrentIndex(const QStackedWidget* self);
QTLIBC_API int QStackedWidget_IndexOf(const QStackedWidget* self, QWidget* param1);
QTLIBC_API QWidget* QStackedWidget_Widget(const QStackedWidget* self, int param1);
QTLIBC_API int QStackedWidget_Count(const QStackedWidget* self);
QTLIBC_API void QStackedWidget_SetCurrentIndex(QStackedWidget* self, int index);
QTLIBC_API void QStackedWidget_SetCurrentWidget(QStackedWidget* self, QWidget* w);
QTLIBC_API void QStackedWidget_CurrentChanged(QStackedWidget* self, int param1);
void QStackedWidget_Connect_CurrentChanged(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_WidgetRemoved(QStackedWidget* self, int index);
void QStackedWidget_Connect_WidgetRemoved(QStackedWidget* self, intptr_t slot);
QTLIBC_API bool QStackedWidget_Event(QStackedWidget* self, QEvent* e);
QTLIBC_API void QStackedWidget_OnEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API bool QStackedWidget_QBaseEvent(QStackedWidget* self, QEvent* e);
QTLIBC_API libqt_string QStackedWidget_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QStackedWidget_Tr3(const char* s, const char* c, int n);
QTLIBC_API QSize* QStackedWidget_SizeHint(const QStackedWidget* self);
QTLIBC_API void QStackedWidget_OnSizeHint(const QStackedWidget* self, intptr_t slot);
QTLIBC_API QSize* QStackedWidget_QBaseSizeHint(const QStackedWidget* self);
QTLIBC_API void QStackedWidget_PaintEvent(QStackedWidget* self, QPaintEvent* param1);
QTLIBC_API void QStackedWidget_OnPaintEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBasePaintEvent(QStackedWidget* self, QPaintEvent* param1);
QTLIBC_API void QStackedWidget_ChangeEvent(QStackedWidget* self, QEvent* param1);
QTLIBC_API void QStackedWidget_OnChangeEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseChangeEvent(QStackedWidget* self, QEvent* param1);
QTLIBC_API int QStackedWidget_DevType(const QStackedWidget* self);
QTLIBC_API void QStackedWidget_OnDevType(const QStackedWidget* self, intptr_t slot);
QTLIBC_API int QStackedWidget_QBaseDevType(const QStackedWidget* self);
QTLIBC_API void QStackedWidget_SetVisible(QStackedWidget* self, bool visible);
QTLIBC_API void QStackedWidget_OnSetVisible(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseSetVisible(QStackedWidget* self, bool visible);
QTLIBC_API QSize* QStackedWidget_MinimumSizeHint(const QStackedWidget* self);
QTLIBC_API void QStackedWidget_OnMinimumSizeHint(const QStackedWidget* self, intptr_t slot);
QTLIBC_API QSize* QStackedWidget_QBaseMinimumSizeHint(const QStackedWidget* self);
QTLIBC_API int QStackedWidget_HeightForWidth(const QStackedWidget* self, int param1);
QTLIBC_API void QStackedWidget_OnHeightForWidth(const QStackedWidget* self, intptr_t slot);
QTLIBC_API int QStackedWidget_QBaseHeightForWidth(const QStackedWidget* self, int param1);
QTLIBC_API bool QStackedWidget_HasHeightForWidth(const QStackedWidget* self);
QTLIBC_API void QStackedWidget_OnHasHeightForWidth(const QStackedWidget* self, intptr_t slot);
QTLIBC_API bool QStackedWidget_QBaseHasHeightForWidth(const QStackedWidget* self);
QTLIBC_API QPaintEngine* QStackedWidget_PaintEngine(const QStackedWidget* self);
QTLIBC_API void QStackedWidget_OnPaintEngine(const QStackedWidget* self, intptr_t slot);
QTLIBC_API QPaintEngine* QStackedWidget_QBasePaintEngine(const QStackedWidget* self);
QTLIBC_API void QStackedWidget_MousePressEvent(QStackedWidget* self, QMouseEvent* event);
QTLIBC_API void QStackedWidget_OnMousePressEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseMousePressEvent(QStackedWidget* self, QMouseEvent* event);
QTLIBC_API void QStackedWidget_MouseReleaseEvent(QStackedWidget* self, QMouseEvent* event);
QTLIBC_API void QStackedWidget_OnMouseReleaseEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseMouseReleaseEvent(QStackedWidget* self, QMouseEvent* event);
QTLIBC_API void QStackedWidget_MouseDoubleClickEvent(QStackedWidget* self, QMouseEvent* event);
QTLIBC_API void QStackedWidget_OnMouseDoubleClickEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseMouseDoubleClickEvent(QStackedWidget* self, QMouseEvent* event);
QTLIBC_API void QStackedWidget_MouseMoveEvent(QStackedWidget* self, QMouseEvent* event);
QTLIBC_API void QStackedWidget_OnMouseMoveEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseMouseMoveEvent(QStackedWidget* self, QMouseEvent* event);
QTLIBC_API void QStackedWidget_WheelEvent(QStackedWidget* self, QWheelEvent* event);
QTLIBC_API void QStackedWidget_OnWheelEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseWheelEvent(QStackedWidget* self, QWheelEvent* event);
QTLIBC_API void QStackedWidget_KeyPressEvent(QStackedWidget* self, QKeyEvent* event);
QTLIBC_API void QStackedWidget_OnKeyPressEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseKeyPressEvent(QStackedWidget* self, QKeyEvent* event);
QTLIBC_API void QStackedWidget_KeyReleaseEvent(QStackedWidget* self, QKeyEvent* event);
QTLIBC_API void QStackedWidget_OnKeyReleaseEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseKeyReleaseEvent(QStackedWidget* self, QKeyEvent* event);
QTLIBC_API void QStackedWidget_FocusInEvent(QStackedWidget* self, QFocusEvent* event);
QTLIBC_API void QStackedWidget_OnFocusInEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseFocusInEvent(QStackedWidget* self, QFocusEvent* event);
QTLIBC_API void QStackedWidget_FocusOutEvent(QStackedWidget* self, QFocusEvent* event);
QTLIBC_API void QStackedWidget_OnFocusOutEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseFocusOutEvent(QStackedWidget* self, QFocusEvent* event);
QTLIBC_API void QStackedWidget_EnterEvent(QStackedWidget* self, QEnterEvent* event);
QTLIBC_API void QStackedWidget_OnEnterEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseEnterEvent(QStackedWidget* self, QEnterEvent* event);
QTLIBC_API void QStackedWidget_LeaveEvent(QStackedWidget* self, QEvent* event);
QTLIBC_API void QStackedWidget_OnLeaveEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseLeaveEvent(QStackedWidget* self, QEvent* event);
QTLIBC_API void QStackedWidget_MoveEvent(QStackedWidget* self, QMoveEvent* event);
QTLIBC_API void QStackedWidget_OnMoveEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseMoveEvent(QStackedWidget* self, QMoveEvent* event);
QTLIBC_API void QStackedWidget_ResizeEvent(QStackedWidget* self, QResizeEvent* event);
QTLIBC_API void QStackedWidget_OnResizeEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseResizeEvent(QStackedWidget* self, QResizeEvent* event);
QTLIBC_API void QStackedWidget_CloseEvent(QStackedWidget* self, QCloseEvent* event);
QTLIBC_API void QStackedWidget_OnCloseEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseCloseEvent(QStackedWidget* self, QCloseEvent* event);
QTLIBC_API void QStackedWidget_ContextMenuEvent(QStackedWidget* self, QContextMenuEvent* event);
QTLIBC_API void QStackedWidget_OnContextMenuEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseContextMenuEvent(QStackedWidget* self, QContextMenuEvent* event);
QTLIBC_API void QStackedWidget_TabletEvent(QStackedWidget* self, QTabletEvent* event);
QTLIBC_API void QStackedWidget_OnTabletEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseTabletEvent(QStackedWidget* self, QTabletEvent* event);
QTLIBC_API void QStackedWidget_ActionEvent(QStackedWidget* self, QActionEvent* event);
QTLIBC_API void QStackedWidget_OnActionEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseActionEvent(QStackedWidget* self, QActionEvent* event);
QTLIBC_API void QStackedWidget_DragEnterEvent(QStackedWidget* self, QDragEnterEvent* event);
QTLIBC_API void QStackedWidget_OnDragEnterEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseDragEnterEvent(QStackedWidget* self, QDragEnterEvent* event);
QTLIBC_API void QStackedWidget_DragMoveEvent(QStackedWidget* self, QDragMoveEvent* event);
QTLIBC_API void QStackedWidget_OnDragMoveEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseDragMoveEvent(QStackedWidget* self, QDragMoveEvent* event);
QTLIBC_API void QStackedWidget_DragLeaveEvent(QStackedWidget* self, QDragLeaveEvent* event);
QTLIBC_API void QStackedWidget_OnDragLeaveEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseDragLeaveEvent(QStackedWidget* self, QDragLeaveEvent* event);
QTLIBC_API void QStackedWidget_DropEvent(QStackedWidget* self, QDropEvent* event);
QTLIBC_API void QStackedWidget_OnDropEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseDropEvent(QStackedWidget* self, QDropEvent* event);
QTLIBC_API void QStackedWidget_ShowEvent(QStackedWidget* self, QShowEvent* event);
QTLIBC_API void QStackedWidget_OnShowEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseShowEvent(QStackedWidget* self, QShowEvent* event);
QTLIBC_API void QStackedWidget_HideEvent(QStackedWidget* self, QHideEvent* event);
QTLIBC_API void QStackedWidget_OnHideEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseHideEvent(QStackedWidget* self, QHideEvent* event);
QTLIBC_API bool QStackedWidget_NativeEvent(QStackedWidget* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QStackedWidget_OnNativeEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API bool QStackedWidget_QBaseNativeEvent(QStackedWidget* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QStackedWidget_InputMethodEvent(QStackedWidget* self, QInputMethodEvent* param1);
QTLIBC_API void QStackedWidget_OnInputMethodEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseInputMethodEvent(QStackedWidget* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QStackedWidget_InputMethodQuery(const QStackedWidget* self, int param1);
QTLIBC_API void QStackedWidget_OnInputMethodQuery(const QStackedWidget* self, intptr_t slot);
QTLIBC_API QVariant* QStackedWidget_QBaseInputMethodQuery(const QStackedWidget* self, int param1);
QTLIBC_API bool QStackedWidget_FocusNextPrevChild(QStackedWidget* self, bool next);
QTLIBC_API void QStackedWidget_OnFocusNextPrevChild(QStackedWidget* self, intptr_t slot);
QTLIBC_API bool QStackedWidget_QBaseFocusNextPrevChild(QStackedWidget* self, bool next);
QTLIBC_API bool QStackedWidget_EventFilter(QStackedWidget* self, QObject* watched, QEvent* event);
QTLIBC_API void QStackedWidget_OnEventFilter(QStackedWidget* self, intptr_t slot);
QTLIBC_API bool QStackedWidget_QBaseEventFilter(QStackedWidget* self, QObject* watched, QEvent* event);
QTLIBC_API void QStackedWidget_TimerEvent(QStackedWidget* self, QTimerEvent* event);
QTLIBC_API void QStackedWidget_OnTimerEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseTimerEvent(QStackedWidget* self, QTimerEvent* event);
QTLIBC_API void QStackedWidget_ChildEvent(QStackedWidget* self, QChildEvent* event);
QTLIBC_API void QStackedWidget_OnChildEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseChildEvent(QStackedWidget* self, QChildEvent* event);
QTLIBC_API void QStackedWidget_CustomEvent(QStackedWidget* self, QEvent* event);
QTLIBC_API void QStackedWidget_OnCustomEvent(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseCustomEvent(QStackedWidget* self, QEvent* event);
QTLIBC_API void QStackedWidget_ConnectNotify(QStackedWidget* self, QMetaMethod* signal);
QTLIBC_API void QStackedWidget_OnConnectNotify(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseConnectNotify(QStackedWidget* self, QMetaMethod* signal);
QTLIBC_API void QStackedWidget_DisconnectNotify(QStackedWidget* self, QMetaMethod* signal);
QTLIBC_API void QStackedWidget_OnDisconnectNotify(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseDisconnectNotify(QStackedWidget* self, QMetaMethod* signal);
QTLIBC_API void QStackedWidget_InitStyleOption(const QStackedWidget* self, QStyleOptionFrame* option);
QTLIBC_API void QStackedWidget_OnInitStyleOption(const QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseInitStyleOption(const QStackedWidget* self, QStyleOptionFrame* option);
QTLIBC_API int QStackedWidget_Metric(const QStackedWidget* self, int param1);
QTLIBC_API void QStackedWidget_OnMetric(const QStackedWidget* self, intptr_t slot);
QTLIBC_API int QStackedWidget_QBaseMetric(const QStackedWidget* self, int param1);
QTLIBC_API void QStackedWidget_InitPainter(const QStackedWidget* self, QPainter* painter);
QTLIBC_API void QStackedWidget_OnInitPainter(const QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseInitPainter(const QStackedWidget* self, QPainter* painter);
QTLIBC_API QPaintDevice* QStackedWidget_Redirected(const QStackedWidget* self, QPoint* offset);
QTLIBC_API void QStackedWidget_OnRedirected(const QStackedWidget* self, intptr_t slot);
QTLIBC_API QPaintDevice* QStackedWidget_QBaseRedirected(const QStackedWidget* self, QPoint* offset);
QTLIBC_API QPainter* QStackedWidget_SharedPainter(const QStackedWidget* self);
QTLIBC_API void QStackedWidget_OnSharedPainter(const QStackedWidget* self, intptr_t slot);
QTLIBC_API QPainter* QStackedWidget_QBaseSharedPainter(const QStackedWidget* self);
QTLIBC_API void QStackedWidget_DrawFrame(QStackedWidget* self, QPainter* param1);
QTLIBC_API void QStackedWidget_OnDrawFrame(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseDrawFrame(QStackedWidget* self, QPainter* param1);
QTLIBC_API void QStackedWidget_UpdateMicroFocus(QStackedWidget* self);
QTLIBC_API void QStackedWidget_OnUpdateMicroFocus(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseUpdateMicroFocus(QStackedWidget* self);
QTLIBC_API void QStackedWidget_Create(QStackedWidget* self);
QTLIBC_API void QStackedWidget_OnCreate(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseCreate(QStackedWidget* self);
QTLIBC_API void QStackedWidget_Destroy(QStackedWidget* self);
QTLIBC_API void QStackedWidget_OnDestroy(QStackedWidget* self, intptr_t slot);
QTLIBC_API void QStackedWidget_QBaseDestroy(QStackedWidget* self);
QTLIBC_API bool QStackedWidget_FocusNextChild(QStackedWidget* self);
QTLIBC_API void QStackedWidget_OnFocusNextChild(QStackedWidget* self, intptr_t slot);
QTLIBC_API bool QStackedWidget_QBaseFocusNextChild(QStackedWidget* self);
QTLIBC_API bool QStackedWidget_FocusPreviousChild(QStackedWidget* self);
QTLIBC_API void QStackedWidget_OnFocusPreviousChild(QStackedWidget* self, intptr_t slot);
QTLIBC_API bool QStackedWidget_QBaseFocusPreviousChild(QStackedWidget* self);
QTLIBC_API QObject* QStackedWidget_Sender(const QStackedWidget* self);
QTLIBC_API void QStackedWidget_OnSender(const QStackedWidget* self, intptr_t slot);
QTLIBC_API QObject* QStackedWidget_QBaseSender(const QStackedWidget* self);
QTLIBC_API int QStackedWidget_SenderSignalIndex(const QStackedWidget* self);
QTLIBC_API void QStackedWidget_OnSenderSignalIndex(const QStackedWidget* self, intptr_t slot);
QTLIBC_API int QStackedWidget_QBaseSenderSignalIndex(const QStackedWidget* self);
QTLIBC_API int QStackedWidget_Receivers(const QStackedWidget* self, const char* signal);
QTLIBC_API void QStackedWidget_OnReceivers(const QStackedWidget* self, intptr_t slot);
QTLIBC_API int QStackedWidget_QBaseReceivers(const QStackedWidget* self, const char* signal);
QTLIBC_API bool QStackedWidget_IsSignalConnected(const QStackedWidget* self, QMetaMethod* signal);
QTLIBC_API void QStackedWidget_OnIsSignalConnected(const QStackedWidget* self, intptr_t slot);
QTLIBC_API bool QStackedWidget_QBaseIsSignalConnected(const QStackedWidget* self, QMetaMethod* signal);
QTLIBC_API void QStackedWidget_Delete(QStackedWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
