#pragma once
#ifndef SRC_QTC_LIBQMENUBAR_H
#define SRC_QTC_LIBQMENUBAR_H

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
typedef struct QMenu QMenu;
typedef struct QMenuBar QMenuBar;
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
typedef struct QStyleOptionMenuItem QStyleOptionMenuItem;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

QTLIBC_API QMenuBar* QMenuBar_new(QWidget* parent);
QTLIBC_API QMenuBar* QMenuBar_new2();
QTLIBC_API QMetaObject* QMenuBar_MetaObject(const QMenuBar* self);
QTLIBC_API void* QMenuBar_Metacast(QMenuBar* self, const char* param1);
QTLIBC_API int QMenuBar_Metacall(QMenuBar* self, int param1, int param2, void** param3);
QTLIBC_API void QMenuBar_OnMetacall(QMenuBar* self, intptr_t slot);
QTLIBC_API int QMenuBar_QBaseMetacall(QMenuBar* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QMenuBar_Tr(const char* s);
QTLIBC_API QAction* QMenuBar_AddMenu(QMenuBar* self, QMenu* menu);
QTLIBC_API QMenu* QMenuBar_AddMenuWithTitle(QMenuBar* self, libqt_string title);
QTLIBC_API QMenu* QMenuBar_AddMenu2(QMenuBar* self, QIcon* icon, libqt_string title);
QTLIBC_API QAction* QMenuBar_AddSeparator(QMenuBar* self);
QTLIBC_API QAction* QMenuBar_InsertSeparator(QMenuBar* self, QAction* before);
QTLIBC_API QAction* QMenuBar_InsertMenu(QMenuBar* self, QAction* before, QMenu* menu);
QTLIBC_API void QMenuBar_Clear(QMenuBar* self);
QTLIBC_API QAction* QMenuBar_ActiveAction(const QMenuBar* self);
QTLIBC_API void QMenuBar_SetActiveAction(QMenuBar* self, QAction* action);
QTLIBC_API void QMenuBar_SetDefaultUp(QMenuBar* self, bool defaultUp);
QTLIBC_API bool QMenuBar_IsDefaultUp(const QMenuBar* self);
QTLIBC_API QSize* QMenuBar_SizeHint(const QMenuBar* self);
QTLIBC_API void QMenuBar_OnSizeHint(const QMenuBar* self, intptr_t slot);
QTLIBC_API QSize* QMenuBar_QBaseSizeHint(const QMenuBar* self);
QTLIBC_API QSize* QMenuBar_MinimumSizeHint(const QMenuBar* self);
QTLIBC_API void QMenuBar_OnMinimumSizeHint(const QMenuBar* self, intptr_t slot);
QTLIBC_API QSize* QMenuBar_QBaseMinimumSizeHint(const QMenuBar* self);
QTLIBC_API int QMenuBar_HeightForWidth(const QMenuBar* self, int param1);
QTLIBC_API void QMenuBar_OnHeightForWidth(const QMenuBar* self, intptr_t slot);
QTLIBC_API int QMenuBar_QBaseHeightForWidth(const QMenuBar* self, int param1);
QTLIBC_API QRect* QMenuBar_ActionGeometry(const QMenuBar* self, QAction* param1);
QTLIBC_API QAction* QMenuBar_ActionAt(const QMenuBar* self, QPoint* param1);
QTLIBC_API void QMenuBar_SetCornerWidget(QMenuBar* self, QWidget* w);
QTLIBC_API QWidget* QMenuBar_CornerWidget(const QMenuBar* self);
QTLIBC_API bool QMenuBar_IsNativeMenuBar(const QMenuBar* self);
QTLIBC_API void QMenuBar_SetNativeMenuBar(QMenuBar* self, bool nativeMenuBar);
QTLIBC_API void QMenuBar_SetVisible(QMenuBar* self, bool visible);
QTLIBC_API void QMenuBar_OnSetVisible(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseSetVisible(QMenuBar* self, bool visible);
QTLIBC_API void QMenuBar_Triggered(QMenuBar* self, QAction* action);
QTLIBC_API void QMenuBar_Connect_Triggered(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_Hovered(QMenuBar* self, QAction* action);
QTLIBC_API void QMenuBar_Connect_Hovered(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_ChangeEvent(QMenuBar* self, QEvent* param1);
QTLIBC_API void QMenuBar_OnChangeEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseChangeEvent(QMenuBar* self, QEvent* param1);
QTLIBC_API void QMenuBar_KeyPressEvent(QMenuBar* self, QKeyEvent* param1);
QTLIBC_API void QMenuBar_OnKeyPressEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseKeyPressEvent(QMenuBar* self, QKeyEvent* param1);
QTLIBC_API void QMenuBar_MouseReleaseEvent(QMenuBar* self, QMouseEvent* param1);
QTLIBC_API void QMenuBar_OnMouseReleaseEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseMouseReleaseEvent(QMenuBar* self, QMouseEvent* param1);
QTLIBC_API void QMenuBar_MousePressEvent(QMenuBar* self, QMouseEvent* param1);
QTLIBC_API void QMenuBar_OnMousePressEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseMousePressEvent(QMenuBar* self, QMouseEvent* param1);
QTLIBC_API void QMenuBar_MouseMoveEvent(QMenuBar* self, QMouseEvent* param1);
QTLIBC_API void QMenuBar_OnMouseMoveEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseMouseMoveEvent(QMenuBar* self, QMouseEvent* param1);
QTLIBC_API void QMenuBar_LeaveEvent(QMenuBar* self, QEvent* param1);
QTLIBC_API void QMenuBar_OnLeaveEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseLeaveEvent(QMenuBar* self, QEvent* param1);
QTLIBC_API void QMenuBar_PaintEvent(QMenuBar* self, QPaintEvent* param1);
QTLIBC_API void QMenuBar_OnPaintEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBasePaintEvent(QMenuBar* self, QPaintEvent* param1);
QTLIBC_API void QMenuBar_ResizeEvent(QMenuBar* self, QResizeEvent* param1);
QTLIBC_API void QMenuBar_OnResizeEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseResizeEvent(QMenuBar* self, QResizeEvent* param1);
QTLIBC_API void QMenuBar_ActionEvent(QMenuBar* self, QActionEvent* param1);
QTLIBC_API void QMenuBar_OnActionEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseActionEvent(QMenuBar* self, QActionEvent* param1);
QTLIBC_API void QMenuBar_FocusOutEvent(QMenuBar* self, QFocusEvent* param1);
QTLIBC_API void QMenuBar_OnFocusOutEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseFocusOutEvent(QMenuBar* self, QFocusEvent* param1);
QTLIBC_API void QMenuBar_FocusInEvent(QMenuBar* self, QFocusEvent* param1);
QTLIBC_API void QMenuBar_OnFocusInEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseFocusInEvent(QMenuBar* self, QFocusEvent* param1);
QTLIBC_API void QMenuBar_TimerEvent(QMenuBar* self, QTimerEvent* param1);
QTLIBC_API void QMenuBar_OnTimerEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseTimerEvent(QMenuBar* self, QTimerEvent* param1);
QTLIBC_API bool QMenuBar_EventFilter(QMenuBar* self, QObject* param1, QEvent* param2);
QTLIBC_API void QMenuBar_OnEventFilter(QMenuBar* self, intptr_t slot);
QTLIBC_API bool QMenuBar_QBaseEventFilter(QMenuBar* self, QObject* param1, QEvent* param2);
QTLIBC_API bool QMenuBar_Event(QMenuBar* self, QEvent* param1);
QTLIBC_API void QMenuBar_OnEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API bool QMenuBar_QBaseEvent(QMenuBar* self, QEvent* param1);
QTLIBC_API void QMenuBar_InitStyleOption(const QMenuBar* self, QStyleOptionMenuItem* option, QAction* action);
QTLIBC_API void QMenuBar_OnInitStyleOption(const QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseInitStyleOption(const QMenuBar* self, QStyleOptionMenuItem* option, QAction* action);
QTLIBC_API libqt_string QMenuBar_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QMenuBar_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QMenuBar_SetCornerWidget2(QMenuBar* self, QWidget* w, int corner);
QTLIBC_API QWidget* QMenuBar_CornerWidget1(const QMenuBar* self, int corner);
QTLIBC_API int QMenuBar_DevType(const QMenuBar* self);
QTLIBC_API void QMenuBar_OnDevType(const QMenuBar* self, intptr_t slot);
QTLIBC_API int QMenuBar_QBaseDevType(const QMenuBar* self);
QTLIBC_API bool QMenuBar_HasHeightForWidth(const QMenuBar* self);
QTLIBC_API void QMenuBar_OnHasHeightForWidth(const QMenuBar* self, intptr_t slot);
QTLIBC_API bool QMenuBar_QBaseHasHeightForWidth(const QMenuBar* self);
QTLIBC_API QPaintEngine* QMenuBar_PaintEngine(const QMenuBar* self);
QTLIBC_API void QMenuBar_OnPaintEngine(const QMenuBar* self, intptr_t slot);
QTLIBC_API QPaintEngine* QMenuBar_QBasePaintEngine(const QMenuBar* self);
QTLIBC_API void QMenuBar_MouseDoubleClickEvent(QMenuBar* self, QMouseEvent* event);
QTLIBC_API void QMenuBar_OnMouseDoubleClickEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseMouseDoubleClickEvent(QMenuBar* self, QMouseEvent* event);
QTLIBC_API void QMenuBar_WheelEvent(QMenuBar* self, QWheelEvent* event);
QTLIBC_API void QMenuBar_OnWheelEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseWheelEvent(QMenuBar* self, QWheelEvent* event);
QTLIBC_API void QMenuBar_KeyReleaseEvent(QMenuBar* self, QKeyEvent* event);
QTLIBC_API void QMenuBar_OnKeyReleaseEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseKeyReleaseEvent(QMenuBar* self, QKeyEvent* event);
QTLIBC_API void QMenuBar_EnterEvent(QMenuBar* self, QEnterEvent* event);
QTLIBC_API void QMenuBar_OnEnterEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseEnterEvent(QMenuBar* self, QEnterEvent* event);
QTLIBC_API void QMenuBar_MoveEvent(QMenuBar* self, QMoveEvent* event);
QTLIBC_API void QMenuBar_OnMoveEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseMoveEvent(QMenuBar* self, QMoveEvent* event);
QTLIBC_API void QMenuBar_CloseEvent(QMenuBar* self, QCloseEvent* event);
QTLIBC_API void QMenuBar_OnCloseEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseCloseEvent(QMenuBar* self, QCloseEvent* event);
QTLIBC_API void QMenuBar_ContextMenuEvent(QMenuBar* self, QContextMenuEvent* event);
QTLIBC_API void QMenuBar_OnContextMenuEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseContextMenuEvent(QMenuBar* self, QContextMenuEvent* event);
QTLIBC_API void QMenuBar_TabletEvent(QMenuBar* self, QTabletEvent* event);
QTLIBC_API void QMenuBar_OnTabletEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseTabletEvent(QMenuBar* self, QTabletEvent* event);
QTLIBC_API void QMenuBar_DragEnterEvent(QMenuBar* self, QDragEnterEvent* event);
QTLIBC_API void QMenuBar_OnDragEnterEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseDragEnterEvent(QMenuBar* self, QDragEnterEvent* event);
QTLIBC_API void QMenuBar_DragMoveEvent(QMenuBar* self, QDragMoveEvent* event);
QTLIBC_API void QMenuBar_OnDragMoveEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseDragMoveEvent(QMenuBar* self, QDragMoveEvent* event);
QTLIBC_API void QMenuBar_DragLeaveEvent(QMenuBar* self, QDragLeaveEvent* event);
QTLIBC_API void QMenuBar_OnDragLeaveEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseDragLeaveEvent(QMenuBar* self, QDragLeaveEvent* event);
QTLIBC_API void QMenuBar_DropEvent(QMenuBar* self, QDropEvent* event);
QTLIBC_API void QMenuBar_OnDropEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseDropEvent(QMenuBar* self, QDropEvent* event);
QTLIBC_API void QMenuBar_ShowEvent(QMenuBar* self, QShowEvent* event);
QTLIBC_API void QMenuBar_OnShowEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseShowEvent(QMenuBar* self, QShowEvent* event);
QTLIBC_API void QMenuBar_HideEvent(QMenuBar* self, QHideEvent* event);
QTLIBC_API void QMenuBar_OnHideEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseHideEvent(QMenuBar* self, QHideEvent* event);
QTLIBC_API bool QMenuBar_NativeEvent(QMenuBar* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QMenuBar_OnNativeEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API bool QMenuBar_QBaseNativeEvent(QMenuBar* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QMenuBar_InputMethodEvent(QMenuBar* self, QInputMethodEvent* param1);
QTLIBC_API void QMenuBar_OnInputMethodEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseInputMethodEvent(QMenuBar* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QMenuBar_InputMethodQuery(const QMenuBar* self, int param1);
QTLIBC_API void QMenuBar_OnInputMethodQuery(const QMenuBar* self, intptr_t slot);
QTLIBC_API QVariant* QMenuBar_QBaseInputMethodQuery(const QMenuBar* self, int param1);
QTLIBC_API bool QMenuBar_FocusNextPrevChild(QMenuBar* self, bool next);
QTLIBC_API void QMenuBar_OnFocusNextPrevChild(QMenuBar* self, intptr_t slot);
QTLIBC_API bool QMenuBar_QBaseFocusNextPrevChild(QMenuBar* self, bool next);
QTLIBC_API void QMenuBar_ChildEvent(QMenuBar* self, QChildEvent* event);
QTLIBC_API void QMenuBar_OnChildEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseChildEvent(QMenuBar* self, QChildEvent* event);
QTLIBC_API void QMenuBar_CustomEvent(QMenuBar* self, QEvent* event);
QTLIBC_API void QMenuBar_OnCustomEvent(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseCustomEvent(QMenuBar* self, QEvent* event);
QTLIBC_API void QMenuBar_ConnectNotify(QMenuBar* self, QMetaMethod* signal);
QTLIBC_API void QMenuBar_OnConnectNotify(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseConnectNotify(QMenuBar* self, QMetaMethod* signal);
QTLIBC_API void QMenuBar_DisconnectNotify(QMenuBar* self, QMetaMethod* signal);
QTLIBC_API void QMenuBar_OnDisconnectNotify(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseDisconnectNotify(QMenuBar* self, QMetaMethod* signal);
QTLIBC_API int QMenuBar_Metric(const QMenuBar* self, int param1);
QTLIBC_API void QMenuBar_OnMetric(const QMenuBar* self, intptr_t slot);
QTLIBC_API int QMenuBar_QBaseMetric(const QMenuBar* self, int param1);
QTLIBC_API void QMenuBar_InitPainter(const QMenuBar* self, QPainter* painter);
QTLIBC_API void QMenuBar_OnInitPainter(const QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseInitPainter(const QMenuBar* self, QPainter* painter);
QTLIBC_API QPaintDevice* QMenuBar_Redirected(const QMenuBar* self, QPoint* offset);
QTLIBC_API void QMenuBar_OnRedirected(const QMenuBar* self, intptr_t slot);
QTLIBC_API QPaintDevice* QMenuBar_QBaseRedirected(const QMenuBar* self, QPoint* offset);
QTLIBC_API QPainter* QMenuBar_SharedPainter(const QMenuBar* self);
QTLIBC_API void QMenuBar_OnSharedPainter(const QMenuBar* self, intptr_t slot);
QTLIBC_API QPainter* QMenuBar_QBaseSharedPainter(const QMenuBar* self);
QTLIBC_API void QMenuBar_UpdateMicroFocus(QMenuBar* self);
QTLIBC_API void QMenuBar_OnUpdateMicroFocus(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseUpdateMicroFocus(QMenuBar* self);
QTLIBC_API void QMenuBar_Create(QMenuBar* self);
QTLIBC_API void QMenuBar_OnCreate(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseCreate(QMenuBar* self);
QTLIBC_API void QMenuBar_Destroy(QMenuBar* self);
QTLIBC_API void QMenuBar_OnDestroy(QMenuBar* self, intptr_t slot);
QTLIBC_API void QMenuBar_QBaseDestroy(QMenuBar* self);
QTLIBC_API bool QMenuBar_FocusNextChild(QMenuBar* self);
QTLIBC_API void QMenuBar_OnFocusNextChild(QMenuBar* self, intptr_t slot);
QTLIBC_API bool QMenuBar_QBaseFocusNextChild(QMenuBar* self);
QTLIBC_API bool QMenuBar_FocusPreviousChild(QMenuBar* self);
QTLIBC_API void QMenuBar_OnFocusPreviousChild(QMenuBar* self, intptr_t slot);
QTLIBC_API bool QMenuBar_QBaseFocusPreviousChild(QMenuBar* self);
QTLIBC_API QObject* QMenuBar_Sender(const QMenuBar* self);
QTLIBC_API void QMenuBar_OnSender(const QMenuBar* self, intptr_t slot);
QTLIBC_API QObject* QMenuBar_QBaseSender(const QMenuBar* self);
QTLIBC_API int QMenuBar_SenderSignalIndex(const QMenuBar* self);
QTLIBC_API void QMenuBar_OnSenderSignalIndex(const QMenuBar* self, intptr_t slot);
QTLIBC_API int QMenuBar_QBaseSenderSignalIndex(const QMenuBar* self);
QTLIBC_API int QMenuBar_Receivers(const QMenuBar* self, const char* signal);
QTLIBC_API void QMenuBar_OnReceivers(const QMenuBar* self, intptr_t slot);
QTLIBC_API int QMenuBar_QBaseReceivers(const QMenuBar* self, const char* signal);
QTLIBC_API bool QMenuBar_IsSignalConnected(const QMenuBar* self, QMetaMethod* signal);
QTLIBC_API void QMenuBar_OnIsSignalConnected(const QMenuBar* self, intptr_t slot);
QTLIBC_API bool QMenuBar_QBaseIsSignalConnected(const QMenuBar* self, QMetaMethod* signal);
QTLIBC_API void QMenuBar_Delete(QMenuBar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
