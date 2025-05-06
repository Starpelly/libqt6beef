#pragma once
#ifndef SRCC_LIBQMDISUBWINDOW_H
#define SRCC_LIBQMDISUBWINDOW_H

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
typedef struct QMdiArea QMdiArea;
typedef struct QMdiSubWindow QMdiSubWindow;
typedef struct QMenu QMenu;
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

#ifdef __cplusplus
typedef QMdiSubWindow::SubWindowOption SubWindowOption;   // C++ enum
typedef QMdiSubWindow::SubWindowOptions SubWindowOptions; // C++ QFlags
#else
typedef int SubWindowOption;  // C ABI enum
typedef int SubWindowOptions; // C ABI QFlags
#endif

QTLIBC_API QMdiSubWindow* QMdiSubWindow_new(QWidget* parent);
QTLIBC_API QMdiSubWindow* QMdiSubWindow_new2();
QTLIBC_API QMdiSubWindow* QMdiSubWindow_new3(QWidget* parent, int flags);
QTLIBC_API QMetaObject* QMdiSubWindow_MetaObject(const QMdiSubWindow* self);
QTLIBC_API void* QMdiSubWindow_Metacast(QMdiSubWindow* self, const char* param1);
QTLIBC_API int QMdiSubWindow_Metacall(QMdiSubWindow* self, int param1, int param2, void** param3);
QTLIBC_API void QMdiSubWindow_OnMetacall(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API int QMdiSubWindow_QBaseMetacall(QMdiSubWindow* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QMdiSubWindow_Tr(const char* s);
QTLIBC_API QSize* QMdiSubWindow_SizeHint(const QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_OnSizeHint(const QMdiSubWindow* self, intptr_t slot);
QTLIBC_API QSize* QMdiSubWindow_QBaseSizeHint(const QMdiSubWindow* self);
QTLIBC_API QSize* QMdiSubWindow_MinimumSizeHint(const QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_OnMinimumSizeHint(const QMdiSubWindow* self, intptr_t slot);
QTLIBC_API QSize* QMdiSubWindow_QBaseMinimumSizeHint(const QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_SetWidget(QMdiSubWindow* self, QWidget* widget);
QTLIBC_API QWidget* QMdiSubWindow_Widget(const QMdiSubWindow* self);
QTLIBC_API QWidget* QMdiSubWindow_MaximizedButtonsWidget(const QMdiSubWindow* self);
QTLIBC_API QWidget* QMdiSubWindow_MaximizedSystemMenuIconWidget(const QMdiSubWindow* self);
QTLIBC_API bool QMdiSubWindow_IsShaded(const QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_SetOption(QMdiSubWindow* self, int option);
QTLIBC_API bool QMdiSubWindow_TestOption(const QMdiSubWindow* self, int param1);
QTLIBC_API void QMdiSubWindow_SetKeyboardSingleStep(QMdiSubWindow* self, int step);
QTLIBC_API int QMdiSubWindow_KeyboardSingleStep(const QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_SetKeyboardPageStep(QMdiSubWindow* self, int step);
QTLIBC_API int QMdiSubWindow_KeyboardPageStep(const QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_SetSystemMenu(QMdiSubWindow* self, QMenu* systemMenu);
QTLIBC_API QMenu* QMdiSubWindow_SystemMenu(const QMdiSubWindow* self);
QTLIBC_API QMdiArea* QMdiSubWindow_MdiArea(const QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_WindowStateChanged(QMdiSubWindow* self, int oldState, int newState);
void QMdiSubWindow_Connect_WindowStateChanged(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_AboutToActivate(QMdiSubWindow* self);
void QMdiSubWindow_Connect_AboutToActivate(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_ShowSystemMenu(QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_ShowShaded(QMdiSubWindow* self);
QTLIBC_API bool QMdiSubWindow_EventFilter(QMdiSubWindow* self, QObject* object, QEvent* event);
QTLIBC_API void QMdiSubWindow_OnEventFilter(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API bool QMdiSubWindow_QBaseEventFilter(QMdiSubWindow* self, QObject* object, QEvent* event);
QTLIBC_API bool QMdiSubWindow_Event(QMdiSubWindow* self, QEvent* event);
QTLIBC_API void QMdiSubWindow_OnEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API bool QMdiSubWindow_QBaseEvent(QMdiSubWindow* self, QEvent* event);
QTLIBC_API void QMdiSubWindow_ShowEvent(QMdiSubWindow* self, QShowEvent* showEvent);
QTLIBC_API void QMdiSubWindow_OnShowEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseShowEvent(QMdiSubWindow* self, QShowEvent* showEvent);
QTLIBC_API void QMdiSubWindow_HideEvent(QMdiSubWindow* self, QHideEvent* hideEvent);
QTLIBC_API void QMdiSubWindow_OnHideEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseHideEvent(QMdiSubWindow* self, QHideEvent* hideEvent);
QTLIBC_API void QMdiSubWindow_ChangeEvent(QMdiSubWindow* self, QEvent* changeEvent);
QTLIBC_API void QMdiSubWindow_OnChangeEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseChangeEvent(QMdiSubWindow* self, QEvent* changeEvent);
QTLIBC_API void QMdiSubWindow_CloseEvent(QMdiSubWindow* self, QCloseEvent* closeEvent);
QTLIBC_API void QMdiSubWindow_OnCloseEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseCloseEvent(QMdiSubWindow* self, QCloseEvent* closeEvent);
QTLIBC_API void QMdiSubWindow_LeaveEvent(QMdiSubWindow* self, QEvent* leaveEvent);
QTLIBC_API void QMdiSubWindow_OnLeaveEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseLeaveEvent(QMdiSubWindow* self, QEvent* leaveEvent);
QTLIBC_API void QMdiSubWindow_ResizeEvent(QMdiSubWindow* self, QResizeEvent* resizeEvent);
QTLIBC_API void QMdiSubWindow_OnResizeEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseResizeEvent(QMdiSubWindow* self, QResizeEvent* resizeEvent);
QTLIBC_API void QMdiSubWindow_TimerEvent(QMdiSubWindow* self, QTimerEvent* timerEvent);
QTLIBC_API void QMdiSubWindow_OnTimerEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseTimerEvent(QMdiSubWindow* self, QTimerEvent* timerEvent);
QTLIBC_API void QMdiSubWindow_MoveEvent(QMdiSubWindow* self, QMoveEvent* moveEvent);
QTLIBC_API void QMdiSubWindow_OnMoveEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseMoveEvent(QMdiSubWindow* self, QMoveEvent* moveEvent);
QTLIBC_API void QMdiSubWindow_PaintEvent(QMdiSubWindow* self, QPaintEvent* paintEvent);
QTLIBC_API void QMdiSubWindow_OnPaintEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBasePaintEvent(QMdiSubWindow* self, QPaintEvent* paintEvent);
QTLIBC_API void QMdiSubWindow_MousePressEvent(QMdiSubWindow* self, QMouseEvent* mouseEvent);
QTLIBC_API void QMdiSubWindow_OnMousePressEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseMousePressEvent(QMdiSubWindow* self, QMouseEvent* mouseEvent);
QTLIBC_API void QMdiSubWindow_MouseDoubleClickEvent(QMdiSubWindow* self, QMouseEvent* mouseEvent);
QTLIBC_API void QMdiSubWindow_OnMouseDoubleClickEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseMouseDoubleClickEvent(QMdiSubWindow* self, QMouseEvent* mouseEvent);
QTLIBC_API void QMdiSubWindow_MouseReleaseEvent(QMdiSubWindow* self, QMouseEvent* mouseEvent);
QTLIBC_API void QMdiSubWindow_OnMouseReleaseEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseMouseReleaseEvent(QMdiSubWindow* self, QMouseEvent* mouseEvent);
QTLIBC_API void QMdiSubWindow_MouseMoveEvent(QMdiSubWindow* self, QMouseEvent* mouseEvent);
QTLIBC_API void QMdiSubWindow_OnMouseMoveEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseMouseMoveEvent(QMdiSubWindow* self, QMouseEvent* mouseEvent);
QTLIBC_API void QMdiSubWindow_KeyPressEvent(QMdiSubWindow* self, QKeyEvent* keyEvent);
QTLIBC_API void QMdiSubWindow_OnKeyPressEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseKeyPressEvent(QMdiSubWindow* self, QKeyEvent* keyEvent);
QTLIBC_API void QMdiSubWindow_ContextMenuEvent(QMdiSubWindow* self, QContextMenuEvent* contextMenuEvent);
QTLIBC_API void QMdiSubWindow_OnContextMenuEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseContextMenuEvent(QMdiSubWindow* self, QContextMenuEvent* contextMenuEvent);
QTLIBC_API void QMdiSubWindow_FocusInEvent(QMdiSubWindow* self, QFocusEvent* focusInEvent);
QTLIBC_API void QMdiSubWindow_OnFocusInEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseFocusInEvent(QMdiSubWindow* self, QFocusEvent* focusInEvent);
QTLIBC_API void QMdiSubWindow_FocusOutEvent(QMdiSubWindow* self, QFocusEvent* focusOutEvent);
QTLIBC_API void QMdiSubWindow_OnFocusOutEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseFocusOutEvent(QMdiSubWindow* self, QFocusEvent* focusOutEvent);
QTLIBC_API void QMdiSubWindow_ChildEvent(QMdiSubWindow* self, QChildEvent* childEvent);
QTLIBC_API void QMdiSubWindow_OnChildEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseChildEvent(QMdiSubWindow* self, QChildEvent* childEvent);
QTLIBC_API libqt_string QMdiSubWindow_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QMdiSubWindow_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QMdiSubWindow_SetOption2(QMdiSubWindow* self, int option, bool on);
QTLIBC_API int QMdiSubWindow_DevType(const QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_OnDevType(const QMdiSubWindow* self, intptr_t slot);
QTLIBC_API int QMdiSubWindow_QBaseDevType(const QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_SetVisible(QMdiSubWindow* self, bool visible);
QTLIBC_API void QMdiSubWindow_OnSetVisible(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseSetVisible(QMdiSubWindow* self, bool visible);
QTLIBC_API int QMdiSubWindow_HeightForWidth(const QMdiSubWindow* self, int param1);
QTLIBC_API void QMdiSubWindow_OnHeightForWidth(const QMdiSubWindow* self, intptr_t slot);
QTLIBC_API int QMdiSubWindow_QBaseHeightForWidth(const QMdiSubWindow* self, int param1);
QTLIBC_API bool QMdiSubWindow_HasHeightForWidth(const QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_OnHasHeightForWidth(const QMdiSubWindow* self, intptr_t slot);
QTLIBC_API bool QMdiSubWindow_QBaseHasHeightForWidth(const QMdiSubWindow* self);
QTLIBC_API QPaintEngine* QMdiSubWindow_PaintEngine(const QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_OnPaintEngine(const QMdiSubWindow* self, intptr_t slot);
QTLIBC_API QPaintEngine* QMdiSubWindow_QBasePaintEngine(const QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_WheelEvent(QMdiSubWindow* self, QWheelEvent* event);
QTLIBC_API void QMdiSubWindow_OnWheelEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseWheelEvent(QMdiSubWindow* self, QWheelEvent* event);
QTLIBC_API void QMdiSubWindow_KeyReleaseEvent(QMdiSubWindow* self, QKeyEvent* event);
QTLIBC_API void QMdiSubWindow_OnKeyReleaseEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseKeyReleaseEvent(QMdiSubWindow* self, QKeyEvent* event);
QTLIBC_API void QMdiSubWindow_EnterEvent(QMdiSubWindow* self, QEnterEvent* event);
QTLIBC_API void QMdiSubWindow_OnEnterEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseEnterEvent(QMdiSubWindow* self, QEnterEvent* event);
QTLIBC_API void QMdiSubWindow_TabletEvent(QMdiSubWindow* self, QTabletEvent* event);
QTLIBC_API void QMdiSubWindow_OnTabletEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseTabletEvent(QMdiSubWindow* self, QTabletEvent* event);
QTLIBC_API void QMdiSubWindow_ActionEvent(QMdiSubWindow* self, QActionEvent* event);
QTLIBC_API void QMdiSubWindow_OnActionEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseActionEvent(QMdiSubWindow* self, QActionEvent* event);
QTLIBC_API void QMdiSubWindow_DragEnterEvent(QMdiSubWindow* self, QDragEnterEvent* event);
QTLIBC_API void QMdiSubWindow_OnDragEnterEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseDragEnterEvent(QMdiSubWindow* self, QDragEnterEvent* event);
QTLIBC_API void QMdiSubWindow_DragMoveEvent(QMdiSubWindow* self, QDragMoveEvent* event);
QTLIBC_API void QMdiSubWindow_OnDragMoveEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseDragMoveEvent(QMdiSubWindow* self, QDragMoveEvent* event);
QTLIBC_API void QMdiSubWindow_DragLeaveEvent(QMdiSubWindow* self, QDragLeaveEvent* event);
QTLIBC_API void QMdiSubWindow_OnDragLeaveEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseDragLeaveEvent(QMdiSubWindow* self, QDragLeaveEvent* event);
QTLIBC_API void QMdiSubWindow_DropEvent(QMdiSubWindow* self, QDropEvent* event);
QTLIBC_API void QMdiSubWindow_OnDropEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseDropEvent(QMdiSubWindow* self, QDropEvent* event);
QTLIBC_API bool QMdiSubWindow_NativeEvent(QMdiSubWindow* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QMdiSubWindow_OnNativeEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API bool QMdiSubWindow_QBaseNativeEvent(QMdiSubWindow* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QMdiSubWindow_InputMethodEvent(QMdiSubWindow* self, QInputMethodEvent* param1);
QTLIBC_API void QMdiSubWindow_OnInputMethodEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseInputMethodEvent(QMdiSubWindow* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QMdiSubWindow_InputMethodQuery(const QMdiSubWindow* self, int param1);
QTLIBC_API void QMdiSubWindow_OnInputMethodQuery(const QMdiSubWindow* self, intptr_t slot);
QTLIBC_API QVariant* QMdiSubWindow_QBaseInputMethodQuery(const QMdiSubWindow* self, int param1);
QTLIBC_API bool QMdiSubWindow_FocusNextPrevChild(QMdiSubWindow* self, bool next);
QTLIBC_API void QMdiSubWindow_OnFocusNextPrevChild(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API bool QMdiSubWindow_QBaseFocusNextPrevChild(QMdiSubWindow* self, bool next);
QTLIBC_API void QMdiSubWindow_CustomEvent(QMdiSubWindow* self, QEvent* event);
QTLIBC_API void QMdiSubWindow_OnCustomEvent(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseCustomEvent(QMdiSubWindow* self, QEvent* event);
QTLIBC_API void QMdiSubWindow_ConnectNotify(QMdiSubWindow* self, QMetaMethod* signal);
QTLIBC_API void QMdiSubWindow_OnConnectNotify(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseConnectNotify(QMdiSubWindow* self, QMetaMethod* signal);
QTLIBC_API void QMdiSubWindow_DisconnectNotify(QMdiSubWindow* self, QMetaMethod* signal);
QTLIBC_API void QMdiSubWindow_OnDisconnectNotify(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseDisconnectNotify(QMdiSubWindow* self, QMetaMethod* signal);
QTLIBC_API int QMdiSubWindow_Metric(const QMdiSubWindow* self, int param1);
QTLIBC_API void QMdiSubWindow_OnMetric(const QMdiSubWindow* self, intptr_t slot);
QTLIBC_API int QMdiSubWindow_QBaseMetric(const QMdiSubWindow* self, int param1);
QTLIBC_API void QMdiSubWindow_InitPainter(const QMdiSubWindow* self, QPainter* painter);
QTLIBC_API void QMdiSubWindow_OnInitPainter(const QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseInitPainter(const QMdiSubWindow* self, QPainter* painter);
QTLIBC_API QPaintDevice* QMdiSubWindow_Redirected(const QMdiSubWindow* self, QPoint* offset);
QTLIBC_API void QMdiSubWindow_OnRedirected(const QMdiSubWindow* self, intptr_t slot);
QTLIBC_API QPaintDevice* QMdiSubWindow_QBaseRedirected(const QMdiSubWindow* self, QPoint* offset);
QTLIBC_API QPainter* QMdiSubWindow_SharedPainter(const QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_OnSharedPainter(const QMdiSubWindow* self, intptr_t slot);
QTLIBC_API QPainter* QMdiSubWindow_QBaseSharedPainter(const QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_UpdateMicroFocus(QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_OnUpdateMicroFocus(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseUpdateMicroFocus(QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_Create(QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_OnCreate(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseCreate(QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_Destroy(QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_OnDestroy(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API void QMdiSubWindow_QBaseDestroy(QMdiSubWindow* self);
QTLIBC_API bool QMdiSubWindow_FocusNextChild(QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_OnFocusNextChild(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API bool QMdiSubWindow_QBaseFocusNextChild(QMdiSubWindow* self);
QTLIBC_API bool QMdiSubWindow_FocusPreviousChild(QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_OnFocusPreviousChild(QMdiSubWindow* self, intptr_t slot);
QTLIBC_API bool QMdiSubWindow_QBaseFocusPreviousChild(QMdiSubWindow* self);
QTLIBC_API QObject* QMdiSubWindow_Sender(const QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_OnSender(const QMdiSubWindow* self, intptr_t slot);
QTLIBC_API QObject* QMdiSubWindow_QBaseSender(const QMdiSubWindow* self);
QTLIBC_API int QMdiSubWindow_SenderSignalIndex(const QMdiSubWindow* self);
QTLIBC_API void QMdiSubWindow_OnSenderSignalIndex(const QMdiSubWindow* self, intptr_t slot);
QTLIBC_API int QMdiSubWindow_QBaseSenderSignalIndex(const QMdiSubWindow* self);
QTLIBC_API int QMdiSubWindow_Receivers(const QMdiSubWindow* self, const char* signal);
QTLIBC_API void QMdiSubWindow_OnReceivers(const QMdiSubWindow* self, intptr_t slot);
QTLIBC_API int QMdiSubWindow_QBaseReceivers(const QMdiSubWindow* self, const char* signal);
QTLIBC_API bool QMdiSubWindow_IsSignalConnected(const QMdiSubWindow* self, QMetaMethod* signal);
QTLIBC_API void QMdiSubWindow_OnIsSignalConnected(const QMdiSubWindow* self, intptr_t slot);
QTLIBC_API bool QMdiSubWindow_QBaseIsSignalConnected(const QMdiSubWindow* self, QMetaMethod* signal);
QTLIBC_API void QMdiSubWindow_Delete(QMdiSubWindow* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
