#pragma once
#ifndef SRC_QTC_LIBQRUBBERBAND_H
#define SRC_QTC_LIBQRUBBERBAND_H

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
typedef struct QRubberBand QRubberBand;
typedef struct QScreen QScreen;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QSizePolicy QSizePolicy;
typedef struct QStyle QStyle;
typedef struct QStyleOptionRubberBand QStyleOptionRubberBand;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

#ifdef __cplusplus
typedef QRubberBand::Shape Shape; // C++ enum
#else
typedef int Shape; // C ABI enum
#endif

QTLIBC_API QRubberBand* QRubberBand_new(int param1);
QTLIBC_API QRubberBand* QRubberBand_new2(int param1, QWidget* param2);
QTLIBC_API QMetaObject* QRubberBand_MetaObject(const QRubberBand* self);
QTLIBC_API void* QRubberBand_Metacast(QRubberBand* self, const char* param1);
QTLIBC_API int QRubberBand_Metacall(QRubberBand* self, int param1, int param2, void** param3);
QTLIBC_API void QRubberBand_OnMetacall(QRubberBand* self, intptr_t slot);
QTLIBC_API int QRubberBand_QBaseMetacall(QRubberBand* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QRubberBand_Tr(const char* s);
QTLIBC_API int QRubberBand_Shape(const QRubberBand* self);
QTLIBC_API void QRubberBand_SetGeometry(QRubberBand* self, QRect* r);
QTLIBC_API void QRubberBand_SetGeometry2(QRubberBand* self, int x, int y, int w, int h);
QTLIBC_API void QRubberBand_Move(QRubberBand* self, int x, int y);
QTLIBC_API void QRubberBand_MoveWithQPoint(QRubberBand* self, QPoint* p);
QTLIBC_API void QRubberBand_Resize(QRubberBand* self, int w, int h);
QTLIBC_API void QRubberBand_ResizeWithQSize(QRubberBand* self, QSize* s);
QTLIBC_API bool QRubberBand_Event(QRubberBand* self, QEvent* e);
QTLIBC_API void QRubberBand_OnEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API bool QRubberBand_QBaseEvent(QRubberBand* self, QEvent* e);
QTLIBC_API void QRubberBand_PaintEvent(QRubberBand* self, QPaintEvent* param1);
QTLIBC_API void QRubberBand_OnPaintEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBasePaintEvent(QRubberBand* self, QPaintEvent* param1);
QTLIBC_API void QRubberBand_ChangeEvent(QRubberBand* self, QEvent* param1);
QTLIBC_API void QRubberBand_OnChangeEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseChangeEvent(QRubberBand* self, QEvent* param1);
QTLIBC_API void QRubberBand_ShowEvent(QRubberBand* self, QShowEvent* param1);
QTLIBC_API void QRubberBand_OnShowEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseShowEvent(QRubberBand* self, QShowEvent* param1);
QTLIBC_API void QRubberBand_ResizeEvent(QRubberBand* self, QResizeEvent* param1);
QTLIBC_API void QRubberBand_OnResizeEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseResizeEvent(QRubberBand* self, QResizeEvent* param1);
QTLIBC_API void QRubberBand_MoveEvent(QRubberBand* self, QMoveEvent* param1);
QTLIBC_API void QRubberBand_OnMoveEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseMoveEvent(QRubberBand* self, QMoveEvent* param1);
QTLIBC_API void QRubberBand_InitStyleOption(const QRubberBand* self, QStyleOptionRubberBand* option);
QTLIBC_API void QRubberBand_OnInitStyleOption(const QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseInitStyleOption(const QRubberBand* self, QStyleOptionRubberBand* option);
QTLIBC_API libqt_string QRubberBand_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QRubberBand_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QRubberBand_DevType(const QRubberBand* self);
QTLIBC_API void QRubberBand_OnDevType(const QRubberBand* self, intptr_t slot);
QTLIBC_API int QRubberBand_QBaseDevType(const QRubberBand* self);
QTLIBC_API void QRubberBand_SetVisible(QRubberBand* self, bool visible);
QTLIBC_API void QRubberBand_OnSetVisible(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseSetVisible(QRubberBand* self, bool visible);
QTLIBC_API QSize* QRubberBand_SizeHint(const QRubberBand* self);
QTLIBC_API void QRubberBand_OnSizeHint(const QRubberBand* self, intptr_t slot);
QTLIBC_API QSize* QRubberBand_QBaseSizeHint(const QRubberBand* self);
QTLIBC_API QSize* QRubberBand_MinimumSizeHint(const QRubberBand* self);
QTLIBC_API void QRubberBand_OnMinimumSizeHint(const QRubberBand* self, intptr_t slot);
QTLIBC_API QSize* QRubberBand_QBaseMinimumSizeHint(const QRubberBand* self);
QTLIBC_API int QRubberBand_HeightForWidth(const QRubberBand* self, int param1);
QTLIBC_API void QRubberBand_OnHeightForWidth(const QRubberBand* self, intptr_t slot);
QTLIBC_API int QRubberBand_QBaseHeightForWidth(const QRubberBand* self, int param1);
QTLIBC_API bool QRubberBand_HasHeightForWidth(const QRubberBand* self);
QTLIBC_API void QRubberBand_OnHasHeightForWidth(const QRubberBand* self, intptr_t slot);
QTLIBC_API bool QRubberBand_QBaseHasHeightForWidth(const QRubberBand* self);
QTLIBC_API QPaintEngine* QRubberBand_PaintEngine(const QRubberBand* self);
QTLIBC_API void QRubberBand_OnPaintEngine(const QRubberBand* self, intptr_t slot);
QTLIBC_API QPaintEngine* QRubberBand_QBasePaintEngine(const QRubberBand* self);
QTLIBC_API void QRubberBand_MousePressEvent(QRubberBand* self, QMouseEvent* event);
QTLIBC_API void QRubberBand_OnMousePressEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseMousePressEvent(QRubberBand* self, QMouseEvent* event);
QTLIBC_API void QRubberBand_MouseReleaseEvent(QRubberBand* self, QMouseEvent* event);
QTLIBC_API void QRubberBand_OnMouseReleaseEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseMouseReleaseEvent(QRubberBand* self, QMouseEvent* event);
QTLIBC_API void QRubberBand_MouseDoubleClickEvent(QRubberBand* self, QMouseEvent* event);
QTLIBC_API void QRubberBand_OnMouseDoubleClickEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseMouseDoubleClickEvent(QRubberBand* self, QMouseEvent* event);
QTLIBC_API void QRubberBand_MouseMoveEvent(QRubberBand* self, QMouseEvent* event);
QTLIBC_API void QRubberBand_OnMouseMoveEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseMouseMoveEvent(QRubberBand* self, QMouseEvent* event);
QTLIBC_API void QRubberBand_WheelEvent(QRubberBand* self, QWheelEvent* event);
QTLIBC_API void QRubberBand_OnWheelEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseWheelEvent(QRubberBand* self, QWheelEvent* event);
QTLIBC_API void QRubberBand_KeyPressEvent(QRubberBand* self, QKeyEvent* event);
QTLIBC_API void QRubberBand_OnKeyPressEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseKeyPressEvent(QRubberBand* self, QKeyEvent* event);
QTLIBC_API void QRubberBand_KeyReleaseEvent(QRubberBand* self, QKeyEvent* event);
QTLIBC_API void QRubberBand_OnKeyReleaseEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseKeyReleaseEvent(QRubberBand* self, QKeyEvent* event);
QTLIBC_API void QRubberBand_FocusInEvent(QRubberBand* self, QFocusEvent* event);
QTLIBC_API void QRubberBand_OnFocusInEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseFocusInEvent(QRubberBand* self, QFocusEvent* event);
QTLIBC_API void QRubberBand_FocusOutEvent(QRubberBand* self, QFocusEvent* event);
QTLIBC_API void QRubberBand_OnFocusOutEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseFocusOutEvent(QRubberBand* self, QFocusEvent* event);
QTLIBC_API void QRubberBand_EnterEvent(QRubberBand* self, QEnterEvent* event);
QTLIBC_API void QRubberBand_OnEnterEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseEnterEvent(QRubberBand* self, QEnterEvent* event);
QTLIBC_API void QRubberBand_LeaveEvent(QRubberBand* self, QEvent* event);
QTLIBC_API void QRubberBand_OnLeaveEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseLeaveEvent(QRubberBand* self, QEvent* event);
QTLIBC_API void QRubberBand_CloseEvent(QRubberBand* self, QCloseEvent* event);
QTLIBC_API void QRubberBand_OnCloseEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseCloseEvent(QRubberBand* self, QCloseEvent* event);
QTLIBC_API void QRubberBand_ContextMenuEvent(QRubberBand* self, QContextMenuEvent* event);
QTLIBC_API void QRubberBand_OnContextMenuEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseContextMenuEvent(QRubberBand* self, QContextMenuEvent* event);
QTLIBC_API void QRubberBand_TabletEvent(QRubberBand* self, QTabletEvent* event);
QTLIBC_API void QRubberBand_OnTabletEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseTabletEvent(QRubberBand* self, QTabletEvent* event);
QTLIBC_API void QRubberBand_ActionEvent(QRubberBand* self, QActionEvent* event);
QTLIBC_API void QRubberBand_OnActionEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseActionEvent(QRubberBand* self, QActionEvent* event);
QTLIBC_API void QRubberBand_DragEnterEvent(QRubberBand* self, QDragEnterEvent* event);
QTLIBC_API void QRubberBand_OnDragEnterEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseDragEnterEvent(QRubberBand* self, QDragEnterEvent* event);
QTLIBC_API void QRubberBand_DragMoveEvent(QRubberBand* self, QDragMoveEvent* event);
QTLIBC_API void QRubberBand_OnDragMoveEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseDragMoveEvent(QRubberBand* self, QDragMoveEvent* event);
QTLIBC_API void QRubberBand_DragLeaveEvent(QRubberBand* self, QDragLeaveEvent* event);
QTLIBC_API void QRubberBand_OnDragLeaveEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseDragLeaveEvent(QRubberBand* self, QDragLeaveEvent* event);
QTLIBC_API void QRubberBand_DropEvent(QRubberBand* self, QDropEvent* event);
QTLIBC_API void QRubberBand_OnDropEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseDropEvent(QRubberBand* self, QDropEvent* event);
QTLIBC_API void QRubberBand_HideEvent(QRubberBand* self, QHideEvent* event);
QTLIBC_API void QRubberBand_OnHideEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseHideEvent(QRubberBand* self, QHideEvent* event);
QTLIBC_API bool QRubberBand_NativeEvent(QRubberBand* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QRubberBand_OnNativeEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API bool QRubberBand_QBaseNativeEvent(QRubberBand* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QRubberBand_InputMethodEvent(QRubberBand* self, QInputMethodEvent* param1);
QTLIBC_API void QRubberBand_OnInputMethodEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseInputMethodEvent(QRubberBand* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QRubberBand_InputMethodQuery(const QRubberBand* self, int param1);
QTLIBC_API void QRubberBand_OnInputMethodQuery(const QRubberBand* self, intptr_t slot);
QTLIBC_API QVariant* QRubberBand_QBaseInputMethodQuery(const QRubberBand* self, int param1);
QTLIBC_API bool QRubberBand_FocusNextPrevChild(QRubberBand* self, bool next);
QTLIBC_API void QRubberBand_OnFocusNextPrevChild(QRubberBand* self, intptr_t slot);
QTLIBC_API bool QRubberBand_QBaseFocusNextPrevChild(QRubberBand* self, bool next);
QTLIBC_API bool QRubberBand_EventFilter(QRubberBand* self, QObject* watched, QEvent* event);
QTLIBC_API void QRubberBand_OnEventFilter(QRubberBand* self, intptr_t slot);
QTLIBC_API bool QRubberBand_QBaseEventFilter(QRubberBand* self, QObject* watched, QEvent* event);
QTLIBC_API void QRubberBand_TimerEvent(QRubberBand* self, QTimerEvent* event);
QTLIBC_API void QRubberBand_OnTimerEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseTimerEvent(QRubberBand* self, QTimerEvent* event);
QTLIBC_API void QRubberBand_ChildEvent(QRubberBand* self, QChildEvent* event);
QTLIBC_API void QRubberBand_OnChildEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseChildEvent(QRubberBand* self, QChildEvent* event);
QTLIBC_API void QRubberBand_CustomEvent(QRubberBand* self, QEvent* event);
QTLIBC_API void QRubberBand_OnCustomEvent(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseCustomEvent(QRubberBand* self, QEvent* event);
QTLIBC_API void QRubberBand_ConnectNotify(QRubberBand* self, QMetaMethod* signal);
QTLIBC_API void QRubberBand_OnConnectNotify(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseConnectNotify(QRubberBand* self, QMetaMethod* signal);
QTLIBC_API void QRubberBand_DisconnectNotify(QRubberBand* self, QMetaMethod* signal);
QTLIBC_API void QRubberBand_OnDisconnectNotify(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseDisconnectNotify(QRubberBand* self, QMetaMethod* signal);
QTLIBC_API int QRubberBand_Metric(const QRubberBand* self, int param1);
QTLIBC_API void QRubberBand_OnMetric(const QRubberBand* self, intptr_t slot);
QTLIBC_API int QRubberBand_QBaseMetric(const QRubberBand* self, int param1);
QTLIBC_API void QRubberBand_InitPainter(const QRubberBand* self, QPainter* painter);
QTLIBC_API void QRubberBand_OnInitPainter(const QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseInitPainter(const QRubberBand* self, QPainter* painter);
QTLIBC_API QPaintDevice* QRubberBand_Redirected(const QRubberBand* self, QPoint* offset);
QTLIBC_API void QRubberBand_OnRedirected(const QRubberBand* self, intptr_t slot);
QTLIBC_API QPaintDevice* QRubberBand_QBaseRedirected(const QRubberBand* self, QPoint* offset);
QTLIBC_API QPainter* QRubberBand_SharedPainter(const QRubberBand* self);
QTLIBC_API void QRubberBand_OnSharedPainter(const QRubberBand* self, intptr_t slot);
QTLIBC_API QPainter* QRubberBand_QBaseSharedPainter(const QRubberBand* self);
QTLIBC_API void QRubberBand_UpdateMicroFocus(QRubberBand* self);
QTLIBC_API void QRubberBand_OnUpdateMicroFocus(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseUpdateMicroFocus(QRubberBand* self);
QTLIBC_API void QRubberBand_Create(QRubberBand* self);
QTLIBC_API void QRubberBand_OnCreate(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseCreate(QRubberBand* self);
QTLIBC_API void QRubberBand_Destroy(QRubberBand* self);
QTLIBC_API void QRubberBand_OnDestroy(QRubberBand* self, intptr_t slot);
QTLIBC_API void QRubberBand_QBaseDestroy(QRubberBand* self);
QTLIBC_API bool QRubberBand_FocusNextChild(QRubberBand* self);
QTLIBC_API void QRubberBand_OnFocusNextChild(QRubberBand* self, intptr_t slot);
QTLIBC_API bool QRubberBand_QBaseFocusNextChild(QRubberBand* self);
QTLIBC_API bool QRubberBand_FocusPreviousChild(QRubberBand* self);
QTLIBC_API void QRubberBand_OnFocusPreviousChild(QRubberBand* self, intptr_t slot);
QTLIBC_API bool QRubberBand_QBaseFocusPreviousChild(QRubberBand* self);
QTLIBC_API QObject* QRubberBand_Sender(const QRubberBand* self);
QTLIBC_API void QRubberBand_OnSender(const QRubberBand* self, intptr_t slot);
QTLIBC_API QObject* QRubberBand_QBaseSender(const QRubberBand* self);
QTLIBC_API int QRubberBand_SenderSignalIndex(const QRubberBand* self);
QTLIBC_API void QRubberBand_OnSenderSignalIndex(const QRubberBand* self, intptr_t slot);
QTLIBC_API int QRubberBand_QBaseSenderSignalIndex(const QRubberBand* self);
QTLIBC_API int QRubberBand_Receivers(const QRubberBand* self, const char* signal);
QTLIBC_API void QRubberBand_OnReceivers(const QRubberBand* self, intptr_t slot);
QTLIBC_API int QRubberBand_QBaseReceivers(const QRubberBand* self, const char* signal);
QTLIBC_API bool QRubberBand_IsSignalConnected(const QRubberBand* self, QMetaMethod* signal);
QTLIBC_API void QRubberBand_OnIsSignalConnected(const QRubberBand* self, intptr_t slot);
QTLIBC_API bool QRubberBand_QBaseIsSignalConnected(const QRubberBand* self, QMetaMethod* signal);
QTLIBC_API void QRubberBand_Delete(QRubberBand* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
