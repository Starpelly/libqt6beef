#pragma once
#ifndef SRCC_LIBQDESKTOPWIDGET_H
#define SRCC_LIBQDESKTOPWIDGET_H

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
typedef struct QBackingStore QBackingStore;
typedef struct QBitmap QBitmap;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QCursor QCursor;
typedef struct QDesktopWidget QDesktopWidget;
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
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

QDesktopWidget* QDesktopWidget_new();
QMetaObject* QDesktopWidget_MetaObject(const QDesktopWidget* self);
void* QDesktopWidget_Metacast(QDesktopWidget* self, const char* param1);
int QDesktopWidget_Metacall(QDesktopWidget* self, int param1, int param2, void** param3);
void QDesktopWidget_OnMetacall(QDesktopWidget* self, intptr_t slot);
int QDesktopWidget_QBaseMetacall(QDesktopWidget* self, int param1, int param2, void** param3);
libqt_string QDesktopWidget_Tr(const char* s);
libqt_string QDesktopWidget_TrUtf8(const char* s);
int QDesktopWidget_ScreenNumber(const QDesktopWidget* self);
QRect* QDesktopWidget_ScreenGeometry(const QDesktopWidget* self, QWidget* widget);
QRect* QDesktopWidget_AvailableGeometry(const QDesktopWidget* self, QWidget* widget);
bool QDesktopWidget_IsVirtualDesktop(const QDesktopWidget* self);
int QDesktopWidget_NumScreens(const QDesktopWidget* self);
int QDesktopWidget_ScreenCount(const QDesktopWidget* self);
int QDesktopWidget_PrimaryScreen(const QDesktopWidget* self);
int QDesktopWidget_ScreenNumberWithQPoint(const QDesktopWidget* self, QPoint* param1);
QWidget* QDesktopWidget_Screen(QDesktopWidget* self);
QRect* QDesktopWidget_ScreenGeometry2(const QDesktopWidget* self);
QRect* QDesktopWidget_ScreenGeometryWithPoint(const QDesktopWidget* self, QPoint* point);
QRect* QDesktopWidget_AvailableGeometry2(const QDesktopWidget* self);
QRect* QDesktopWidget_AvailableGeometryWithPoint(const QDesktopWidget* self, QPoint* point);
void QDesktopWidget_Resized(QDesktopWidget* self, int param1);
void QDesktopWidget_Connect_Resized(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_WorkAreaResized(QDesktopWidget* self, int param1);
void QDesktopWidget_Connect_WorkAreaResized(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_ScreenCountChanged(QDesktopWidget* self, int param1);
void QDesktopWidget_Connect_ScreenCountChanged(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_PrimaryScreenChanged(QDesktopWidget* self);
void QDesktopWidget_Connect_PrimaryScreenChanged(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_ResizeEvent(QDesktopWidget* self, QResizeEvent* e);
void QDesktopWidget_OnResizeEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseResizeEvent(QDesktopWidget* self, QResizeEvent* e);
libqt_string QDesktopWidget_Tr2(const char* s, const char* c);
libqt_string QDesktopWidget_Tr3(const char* s, const char* c, int n);
libqt_string QDesktopWidget_TrUtf82(const char* s, const char* c);
libqt_string QDesktopWidget_TrUtf83(const char* s, const char* c, int n);
int QDesktopWidget_ScreenNumber1(const QDesktopWidget* self, QWidget* widget);
QWidget* QDesktopWidget_Screen1(QDesktopWidget* self, int screen);
QRect* QDesktopWidget_ScreenGeometry1(const QDesktopWidget* self, int screen);
QRect* QDesktopWidget_AvailableGeometry1(const QDesktopWidget* self, int screen);
int QDesktopWidget_DevType(const QDesktopWidget* self);
void QDesktopWidget_OnDevType(const QDesktopWidget* self, intptr_t slot);
int QDesktopWidget_QBaseDevType(const QDesktopWidget* self);
void QDesktopWidget_SetVisible(QDesktopWidget* self, bool visible);
void QDesktopWidget_OnSetVisible(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseSetVisible(QDesktopWidget* self, bool visible);
QSize* QDesktopWidget_SizeHint(const QDesktopWidget* self);
void QDesktopWidget_OnSizeHint(const QDesktopWidget* self, intptr_t slot);
QSize* QDesktopWidget_QBaseSizeHint(const QDesktopWidget* self);
QSize* QDesktopWidget_MinimumSizeHint(const QDesktopWidget* self);
void QDesktopWidget_OnMinimumSizeHint(const QDesktopWidget* self, intptr_t slot);
QSize* QDesktopWidget_QBaseMinimumSizeHint(const QDesktopWidget* self);
int QDesktopWidget_HeightForWidth(const QDesktopWidget* self, int param1);
void QDesktopWidget_OnHeightForWidth(const QDesktopWidget* self, intptr_t slot);
int QDesktopWidget_QBaseHeightForWidth(const QDesktopWidget* self, int param1);
bool QDesktopWidget_HasHeightForWidth(const QDesktopWidget* self);
void QDesktopWidget_OnHasHeightForWidth(const QDesktopWidget* self, intptr_t slot);
bool QDesktopWidget_QBaseHasHeightForWidth(const QDesktopWidget* self);
QPaintEngine* QDesktopWidget_PaintEngine(const QDesktopWidget* self);
void QDesktopWidget_OnPaintEngine(const QDesktopWidget* self, intptr_t slot);
QPaintEngine* QDesktopWidget_QBasePaintEngine(const QDesktopWidget* self);
bool QDesktopWidget_Event(QDesktopWidget* self, QEvent* event);
void QDesktopWidget_OnEvent(QDesktopWidget* self, intptr_t slot);
bool QDesktopWidget_QBaseEvent(QDesktopWidget* self, QEvent* event);
void QDesktopWidget_MousePressEvent(QDesktopWidget* self, QMouseEvent* event);
void QDesktopWidget_OnMousePressEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseMousePressEvent(QDesktopWidget* self, QMouseEvent* event);
void QDesktopWidget_MouseReleaseEvent(QDesktopWidget* self, QMouseEvent* event);
void QDesktopWidget_OnMouseReleaseEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseMouseReleaseEvent(QDesktopWidget* self, QMouseEvent* event);
void QDesktopWidget_MouseDoubleClickEvent(QDesktopWidget* self, QMouseEvent* event);
void QDesktopWidget_OnMouseDoubleClickEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseMouseDoubleClickEvent(QDesktopWidget* self, QMouseEvent* event);
void QDesktopWidget_MouseMoveEvent(QDesktopWidget* self, QMouseEvent* event);
void QDesktopWidget_OnMouseMoveEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseMouseMoveEvent(QDesktopWidget* self, QMouseEvent* event);
void QDesktopWidget_WheelEvent(QDesktopWidget* self, QWheelEvent* event);
void QDesktopWidget_OnWheelEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseWheelEvent(QDesktopWidget* self, QWheelEvent* event);
void QDesktopWidget_KeyPressEvent(QDesktopWidget* self, QKeyEvent* event);
void QDesktopWidget_OnKeyPressEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseKeyPressEvent(QDesktopWidget* self, QKeyEvent* event);
void QDesktopWidget_KeyReleaseEvent(QDesktopWidget* self, QKeyEvent* event);
void QDesktopWidget_OnKeyReleaseEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseKeyReleaseEvent(QDesktopWidget* self, QKeyEvent* event);
void QDesktopWidget_FocusInEvent(QDesktopWidget* self, QFocusEvent* event);
void QDesktopWidget_OnFocusInEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseFocusInEvent(QDesktopWidget* self, QFocusEvent* event);
void QDesktopWidget_FocusOutEvent(QDesktopWidget* self, QFocusEvent* event);
void QDesktopWidget_OnFocusOutEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseFocusOutEvent(QDesktopWidget* self, QFocusEvent* event);
void QDesktopWidget_EnterEvent(QDesktopWidget* self, QEvent* event);
void QDesktopWidget_OnEnterEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseEnterEvent(QDesktopWidget* self, QEvent* event);
void QDesktopWidget_LeaveEvent(QDesktopWidget* self, QEvent* event);
void QDesktopWidget_OnLeaveEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseLeaveEvent(QDesktopWidget* self, QEvent* event);
void QDesktopWidget_PaintEvent(QDesktopWidget* self, QPaintEvent* event);
void QDesktopWidget_OnPaintEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBasePaintEvent(QDesktopWidget* self, QPaintEvent* event);
void QDesktopWidget_MoveEvent(QDesktopWidget* self, QMoveEvent* event);
void QDesktopWidget_OnMoveEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseMoveEvent(QDesktopWidget* self, QMoveEvent* event);
void QDesktopWidget_CloseEvent(QDesktopWidget* self, QCloseEvent* event);
void QDesktopWidget_OnCloseEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseCloseEvent(QDesktopWidget* self, QCloseEvent* event);
void QDesktopWidget_ContextMenuEvent(QDesktopWidget* self, QContextMenuEvent* event);
void QDesktopWidget_OnContextMenuEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseContextMenuEvent(QDesktopWidget* self, QContextMenuEvent* event);
void QDesktopWidget_TabletEvent(QDesktopWidget* self, QTabletEvent* event);
void QDesktopWidget_OnTabletEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseTabletEvent(QDesktopWidget* self, QTabletEvent* event);
void QDesktopWidget_ActionEvent(QDesktopWidget* self, QActionEvent* event);
void QDesktopWidget_OnActionEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseActionEvent(QDesktopWidget* self, QActionEvent* event);
void QDesktopWidget_DragEnterEvent(QDesktopWidget* self, QDragEnterEvent* event);
void QDesktopWidget_OnDragEnterEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseDragEnterEvent(QDesktopWidget* self, QDragEnterEvent* event);
void QDesktopWidget_DragMoveEvent(QDesktopWidget* self, QDragMoveEvent* event);
void QDesktopWidget_OnDragMoveEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseDragMoveEvent(QDesktopWidget* self, QDragMoveEvent* event);
void QDesktopWidget_DragLeaveEvent(QDesktopWidget* self, QDragLeaveEvent* event);
void QDesktopWidget_OnDragLeaveEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseDragLeaveEvent(QDesktopWidget* self, QDragLeaveEvent* event);
void QDesktopWidget_DropEvent(QDesktopWidget* self, QDropEvent* event);
void QDesktopWidget_OnDropEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseDropEvent(QDesktopWidget* self, QDropEvent* event);
void QDesktopWidget_ShowEvent(QDesktopWidget* self, QShowEvent* event);
void QDesktopWidget_OnShowEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseShowEvent(QDesktopWidget* self, QShowEvent* event);
void QDesktopWidget_HideEvent(QDesktopWidget* self, QHideEvent* event);
void QDesktopWidget_OnHideEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseHideEvent(QDesktopWidget* self, QHideEvent* event);
bool QDesktopWidget_NativeEvent(QDesktopWidget* self, libqt_string eventType, void* message, long* result);
void QDesktopWidget_OnNativeEvent(QDesktopWidget* self, intptr_t slot);
bool QDesktopWidget_QBaseNativeEvent(QDesktopWidget* self, libqt_string eventType, void* message, long* result);
void QDesktopWidget_ChangeEvent(QDesktopWidget* self, QEvent* param1);
void QDesktopWidget_OnChangeEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseChangeEvent(QDesktopWidget* self, QEvent* param1);
void QDesktopWidget_InputMethodEvent(QDesktopWidget* self, QInputMethodEvent* param1);
void QDesktopWidget_OnInputMethodEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseInputMethodEvent(QDesktopWidget* self, QInputMethodEvent* param1);
QVariant* QDesktopWidget_InputMethodQuery(const QDesktopWidget* self, int param1);
void QDesktopWidget_OnInputMethodQuery(const QDesktopWidget* self, intptr_t slot);
QVariant* QDesktopWidget_QBaseInputMethodQuery(const QDesktopWidget* self, int param1);
bool QDesktopWidget_FocusNextPrevChild(QDesktopWidget* self, bool next);
void QDesktopWidget_OnFocusNextPrevChild(QDesktopWidget* self, intptr_t slot);
bool QDesktopWidget_QBaseFocusNextPrevChild(QDesktopWidget* self, bool next);
bool QDesktopWidget_EventFilter(QDesktopWidget* self, QObject* watched, QEvent* event);
void QDesktopWidget_OnEventFilter(QDesktopWidget* self, intptr_t slot);
bool QDesktopWidget_QBaseEventFilter(QDesktopWidget* self, QObject* watched, QEvent* event);
void QDesktopWidget_TimerEvent(QDesktopWidget* self, QTimerEvent* event);
void QDesktopWidget_OnTimerEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseTimerEvent(QDesktopWidget* self, QTimerEvent* event);
void QDesktopWidget_ChildEvent(QDesktopWidget* self, QChildEvent* event);
void QDesktopWidget_OnChildEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseChildEvent(QDesktopWidget* self, QChildEvent* event);
void QDesktopWidget_CustomEvent(QDesktopWidget* self, QEvent* event);
void QDesktopWidget_OnCustomEvent(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseCustomEvent(QDesktopWidget* self, QEvent* event);
void QDesktopWidget_ConnectNotify(QDesktopWidget* self, QMetaMethod* signal);
void QDesktopWidget_OnConnectNotify(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseConnectNotify(QDesktopWidget* self, QMetaMethod* signal);
void QDesktopWidget_DisconnectNotify(QDesktopWidget* self, QMetaMethod* signal);
void QDesktopWidget_OnDisconnectNotify(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseDisconnectNotify(QDesktopWidget* self, QMetaMethod* signal);
int QDesktopWidget_Metric(const QDesktopWidget* self, int param1);
void QDesktopWidget_OnMetric(const QDesktopWidget* self, intptr_t slot);
int QDesktopWidget_QBaseMetric(const QDesktopWidget* self, int param1);
void QDesktopWidget_InitPainter(const QDesktopWidget* self, QPainter* painter);
void QDesktopWidget_OnInitPainter(const QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseInitPainter(const QDesktopWidget* self, QPainter* painter);
QPaintDevice* QDesktopWidget_Redirected(const QDesktopWidget* self, QPoint* offset);
void QDesktopWidget_OnRedirected(const QDesktopWidget* self, intptr_t slot);
QPaintDevice* QDesktopWidget_QBaseRedirected(const QDesktopWidget* self, QPoint* offset);
QPainter* QDesktopWidget_SharedPainter(const QDesktopWidget* self);
void QDesktopWidget_OnSharedPainter(const QDesktopWidget* self, intptr_t slot);
QPainter* QDesktopWidget_QBaseSharedPainter(const QDesktopWidget* self);
void QDesktopWidget_UpdateMicroFocus(QDesktopWidget* self);
void QDesktopWidget_OnUpdateMicroFocus(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseUpdateMicroFocus(QDesktopWidget* self);
void QDesktopWidget_Create(QDesktopWidget* self);
void QDesktopWidget_OnCreate(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseCreate(QDesktopWidget* self);
void QDesktopWidget_Destroy(QDesktopWidget* self);
void QDesktopWidget_OnDestroy(QDesktopWidget* self, intptr_t slot);
void QDesktopWidget_QBaseDestroy(QDesktopWidget* self);
bool QDesktopWidget_FocusNextChild(QDesktopWidget* self);
void QDesktopWidget_OnFocusNextChild(QDesktopWidget* self, intptr_t slot);
bool QDesktopWidget_QBaseFocusNextChild(QDesktopWidget* self);
bool QDesktopWidget_FocusPreviousChild(QDesktopWidget* self);
void QDesktopWidget_OnFocusPreviousChild(QDesktopWidget* self, intptr_t slot);
bool QDesktopWidget_QBaseFocusPreviousChild(QDesktopWidget* self);
QObject* QDesktopWidget_Sender(const QDesktopWidget* self);
void QDesktopWidget_OnSender(const QDesktopWidget* self, intptr_t slot);
QObject* QDesktopWidget_QBaseSender(const QDesktopWidget* self);
int QDesktopWidget_SenderSignalIndex(const QDesktopWidget* self);
void QDesktopWidget_OnSenderSignalIndex(const QDesktopWidget* self, intptr_t slot);
int QDesktopWidget_QBaseSenderSignalIndex(const QDesktopWidget* self);
int QDesktopWidget_Receivers(const QDesktopWidget* self, const char* signal);
void QDesktopWidget_OnReceivers(const QDesktopWidget* self, intptr_t slot);
int QDesktopWidget_QBaseReceivers(const QDesktopWidget* self, const char* signal);
bool QDesktopWidget_IsSignalConnected(const QDesktopWidget* self, QMetaMethod* signal);
void QDesktopWidget_OnIsSignalConnected(const QDesktopWidget* self, intptr_t slot);
bool QDesktopWidget_QBaseIsSignalConnected(const QDesktopWidget* self, QMetaMethod* signal);
void QDesktopWidget_Delete(QDesktopWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
