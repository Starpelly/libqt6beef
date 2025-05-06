#pragma once
#ifndef SRCC_LIBQDIAL_H
#define SRCC_LIBQDIAL_H

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
typedef struct QDial QDial;
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
typedef struct QStyleOptionSlider QStyleOptionSlider;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

QTLIBC_API QDial* QDial_new(QWidget* parent);
QTLIBC_API QDial* QDial_new2();
QTLIBC_API QMetaObject* QDial_MetaObject(const QDial* self);
QTLIBC_API void* QDial_Metacast(QDial* self, const char* param1);
QTLIBC_API int QDial_Metacall(QDial* self, int param1, int param2, void** param3);
QTLIBC_API void QDial_OnMetacall(QDial* self, intptr_t slot);
QTLIBC_API int QDial_QBaseMetacall(QDial* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QDial_Tr(const char* s);
QTLIBC_API bool QDial_Wrapping(const QDial* self);
QTLIBC_API int QDial_NotchSize(const QDial* self);
QTLIBC_API void QDial_SetNotchTarget(QDial* self, double target);
QTLIBC_API double QDial_NotchTarget(const QDial* self);
QTLIBC_API bool QDial_NotchesVisible(const QDial* self);
QTLIBC_API QSize* QDial_SizeHint(const QDial* self);
QTLIBC_API void QDial_OnSizeHint(const QDial* self, intptr_t slot);
QTLIBC_API QSize* QDial_QBaseSizeHint(const QDial* self);
QTLIBC_API QSize* QDial_MinimumSizeHint(const QDial* self);
QTLIBC_API void QDial_OnMinimumSizeHint(const QDial* self, intptr_t slot);
QTLIBC_API QSize* QDial_QBaseMinimumSizeHint(const QDial* self);
QTLIBC_API void QDial_SetNotchesVisible(QDial* self, bool visible);
QTLIBC_API void QDial_SetWrapping(QDial* self, bool on);
QTLIBC_API bool QDial_Event(QDial* self, QEvent* e);
QTLIBC_API void QDial_OnEvent(QDial* self, intptr_t slot);
QTLIBC_API bool QDial_QBaseEvent(QDial* self, QEvent* e);
QTLIBC_API void QDial_ResizeEvent(QDial* self, QResizeEvent* re);
QTLIBC_API void QDial_OnResizeEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseResizeEvent(QDial* self, QResizeEvent* re);
QTLIBC_API void QDial_PaintEvent(QDial* self, QPaintEvent* pe);
QTLIBC_API void QDial_OnPaintEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBasePaintEvent(QDial* self, QPaintEvent* pe);
QTLIBC_API void QDial_MousePressEvent(QDial* self, QMouseEvent* me);
QTLIBC_API void QDial_OnMousePressEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseMousePressEvent(QDial* self, QMouseEvent* me);
QTLIBC_API void QDial_MouseReleaseEvent(QDial* self, QMouseEvent* me);
QTLIBC_API void QDial_OnMouseReleaseEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseMouseReleaseEvent(QDial* self, QMouseEvent* me);
QTLIBC_API void QDial_MouseMoveEvent(QDial* self, QMouseEvent* me);
QTLIBC_API void QDial_OnMouseMoveEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseMouseMoveEvent(QDial* self, QMouseEvent* me);
QTLIBC_API void QDial_SliderChange(QDial* self, int change);
QTLIBC_API void QDial_OnSliderChange(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseSliderChange(QDial* self, int change);
QTLIBC_API void QDial_InitStyleOption(const QDial* self, QStyleOptionSlider* option);
QTLIBC_API void QDial_OnInitStyleOption(const QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseInitStyleOption(const QDial* self, QStyleOptionSlider* option);
QTLIBC_API libqt_string QDial_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QDial_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QDial_KeyPressEvent(QDial* self, QKeyEvent* ev);
QTLIBC_API void QDial_OnKeyPressEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseKeyPressEvent(QDial* self, QKeyEvent* ev);
QTLIBC_API void QDial_TimerEvent(QDial* self, QTimerEvent* param1);
QTLIBC_API void QDial_OnTimerEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseTimerEvent(QDial* self, QTimerEvent* param1);
QTLIBC_API void QDial_WheelEvent(QDial* self, QWheelEvent* e);
QTLIBC_API void QDial_OnWheelEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseWheelEvent(QDial* self, QWheelEvent* e);
QTLIBC_API void QDial_ChangeEvent(QDial* self, QEvent* e);
QTLIBC_API void QDial_OnChangeEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseChangeEvent(QDial* self, QEvent* e);
QTLIBC_API int QDial_DevType(const QDial* self);
QTLIBC_API void QDial_OnDevType(const QDial* self, intptr_t slot);
QTLIBC_API int QDial_QBaseDevType(const QDial* self);
QTLIBC_API void QDial_SetVisible(QDial* self, bool visible);
QTLIBC_API void QDial_OnSetVisible(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseSetVisible(QDial* self, bool visible);
QTLIBC_API int QDial_HeightForWidth(const QDial* self, int param1);
QTLIBC_API void QDial_OnHeightForWidth(const QDial* self, intptr_t slot);
QTLIBC_API int QDial_QBaseHeightForWidth(const QDial* self, int param1);
QTLIBC_API bool QDial_HasHeightForWidth(const QDial* self);
QTLIBC_API void QDial_OnHasHeightForWidth(const QDial* self, intptr_t slot);
QTLIBC_API bool QDial_QBaseHasHeightForWidth(const QDial* self);
QTLIBC_API QPaintEngine* QDial_PaintEngine(const QDial* self);
QTLIBC_API void QDial_OnPaintEngine(const QDial* self, intptr_t slot);
QTLIBC_API QPaintEngine* QDial_QBasePaintEngine(const QDial* self);
QTLIBC_API void QDial_MouseDoubleClickEvent(QDial* self, QMouseEvent* event);
QTLIBC_API void QDial_OnMouseDoubleClickEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseMouseDoubleClickEvent(QDial* self, QMouseEvent* event);
QTLIBC_API void QDial_KeyReleaseEvent(QDial* self, QKeyEvent* event);
QTLIBC_API void QDial_OnKeyReleaseEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseKeyReleaseEvent(QDial* self, QKeyEvent* event);
QTLIBC_API void QDial_FocusInEvent(QDial* self, QFocusEvent* event);
QTLIBC_API void QDial_OnFocusInEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseFocusInEvent(QDial* self, QFocusEvent* event);
QTLIBC_API void QDial_FocusOutEvent(QDial* self, QFocusEvent* event);
QTLIBC_API void QDial_OnFocusOutEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseFocusOutEvent(QDial* self, QFocusEvent* event);
QTLIBC_API void QDial_EnterEvent(QDial* self, QEnterEvent* event);
QTLIBC_API void QDial_OnEnterEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseEnterEvent(QDial* self, QEnterEvent* event);
QTLIBC_API void QDial_LeaveEvent(QDial* self, QEvent* event);
QTLIBC_API void QDial_OnLeaveEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseLeaveEvent(QDial* self, QEvent* event);
QTLIBC_API void QDial_MoveEvent(QDial* self, QMoveEvent* event);
QTLIBC_API void QDial_OnMoveEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseMoveEvent(QDial* self, QMoveEvent* event);
QTLIBC_API void QDial_CloseEvent(QDial* self, QCloseEvent* event);
QTLIBC_API void QDial_OnCloseEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseCloseEvent(QDial* self, QCloseEvent* event);
QTLIBC_API void QDial_ContextMenuEvent(QDial* self, QContextMenuEvent* event);
QTLIBC_API void QDial_OnContextMenuEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseContextMenuEvent(QDial* self, QContextMenuEvent* event);
QTLIBC_API void QDial_TabletEvent(QDial* self, QTabletEvent* event);
QTLIBC_API void QDial_OnTabletEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseTabletEvent(QDial* self, QTabletEvent* event);
QTLIBC_API void QDial_ActionEvent(QDial* self, QActionEvent* event);
QTLIBC_API void QDial_OnActionEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseActionEvent(QDial* self, QActionEvent* event);
QTLIBC_API void QDial_DragEnterEvent(QDial* self, QDragEnterEvent* event);
QTLIBC_API void QDial_OnDragEnterEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseDragEnterEvent(QDial* self, QDragEnterEvent* event);
QTLIBC_API void QDial_DragMoveEvent(QDial* self, QDragMoveEvent* event);
QTLIBC_API void QDial_OnDragMoveEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseDragMoveEvent(QDial* self, QDragMoveEvent* event);
QTLIBC_API void QDial_DragLeaveEvent(QDial* self, QDragLeaveEvent* event);
QTLIBC_API void QDial_OnDragLeaveEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseDragLeaveEvent(QDial* self, QDragLeaveEvent* event);
QTLIBC_API void QDial_DropEvent(QDial* self, QDropEvent* event);
QTLIBC_API void QDial_OnDropEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseDropEvent(QDial* self, QDropEvent* event);
QTLIBC_API void QDial_ShowEvent(QDial* self, QShowEvent* event);
QTLIBC_API void QDial_OnShowEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseShowEvent(QDial* self, QShowEvent* event);
QTLIBC_API void QDial_HideEvent(QDial* self, QHideEvent* event);
QTLIBC_API void QDial_OnHideEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseHideEvent(QDial* self, QHideEvent* event);
QTLIBC_API bool QDial_NativeEvent(QDial* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QDial_OnNativeEvent(QDial* self, intptr_t slot);
QTLIBC_API bool QDial_QBaseNativeEvent(QDial* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QDial_InputMethodEvent(QDial* self, QInputMethodEvent* param1);
QTLIBC_API void QDial_OnInputMethodEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseInputMethodEvent(QDial* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QDial_InputMethodQuery(const QDial* self, int param1);
QTLIBC_API void QDial_OnInputMethodQuery(const QDial* self, intptr_t slot);
QTLIBC_API QVariant* QDial_QBaseInputMethodQuery(const QDial* self, int param1);
QTLIBC_API bool QDial_FocusNextPrevChild(QDial* self, bool next);
QTLIBC_API void QDial_OnFocusNextPrevChild(QDial* self, intptr_t slot);
QTLIBC_API bool QDial_QBaseFocusNextPrevChild(QDial* self, bool next);
QTLIBC_API bool QDial_EventFilter(QDial* self, QObject* watched, QEvent* event);
QTLIBC_API void QDial_OnEventFilter(QDial* self, intptr_t slot);
QTLIBC_API bool QDial_QBaseEventFilter(QDial* self, QObject* watched, QEvent* event);
QTLIBC_API void QDial_ChildEvent(QDial* self, QChildEvent* event);
QTLIBC_API void QDial_OnChildEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseChildEvent(QDial* self, QChildEvent* event);
QTLIBC_API void QDial_CustomEvent(QDial* self, QEvent* event);
QTLIBC_API void QDial_OnCustomEvent(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseCustomEvent(QDial* self, QEvent* event);
QTLIBC_API void QDial_ConnectNotify(QDial* self, QMetaMethod* signal);
QTLIBC_API void QDial_OnConnectNotify(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseConnectNotify(QDial* self, QMetaMethod* signal);
QTLIBC_API void QDial_DisconnectNotify(QDial* self, QMetaMethod* signal);
QTLIBC_API void QDial_OnDisconnectNotify(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseDisconnectNotify(QDial* self, QMetaMethod* signal);
QTLIBC_API int QDial_Metric(const QDial* self, int param1);
QTLIBC_API void QDial_OnMetric(const QDial* self, intptr_t slot);
QTLIBC_API int QDial_QBaseMetric(const QDial* self, int param1);
QTLIBC_API void QDial_InitPainter(const QDial* self, QPainter* painter);
QTLIBC_API void QDial_OnInitPainter(const QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseInitPainter(const QDial* self, QPainter* painter);
QTLIBC_API QPaintDevice* QDial_Redirected(const QDial* self, QPoint* offset);
QTLIBC_API void QDial_OnRedirected(const QDial* self, intptr_t slot);
QTLIBC_API QPaintDevice* QDial_QBaseRedirected(const QDial* self, QPoint* offset);
QTLIBC_API QPainter* QDial_SharedPainter(const QDial* self);
QTLIBC_API void QDial_OnSharedPainter(const QDial* self, intptr_t slot);
QTLIBC_API QPainter* QDial_QBaseSharedPainter(const QDial* self);
QTLIBC_API void QDial_SetRepeatAction(QDial* self, int action);
QTLIBC_API void QDial_OnSetRepeatAction(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseSetRepeatAction(QDial* self, int action);
QTLIBC_API int QDial_RepeatAction(const QDial* self);
QTLIBC_API void QDial_OnRepeatAction(const QDial* self, intptr_t slot);
QTLIBC_API int QDial_QBaseRepeatAction(const QDial* self);
QTLIBC_API void QDial_UpdateMicroFocus(QDial* self);
QTLIBC_API void QDial_OnUpdateMicroFocus(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseUpdateMicroFocus(QDial* self);
QTLIBC_API void QDial_Create(QDial* self);
QTLIBC_API void QDial_OnCreate(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseCreate(QDial* self);
QTLIBC_API void QDial_Destroy(QDial* self);
QTLIBC_API void QDial_OnDestroy(QDial* self, intptr_t slot);
QTLIBC_API void QDial_QBaseDestroy(QDial* self);
QTLIBC_API bool QDial_FocusNextChild(QDial* self);
QTLIBC_API void QDial_OnFocusNextChild(QDial* self, intptr_t slot);
QTLIBC_API bool QDial_QBaseFocusNextChild(QDial* self);
QTLIBC_API bool QDial_FocusPreviousChild(QDial* self);
QTLIBC_API void QDial_OnFocusPreviousChild(QDial* self, intptr_t slot);
QTLIBC_API bool QDial_QBaseFocusPreviousChild(QDial* self);
QTLIBC_API QObject* QDial_Sender(const QDial* self);
QTLIBC_API void QDial_OnSender(const QDial* self, intptr_t slot);
QTLIBC_API QObject* QDial_QBaseSender(const QDial* self);
QTLIBC_API int QDial_SenderSignalIndex(const QDial* self);
QTLIBC_API void QDial_OnSenderSignalIndex(const QDial* self, intptr_t slot);
QTLIBC_API int QDial_QBaseSenderSignalIndex(const QDial* self);
QTLIBC_API int QDial_Receivers(const QDial* self, const char* signal);
QTLIBC_API void QDial_OnReceivers(const QDial* self, intptr_t slot);
QTLIBC_API int QDial_QBaseReceivers(const QDial* self, const char* signal);
QTLIBC_API bool QDial_IsSignalConnected(const QDial* self, QMetaMethod* signal);
QTLIBC_API void QDial_OnIsSignalConnected(const QDial* self, intptr_t slot);
QTLIBC_API bool QDial_QBaseIsSignalConnected(const QDial* self, QMetaMethod* signal);
QTLIBC_API void QDial_Delete(QDial* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
