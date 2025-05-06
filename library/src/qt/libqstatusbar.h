#pragma once
#ifndef SRC_QTC_LIBQSTATUSBAR_H
#define SRC_QTC_LIBQSTATUSBAR_H

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
typedef struct QStatusBar QStatusBar;
typedef struct QStyle QStyle;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

QTLIBC_API QStatusBar* QStatusBar_new(QWidget* parent);
QTLIBC_API QStatusBar* QStatusBar_new2();
QTLIBC_API QMetaObject* QStatusBar_MetaObject(const QStatusBar* self);
QTLIBC_API void* QStatusBar_Metacast(QStatusBar* self, const char* param1);
QTLIBC_API int QStatusBar_Metacall(QStatusBar* self, int param1, int param2, void** param3);
QTLIBC_API void QStatusBar_OnMetacall(QStatusBar* self, intptr_t slot);
QTLIBC_API int QStatusBar_QBaseMetacall(QStatusBar* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QStatusBar_Tr(const char* s);
QTLIBC_API void QStatusBar_AddWidget(QStatusBar* self, QWidget* widget);
QTLIBC_API int QStatusBar_InsertWidget(QStatusBar* self, int index, QWidget* widget);
QTLIBC_API void QStatusBar_AddPermanentWidget(QStatusBar* self, QWidget* widget);
QTLIBC_API int QStatusBar_InsertPermanentWidget(QStatusBar* self, int index, QWidget* widget);
QTLIBC_API void QStatusBar_RemoveWidget(QStatusBar* self, QWidget* widget);
QTLIBC_API void QStatusBar_SetSizeGripEnabled(QStatusBar* self, bool sizeGripEnabled);
QTLIBC_API bool QStatusBar_IsSizeGripEnabled(const QStatusBar* self);
QTLIBC_API libqt_string QStatusBar_CurrentMessage(const QStatusBar* self);
QTLIBC_API void QStatusBar_ShowMessage(QStatusBar* self, libqt_string text);
QTLIBC_API void QStatusBar_ClearMessage(QStatusBar* self);
QTLIBC_API void QStatusBar_MessageChanged(QStatusBar* self, libqt_string text);
void QStatusBar_Connect_MessageChanged(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_ShowEvent(QStatusBar* self, QShowEvent* param1);
QTLIBC_API void QStatusBar_OnShowEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseShowEvent(QStatusBar* self, QShowEvent* param1);
QTLIBC_API void QStatusBar_PaintEvent(QStatusBar* self, QPaintEvent* param1);
QTLIBC_API void QStatusBar_OnPaintEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBasePaintEvent(QStatusBar* self, QPaintEvent* param1);
QTLIBC_API void QStatusBar_ResizeEvent(QStatusBar* self, QResizeEvent* param1);
QTLIBC_API void QStatusBar_OnResizeEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseResizeEvent(QStatusBar* self, QResizeEvent* param1);
QTLIBC_API bool QStatusBar_Event(QStatusBar* self, QEvent* param1);
QTLIBC_API void QStatusBar_OnEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API bool QStatusBar_QBaseEvent(QStatusBar* self, QEvent* param1);
QTLIBC_API libqt_string QStatusBar_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QStatusBar_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QStatusBar_AddWidget2(QStatusBar* self, QWidget* widget, int stretch);
QTLIBC_API int QStatusBar_InsertWidget3(QStatusBar* self, int index, QWidget* widget, int stretch);
QTLIBC_API void QStatusBar_AddPermanentWidget2(QStatusBar* self, QWidget* widget, int stretch);
QTLIBC_API int QStatusBar_InsertPermanentWidget3(QStatusBar* self, int index, QWidget* widget, int stretch);
QTLIBC_API void QStatusBar_ShowMessage2(QStatusBar* self, libqt_string text, int timeout);
QTLIBC_API int QStatusBar_DevType(const QStatusBar* self);
QTLIBC_API void QStatusBar_OnDevType(const QStatusBar* self, intptr_t slot);
QTLIBC_API int QStatusBar_QBaseDevType(const QStatusBar* self);
QTLIBC_API void QStatusBar_SetVisible(QStatusBar* self, bool visible);
QTLIBC_API void QStatusBar_OnSetVisible(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseSetVisible(QStatusBar* self, bool visible);
QTLIBC_API QSize* QStatusBar_SizeHint(const QStatusBar* self);
QTLIBC_API void QStatusBar_OnSizeHint(const QStatusBar* self, intptr_t slot);
QTLIBC_API QSize* QStatusBar_QBaseSizeHint(const QStatusBar* self);
QTLIBC_API QSize* QStatusBar_MinimumSizeHint(const QStatusBar* self);
QTLIBC_API void QStatusBar_OnMinimumSizeHint(const QStatusBar* self, intptr_t slot);
QTLIBC_API QSize* QStatusBar_QBaseMinimumSizeHint(const QStatusBar* self);
QTLIBC_API int QStatusBar_HeightForWidth(const QStatusBar* self, int param1);
QTLIBC_API void QStatusBar_OnHeightForWidth(const QStatusBar* self, intptr_t slot);
QTLIBC_API int QStatusBar_QBaseHeightForWidth(const QStatusBar* self, int param1);
QTLIBC_API bool QStatusBar_HasHeightForWidth(const QStatusBar* self);
QTLIBC_API void QStatusBar_OnHasHeightForWidth(const QStatusBar* self, intptr_t slot);
QTLIBC_API bool QStatusBar_QBaseHasHeightForWidth(const QStatusBar* self);
QTLIBC_API QPaintEngine* QStatusBar_PaintEngine(const QStatusBar* self);
QTLIBC_API void QStatusBar_OnPaintEngine(const QStatusBar* self, intptr_t slot);
QTLIBC_API QPaintEngine* QStatusBar_QBasePaintEngine(const QStatusBar* self);
QTLIBC_API void QStatusBar_MousePressEvent(QStatusBar* self, QMouseEvent* event);
QTLIBC_API void QStatusBar_OnMousePressEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseMousePressEvent(QStatusBar* self, QMouseEvent* event);
QTLIBC_API void QStatusBar_MouseReleaseEvent(QStatusBar* self, QMouseEvent* event);
QTLIBC_API void QStatusBar_OnMouseReleaseEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseMouseReleaseEvent(QStatusBar* self, QMouseEvent* event);
QTLIBC_API void QStatusBar_MouseDoubleClickEvent(QStatusBar* self, QMouseEvent* event);
QTLIBC_API void QStatusBar_OnMouseDoubleClickEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseMouseDoubleClickEvent(QStatusBar* self, QMouseEvent* event);
QTLIBC_API void QStatusBar_MouseMoveEvent(QStatusBar* self, QMouseEvent* event);
QTLIBC_API void QStatusBar_OnMouseMoveEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseMouseMoveEvent(QStatusBar* self, QMouseEvent* event);
QTLIBC_API void QStatusBar_WheelEvent(QStatusBar* self, QWheelEvent* event);
QTLIBC_API void QStatusBar_OnWheelEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseWheelEvent(QStatusBar* self, QWheelEvent* event);
QTLIBC_API void QStatusBar_KeyPressEvent(QStatusBar* self, QKeyEvent* event);
QTLIBC_API void QStatusBar_OnKeyPressEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseKeyPressEvent(QStatusBar* self, QKeyEvent* event);
QTLIBC_API void QStatusBar_KeyReleaseEvent(QStatusBar* self, QKeyEvent* event);
QTLIBC_API void QStatusBar_OnKeyReleaseEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseKeyReleaseEvent(QStatusBar* self, QKeyEvent* event);
QTLIBC_API void QStatusBar_FocusInEvent(QStatusBar* self, QFocusEvent* event);
QTLIBC_API void QStatusBar_OnFocusInEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseFocusInEvent(QStatusBar* self, QFocusEvent* event);
QTLIBC_API void QStatusBar_FocusOutEvent(QStatusBar* self, QFocusEvent* event);
QTLIBC_API void QStatusBar_OnFocusOutEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseFocusOutEvent(QStatusBar* self, QFocusEvent* event);
QTLIBC_API void QStatusBar_EnterEvent(QStatusBar* self, QEnterEvent* event);
QTLIBC_API void QStatusBar_OnEnterEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseEnterEvent(QStatusBar* self, QEnterEvent* event);
QTLIBC_API void QStatusBar_LeaveEvent(QStatusBar* self, QEvent* event);
QTLIBC_API void QStatusBar_OnLeaveEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseLeaveEvent(QStatusBar* self, QEvent* event);
QTLIBC_API void QStatusBar_MoveEvent(QStatusBar* self, QMoveEvent* event);
QTLIBC_API void QStatusBar_OnMoveEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseMoveEvent(QStatusBar* self, QMoveEvent* event);
QTLIBC_API void QStatusBar_CloseEvent(QStatusBar* self, QCloseEvent* event);
QTLIBC_API void QStatusBar_OnCloseEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseCloseEvent(QStatusBar* self, QCloseEvent* event);
QTLIBC_API void QStatusBar_ContextMenuEvent(QStatusBar* self, QContextMenuEvent* event);
QTLIBC_API void QStatusBar_OnContextMenuEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseContextMenuEvent(QStatusBar* self, QContextMenuEvent* event);
QTLIBC_API void QStatusBar_TabletEvent(QStatusBar* self, QTabletEvent* event);
QTLIBC_API void QStatusBar_OnTabletEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseTabletEvent(QStatusBar* self, QTabletEvent* event);
QTLIBC_API void QStatusBar_ActionEvent(QStatusBar* self, QActionEvent* event);
QTLIBC_API void QStatusBar_OnActionEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseActionEvent(QStatusBar* self, QActionEvent* event);
QTLIBC_API void QStatusBar_DragEnterEvent(QStatusBar* self, QDragEnterEvent* event);
QTLIBC_API void QStatusBar_OnDragEnterEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseDragEnterEvent(QStatusBar* self, QDragEnterEvent* event);
QTLIBC_API void QStatusBar_DragMoveEvent(QStatusBar* self, QDragMoveEvent* event);
QTLIBC_API void QStatusBar_OnDragMoveEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseDragMoveEvent(QStatusBar* self, QDragMoveEvent* event);
QTLIBC_API void QStatusBar_DragLeaveEvent(QStatusBar* self, QDragLeaveEvent* event);
QTLIBC_API void QStatusBar_OnDragLeaveEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseDragLeaveEvent(QStatusBar* self, QDragLeaveEvent* event);
QTLIBC_API void QStatusBar_DropEvent(QStatusBar* self, QDropEvent* event);
QTLIBC_API void QStatusBar_OnDropEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseDropEvent(QStatusBar* self, QDropEvent* event);
QTLIBC_API void QStatusBar_HideEvent(QStatusBar* self, QHideEvent* event);
QTLIBC_API void QStatusBar_OnHideEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseHideEvent(QStatusBar* self, QHideEvent* event);
QTLIBC_API bool QStatusBar_NativeEvent(QStatusBar* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QStatusBar_OnNativeEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API bool QStatusBar_QBaseNativeEvent(QStatusBar* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QStatusBar_ChangeEvent(QStatusBar* self, QEvent* param1);
QTLIBC_API void QStatusBar_OnChangeEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseChangeEvent(QStatusBar* self, QEvent* param1);
QTLIBC_API void QStatusBar_InputMethodEvent(QStatusBar* self, QInputMethodEvent* param1);
QTLIBC_API void QStatusBar_OnInputMethodEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseInputMethodEvent(QStatusBar* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QStatusBar_InputMethodQuery(const QStatusBar* self, int param1);
QTLIBC_API void QStatusBar_OnInputMethodQuery(const QStatusBar* self, intptr_t slot);
QTLIBC_API QVariant* QStatusBar_QBaseInputMethodQuery(const QStatusBar* self, int param1);
QTLIBC_API bool QStatusBar_FocusNextPrevChild(QStatusBar* self, bool next);
QTLIBC_API void QStatusBar_OnFocusNextPrevChild(QStatusBar* self, intptr_t slot);
QTLIBC_API bool QStatusBar_QBaseFocusNextPrevChild(QStatusBar* self, bool next);
QTLIBC_API bool QStatusBar_EventFilter(QStatusBar* self, QObject* watched, QEvent* event);
QTLIBC_API void QStatusBar_OnEventFilter(QStatusBar* self, intptr_t slot);
QTLIBC_API bool QStatusBar_QBaseEventFilter(QStatusBar* self, QObject* watched, QEvent* event);
QTLIBC_API void QStatusBar_TimerEvent(QStatusBar* self, QTimerEvent* event);
QTLIBC_API void QStatusBar_OnTimerEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseTimerEvent(QStatusBar* self, QTimerEvent* event);
QTLIBC_API void QStatusBar_ChildEvent(QStatusBar* self, QChildEvent* event);
QTLIBC_API void QStatusBar_OnChildEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseChildEvent(QStatusBar* self, QChildEvent* event);
QTLIBC_API void QStatusBar_CustomEvent(QStatusBar* self, QEvent* event);
QTLIBC_API void QStatusBar_OnCustomEvent(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseCustomEvent(QStatusBar* self, QEvent* event);
QTLIBC_API void QStatusBar_ConnectNotify(QStatusBar* self, QMetaMethod* signal);
QTLIBC_API void QStatusBar_OnConnectNotify(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseConnectNotify(QStatusBar* self, QMetaMethod* signal);
QTLIBC_API void QStatusBar_DisconnectNotify(QStatusBar* self, QMetaMethod* signal);
QTLIBC_API void QStatusBar_OnDisconnectNotify(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseDisconnectNotify(QStatusBar* self, QMetaMethod* signal);
QTLIBC_API int QStatusBar_Metric(const QStatusBar* self, int param1);
QTLIBC_API void QStatusBar_OnMetric(const QStatusBar* self, intptr_t slot);
QTLIBC_API int QStatusBar_QBaseMetric(const QStatusBar* self, int param1);
QTLIBC_API void QStatusBar_InitPainter(const QStatusBar* self, QPainter* painter);
QTLIBC_API void QStatusBar_OnInitPainter(const QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseInitPainter(const QStatusBar* self, QPainter* painter);
QTLIBC_API QPaintDevice* QStatusBar_Redirected(const QStatusBar* self, QPoint* offset);
QTLIBC_API void QStatusBar_OnRedirected(const QStatusBar* self, intptr_t slot);
QTLIBC_API QPaintDevice* QStatusBar_QBaseRedirected(const QStatusBar* self, QPoint* offset);
QTLIBC_API QPainter* QStatusBar_SharedPainter(const QStatusBar* self);
QTLIBC_API void QStatusBar_OnSharedPainter(const QStatusBar* self, intptr_t slot);
QTLIBC_API QPainter* QStatusBar_QBaseSharedPainter(const QStatusBar* self);
QTLIBC_API void QStatusBar_Reformat(QStatusBar* self);
QTLIBC_API void QStatusBar_OnReformat(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseReformat(QStatusBar* self);
QTLIBC_API void QStatusBar_HideOrShow(QStatusBar* self);
QTLIBC_API void QStatusBar_OnHideOrShow(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseHideOrShow(QStatusBar* self);
QTLIBC_API void QStatusBar_UpdateMicroFocus(QStatusBar* self);
QTLIBC_API void QStatusBar_OnUpdateMicroFocus(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseUpdateMicroFocus(QStatusBar* self);
QTLIBC_API void QStatusBar_Create(QStatusBar* self);
QTLIBC_API void QStatusBar_OnCreate(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseCreate(QStatusBar* self);
QTLIBC_API void QStatusBar_Destroy(QStatusBar* self);
QTLIBC_API void QStatusBar_OnDestroy(QStatusBar* self, intptr_t slot);
QTLIBC_API void QStatusBar_QBaseDestroy(QStatusBar* self);
QTLIBC_API bool QStatusBar_FocusNextChild(QStatusBar* self);
QTLIBC_API void QStatusBar_OnFocusNextChild(QStatusBar* self, intptr_t slot);
QTLIBC_API bool QStatusBar_QBaseFocusNextChild(QStatusBar* self);
QTLIBC_API bool QStatusBar_FocusPreviousChild(QStatusBar* self);
QTLIBC_API void QStatusBar_OnFocusPreviousChild(QStatusBar* self, intptr_t slot);
QTLIBC_API bool QStatusBar_QBaseFocusPreviousChild(QStatusBar* self);
QTLIBC_API QObject* QStatusBar_Sender(const QStatusBar* self);
QTLIBC_API void QStatusBar_OnSender(const QStatusBar* self, intptr_t slot);
QTLIBC_API QObject* QStatusBar_QBaseSender(const QStatusBar* self);
QTLIBC_API int QStatusBar_SenderSignalIndex(const QStatusBar* self);
QTLIBC_API void QStatusBar_OnSenderSignalIndex(const QStatusBar* self, intptr_t slot);
QTLIBC_API int QStatusBar_QBaseSenderSignalIndex(const QStatusBar* self);
QTLIBC_API int QStatusBar_Receivers(const QStatusBar* self, const char* signal);
QTLIBC_API void QStatusBar_OnReceivers(const QStatusBar* self, intptr_t slot);
QTLIBC_API int QStatusBar_QBaseReceivers(const QStatusBar* self, const char* signal);
QTLIBC_API bool QStatusBar_IsSignalConnected(const QStatusBar* self, QMetaMethod* signal);
QTLIBC_API void QStatusBar_OnIsSignalConnected(const QStatusBar* self, intptr_t slot);
QTLIBC_API bool QStatusBar_QBaseIsSignalConnected(const QStatusBar* self, QMetaMethod* signal);
QTLIBC_API void QStatusBar_Delete(QStatusBar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
