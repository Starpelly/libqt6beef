#pragma once
#ifndef SRC_QTC_LIBQRASTERWINDOW_H
#define SRC_QTC_LIBQRASTERWINDOW_H

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
typedef struct QAccessibleInterface QAccessibleInterface;
typedef struct QAnyStringView QAnyStringView;
typedef struct QBindingStorage QBindingStorage;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QCursor QCursor;
typedef struct QEvent QEvent;
typedef struct QExposeEvent QExposeEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMargins QMargins;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintDeviceWindow QPaintDeviceWindow;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QRasterWindow QRasterWindow;
typedef struct QRect QRect;
typedef struct QRegion QRegion;
typedef struct QResizeEvent QResizeEvent;
typedef struct QScreen QScreen;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QSurface QSurface;
typedef struct QSurfaceFormat QSurfaceFormat;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTouchEvent QTouchEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWindow QWindow;
#endif

QTLIBC_API QRasterWindow* QRasterWindow_new();
QTLIBC_API QRasterWindow* QRasterWindow_new2(QWindow* parent);
QTLIBC_API QMetaObject* QRasterWindow_MetaObject(const QRasterWindow* self);
QTLIBC_API void* QRasterWindow_Metacast(QRasterWindow* self, const char* param1);
QTLIBC_API int QRasterWindow_Metacall(QRasterWindow* self, int param1, int param2, void** param3);
QTLIBC_API void QRasterWindow_OnMetacall(QRasterWindow* self, intptr_t slot);
QTLIBC_API int QRasterWindow_QBaseMetacall(QRasterWindow* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QRasterWindow_Tr(const char* s);
QTLIBC_API int QRasterWindow_Metric(const QRasterWindow* self, int metric);
QTLIBC_API void QRasterWindow_OnMetric(const QRasterWindow* self, intptr_t slot);
QTLIBC_API int QRasterWindow_QBaseMetric(const QRasterWindow* self, int metric);
QTLIBC_API QPaintDevice* QRasterWindow_Redirected(const QRasterWindow* self, QPoint* param1);
QTLIBC_API void QRasterWindow_OnRedirected(const QRasterWindow* self, intptr_t slot);
QTLIBC_API QPaintDevice* QRasterWindow_QBaseRedirected(const QRasterWindow* self, QPoint* param1);
QTLIBC_API libqt_string QRasterWindow_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QRasterWindow_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QRasterWindow_ExposeEvent(QRasterWindow* self, QExposeEvent* param1);
QTLIBC_API void QRasterWindow_OnExposeEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseExposeEvent(QRasterWindow* self, QExposeEvent* param1);
QTLIBC_API void QRasterWindow_PaintEvent(QRasterWindow* self, QPaintEvent* event);
QTLIBC_API void QRasterWindow_OnPaintEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBasePaintEvent(QRasterWindow* self, QPaintEvent* event);
QTLIBC_API bool QRasterWindow_Event(QRasterWindow* self, QEvent* event);
QTLIBC_API void QRasterWindow_OnEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API bool QRasterWindow_QBaseEvent(QRasterWindow* self, QEvent* event);
QTLIBC_API int QRasterWindow_SurfaceType(const QRasterWindow* self);
QTLIBC_API void QRasterWindow_OnSurfaceType(const QRasterWindow* self, intptr_t slot);
QTLIBC_API int QRasterWindow_QBaseSurfaceType(const QRasterWindow* self);
QTLIBC_API QSurfaceFormat* QRasterWindow_Format(const QRasterWindow* self);
QTLIBC_API void QRasterWindow_OnFormat(const QRasterWindow* self, intptr_t slot);
QTLIBC_API QSurfaceFormat* QRasterWindow_QBaseFormat(const QRasterWindow* self);
QTLIBC_API QSize* QRasterWindow_Size(const QRasterWindow* self);
QTLIBC_API void QRasterWindow_OnSize(const QRasterWindow* self, intptr_t slot);
QTLIBC_API QSize* QRasterWindow_QBaseSize(const QRasterWindow* self);
QTLIBC_API QAccessibleInterface* QRasterWindow_AccessibleRoot(const QRasterWindow* self);
QTLIBC_API void QRasterWindow_OnAccessibleRoot(const QRasterWindow* self, intptr_t slot);
QTLIBC_API QAccessibleInterface* QRasterWindow_QBaseAccessibleRoot(const QRasterWindow* self);
QTLIBC_API QObject* QRasterWindow_FocusObject(const QRasterWindow* self);
QTLIBC_API void QRasterWindow_OnFocusObject(const QRasterWindow* self, intptr_t slot);
QTLIBC_API QObject* QRasterWindow_QBaseFocusObject(const QRasterWindow* self);
QTLIBC_API void QRasterWindow_ResizeEvent(QRasterWindow* self, QResizeEvent* param1);
QTLIBC_API void QRasterWindow_OnResizeEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseResizeEvent(QRasterWindow* self, QResizeEvent* param1);
QTLIBC_API void QRasterWindow_MoveEvent(QRasterWindow* self, QMoveEvent* param1);
QTLIBC_API void QRasterWindow_OnMoveEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseMoveEvent(QRasterWindow* self, QMoveEvent* param1);
QTLIBC_API void QRasterWindow_FocusInEvent(QRasterWindow* self, QFocusEvent* param1);
QTLIBC_API void QRasterWindow_OnFocusInEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseFocusInEvent(QRasterWindow* self, QFocusEvent* param1);
QTLIBC_API void QRasterWindow_FocusOutEvent(QRasterWindow* self, QFocusEvent* param1);
QTLIBC_API void QRasterWindow_OnFocusOutEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseFocusOutEvent(QRasterWindow* self, QFocusEvent* param1);
QTLIBC_API void QRasterWindow_ShowEvent(QRasterWindow* self, QShowEvent* param1);
QTLIBC_API void QRasterWindow_OnShowEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseShowEvent(QRasterWindow* self, QShowEvent* param1);
QTLIBC_API void QRasterWindow_HideEvent(QRasterWindow* self, QHideEvent* param1);
QTLIBC_API void QRasterWindow_OnHideEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseHideEvent(QRasterWindow* self, QHideEvent* param1);
QTLIBC_API void QRasterWindow_CloseEvent(QRasterWindow* self, QCloseEvent* param1);
QTLIBC_API void QRasterWindow_OnCloseEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseCloseEvent(QRasterWindow* self, QCloseEvent* param1);
QTLIBC_API void QRasterWindow_KeyPressEvent(QRasterWindow* self, QKeyEvent* param1);
QTLIBC_API void QRasterWindow_OnKeyPressEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseKeyPressEvent(QRasterWindow* self, QKeyEvent* param1);
QTLIBC_API void QRasterWindow_KeyReleaseEvent(QRasterWindow* self, QKeyEvent* param1);
QTLIBC_API void QRasterWindow_OnKeyReleaseEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseKeyReleaseEvent(QRasterWindow* self, QKeyEvent* param1);
QTLIBC_API void QRasterWindow_MousePressEvent(QRasterWindow* self, QMouseEvent* param1);
QTLIBC_API void QRasterWindow_OnMousePressEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseMousePressEvent(QRasterWindow* self, QMouseEvent* param1);
QTLIBC_API void QRasterWindow_MouseReleaseEvent(QRasterWindow* self, QMouseEvent* param1);
QTLIBC_API void QRasterWindow_OnMouseReleaseEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseMouseReleaseEvent(QRasterWindow* self, QMouseEvent* param1);
QTLIBC_API void QRasterWindow_MouseDoubleClickEvent(QRasterWindow* self, QMouseEvent* param1);
QTLIBC_API void QRasterWindow_OnMouseDoubleClickEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseMouseDoubleClickEvent(QRasterWindow* self, QMouseEvent* param1);
QTLIBC_API void QRasterWindow_MouseMoveEvent(QRasterWindow* self, QMouseEvent* param1);
QTLIBC_API void QRasterWindow_OnMouseMoveEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseMouseMoveEvent(QRasterWindow* self, QMouseEvent* param1);
QTLIBC_API void QRasterWindow_WheelEvent(QRasterWindow* self, QWheelEvent* param1);
QTLIBC_API void QRasterWindow_OnWheelEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseWheelEvent(QRasterWindow* self, QWheelEvent* param1);
QTLIBC_API void QRasterWindow_TouchEvent(QRasterWindow* self, QTouchEvent* param1);
QTLIBC_API void QRasterWindow_OnTouchEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseTouchEvent(QRasterWindow* self, QTouchEvent* param1);
QTLIBC_API void QRasterWindow_TabletEvent(QRasterWindow* self, QTabletEvent* param1);
QTLIBC_API void QRasterWindow_OnTabletEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseTabletEvent(QRasterWindow* self, QTabletEvent* param1);
QTLIBC_API bool QRasterWindow_NativeEvent(QRasterWindow* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QRasterWindow_OnNativeEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API bool QRasterWindow_QBaseNativeEvent(QRasterWindow* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API bool QRasterWindow_EventFilter(QRasterWindow* self, QObject* watched, QEvent* event);
QTLIBC_API void QRasterWindow_OnEventFilter(QRasterWindow* self, intptr_t slot);
QTLIBC_API bool QRasterWindow_QBaseEventFilter(QRasterWindow* self, QObject* watched, QEvent* event);
QTLIBC_API void QRasterWindow_TimerEvent(QRasterWindow* self, QTimerEvent* event);
QTLIBC_API void QRasterWindow_OnTimerEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseTimerEvent(QRasterWindow* self, QTimerEvent* event);
QTLIBC_API void QRasterWindow_ChildEvent(QRasterWindow* self, QChildEvent* event);
QTLIBC_API void QRasterWindow_OnChildEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseChildEvent(QRasterWindow* self, QChildEvent* event);
QTLIBC_API void QRasterWindow_CustomEvent(QRasterWindow* self, QEvent* event);
QTLIBC_API void QRasterWindow_OnCustomEvent(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseCustomEvent(QRasterWindow* self, QEvent* event);
QTLIBC_API void QRasterWindow_ConnectNotify(QRasterWindow* self, QMetaMethod* signal);
QTLIBC_API void QRasterWindow_OnConnectNotify(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseConnectNotify(QRasterWindow* self, QMetaMethod* signal);
QTLIBC_API void QRasterWindow_DisconnectNotify(QRasterWindow* self, QMetaMethod* signal);
QTLIBC_API void QRasterWindow_OnDisconnectNotify(QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseDisconnectNotify(QRasterWindow* self, QMetaMethod* signal);
QTLIBC_API int QRasterWindow_DevType(const QRasterWindow* self);
QTLIBC_API void QRasterWindow_OnDevType(const QRasterWindow* self, intptr_t slot);
QTLIBC_API int QRasterWindow_QBaseDevType(const QRasterWindow* self);
QTLIBC_API void QRasterWindow_InitPainter(const QRasterWindow* self, QPainter* painter);
QTLIBC_API void QRasterWindow_OnInitPainter(const QRasterWindow* self, intptr_t slot);
QTLIBC_API void QRasterWindow_QBaseInitPainter(const QRasterWindow* self, QPainter* painter);
QTLIBC_API QPainter* QRasterWindow_SharedPainter(const QRasterWindow* self);
QTLIBC_API void QRasterWindow_OnSharedPainter(const QRasterWindow* self, intptr_t slot);
QTLIBC_API QPainter* QRasterWindow_QBaseSharedPainter(const QRasterWindow* self);
QTLIBC_API void* QRasterWindow_ResolveInterface(const QRasterWindow* self, const char* name, int revision);
QTLIBC_API void QRasterWindow_OnResolveInterface(const QRasterWindow* self, intptr_t slot);
QTLIBC_API void* QRasterWindow_QBaseResolveInterface(const QRasterWindow* self, const char* name, int revision);
QTLIBC_API QObject* QRasterWindow_Sender(const QRasterWindow* self);
QTLIBC_API void QRasterWindow_OnSender(const QRasterWindow* self, intptr_t slot);
QTLIBC_API QObject* QRasterWindow_QBaseSender(const QRasterWindow* self);
QTLIBC_API int QRasterWindow_SenderSignalIndex(const QRasterWindow* self);
QTLIBC_API void QRasterWindow_OnSenderSignalIndex(const QRasterWindow* self, intptr_t slot);
QTLIBC_API int QRasterWindow_QBaseSenderSignalIndex(const QRasterWindow* self);
QTLIBC_API int QRasterWindow_Receivers(const QRasterWindow* self, const char* signal);
QTLIBC_API void QRasterWindow_OnReceivers(const QRasterWindow* self, intptr_t slot);
QTLIBC_API int QRasterWindow_QBaseReceivers(const QRasterWindow* self, const char* signal);
QTLIBC_API bool QRasterWindow_IsSignalConnected(const QRasterWindow* self, QMetaMethod* signal);
QTLIBC_API void QRasterWindow_OnIsSignalConnected(const QRasterWindow* self, intptr_t slot);
QTLIBC_API bool QRasterWindow_QBaseIsSignalConnected(const QRasterWindow* self, QMetaMethod* signal);
QTLIBC_API void QRasterWindow_Delete(QRasterWindow* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
