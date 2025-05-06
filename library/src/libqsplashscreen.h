#pragma once
#ifndef SRCC_LIBQSPLASHSCREEN_H
#define SRCC_LIBQSPLASHSCREEN_H

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
typedef struct QColor QColor;
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
typedef struct QSplashScreen QSplashScreen;
typedef struct QStyle QStyle;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

QTLIBC_API QSplashScreen* QSplashScreen_new();
QTLIBC_API QSplashScreen* QSplashScreen_new2(QScreen* screen);
QTLIBC_API QSplashScreen* QSplashScreen_new3(QPixmap* pixmap);
QTLIBC_API QSplashScreen* QSplashScreen_new4(QPixmap* pixmap, int f);
QTLIBC_API QSplashScreen* QSplashScreen_new5(QScreen* screen, QPixmap* pixmap);
QTLIBC_API QSplashScreen* QSplashScreen_new6(QScreen* screen, QPixmap* pixmap, int f);
QTLIBC_API QMetaObject* QSplashScreen_MetaObject(const QSplashScreen* self);
QTLIBC_API void* QSplashScreen_Metacast(QSplashScreen* self, const char* param1);
QTLIBC_API int QSplashScreen_Metacall(QSplashScreen* self, int param1, int param2, void** param3);
QTLIBC_API void QSplashScreen_OnMetacall(QSplashScreen* self, intptr_t slot);
QTLIBC_API int QSplashScreen_QBaseMetacall(QSplashScreen* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QSplashScreen_Tr(const char* s);
QTLIBC_API void QSplashScreen_SetPixmap(QSplashScreen* self, QPixmap* pixmap);
QTLIBC_API QPixmap* QSplashScreen_Pixmap(const QSplashScreen* self);
QTLIBC_API void QSplashScreen_Finish(QSplashScreen* self, QWidget* w);
QTLIBC_API void QSplashScreen_Repaint(QSplashScreen* self);
QTLIBC_API libqt_string QSplashScreen_Message(const QSplashScreen* self);
QTLIBC_API void QSplashScreen_ShowMessage(QSplashScreen* self, libqt_string message);
QTLIBC_API void QSplashScreen_ClearMessage(QSplashScreen* self);
QTLIBC_API void QSplashScreen_MessageChanged(QSplashScreen* self, libqt_string message);
void QSplashScreen_Connect_MessageChanged(QSplashScreen* self, intptr_t slot);
QTLIBC_API bool QSplashScreen_Event(QSplashScreen* self, QEvent* e);
QTLIBC_API void QSplashScreen_OnEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API bool QSplashScreen_QBaseEvent(QSplashScreen* self, QEvent* e);
QTLIBC_API void QSplashScreen_DrawContents(QSplashScreen* self, QPainter* painter);
QTLIBC_API void QSplashScreen_OnDrawContents(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseDrawContents(QSplashScreen* self, QPainter* painter);
QTLIBC_API void QSplashScreen_MousePressEvent(QSplashScreen* self, QMouseEvent* param1);
QTLIBC_API void QSplashScreen_OnMousePressEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseMousePressEvent(QSplashScreen* self, QMouseEvent* param1);
QTLIBC_API libqt_string QSplashScreen_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QSplashScreen_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QSplashScreen_ShowMessage2(QSplashScreen* self, libqt_string message, int alignment);
QTLIBC_API void QSplashScreen_ShowMessage3(QSplashScreen* self, libqt_string message, int alignment, QColor* color);
QTLIBC_API int QSplashScreen_DevType(const QSplashScreen* self);
QTLIBC_API void QSplashScreen_OnDevType(const QSplashScreen* self, intptr_t slot);
QTLIBC_API int QSplashScreen_QBaseDevType(const QSplashScreen* self);
QTLIBC_API void QSplashScreen_SetVisible(QSplashScreen* self, bool visible);
QTLIBC_API void QSplashScreen_OnSetVisible(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseSetVisible(QSplashScreen* self, bool visible);
QTLIBC_API QSize* QSplashScreen_SizeHint(const QSplashScreen* self);
QTLIBC_API void QSplashScreen_OnSizeHint(const QSplashScreen* self, intptr_t slot);
QTLIBC_API QSize* QSplashScreen_QBaseSizeHint(const QSplashScreen* self);
QTLIBC_API QSize* QSplashScreen_MinimumSizeHint(const QSplashScreen* self);
QTLIBC_API void QSplashScreen_OnMinimumSizeHint(const QSplashScreen* self, intptr_t slot);
QTLIBC_API QSize* QSplashScreen_QBaseMinimumSizeHint(const QSplashScreen* self);
QTLIBC_API int QSplashScreen_HeightForWidth(const QSplashScreen* self, int param1);
QTLIBC_API void QSplashScreen_OnHeightForWidth(const QSplashScreen* self, intptr_t slot);
QTLIBC_API int QSplashScreen_QBaseHeightForWidth(const QSplashScreen* self, int param1);
QTLIBC_API bool QSplashScreen_HasHeightForWidth(const QSplashScreen* self);
QTLIBC_API void QSplashScreen_OnHasHeightForWidth(const QSplashScreen* self, intptr_t slot);
QTLIBC_API bool QSplashScreen_QBaseHasHeightForWidth(const QSplashScreen* self);
QTLIBC_API QPaintEngine* QSplashScreen_PaintEngine(const QSplashScreen* self);
QTLIBC_API void QSplashScreen_OnPaintEngine(const QSplashScreen* self, intptr_t slot);
QTLIBC_API QPaintEngine* QSplashScreen_QBasePaintEngine(const QSplashScreen* self);
QTLIBC_API void QSplashScreen_MouseReleaseEvent(QSplashScreen* self, QMouseEvent* event);
QTLIBC_API void QSplashScreen_OnMouseReleaseEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseMouseReleaseEvent(QSplashScreen* self, QMouseEvent* event);
QTLIBC_API void QSplashScreen_MouseDoubleClickEvent(QSplashScreen* self, QMouseEvent* event);
QTLIBC_API void QSplashScreen_OnMouseDoubleClickEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseMouseDoubleClickEvent(QSplashScreen* self, QMouseEvent* event);
QTLIBC_API void QSplashScreen_MouseMoveEvent(QSplashScreen* self, QMouseEvent* event);
QTLIBC_API void QSplashScreen_OnMouseMoveEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseMouseMoveEvent(QSplashScreen* self, QMouseEvent* event);
QTLIBC_API void QSplashScreen_WheelEvent(QSplashScreen* self, QWheelEvent* event);
QTLIBC_API void QSplashScreen_OnWheelEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseWheelEvent(QSplashScreen* self, QWheelEvent* event);
QTLIBC_API void QSplashScreen_KeyPressEvent(QSplashScreen* self, QKeyEvent* event);
QTLIBC_API void QSplashScreen_OnKeyPressEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseKeyPressEvent(QSplashScreen* self, QKeyEvent* event);
QTLIBC_API void QSplashScreen_KeyReleaseEvent(QSplashScreen* self, QKeyEvent* event);
QTLIBC_API void QSplashScreen_OnKeyReleaseEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseKeyReleaseEvent(QSplashScreen* self, QKeyEvent* event);
QTLIBC_API void QSplashScreen_FocusInEvent(QSplashScreen* self, QFocusEvent* event);
QTLIBC_API void QSplashScreen_OnFocusInEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseFocusInEvent(QSplashScreen* self, QFocusEvent* event);
QTLIBC_API void QSplashScreen_FocusOutEvent(QSplashScreen* self, QFocusEvent* event);
QTLIBC_API void QSplashScreen_OnFocusOutEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseFocusOutEvent(QSplashScreen* self, QFocusEvent* event);
QTLIBC_API void QSplashScreen_EnterEvent(QSplashScreen* self, QEnterEvent* event);
QTLIBC_API void QSplashScreen_OnEnterEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseEnterEvent(QSplashScreen* self, QEnterEvent* event);
QTLIBC_API void QSplashScreen_LeaveEvent(QSplashScreen* self, QEvent* event);
QTLIBC_API void QSplashScreen_OnLeaveEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseLeaveEvent(QSplashScreen* self, QEvent* event);
QTLIBC_API void QSplashScreen_PaintEvent(QSplashScreen* self, QPaintEvent* event);
QTLIBC_API void QSplashScreen_OnPaintEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBasePaintEvent(QSplashScreen* self, QPaintEvent* event);
QTLIBC_API void QSplashScreen_MoveEvent(QSplashScreen* self, QMoveEvent* event);
QTLIBC_API void QSplashScreen_OnMoveEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseMoveEvent(QSplashScreen* self, QMoveEvent* event);
QTLIBC_API void QSplashScreen_ResizeEvent(QSplashScreen* self, QResizeEvent* event);
QTLIBC_API void QSplashScreen_OnResizeEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseResizeEvent(QSplashScreen* self, QResizeEvent* event);
QTLIBC_API void QSplashScreen_CloseEvent(QSplashScreen* self, QCloseEvent* event);
QTLIBC_API void QSplashScreen_OnCloseEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseCloseEvent(QSplashScreen* self, QCloseEvent* event);
QTLIBC_API void QSplashScreen_ContextMenuEvent(QSplashScreen* self, QContextMenuEvent* event);
QTLIBC_API void QSplashScreen_OnContextMenuEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseContextMenuEvent(QSplashScreen* self, QContextMenuEvent* event);
QTLIBC_API void QSplashScreen_TabletEvent(QSplashScreen* self, QTabletEvent* event);
QTLIBC_API void QSplashScreen_OnTabletEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseTabletEvent(QSplashScreen* self, QTabletEvent* event);
QTLIBC_API void QSplashScreen_ActionEvent(QSplashScreen* self, QActionEvent* event);
QTLIBC_API void QSplashScreen_OnActionEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseActionEvent(QSplashScreen* self, QActionEvent* event);
QTLIBC_API void QSplashScreen_DragEnterEvent(QSplashScreen* self, QDragEnterEvent* event);
QTLIBC_API void QSplashScreen_OnDragEnterEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseDragEnterEvent(QSplashScreen* self, QDragEnterEvent* event);
QTLIBC_API void QSplashScreen_DragMoveEvent(QSplashScreen* self, QDragMoveEvent* event);
QTLIBC_API void QSplashScreen_OnDragMoveEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseDragMoveEvent(QSplashScreen* self, QDragMoveEvent* event);
QTLIBC_API void QSplashScreen_DragLeaveEvent(QSplashScreen* self, QDragLeaveEvent* event);
QTLIBC_API void QSplashScreen_OnDragLeaveEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseDragLeaveEvent(QSplashScreen* self, QDragLeaveEvent* event);
QTLIBC_API void QSplashScreen_DropEvent(QSplashScreen* self, QDropEvent* event);
QTLIBC_API void QSplashScreen_OnDropEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseDropEvent(QSplashScreen* self, QDropEvent* event);
QTLIBC_API void QSplashScreen_ShowEvent(QSplashScreen* self, QShowEvent* event);
QTLIBC_API void QSplashScreen_OnShowEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseShowEvent(QSplashScreen* self, QShowEvent* event);
QTLIBC_API void QSplashScreen_HideEvent(QSplashScreen* self, QHideEvent* event);
QTLIBC_API void QSplashScreen_OnHideEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseHideEvent(QSplashScreen* self, QHideEvent* event);
QTLIBC_API bool QSplashScreen_NativeEvent(QSplashScreen* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QSplashScreen_OnNativeEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API bool QSplashScreen_QBaseNativeEvent(QSplashScreen* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QSplashScreen_ChangeEvent(QSplashScreen* self, QEvent* param1);
QTLIBC_API void QSplashScreen_OnChangeEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseChangeEvent(QSplashScreen* self, QEvent* param1);
QTLIBC_API void QSplashScreen_InputMethodEvent(QSplashScreen* self, QInputMethodEvent* param1);
QTLIBC_API void QSplashScreen_OnInputMethodEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseInputMethodEvent(QSplashScreen* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QSplashScreen_InputMethodQuery(const QSplashScreen* self, int param1);
QTLIBC_API void QSplashScreen_OnInputMethodQuery(const QSplashScreen* self, intptr_t slot);
QTLIBC_API QVariant* QSplashScreen_QBaseInputMethodQuery(const QSplashScreen* self, int param1);
QTLIBC_API bool QSplashScreen_FocusNextPrevChild(QSplashScreen* self, bool next);
QTLIBC_API void QSplashScreen_OnFocusNextPrevChild(QSplashScreen* self, intptr_t slot);
QTLIBC_API bool QSplashScreen_QBaseFocusNextPrevChild(QSplashScreen* self, bool next);
QTLIBC_API bool QSplashScreen_EventFilter(QSplashScreen* self, QObject* watched, QEvent* event);
QTLIBC_API void QSplashScreen_OnEventFilter(QSplashScreen* self, intptr_t slot);
QTLIBC_API bool QSplashScreen_QBaseEventFilter(QSplashScreen* self, QObject* watched, QEvent* event);
QTLIBC_API void QSplashScreen_TimerEvent(QSplashScreen* self, QTimerEvent* event);
QTLIBC_API void QSplashScreen_OnTimerEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseTimerEvent(QSplashScreen* self, QTimerEvent* event);
QTLIBC_API void QSplashScreen_ChildEvent(QSplashScreen* self, QChildEvent* event);
QTLIBC_API void QSplashScreen_OnChildEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseChildEvent(QSplashScreen* self, QChildEvent* event);
QTLIBC_API void QSplashScreen_CustomEvent(QSplashScreen* self, QEvent* event);
QTLIBC_API void QSplashScreen_OnCustomEvent(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseCustomEvent(QSplashScreen* self, QEvent* event);
QTLIBC_API void QSplashScreen_ConnectNotify(QSplashScreen* self, QMetaMethod* signal);
QTLIBC_API void QSplashScreen_OnConnectNotify(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseConnectNotify(QSplashScreen* self, QMetaMethod* signal);
QTLIBC_API void QSplashScreen_DisconnectNotify(QSplashScreen* self, QMetaMethod* signal);
QTLIBC_API void QSplashScreen_OnDisconnectNotify(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseDisconnectNotify(QSplashScreen* self, QMetaMethod* signal);
QTLIBC_API int QSplashScreen_Metric(const QSplashScreen* self, int param1);
QTLIBC_API void QSplashScreen_OnMetric(const QSplashScreen* self, intptr_t slot);
QTLIBC_API int QSplashScreen_QBaseMetric(const QSplashScreen* self, int param1);
QTLIBC_API void QSplashScreen_InitPainter(const QSplashScreen* self, QPainter* painter);
QTLIBC_API void QSplashScreen_OnInitPainter(const QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseInitPainter(const QSplashScreen* self, QPainter* painter);
QTLIBC_API QPaintDevice* QSplashScreen_Redirected(const QSplashScreen* self, QPoint* offset);
QTLIBC_API void QSplashScreen_OnRedirected(const QSplashScreen* self, intptr_t slot);
QTLIBC_API QPaintDevice* QSplashScreen_QBaseRedirected(const QSplashScreen* self, QPoint* offset);
QTLIBC_API QPainter* QSplashScreen_SharedPainter(const QSplashScreen* self);
QTLIBC_API void QSplashScreen_OnSharedPainter(const QSplashScreen* self, intptr_t slot);
QTLIBC_API QPainter* QSplashScreen_QBaseSharedPainter(const QSplashScreen* self);
QTLIBC_API void QSplashScreen_UpdateMicroFocus(QSplashScreen* self);
QTLIBC_API void QSplashScreen_OnUpdateMicroFocus(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseUpdateMicroFocus(QSplashScreen* self);
QTLIBC_API void QSplashScreen_Create(QSplashScreen* self);
QTLIBC_API void QSplashScreen_OnCreate(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseCreate(QSplashScreen* self);
QTLIBC_API void QSplashScreen_Destroy(QSplashScreen* self);
QTLIBC_API void QSplashScreen_OnDestroy(QSplashScreen* self, intptr_t slot);
QTLIBC_API void QSplashScreen_QBaseDestroy(QSplashScreen* self);
QTLIBC_API bool QSplashScreen_FocusNextChild(QSplashScreen* self);
QTLIBC_API void QSplashScreen_OnFocusNextChild(QSplashScreen* self, intptr_t slot);
QTLIBC_API bool QSplashScreen_QBaseFocusNextChild(QSplashScreen* self);
QTLIBC_API bool QSplashScreen_FocusPreviousChild(QSplashScreen* self);
QTLIBC_API void QSplashScreen_OnFocusPreviousChild(QSplashScreen* self, intptr_t slot);
QTLIBC_API bool QSplashScreen_QBaseFocusPreviousChild(QSplashScreen* self);
QTLIBC_API QObject* QSplashScreen_Sender(const QSplashScreen* self);
QTLIBC_API void QSplashScreen_OnSender(const QSplashScreen* self, intptr_t slot);
QTLIBC_API QObject* QSplashScreen_QBaseSender(const QSplashScreen* self);
QTLIBC_API int QSplashScreen_SenderSignalIndex(const QSplashScreen* self);
QTLIBC_API void QSplashScreen_OnSenderSignalIndex(const QSplashScreen* self, intptr_t slot);
QTLIBC_API int QSplashScreen_QBaseSenderSignalIndex(const QSplashScreen* self);
QTLIBC_API int QSplashScreen_Receivers(const QSplashScreen* self, const char* signal);
QTLIBC_API void QSplashScreen_OnReceivers(const QSplashScreen* self, intptr_t slot);
QTLIBC_API int QSplashScreen_QBaseReceivers(const QSplashScreen* self, const char* signal);
QTLIBC_API bool QSplashScreen_IsSignalConnected(const QSplashScreen* self, QMetaMethod* signal);
QTLIBC_API void QSplashScreen_OnIsSignalConnected(const QSplashScreen* self, intptr_t slot);
QTLIBC_API bool QSplashScreen_QBaseIsSignalConnected(const QSplashScreen* self, QMetaMethod* signal);
QTLIBC_API void QSplashScreen_Delete(QSplashScreen* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
