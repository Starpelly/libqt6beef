#pragma once
#ifndef SRC_QTC_LIBQSLIDER_H
#define SRC_QTC_LIBQSLIDER_H

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
typedef struct QAbstractSlider QAbstractSlider;
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
typedef struct QSlider QSlider;
typedef struct QStyle QStyle;
typedef struct QStyleOptionSlider QStyleOptionSlider;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

#ifdef __cplusplus
typedef QSlider::TickPosition TickPosition; // C++ enum
#else
typedef int TickPosition; // C ABI enum
#endif

QTLIBC_API QSlider* QSlider_new(QWidget* parent);
QTLIBC_API QSlider* QSlider_new2();
QTLIBC_API QSlider* QSlider_new3(int orientation);
QTLIBC_API QSlider* QSlider_new4(int orientation, QWidget* parent);
QTLIBC_API QMetaObject* QSlider_MetaObject(const QSlider* self);
QTLIBC_API void* QSlider_Metacast(QSlider* self, const char* param1);
QTLIBC_API int QSlider_Metacall(QSlider* self, int param1, int param2, void** param3);
QTLIBC_API void QSlider_OnMetacall(QSlider* self, intptr_t slot);
QTLIBC_API int QSlider_QBaseMetacall(QSlider* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QSlider_Tr(const char* s);
QTLIBC_API QSize* QSlider_SizeHint(const QSlider* self);
QTLIBC_API void QSlider_OnSizeHint(const QSlider* self, intptr_t slot);
QTLIBC_API QSize* QSlider_QBaseSizeHint(const QSlider* self);
QTLIBC_API QSize* QSlider_MinimumSizeHint(const QSlider* self);
QTLIBC_API void QSlider_OnMinimumSizeHint(const QSlider* self, intptr_t slot);
QTLIBC_API QSize* QSlider_QBaseMinimumSizeHint(const QSlider* self);
QTLIBC_API void QSlider_SetTickPosition(QSlider* self, int position);
QTLIBC_API int QSlider_TickPosition(const QSlider* self);
QTLIBC_API void QSlider_SetTickInterval(QSlider* self, int ti);
QTLIBC_API int QSlider_TickInterval(const QSlider* self);
QTLIBC_API bool QSlider_Event(QSlider* self, QEvent* event);
QTLIBC_API void QSlider_OnEvent(QSlider* self, intptr_t slot);
QTLIBC_API bool QSlider_QBaseEvent(QSlider* self, QEvent* event);
QTLIBC_API void QSlider_PaintEvent(QSlider* self, QPaintEvent* ev);
QTLIBC_API void QSlider_OnPaintEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBasePaintEvent(QSlider* self, QPaintEvent* ev);
QTLIBC_API void QSlider_MousePressEvent(QSlider* self, QMouseEvent* ev);
QTLIBC_API void QSlider_OnMousePressEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseMousePressEvent(QSlider* self, QMouseEvent* ev);
QTLIBC_API void QSlider_MouseReleaseEvent(QSlider* self, QMouseEvent* ev);
QTLIBC_API void QSlider_OnMouseReleaseEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseMouseReleaseEvent(QSlider* self, QMouseEvent* ev);
QTLIBC_API void QSlider_MouseMoveEvent(QSlider* self, QMouseEvent* ev);
QTLIBC_API void QSlider_OnMouseMoveEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseMouseMoveEvent(QSlider* self, QMouseEvent* ev);
QTLIBC_API void QSlider_InitStyleOption(const QSlider* self, QStyleOptionSlider* option);
QTLIBC_API void QSlider_OnInitStyleOption(const QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseInitStyleOption(const QSlider* self, QStyleOptionSlider* option);
QTLIBC_API libqt_string QSlider_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QSlider_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QSlider_SliderChange(QSlider* self, int change);
QTLIBC_API void QSlider_OnSliderChange(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseSliderChange(QSlider* self, int change);
QTLIBC_API void QSlider_KeyPressEvent(QSlider* self, QKeyEvent* ev);
QTLIBC_API void QSlider_OnKeyPressEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseKeyPressEvent(QSlider* self, QKeyEvent* ev);
QTLIBC_API void QSlider_TimerEvent(QSlider* self, QTimerEvent* param1);
QTLIBC_API void QSlider_OnTimerEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseTimerEvent(QSlider* self, QTimerEvent* param1);
QTLIBC_API void QSlider_WheelEvent(QSlider* self, QWheelEvent* e);
QTLIBC_API void QSlider_OnWheelEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseWheelEvent(QSlider* self, QWheelEvent* e);
QTLIBC_API void QSlider_ChangeEvent(QSlider* self, QEvent* e);
QTLIBC_API void QSlider_OnChangeEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseChangeEvent(QSlider* self, QEvent* e);
QTLIBC_API int QSlider_DevType(const QSlider* self);
QTLIBC_API void QSlider_OnDevType(const QSlider* self, intptr_t slot);
QTLIBC_API int QSlider_QBaseDevType(const QSlider* self);
QTLIBC_API void QSlider_SetVisible(QSlider* self, bool visible);
QTLIBC_API void QSlider_OnSetVisible(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseSetVisible(QSlider* self, bool visible);
QTLIBC_API int QSlider_HeightForWidth(const QSlider* self, int param1);
QTLIBC_API void QSlider_OnHeightForWidth(const QSlider* self, intptr_t slot);
QTLIBC_API int QSlider_QBaseHeightForWidth(const QSlider* self, int param1);
QTLIBC_API bool QSlider_HasHeightForWidth(const QSlider* self);
QTLIBC_API void QSlider_OnHasHeightForWidth(const QSlider* self, intptr_t slot);
QTLIBC_API bool QSlider_QBaseHasHeightForWidth(const QSlider* self);
QTLIBC_API QPaintEngine* QSlider_PaintEngine(const QSlider* self);
QTLIBC_API void QSlider_OnPaintEngine(const QSlider* self, intptr_t slot);
QTLIBC_API QPaintEngine* QSlider_QBasePaintEngine(const QSlider* self);
QTLIBC_API void QSlider_MouseDoubleClickEvent(QSlider* self, QMouseEvent* event);
QTLIBC_API void QSlider_OnMouseDoubleClickEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseMouseDoubleClickEvent(QSlider* self, QMouseEvent* event);
QTLIBC_API void QSlider_KeyReleaseEvent(QSlider* self, QKeyEvent* event);
QTLIBC_API void QSlider_OnKeyReleaseEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseKeyReleaseEvent(QSlider* self, QKeyEvent* event);
QTLIBC_API void QSlider_FocusInEvent(QSlider* self, QFocusEvent* event);
QTLIBC_API void QSlider_OnFocusInEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseFocusInEvent(QSlider* self, QFocusEvent* event);
QTLIBC_API void QSlider_FocusOutEvent(QSlider* self, QFocusEvent* event);
QTLIBC_API void QSlider_OnFocusOutEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseFocusOutEvent(QSlider* self, QFocusEvent* event);
QTLIBC_API void QSlider_EnterEvent(QSlider* self, QEnterEvent* event);
QTLIBC_API void QSlider_OnEnterEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseEnterEvent(QSlider* self, QEnterEvent* event);
QTLIBC_API void QSlider_LeaveEvent(QSlider* self, QEvent* event);
QTLIBC_API void QSlider_OnLeaveEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseLeaveEvent(QSlider* self, QEvent* event);
QTLIBC_API void QSlider_MoveEvent(QSlider* self, QMoveEvent* event);
QTLIBC_API void QSlider_OnMoveEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseMoveEvent(QSlider* self, QMoveEvent* event);
QTLIBC_API void QSlider_ResizeEvent(QSlider* self, QResizeEvent* event);
QTLIBC_API void QSlider_OnResizeEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseResizeEvent(QSlider* self, QResizeEvent* event);
QTLIBC_API void QSlider_CloseEvent(QSlider* self, QCloseEvent* event);
QTLIBC_API void QSlider_OnCloseEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseCloseEvent(QSlider* self, QCloseEvent* event);
QTLIBC_API void QSlider_ContextMenuEvent(QSlider* self, QContextMenuEvent* event);
QTLIBC_API void QSlider_OnContextMenuEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseContextMenuEvent(QSlider* self, QContextMenuEvent* event);
QTLIBC_API void QSlider_TabletEvent(QSlider* self, QTabletEvent* event);
QTLIBC_API void QSlider_OnTabletEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseTabletEvent(QSlider* self, QTabletEvent* event);
QTLIBC_API void QSlider_ActionEvent(QSlider* self, QActionEvent* event);
QTLIBC_API void QSlider_OnActionEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseActionEvent(QSlider* self, QActionEvent* event);
QTLIBC_API void QSlider_DragEnterEvent(QSlider* self, QDragEnterEvent* event);
QTLIBC_API void QSlider_OnDragEnterEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseDragEnterEvent(QSlider* self, QDragEnterEvent* event);
QTLIBC_API void QSlider_DragMoveEvent(QSlider* self, QDragMoveEvent* event);
QTLIBC_API void QSlider_OnDragMoveEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseDragMoveEvent(QSlider* self, QDragMoveEvent* event);
QTLIBC_API void QSlider_DragLeaveEvent(QSlider* self, QDragLeaveEvent* event);
QTLIBC_API void QSlider_OnDragLeaveEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseDragLeaveEvent(QSlider* self, QDragLeaveEvent* event);
QTLIBC_API void QSlider_DropEvent(QSlider* self, QDropEvent* event);
QTLIBC_API void QSlider_OnDropEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseDropEvent(QSlider* self, QDropEvent* event);
QTLIBC_API void QSlider_ShowEvent(QSlider* self, QShowEvent* event);
QTLIBC_API void QSlider_OnShowEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseShowEvent(QSlider* self, QShowEvent* event);
QTLIBC_API void QSlider_HideEvent(QSlider* self, QHideEvent* event);
QTLIBC_API void QSlider_OnHideEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseHideEvent(QSlider* self, QHideEvent* event);
QTLIBC_API bool QSlider_NativeEvent(QSlider* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QSlider_OnNativeEvent(QSlider* self, intptr_t slot);
QTLIBC_API bool QSlider_QBaseNativeEvent(QSlider* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QSlider_InputMethodEvent(QSlider* self, QInputMethodEvent* param1);
QTLIBC_API void QSlider_OnInputMethodEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseInputMethodEvent(QSlider* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QSlider_InputMethodQuery(const QSlider* self, int param1);
QTLIBC_API void QSlider_OnInputMethodQuery(const QSlider* self, intptr_t slot);
QTLIBC_API QVariant* QSlider_QBaseInputMethodQuery(const QSlider* self, int param1);
QTLIBC_API bool QSlider_FocusNextPrevChild(QSlider* self, bool next);
QTLIBC_API void QSlider_OnFocusNextPrevChild(QSlider* self, intptr_t slot);
QTLIBC_API bool QSlider_QBaseFocusNextPrevChild(QSlider* self, bool next);
QTLIBC_API bool QSlider_EventFilter(QSlider* self, QObject* watched, QEvent* event);
QTLIBC_API void QSlider_OnEventFilter(QSlider* self, intptr_t slot);
QTLIBC_API bool QSlider_QBaseEventFilter(QSlider* self, QObject* watched, QEvent* event);
QTLIBC_API void QSlider_ChildEvent(QSlider* self, QChildEvent* event);
QTLIBC_API void QSlider_OnChildEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseChildEvent(QSlider* self, QChildEvent* event);
QTLIBC_API void QSlider_CustomEvent(QSlider* self, QEvent* event);
QTLIBC_API void QSlider_OnCustomEvent(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseCustomEvent(QSlider* self, QEvent* event);
QTLIBC_API void QSlider_ConnectNotify(QSlider* self, QMetaMethod* signal);
QTLIBC_API void QSlider_OnConnectNotify(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseConnectNotify(QSlider* self, QMetaMethod* signal);
QTLIBC_API void QSlider_DisconnectNotify(QSlider* self, QMetaMethod* signal);
QTLIBC_API void QSlider_OnDisconnectNotify(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseDisconnectNotify(QSlider* self, QMetaMethod* signal);
QTLIBC_API int QSlider_Metric(const QSlider* self, int param1);
QTLIBC_API void QSlider_OnMetric(const QSlider* self, intptr_t slot);
QTLIBC_API int QSlider_QBaseMetric(const QSlider* self, int param1);
QTLIBC_API void QSlider_InitPainter(const QSlider* self, QPainter* painter);
QTLIBC_API void QSlider_OnInitPainter(const QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseInitPainter(const QSlider* self, QPainter* painter);
QTLIBC_API QPaintDevice* QSlider_Redirected(const QSlider* self, QPoint* offset);
QTLIBC_API void QSlider_OnRedirected(const QSlider* self, intptr_t slot);
QTLIBC_API QPaintDevice* QSlider_QBaseRedirected(const QSlider* self, QPoint* offset);
QTLIBC_API QPainter* QSlider_SharedPainter(const QSlider* self);
QTLIBC_API void QSlider_OnSharedPainter(const QSlider* self, intptr_t slot);
QTLIBC_API QPainter* QSlider_QBaseSharedPainter(const QSlider* self);
QTLIBC_API void QSlider_SetRepeatAction(QSlider* self, int action);
QTLIBC_API void QSlider_OnSetRepeatAction(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseSetRepeatAction(QSlider* self, int action);
QTLIBC_API int QSlider_RepeatAction(const QSlider* self);
QTLIBC_API void QSlider_OnRepeatAction(const QSlider* self, intptr_t slot);
QTLIBC_API int QSlider_QBaseRepeatAction(const QSlider* self);
QTLIBC_API void QSlider_UpdateMicroFocus(QSlider* self);
QTLIBC_API void QSlider_OnUpdateMicroFocus(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseUpdateMicroFocus(QSlider* self);
QTLIBC_API void QSlider_Create(QSlider* self);
QTLIBC_API void QSlider_OnCreate(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseCreate(QSlider* self);
QTLIBC_API void QSlider_Destroy(QSlider* self);
QTLIBC_API void QSlider_OnDestroy(QSlider* self, intptr_t slot);
QTLIBC_API void QSlider_QBaseDestroy(QSlider* self);
QTLIBC_API bool QSlider_FocusNextChild(QSlider* self);
QTLIBC_API void QSlider_OnFocusNextChild(QSlider* self, intptr_t slot);
QTLIBC_API bool QSlider_QBaseFocusNextChild(QSlider* self);
QTLIBC_API bool QSlider_FocusPreviousChild(QSlider* self);
QTLIBC_API void QSlider_OnFocusPreviousChild(QSlider* self, intptr_t slot);
QTLIBC_API bool QSlider_QBaseFocusPreviousChild(QSlider* self);
QTLIBC_API QObject* QSlider_Sender(const QSlider* self);
QTLIBC_API void QSlider_OnSender(const QSlider* self, intptr_t slot);
QTLIBC_API QObject* QSlider_QBaseSender(const QSlider* self);
QTLIBC_API int QSlider_SenderSignalIndex(const QSlider* self);
QTLIBC_API void QSlider_OnSenderSignalIndex(const QSlider* self, intptr_t slot);
QTLIBC_API int QSlider_QBaseSenderSignalIndex(const QSlider* self);
QTLIBC_API int QSlider_Receivers(const QSlider* self, const char* signal);
QTLIBC_API void QSlider_OnReceivers(const QSlider* self, intptr_t slot);
QTLIBC_API int QSlider_QBaseReceivers(const QSlider* self, const char* signal);
QTLIBC_API bool QSlider_IsSignalConnected(const QSlider* self, QMetaMethod* signal);
QTLIBC_API void QSlider_OnIsSignalConnected(const QSlider* self, intptr_t slot);
QTLIBC_API bool QSlider_QBaseIsSignalConnected(const QSlider* self, QMetaMethod* signal);
QTLIBC_API void QSlider_Delete(QSlider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
