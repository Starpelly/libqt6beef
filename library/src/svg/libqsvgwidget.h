#pragma once
#ifndef SRC_SVGC_LIBQSVGWIDGET_H
#define SRC_SVGC_LIBQSVGWIDGET_H

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
typedef struct QStyle QStyle;
typedef struct QSvgRenderer QSvgRenderer;
typedef struct QSvgWidget QSvgWidget;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

QTLIBC_API QSvgWidget* QSvgWidget_new(QWidget* parent);
QTLIBC_API QSvgWidget* QSvgWidget_new2();
QTLIBC_API QSvgWidget* QSvgWidget_new3(libqt_string file);
QTLIBC_API QSvgWidget* QSvgWidget_new4(libqt_string file, QWidget* parent);
QTLIBC_API QMetaObject* QSvgWidget_MetaObject(const QSvgWidget* self);
QTLIBC_API void* QSvgWidget_Metacast(QSvgWidget* self, const char* param1);
QTLIBC_API int QSvgWidget_Metacall(QSvgWidget* self, int param1, int param2, void** param3);
QTLIBC_API void QSvgWidget_OnMetacall(QSvgWidget* self, intptr_t slot);
QTLIBC_API int QSvgWidget_QBaseMetacall(QSvgWidget* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QSvgWidget_Tr(const char* s);
QTLIBC_API QSvgRenderer* QSvgWidget_Renderer(const QSvgWidget* self);
QTLIBC_API QSize* QSvgWidget_SizeHint(const QSvgWidget* self);
QTLIBC_API void QSvgWidget_OnSizeHint(const QSvgWidget* self, intptr_t slot);
QTLIBC_API QSize* QSvgWidget_QBaseSizeHint(const QSvgWidget* self);
QTLIBC_API void QSvgWidget_Load(QSvgWidget* self, libqt_string file);
QTLIBC_API void QSvgWidget_LoadWithContents(QSvgWidget* self, libqt_string contents);
QTLIBC_API void QSvgWidget_PaintEvent(QSvgWidget* self, QPaintEvent* event);
QTLIBC_API void QSvgWidget_OnPaintEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBasePaintEvent(QSvgWidget* self, QPaintEvent* event);
QTLIBC_API libqt_string QSvgWidget_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QSvgWidget_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QSvgWidget_DevType(const QSvgWidget* self);
QTLIBC_API void QSvgWidget_OnDevType(const QSvgWidget* self, intptr_t slot);
QTLIBC_API int QSvgWidget_QBaseDevType(const QSvgWidget* self);
QTLIBC_API void QSvgWidget_SetVisible(QSvgWidget* self, bool visible);
QTLIBC_API void QSvgWidget_OnSetVisible(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseSetVisible(QSvgWidget* self, bool visible);
QTLIBC_API QSize* QSvgWidget_MinimumSizeHint(const QSvgWidget* self);
QTLIBC_API void QSvgWidget_OnMinimumSizeHint(const QSvgWidget* self, intptr_t slot);
QTLIBC_API QSize* QSvgWidget_QBaseMinimumSizeHint(const QSvgWidget* self);
QTLIBC_API int QSvgWidget_HeightForWidth(const QSvgWidget* self, int param1);
QTLIBC_API void QSvgWidget_OnHeightForWidth(const QSvgWidget* self, intptr_t slot);
QTLIBC_API int QSvgWidget_QBaseHeightForWidth(const QSvgWidget* self, int param1);
QTLIBC_API bool QSvgWidget_HasHeightForWidth(const QSvgWidget* self);
QTLIBC_API void QSvgWidget_OnHasHeightForWidth(const QSvgWidget* self, intptr_t slot);
QTLIBC_API bool QSvgWidget_QBaseHasHeightForWidth(const QSvgWidget* self);
QTLIBC_API QPaintEngine* QSvgWidget_PaintEngine(const QSvgWidget* self);
QTLIBC_API void QSvgWidget_OnPaintEngine(const QSvgWidget* self, intptr_t slot);
QTLIBC_API QPaintEngine* QSvgWidget_QBasePaintEngine(const QSvgWidget* self);
QTLIBC_API bool QSvgWidget_Event(QSvgWidget* self, QEvent* event);
QTLIBC_API void QSvgWidget_OnEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API bool QSvgWidget_QBaseEvent(QSvgWidget* self, QEvent* event);
QTLIBC_API void QSvgWidget_MousePressEvent(QSvgWidget* self, QMouseEvent* event);
QTLIBC_API void QSvgWidget_OnMousePressEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseMousePressEvent(QSvgWidget* self, QMouseEvent* event);
QTLIBC_API void QSvgWidget_MouseReleaseEvent(QSvgWidget* self, QMouseEvent* event);
QTLIBC_API void QSvgWidget_OnMouseReleaseEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseMouseReleaseEvent(QSvgWidget* self, QMouseEvent* event);
QTLIBC_API void QSvgWidget_MouseDoubleClickEvent(QSvgWidget* self, QMouseEvent* event);
QTLIBC_API void QSvgWidget_OnMouseDoubleClickEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseMouseDoubleClickEvent(QSvgWidget* self, QMouseEvent* event);
QTLIBC_API void QSvgWidget_MouseMoveEvent(QSvgWidget* self, QMouseEvent* event);
QTLIBC_API void QSvgWidget_OnMouseMoveEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseMouseMoveEvent(QSvgWidget* self, QMouseEvent* event);
QTLIBC_API void QSvgWidget_WheelEvent(QSvgWidget* self, QWheelEvent* event);
QTLIBC_API void QSvgWidget_OnWheelEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseWheelEvent(QSvgWidget* self, QWheelEvent* event);
QTLIBC_API void QSvgWidget_KeyPressEvent(QSvgWidget* self, QKeyEvent* event);
QTLIBC_API void QSvgWidget_OnKeyPressEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseKeyPressEvent(QSvgWidget* self, QKeyEvent* event);
QTLIBC_API void QSvgWidget_KeyReleaseEvent(QSvgWidget* self, QKeyEvent* event);
QTLIBC_API void QSvgWidget_OnKeyReleaseEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseKeyReleaseEvent(QSvgWidget* self, QKeyEvent* event);
QTLIBC_API void QSvgWidget_FocusInEvent(QSvgWidget* self, QFocusEvent* event);
QTLIBC_API void QSvgWidget_OnFocusInEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseFocusInEvent(QSvgWidget* self, QFocusEvent* event);
QTLIBC_API void QSvgWidget_FocusOutEvent(QSvgWidget* self, QFocusEvent* event);
QTLIBC_API void QSvgWidget_OnFocusOutEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseFocusOutEvent(QSvgWidget* self, QFocusEvent* event);
QTLIBC_API void QSvgWidget_EnterEvent(QSvgWidget* self, QEnterEvent* event);
QTLIBC_API void QSvgWidget_OnEnterEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseEnterEvent(QSvgWidget* self, QEnterEvent* event);
QTLIBC_API void QSvgWidget_LeaveEvent(QSvgWidget* self, QEvent* event);
QTLIBC_API void QSvgWidget_OnLeaveEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseLeaveEvent(QSvgWidget* self, QEvent* event);
QTLIBC_API void QSvgWidget_MoveEvent(QSvgWidget* self, QMoveEvent* event);
QTLIBC_API void QSvgWidget_OnMoveEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseMoveEvent(QSvgWidget* self, QMoveEvent* event);
QTLIBC_API void QSvgWidget_ResizeEvent(QSvgWidget* self, QResizeEvent* event);
QTLIBC_API void QSvgWidget_OnResizeEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseResizeEvent(QSvgWidget* self, QResizeEvent* event);
QTLIBC_API void QSvgWidget_CloseEvent(QSvgWidget* self, QCloseEvent* event);
QTLIBC_API void QSvgWidget_OnCloseEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseCloseEvent(QSvgWidget* self, QCloseEvent* event);
QTLIBC_API void QSvgWidget_ContextMenuEvent(QSvgWidget* self, QContextMenuEvent* event);
QTLIBC_API void QSvgWidget_OnContextMenuEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseContextMenuEvent(QSvgWidget* self, QContextMenuEvent* event);
QTLIBC_API void QSvgWidget_TabletEvent(QSvgWidget* self, QTabletEvent* event);
QTLIBC_API void QSvgWidget_OnTabletEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseTabletEvent(QSvgWidget* self, QTabletEvent* event);
QTLIBC_API void QSvgWidget_ActionEvent(QSvgWidget* self, QActionEvent* event);
QTLIBC_API void QSvgWidget_OnActionEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseActionEvent(QSvgWidget* self, QActionEvent* event);
QTLIBC_API void QSvgWidget_DragEnterEvent(QSvgWidget* self, QDragEnterEvent* event);
QTLIBC_API void QSvgWidget_OnDragEnterEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseDragEnterEvent(QSvgWidget* self, QDragEnterEvent* event);
QTLIBC_API void QSvgWidget_DragMoveEvent(QSvgWidget* self, QDragMoveEvent* event);
QTLIBC_API void QSvgWidget_OnDragMoveEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseDragMoveEvent(QSvgWidget* self, QDragMoveEvent* event);
QTLIBC_API void QSvgWidget_DragLeaveEvent(QSvgWidget* self, QDragLeaveEvent* event);
QTLIBC_API void QSvgWidget_OnDragLeaveEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseDragLeaveEvent(QSvgWidget* self, QDragLeaveEvent* event);
QTLIBC_API void QSvgWidget_DropEvent(QSvgWidget* self, QDropEvent* event);
QTLIBC_API void QSvgWidget_OnDropEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseDropEvent(QSvgWidget* self, QDropEvent* event);
QTLIBC_API void QSvgWidget_ShowEvent(QSvgWidget* self, QShowEvent* event);
QTLIBC_API void QSvgWidget_OnShowEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseShowEvent(QSvgWidget* self, QShowEvent* event);
QTLIBC_API void QSvgWidget_HideEvent(QSvgWidget* self, QHideEvent* event);
QTLIBC_API void QSvgWidget_OnHideEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseHideEvent(QSvgWidget* self, QHideEvent* event);
QTLIBC_API bool QSvgWidget_NativeEvent(QSvgWidget* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QSvgWidget_OnNativeEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API bool QSvgWidget_QBaseNativeEvent(QSvgWidget* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QSvgWidget_ChangeEvent(QSvgWidget* self, QEvent* param1);
QTLIBC_API void QSvgWidget_OnChangeEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseChangeEvent(QSvgWidget* self, QEvent* param1);
QTLIBC_API void QSvgWidget_InputMethodEvent(QSvgWidget* self, QInputMethodEvent* param1);
QTLIBC_API void QSvgWidget_OnInputMethodEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseInputMethodEvent(QSvgWidget* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QSvgWidget_InputMethodQuery(const QSvgWidget* self, int param1);
QTLIBC_API void QSvgWidget_OnInputMethodQuery(const QSvgWidget* self, intptr_t slot);
QTLIBC_API QVariant* QSvgWidget_QBaseInputMethodQuery(const QSvgWidget* self, int param1);
QTLIBC_API bool QSvgWidget_FocusNextPrevChild(QSvgWidget* self, bool next);
QTLIBC_API void QSvgWidget_OnFocusNextPrevChild(QSvgWidget* self, intptr_t slot);
QTLIBC_API bool QSvgWidget_QBaseFocusNextPrevChild(QSvgWidget* self, bool next);
QTLIBC_API bool QSvgWidget_EventFilter(QSvgWidget* self, QObject* watched, QEvent* event);
QTLIBC_API void QSvgWidget_OnEventFilter(QSvgWidget* self, intptr_t slot);
QTLIBC_API bool QSvgWidget_QBaseEventFilter(QSvgWidget* self, QObject* watched, QEvent* event);
QTLIBC_API void QSvgWidget_TimerEvent(QSvgWidget* self, QTimerEvent* event);
QTLIBC_API void QSvgWidget_OnTimerEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseTimerEvent(QSvgWidget* self, QTimerEvent* event);
QTLIBC_API void QSvgWidget_ChildEvent(QSvgWidget* self, QChildEvent* event);
QTLIBC_API void QSvgWidget_OnChildEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseChildEvent(QSvgWidget* self, QChildEvent* event);
QTLIBC_API void QSvgWidget_CustomEvent(QSvgWidget* self, QEvent* event);
QTLIBC_API void QSvgWidget_OnCustomEvent(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseCustomEvent(QSvgWidget* self, QEvent* event);
QTLIBC_API void QSvgWidget_ConnectNotify(QSvgWidget* self, QMetaMethod* signal);
QTLIBC_API void QSvgWidget_OnConnectNotify(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseConnectNotify(QSvgWidget* self, QMetaMethod* signal);
QTLIBC_API void QSvgWidget_DisconnectNotify(QSvgWidget* self, QMetaMethod* signal);
QTLIBC_API void QSvgWidget_OnDisconnectNotify(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseDisconnectNotify(QSvgWidget* self, QMetaMethod* signal);
QTLIBC_API int QSvgWidget_Metric(const QSvgWidget* self, int param1);
QTLIBC_API void QSvgWidget_OnMetric(const QSvgWidget* self, intptr_t slot);
QTLIBC_API int QSvgWidget_QBaseMetric(const QSvgWidget* self, int param1);
QTLIBC_API void QSvgWidget_InitPainter(const QSvgWidget* self, QPainter* painter);
QTLIBC_API void QSvgWidget_OnInitPainter(const QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseInitPainter(const QSvgWidget* self, QPainter* painter);
QTLIBC_API QPaintDevice* QSvgWidget_Redirected(const QSvgWidget* self, QPoint* offset);
QTLIBC_API void QSvgWidget_OnRedirected(const QSvgWidget* self, intptr_t slot);
QTLIBC_API QPaintDevice* QSvgWidget_QBaseRedirected(const QSvgWidget* self, QPoint* offset);
QTLIBC_API QPainter* QSvgWidget_SharedPainter(const QSvgWidget* self);
QTLIBC_API void QSvgWidget_OnSharedPainter(const QSvgWidget* self, intptr_t slot);
QTLIBC_API QPainter* QSvgWidget_QBaseSharedPainter(const QSvgWidget* self);
QTLIBC_API void QSvgWidget_UpdateMicroFocus(QSvgWidget* self);
QTLIBC_API void QSvgWidget_OnUpdateMicroFocus(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseUpdateMicroFocus(QSvgWidget* self);
QTLIBC_API void QSvgWidget_Create(QSvgWidget* self);
QTLIBC_API void QSvgWidget_OnCreate(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseCreate(QSvgWidget* self);
QTLIBC_API void QSvgWidget_Destroy(QSvgWidget* self);
QTLIBC_API void QSvgWidget_OnDestroy(QSvgWidget* self, intptr_t slot);
QTLIBC_API void QSvgWidget_QBaseDestroy(QSvgWidget* self);
QTLIBC_API bool QSvgWidget_FocusNextChild(QSvgWidget* self);
QTLIBC_API void QSvgWidget_OnFocusNextChild(QSvgWidget* self, intptr_t slot);
QTLIBC_API bool QSvgWidget_QBaseFocusNextChild(QSvgWidget* self);
QTLIBC_API bool QSvgWidget_FocusPreviousChild(QSvgWidget* self);
QTLIBC_API void QSvgWidget_OnFocusPreviousChild(QSvgWidget* self, intptr_t slot);
QTLIBC_API bool QSvgWidget_QBaseFocusPreviousChild(QSvgWidget* self);
QTLIBC_API QObject* QSvgWidget_Sender(const QSvgWidget* self);
QTLIBC_API void QSvgWidget_OnSender(const QSvgWidget* self, intptr_t slot);
QTLIBC_API QObject* QSvgWidget_QBaseSender(const QSvgWidget* self);
QTLIBC_API int QSvgWidget_SenderSignalIndex(const QSvgWidget* self);
QTLIBC_API void QSvgWidget_OnSenderSignalIndex(const QSvgWidget* self, intptr_t slot);
QTLIBC_API int QSvgWidget_QBaseSenderSignalIndex(const QSvgWidget* self);
QTLIBC_API int QSvgWidget_Receivers(const QSvgWidget* self, const char* signal);
QTLIBC_API void QSvgWidget_OnReceivers(const QSvgWidget* self, intptr_t slot);
QTLIBC_API int QSvgWidget_QBaseReceivers(const QSvgWidget* self, const char* signal);
QTLIBC_API bool QSvgWidget_IsSignalConnected(const QSvgWidget* self, QMetaMethod* signal);
QTLIBC_API void QSvgWidget_OnIsSignalConnected(const QSvgWidget* self, intptr_t slot);
QTLIBC_API bool QSvgWidget_QBaseIsSignalConnected(const QSvgWidget* self, QMetaMethod* signal);
QTLIBC_API void QSvgWidget_Delete(QSvgWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
