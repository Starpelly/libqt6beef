#pragma once
#ifndef SRCC_LIBQPROGRESSBAR_H
#define SRCC_LIBQPROGRESSBAR_H

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
typedef struct QProgressBar QProgressBar;
typedef struct QRect QRect;
typedef struct QRegion QRegion;
typedef struct QResizeEvent QResizeEvent;
typedef struct QScreen QScreen;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QSizePolicy QSizePolicy;
typedef struct QStyle QStyle;
typedef struct QStyleOptionProgressBar QStyleOptionProgressBar;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

#ifdef __cplusplus
typedef QProgressBar::Direction Direction; // C++ enum
#else
typedef int Direction; // C ABI enum
#endif

QTLIBC_API QProgressBar* QProgressBar_new(QWidget* parent);
QTLIBC_API QProgressBar* QProgressBar_new2();
QTLIBC_API QMetaObject* QProgressBar_MetaObject(const QProgressBar* self);
QTLIBC_API void* QProgressBar_Metacast(QProgressBar* self, const char* param1);
QTLIBC_API int QProgressBar_Metacall(QProgressBar* self, int param1, int param2, void** param3);
QTLIBC_API void QProgressBar_OnMetacall(QProgressBar* self, intptr_t slot);
QTLIBC_API int QProgressBar_QBaseMetacall(QProgressBar* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QProgressBar_Tr(const char* s);
QTLIBC_API int QProgressBar_Minimum(const QProgressBar* self);
QTLIBC_API int QProgressBar_Maximum(const QProgressBar* self);
QTLIBC_API int QProgressBar_Value(const QProgressBar* self);
QTLIBC_API libqt_string QProgressBar_Text(const QProgressBar* self);
QTLIBC_API void QProgressBar_OnText(const QProgressBar* self, intptr_t slot);
QTLIBC_API libqt_string QProgressBar_QBaseText(const QProgressBar* self);
QTLIBC_API void QProgressBar_SetTextVisible(QProgressBar* self, bool visible);
QTLIBC_API bool QProgressBar_IsTextVisible(const QProgressBar* self);
QTLIBC_API int QProgressBar_Alignment(const QProgressBar* self);
QTLIBC_API void QProgressBar_SetAlignment(QProgressBar* self, int alignment);
QTLIBC_API QSize* QProgressBar_SizeHint(const QProgressBar* self);
QTLIBC_API void QProgressBar_OnSizeHint(const QProgressBar* self, intptr_t slot);
QTLIBC_API QSize* QProgressBar_QBaseSizeHint(const QProgressBar* self);
QTLIBC_API QSize* QProgressBar_MinimumSizeHint(const QProgressBar* self);
QTLIBC_API void QProgressBar_OnMinimumSizeHint(const QProgressBar* self, intptr_t slot);
QTLIBC_API QSize* QProgressBar_QBaseMinimumSizeHint(const QProgressBar* self);
QTLIBC_API int QProgressBar_Orientation(const QProgressBar* self);
QTLIBC_API void QProgressBar_SetInvertedAppearance(QProgressBar* self, bool invert);
QTLIBC_API bool QProgressBar_InvertedAppearance(const QProgressBar* self);
QTLIBC_API void QProgressBar_SetTextDirection(QProgressBar* self, int textDirection);
QTLIBC_API int QProgressBar_TextDirection(const QProgressBar* self);
QTLIBC_API void QProgressBar_SetFormat(QProgressBar* self, libqt_string format);
QTLIBC_API void QProgressBar_ResetFormat(QProgressBar* self);
QTLIBC_API libqt_string QProgressBar_Format(const QProgressBar* self);
QTLIBC_API void QProgressBar_Reset(QProgressBar* self);
QTLIBC_API void QProgressBar_SetRange(QProgressBar* self, int minimum, int maximum);
QTLIBC_API void QProgressBar_SetMinimum(QProgressBar* self, int minimum);
QTLIBC_API void QProgressBar_SetMaximum(QProgressBar* self, int maximum);
QTLIBC_API void QProgressBar_SetValue(QProgressBar* self, int value);
QTLIBC_API void QProgressBar_SetOrientation(QProgressBar* self, int orientation);
QTLIBC_API void QProgressBar_ValueChanged(QProgressBar* self, int value);
void QProgressBar_Connect_ValueChanged(QProgressBar* self, intptr_t slot);
QTLIBC_API bool QProgressBar_Event(QProgressBar* self, QEvent* e);
QTLIBC_API void QProgressBar_OnEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API bool QProgressBar_QBaseEvent(QProgressBar* self, QEvent* e);
QTLIBC_API void QProgressBar_PaintEvent(QProgressBar* self, QPaintEvent* param1);
QTLIBC_API void QProgressBar_OnPaintEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBasePaintEvent(QProgressBar* self, QPaintEvent* param1);
QTLIBC_API void QProgressBar_InitStyleOption(const QProgressBar* self, QStyleOptionProgressBar* option);
QTLIBC_API void QProgressBar_OnInitStyleOption(const QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseInitStyleOption(const QProgressBar* self, QStyleOptionProgressBar* option);
QTLIBC_API libqt_string QProgressBar_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QProgressBar_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QProgressBar_DevType(const QProgressBar* self);
QTLIBC_API void QProgressBar_OnDevType(const QProgressBar* self, intptr_t slot);
QTLIBC_API int QProgressBar_QBaseDevType(const QProgressBar* self);
QTLIBC_API void QProgressBar_SetVisible(QProgressBar* self, bool visible);
QTLIBC_API void QProgressBar_OnSetVisible(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseSetVisible(QProgressBar* self, bool visible);
QTLIBC_API int QProgressBar_HeightForWidth(const QProgressBar* self, int param1);
QTLIBC_API void QProgressBar_OnHeightForWidth(const QProgressBar* self, intptr_t slot);
QTLIBC_API int QProgressBar_QBaseHeightForWidth(const QProgressBar* self, int param1);
QTLIBC_API bool QProgressBar_HasHeightForWidth(const QProgressBar* self);
QTLIBC_API void QProgressBar_OnHasHeightForWidth(const QProgressBar* self, intptr_t slot);
QTLIBC_API bool QProgressBar_QBaseHasHeightForWidth(const QProgressBar* self);
QTLIBC_API QPaintEngine* QProgressBar_PaintEngine(const QProgressBar* self);
QTLIBC_API void QProgressBar_OnPaintEngine(const QProgressBar* self, intptr_t slot);
QTLIBC_API QPaintEngine* QProgressBar_QBasePaintEngine(const QProgressBar* self);
QTLIBC_API void QProgressBar_MousePressEvent(QProgressBar* self, QMouseEvent* event);
QTLIBC_API void QProgressBar_OnMousePressEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseMousePressEvent(QProgressBar* self, QMouseEvent* event);
QTLIBC_API void QProgressBar_MouseReleaseEvent(QProgressBar* self, QMouseEvent* event);
QTLIBC_API void QProgressBar_OnMouseReleaseEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseMouseReleaseEvent(QProgressBar* self, QMouseEvent* event);
QTLIBC_API void QProgressBar_MouseDoubleClickEvent(QProgressBar* self, QMouseEvent* event);
QTLIBC_API void QProgressBar_OnMouseDoubleClickEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseMouseDoubleClickEvent(QProgressBar* self, QMouseEvent* event);
QTLIBC_API void QProgressBar_MouseMoveEvent(QProgressBar* self, QMouseEvent* event);
QTLIBC_API void QProgressBar_OnMouseMoveEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseMouseMoveEvent(QProgressBar* self, QMouseEvent* event);
QTLIBC_API void QProgressBar_WheelEvent(QProgressBar* self, QWheelEvent* event);
QTLIBC_API void QProgressBar_OnWheelEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseWheelEvent(QProgressBar* self, QWheelEvent* event);
QTLIBC_API void QProgressBar_KeyPressEvent(QProgressBar* self, QKeyEvent* event);
QTLIBC_API void QProgressBar_OnKeyPressEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseKeyPressEvent(QProgressBar* self, QKeyEvent* event);
QTLIBC_API void QProgressBar_KeyReleaseEvent(QProgressBar* self, QKeyEvent* event);
QTLIBC_API void QProgressBar_OnKeyReleaseEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseKeyReleaseEvent(QProgressBar* self, QKeyEvent* event);
QTLIBC_API void QProgressBar_FocusInEvent(QProgressBar* self, QFocusEvent* event);
QTLIBC_API void QProgressBar_OnFocusInEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseFocusInEvent(QProgressBar* self, QFocusEvent* event);
QTLIBC_API void QProgressBar_FocusOutEvent(QProgressBar* self, QFocusEvent* event);
QTLIBC_API void QProgressBar_OnFocusOutEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseFocusOutEvent(QProgressBar* self, QFocusEvent* event);
QTLIBC_API void QProgressBar_EnterEvent(QProgressBar* self, QEnterEvent* event);
QTLIBC_API void QProgressBar_OnEnterEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseEnterEvent(QProgressBar* self, QEnterEvent* event);
QTLIBC_API void QProgressBar_LeaveEvent(QProgressBar* self, QEvent* event);
QTLIBC_API void QProgressBar_OnLeaveEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseLeaveEvent(QProgressBar* self, QEvent* event);
QTLIBC_API void QProgressBar_MoveEvent(QProgressBar* self, QMoveEvent* event);
QTLIBC_API void QProgressBar_OnMoveEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseMoveEvent(QProgressBar* self, QMoveEvent* event);
QTLIBC_API void QProgressBar_ResizeEvent(QProgressBar* self, QResizeEvent* event);
QTLIBC_API void QProgressBar_OnResizeEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseResizeEvent(QProgressBar* self, QResizeEvent* event);
QTLIBC_API void QProgressBar_CloseEvent(QProgressBar* self, QCloseEvent* event);
QTLIBC_API void QProgressBar_OnCloseEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseCloseEvent(QProgressBar* self, QCloseEvent* event);
QTLIBC_API void QProgressBar_ContextMenuEvent(QProgressBar* self, QContextMenuEvent* event);
QTLIBC_API void QProgressBar_OnContextMenuEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseContextMenuEvent(QProgressBar* self, QContextMenuEvent* event);
QTLIBC_API void QProgressBar_TabletEvent(QProgressBar* self, QTabletEvent* event);
QTLIBC_API void QProgressBar_OnTabletEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseTabletEvent(QProgressBar* self, QTabletEvent* event);
QTLIBC_API void QProgressBar_ActionEvent(QProgressBar* self, QActionEvent* event);
QTLIBC_API void QProgressBar_OnActionEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseActionEvent(QProgressBar* self, QActionEvent* event);
QTLIBC_API void QProgressBar_DragEnterEvent(QProgressBar* self, QDragEnterEvent* event);
QTLIBC_API void QProgressBar_OnDragEnterEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseDragEnterEvent(QProgressBar* self, QDragEnterEvent* event);
QTLIBC_API void QProgressBar_DragMoveEvent(QProgressBar* self, QDragMoveEvent* event);
QTLIBC_API void QProgressBar_OnDragMoveEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseDragMoveEvent(QProgressBar* self, QDragMoveEvent* event);
QTLIBC_API void QProgressBar_DragLeaveEvent(QProgressBar* self, QDragLeaveEvent* event);
QTLIBC_API void QProgressBar_OnDragLeaveEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseDragLeaveEvent(QProgressBar* self, QDragLeaveEvent* event);
QTLIBC_API void QProgressBar_DropEvent(QProgressBar* self, QDropEvent* event);
QTLIBC_API void QProgressBar_OnDropEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseDropEvent(QProgressBar* self, QDropEvent* event);
QTLIBC_API void QProgressBar_ShowEvent(QProgressBar* self, QShowEvent* event);
QTLIBC_API void QProgressBar_OnShowEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseShowEvent(QProgressBar* self, QShowEvent* event);
QTLIBC_API void QProgressBar_HideEvent(QProgressBar* self, QHideEvent* event);
QTLIBC_API void QProgressBar_OnHideEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseHideEvent(QProgressBar* self, QHideEvent* event);
QTLIBC_API bool QProgressBar_NativeEvent(QProgressBar* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QProgressBar_OnNativeEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API bool QProgressBar_QBaseNativeEvent(QProgressBar* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QProgressBar_ChangeEvent(QProgressBar* self, QEvent* param1);
QTLIBC_API void QProgressBar_OnChangeEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseChangeEvent(QProgressBar* self, QEvent* param1);
QTLIBC_API void QProgressBar_InputMethodEvent(QProgressBar* self, QInputMethodEvent* param1);
QTLIBC_API void QProgressBar_OnInputMethodEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseInputMethodEvent(QProgressBar* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QProgressBar_InputMethodQuery(const QProgressBar* self, int param1);
QTLIBC_API void QProgressBar_OnInputMethodQuery(const QProgressBar* self, intptr_t slot);
QTLIBC_API QVariant* QProgressBar_QBaseInputMethodQuery(const QProgressBar* self, int param1);
QTLIBC_API bool QProgressBar_FocusNextPrevChild(QProgressBar* self, bool next);
QTLIBC_API void QProgressBar_OnFocusNextPrevChild(QProgressBar* self, intptr_t slot);
QTLIBC_API bool QProgressBar_QBaseFocusNextPrevChild(QProgressBar* self, bool next);
QTLIBC_API bool QProgressBar_EventFilter(QProgressBar* self, QObject* watched, QEvent* event);
QTLIBC_API void QProgressBar_OnEventFilter(QProgressBar* self, intptr_t slot);
QTLIBC_API bool QProgressBar_QBaseEventFilter(QProgressBar* self, QObject* watched, QEvent* event);
QTLIBC_API void QProgressBar_TimerEvent(QProgressBar* self, QTimerEvent* event);
QTLIBC_API void QProgressBar_OnTimerEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseTimerEvent(QProgressBar* self, QTimerEvent* event);
QTLIBC_API void QProgressBar_ChildEvent(QProgressBar* self, QChildEvent* event);
QTLIBC_API void QProgressBar_OnChildEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseChildEvent(QProgressBar* self, QChildEvent* event);
QTLIBC_API void QProgressBar_CustomEvent(QProgressBar* self, QEvent* event);
QTLIBC_API void QProgressBar_OnCustomEvent(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseCustomEvent(QProgressBar* self, QEvent* event);
QTLIBC_API void QProgressBar_ConnectNotify(QProgressBar* self, QMetaMethod* signal);
QTLIBC_API void QProgressBar_OnConnectNotify(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseConnectNotify(QProgressBar* self, QMetaMethod* signal);
QTLIBC_API void QProgressBar_DisconnectNotify(QProgressBar* self, QMetaMethod* signal);
QTLIBC_API void QProgressBar_OnDisconnectNotify(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseDisconnectNotify(QProgressBar* self, QMetaMethod* signal);
QTLIBC_API int QProgressBar_Metric(const QProgressBar* self, int param1);
QTLIBC_API void QProgressBar_OnMetric(const QProgressBar* self, intptr_t slot);
QTLIBC_API int QProgressBar_QBaseMetric(const QProgressBar* self, int param1);
QTLIBC_API void QProgressBar_InitPainter(const QProgressBar* self, QPainter* painter);
QTLIBC_API void QProgressBar_OnInitPainter(const QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseInitPainter(const QProgressBar* self, QPainter* painter);
QTLIBC_API QPaintDevice* QProgressBar_Redirected(const QProgressBar* self, QPoint* offset);
QTLIBC_API void QProgressBar_OnRedirected(const QProgressBar* self, intptr_t slot);
QTLIBC_API QPaintDevice* QProgressBar_QBaseRedirected(const QProgressBar* self, QPoint* offset);
QTLIBC_API QPainter* QProgressBar_SharedPainter(const QProgressBar* self);
QTLIBC_API void QProgressBar_OnSharedPainter(const QProgressBar* self, intptr_t slot);
QTLIBC_API QPainter* QProgressBar_QBaseSharedPainter(const QProgressBar* self);
QTLIBC_API void QProgressBar_UpdateMicroFocus(QProgressBar* self);
QTLIBC_API void QProgressBar_OnUpdateMicroFocus(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseUpdateMicroFocus(QProgressBar* self);
QTLIBC_API void QProgressBar_Create(QProgressBar* self);
QTLIBC_API void QProgressBar_OnCreate(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseCreate(QProgressBar* self);
QTLIBC_API void QProgressBar_Destroy(QProgressBar* self);
QTLIBC_API void QProgressBar_OnDestroy(QProgressBar* self, intptr_t slot);
QTLIBC_API void QProgressBar_QBaseDestroy(QProgressBar* self);
QTLIBC_API bool QProgressBar_FocusNextChild(QProgressBar* self);
QTLIBC_API void QProgressBar_OnFocusNextChild(QProgressBar* self, intptr_t slot);
QTLIBC_API bool QProgressBar_QBaseFocusNextChild(QProgressBar* self);
QTLIBC_API bool QProgressBar_FocusPreviousChild(QProgressBar* self);
QTLIBC_API void QProgressBar_OnFocusPreviousChild(QProgressBar* self, intptr_t slot);
QTLIBC_API bool QProgressBar_QBaseFocusPreviousChild(QProgressBar* self);
QTLIBC_API QObject* QProgressBar_Sender(const QProgressBar* self);
QTLIBC_API void QProgressBar_OnSender(const QProgressBar* self, intptr_t slot);
QTLIBC_API QObject* QProgressBar_QBaseSender(const QProgressBar* self);
QTLIBC_API int QProgressBar_SenderSignalIndex(const QProgressBar* self);
QTLIBC_API void QProgressBar_OnSenderSignalIndex(const QProgressBar* self, intptr_t slot);
QTLIBC_API int QProgressBar_QBaseSenderSignalIndex(const QProgressBar* self);
QTLIBC_API int QProgressBar_Receivers(const QProgressBar* self, const char* signal);
QTLIBC_API void QProgressBar_OnReceivers(const QProgressBar* self, intptr_t slot);
QTLIBC_API int QProgressBar_QBaseReceivers(const QProgressBar* self, const char* signal);
QTLIBC_API bool QProgressBar_IsSignalConnected(const QProgressBar* self, QMetaMethod* signal);
QTLIBC_API void QProgressBar_OnIsSignalConnected(const QProgressBar* self, intptr_t slot);
QTLIBC_API bool QProgressBar_QBaseIsSignalConnected(const QProgressBar* self, QMetaMethod* signal);
QTLIBC_API void QProgressBar_Delete(QProgressBar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
