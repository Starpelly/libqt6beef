#pragma once
#ifndef SRCC_LIBQSCROLLBAR_H
#define SRCC_LIBQSCROLLBAR_H

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
typedef struct QScrollBar QScrollBar;
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

QTLIBC_API QScrollBar* QScrollBar_new(QWidget* parent);
QTLIBC_API QScrollBar* QScrollBar_new2();
QTLIBC_API QScrollBar* QScrollBar_new3(int param1);
QTLIBC_API QScrollBar* QScrollBar_new4(int param1, QWidget* parent);
QTLIBC_API QMetaObject* QScrollBar_MetaObject(const QScrollBar* self);
QTLIBC_API void* QScrollBar_Metacast(QScrollBar* self, const char* param1);
QTLIBC_API int QScrollBar_Metacall(QScrollBar* self, int param1, int param2, void** param3);
QTLIBC_API void QScrollBar_OnMetacall(QScrollBar* self, intptr_t slot);
QTLIBC_API int QScrollBar_QBaseMetacall(QScrollBar* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QScrollBar_Tr(const char* s);
QTLIBC_API QSize* QScrollBar_SizeHint(const QScrollBar* self);
QTLIBC_API void QScrollBar_OnSizeHint(const QScrollBar* self, intptr_t slot);
QTLIBC_API QSize* QScrollBar_QBaseSizeHint(const QScrollBar* self);
QTLIBC_API bool QScrollBar_Event(QScrollBar* self, QEvent* event);
QTLIBC_API void QScrollBar_OnEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API bool QScrollBar_QBaseEvent(QScrollBar* self, QEvent* event);
QTLIBC_API void QScrollBar_WheelEvent(QScrollBar* self, QWheelEvent* param1);
QTLIBC_API void QScrollBar_OnWheelEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseWheelEvent(QScrollBar* self, QWheelEvent* param1);
QTLIBC_API void QScrollBar_PaintEvent(QScrollBar* self, QPaintEvent* param1);
QTLIBC_API void QScrollBar_OnPaintEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBasePaintEvent(QScrollBar* self, QPaintEvent* param1);
QTLIBC_API void QScrollBar_MousePressEvent(QScrollBar* self, QMouseEvent* param1);
QTLIBC_API void QScrollBar_OnMousePressEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseMousePressEvent(QScrollBar* self, QMouseEvent* param1);
QTLIBC_API void QScrollBar_MouseReleaseEvent(QScrollBar* self, QMouseEvent* param1);
QTLIBC_API void QScrollBar_OnMouseReleaseEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseMouseReleaseEvent(QScrollBar* self, QMouseEvent* param1);
QTLIBC_API void QScrollBar_MouseMoveEvent(QScrollBar* self, QMouseEvent* param1);
QTLIBC_API void QScrollBar_OnMouseMoveEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseMouseMoveEvent(QScrollBar* self, QMouseEvent* param1);
QTLIBC_API void QScrollBar_HideEvent(QScrollBar* self, QHideEvent* param1);
QTLIBC_API void QScrollBar_OnHideEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseHideEvent(QScrollBar* self, QHideEvent* param1);
QTLIBC_API void QScrollBar_SliderChange(QScrollBar* self, int change);
QTLIBC_API void QScrollBar_OnSliderChange(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseSliderChange(QScrollBar* self, int change);
QTLIBC_API void QScrollBar_ContextMenuEvent(QScrollBar* self, QContextMenuEvent* param1);
QTLIBC_API void QScrollBar_OnContextMenuEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseContextMenuEvent(QScrollBar* self, QContextMenuEvent* param1);
QTLIBC_API void QScrollBar_InitStyleOption(const QScrollBar* self, QStyleOptionSlider* option);
QTLIBC_API void QScrollBar_OnInitStyleOption(const QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseInitStyleOption(const QScrollBar* self, QStyleOptionSlider* option);
QTLIBC_API libqt_string QScrollBar_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QScrollBar_Tr3(const char* s, const char* c, int n);
QTLIBC_API void QScrollBar_KeyPressEvent(QScrollBar* self, QKeyEvent* ev);
QTLIBC_API void QScrollBar_OnKeyPressEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseKeyPressEvent(QScrollBar* self, QKeyEvent* ev);
QTLIBC_API void QScrollBar_TimerEvent(QScrollBar* self, QTimerEvent* param1);
QTLIBC_API void QScrollBar_OnTimerEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseTimerEvent(QScrollBar* self, QTimerEvent* param1);
QTLIBC_API void QScrollBar_ChangeEvent(QScrollBar* self, QEvent* e);
QTLIBC_API void QScrollBar_OnChangeEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseChangeEvent(QScrollBar* self, QEvent* e);
QTLIBC_API int QScrollBar_DevType(const QScrollBar* self);
QTLIBC_API void QScrollBar_OnDevType(const QScrollBar* self, intptr_t slot);
QTLIBC_API int QScrollBar_QBaseDevType(const QScrollBar* self);
QTLIBC_API void QScrollBar_SetVisible(QScrollBar* self, bool visible);
QTLIBC_API void QScrollBar_OnSetVisible(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseSetVisible(QScrollBar* self, bool visible);
QTLIBC_API QSize* QScrollBar_MinimumSizeHint(const QScrollBar* self);
QTLIBC_API void QScrollBar_OnMinimumSizeHint(const QScrollBar* self, intptr_t slot);
QTLIBC_API QSize* QScrollBar_QBaseMinimumSizeHint(const QScrollBar* self);
QTLIBC_API int QScrollBar_HeightForWidth(const QScrollBar* self, int param1);
QTLIBC_API void QScrollBar_OnHeightForWidth(const QScrollBar* self, intptr_t slot);
QTLIBC_API int QScrollBar_QBaseHeightForWidth(const QScrollBar* self, int param1);
QTLIBC_API bool QScrollBar_HasHeightForWidth(const QScrollBar* self);
QTLIBC_API void QScrollBar_OnHasHeightForWidth(const QScrollBar* self, intptr_t slot);
QTLIBC_API bool QScrollBar_QBaseHasHeightForWidth(const QScrollBar* self);
QTLIBC_API QPaintEngine* QScrollBar_PaintEngine(const QScrollBar* self);
QTLIBC_API void QScrollBar_OnPaintEngine(const QScrollBar* self, intptr_t slot);
QTLIBC_API QPaintEngine* QScrollBar_QBasePaintEngine(const QScrollBar* self);
QTLIBC_API void QScrollBar_MouseDoubleClickEvent(QScrollBar* self, QMouseEvent* event);
QTLIBC_API void QScrollBar_OnMouseDoubleClickEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseMouseDoubleClickEvent(QScrollBar* self, QMouseEvent* event);
QTLIBC_API void QScrollBar_KeyReleaseEvent(QScrollBar* self, QKeyEvent* event);
QTLIBC_API void QScrollBar_OnKeyReleaseEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseKeyReleaseEvent(QScrollBar* self, QKeyEvent* event);
QTLIBC_API void QScrollBar_FocusInEvent(QScrollBar* self, QFocusEvent* event);
QTLIBC_API void QScrollBar_OnFocusInEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseFocusInEvent(QScrollBar* self, QFocusEvent* event);
QTLIBC_API void QScrollBar_FocusOutEvent(QScrollBar* self, QFocusEvent* event);
QTLIBC_API void QScrollBar_OnFocusOutEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseFocusOutEvent(QScrollBar* self, QFocusEvent* event);
QTLIBC_API void QScrollBar_EnterEvent(QScrollBar* self, QEnterEvent* event);
QTLIBC_API void QScrollBar_OnEnterEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseEnterEvent(QScrollBar* self, QEnterEvent* event);
QTLIBC_API void QScrollBar_LeaveEvent(QScrollBar* self, QEvent* event);
QTLIBC_API void QScrollBar_OnLeaveEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseLeaveEvent(QScrollBar* self, QEvent* event);
QTLIBC_API void QScrollBar_MoveEvent(QScrollBar* self, QMoveEvent* event);
QTLIBC_API void QScrollBar_OnMoveEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseMoveEvent(QScrollBar* self, QMoveEvent* event);
QTLIBC_API void QScrollBar_ResizeEvent(QScrollBar* self, QResizeEvent* event);
QTLIBC_API void QScrollBar_OnResizeEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseResizeEvent(QScrollBar* self, QResizeEvent* event);
QTLIBC_API void QScrollBar_CloseEvent(QScrollBar* self, QCloseEvent* event);
QTLIBC_API void QScrollBar_OnCloseEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseCloseEvent(QScrollBar* self, QCloseEvent* event);
QTLIBC_API void QScrollBar_TabletEvent(QScrollBar* self, QTabletEvent* event);
QTLIBC_API void QScrollBar_OnTabletEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseTabletEvent(QScrollBar* self, QTabletEvent* event);
QTLIBC_API void QScrollBar_ActionEvent(QScrollBar* self, QActionEvent* event);
QTLIBC_API void QScrollBar_OnActionEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseActionEvent(QScrollBar* self, QActionEvent* event);
QTLIBC_API void QScrollBar_DragEnterEvent(QScrollBar* self, QDragEnterEvent* event);
QTLIBC_API void QScrollBar_OnDragEnterEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseDragEnterEvent(QScrollBar* self, QDragEnterEvent* event);
QTLIBC_API void QScrollBar_DragMoveEvent(QScrollBar* self, QDragMoveEvent* event);
QTLIBC_API void QScrollBar_OnDragMoveEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseDragMoveEvent(QScrollBar* self, QDragMoveEvent* event);
QTLIBC_API void QScrollBar_DragLeaveEvent(QScrollBar* self, QDragLeaveEvent* event);
QTLIBC_API void QScrollBar_OnDragLeaveEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseDragLeaveEvent(QScrollBar* self, QDragLeaveEvent* event);
QTLIBC_API void QScrollBar_DropEvent(QScrollBar* self, QDropEvent* event);
QTLIBC_API void QScrollBar_OnDropEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseDropEvent(QScrollBar* self, QDropEvent* event);
QTLIBC_API void QScrollBar_ShowEvent(QScrollBar* self, QShowEvent* event);
QTLIBC_API void QScrollBar_OnShowEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseShowEvent(QScrollBar* self, QShowEvent* event);
QTLIBC_API bool QScrollBar_NativeEvent(QScrollBar* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QScrollBar_OnNativeEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API bool QScrollBar_QBaseNativeEvent(QScrollBar* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QScrollBar_InputMethodEvent(QScrollBar* self, QInputMethodEvent* param1);
QTLIBC_API void QScrollBar_OnInputMethodEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseInputMethodEvent(QScrollBar* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QScrollBar_InputMethodQuery(const QScrollBar* self, int param1);
QTLIBC_API void QScrollBar_OnInputMethodQuery(const QScrollBar* self, intptr_t slot);
QTLIBC_API QVariant* QScrollBar_QBaseInputMethodQuery(const QScrollBar* self, int param1);
QTLIBC_API bool QScrollBar_FocusNextPrevChild(QScrollBar* self, bool next);
QTLIBC_API void QScrollBar_OnFocusNextPrevChild(QScrollBar* self, intptr_t slot);
QTLIBC_API bool QScrollBar_QBaseFocusNextPrevChild(QScrollBar* self, bool next);
QTLIBC_API bool QScrollBar_EventFilter(QScrollBar* self, QObject* watched, QEvent* event);
QTLIBC_API void QScrollBar_OnEventFilter(QScrollBar* self, intptr_t slot);
QTLIBC_API bool QScrollBar_QBaseEventFilter(QScrollBar* self, QObject* watched, QEvent* event);
QTLIBC_API void QScrollBar_ChildEvent(QScrollBar* self, QChildEvent* event);
QTLIBC_API void QScrollBar_OnChildEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseChildEvent(QScrollBar* self, QChildEvent* event);
QTLIBC_API void QScrollBar_CustomEvent(QScrollBar* self, QEvent* event);
QTLIBC_API void QScrollBar_OnCustomEvent(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseCustomEvent(QScrollBar* self, QEvent* event);
QTLIBC_API void QScrollBar_ConnectNotify(QScrollBar* self, QMetaMethod* signal);
QTLIBC_API void QScrollBar_OnConnectNotify(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseConnectNotify(QScrollBar* self, QMetaMethod* signal);
QTLIBC_API void QScrollBar_DisconnectNotify(QScrollBar* self, QMetaMethod* signal);
QTLIBC_API void QScrollBar_OnDisconnectNotify(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseDisconnectNotify(QScrollBar* self, QMetaMethod* signal);
QTLIBC_API int QScrollBar_Metric(const QScrollBar* self, int param1);
QTLIBC_API void QScrollBar_OnMetric(const QScrollBar* self, intptr_t slot);
QTLIBC_API int QScrollBar_QBaseMetric(const QScrollBar* self, int param1);
QTLIBC_API void QScrollBar_InitPainter(const QScrollBar* self, QPainter* painter);
QTLIBC_API void QScrollBar_OnInitPainter(const QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseInitPainter(const QScrollBar* self, QPainter* painter);
QTLIBC_API QPaintDevice* QScrollBar_Redirected(const QScrollBar* self, QPoint* offset);
QTLIBC_API void QScrollBar_OnRedirected(const QScrollBar* self, intptr_t slot);
QTLIBC_API QPaintDevice* QScrollBar_QBaseRedirected(const QScrollBar* self, QPoint* offset);
QTLIBC_API QPainter* QScrollBar_SharedPainter(const QScrollBar* self);
QTLIBC_API void QScrollBar_OnSharedPainter(const QScrollBar* self, intptr_t slot);
QTLIBC_API QPainter* QScrollBar_QBaseSharedPainter(const QScrollBar* self);
QTLIBC_API void QScrollBar_SetRepeatAction(QScrollBar* self, int action);
QTLIBC_API void QScrollBar_OnSetRepeatAction(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseSetRepeatAction(QScrollBar* self, int action);
QTLIBC_API int QScrollBar_RepeatAction(const QScrollBar* self);
QTLIBC_API void QScrollBar_OnRepeatAction(const QScrollBar* self, intptr_t slot);
QTLIBC_API int QScrollBar_QBaseRepeatAction(const QScrollBar* self);
QTLIBC_API void QScrollBar_UpdateMicroFocus(QScrollBar* self);
QTLIBC_API void QScrollBar_OnUpdateMicroFocus(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseUpdateMicroFocus(QScrollBar* self);
QTLIBC_API void QScrollBar_Create(QScrollBar* self);
QTLIBC_API void QScrollBar_OnCreate(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseCreate(QScrollBar* self);
QTLIBC_API void QScrollBar_Destroy(QScrollBar* self);
QTLIBC_API void QScrollBar_OnDestroy(QScrollBar* self, intptr_t slot);
QTLIBC_API void QScrollBar_QBaseDestroy(QScrollBar* self);
QTLIBC_API bool QScrollBar_FocusNextChild(QScrollBar* self);
QTLIBC_API void QScrollBar_OnFocusNextChild(QScrollBar* self, intptr_t slot);
QTLIBC_API bool QScrollBar_QBaseFocusNextChild(QScrollBar* self);
QTLIBC_API bool QScrollBar_FocusPreviousChild(QScrollBar* self);
QTLIBC_API void QScrollBar_OnFocusPreviousChild(QScrollBar* self, intptr_t slot);
QTLIBC_API bool QScrollBar_QBaseFocusPreviousChild(QScrollBar* self);
QTLIBC_API QObject* QScrollBar_Sender(const QScrollBar* self);
QTLIBC_API void QScrollBar_OnSender(const QScrollBar* self, intptr_t slot);
QTLIBC_API QObject* QScrollBar_QBaseSender(const QScrollBar* self);
QTLIBC_API int QScrollBar_SenderSignalIndex(const QScrollBar* self);
QTLIBC_API void QScrollBar_OnSenderSignalIndex(const QScrollBar* self, intptr_t slot);
QTLIBC_API int QScrollBar_QBaseSenderSignalIndex(const QScrollBar* self);
QTLIBC_API int QScrollBar_Receivers(const QScrollBar* self, const char* signal);
QTLIBC_API void QScrollBar_OnReceivers(const QScrollBar* self, intptr_t slot);
QTLIBC_API int QScrollBar_QBaseReceivers(const QScrollBar* self, const char* signal);
QTLIBC_API bool QScrollBar_IsSignalConnected(const QScrollBar* self, QMetaMethod* signal);
QTLIBC_API void QScrollBar_OnIsSignalConnected(const QScrollBar* self, intptr_t slot);
QTLIBC_API bool QScrollBar_QBaseIsSignalConnected(const QScrollBar* self, QMetaMethod* signal);
QTLIBC_API void QScrollBar_Delete(QScrollBar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
