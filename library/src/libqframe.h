#pragma once
#ifndef SRCC_LIBQFRAME_H
#define SRCC_LIBQFRAME_H

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
typedef struct QFrame QFrame;
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
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWindow QWindow;
#endif

#ifdef __cplusplus
typedef QFrame::Shadow Shadow;       // C++ enum
typedef QFrame::Shape Shape;         // C++ enum
typedef QFrame::StyleMask StyleMask; // C++ enum
#else
typedef int Shadow;    // C ABI enum
typedef int Shape;     // C ABI enum
typedef int StyleMask; // C ABI enum
#endif

QTLIBC_API QFrame* QFrame_new(QWidget* parent);
QTLIBC_API QFrame* QFrame_new2();
QTLIBC_API QFrame* QFrame_new3(QWidget* parent, int f);
QTLIBC_API QMetaObject* QFrame_MetaObject(const QFrame* self);
QTLIBC_API void* QFrame_Metacast(QFrame* self, const char* param1);
QTLIBC_API int QFrame_Metacall(QFrame* self, int param1, int param2, void** param3);
QTLIBC_API void QFrame_OnMetacall(QFrame* self, intptr_t slot);
QTLIBC_API int QFrame_QBaseMetacall(QFrame* self, int param1, int param2, void** param3);
QTLIBC_API libqt_string QFrame_Tr(const char* s);
QTLIBC_API int QFrame_FrameStyle(const QFrame* self);
QTLIBC_API void QFrame_SetFrameStyle(QFrame* self, int frameStyle);
QTLIBC_API int QFrame_FrameWidth(const QFrame* self);
QTLIBC_API QSize* QFrame_SizeHint(const QFrame* self);
QTLIBC_API void QFrame_OnSizeHint(const QFrame* self, intptr_t slot);
QTLIBC_API QSize* QFrame_QBaseSizeHint(const QFrame* self);
QTLIBC_API int QFrame_FrameShape(const QFrame* self);
QTLIBC_API void QFrame_SetFrameShape(QFrame* self, int frameShape);
QTLIBC_API int QFrame_FrameShadow(const QFrame* self);
QTLIBC_API void QFrame_SetFrameShadow(QFrame* self, int frameShadow);
QTLIBC_API int QFrame_LineWidth(const QFrame* self);
QTLIBC_API void QFrame_SetLineWidth(QFrame* self, int lineWidth);
QTLIBC_API int QFrame_MidLineWidth(const QFrame* self);
QTLIBC_API void QFrame_SetMidLineWidth(QFrame* self, int midLineWidth);
QTLIBC_API QRect* QFrame_FrameRect(const QFrame* self);
QTLIBC_API void QFrame_SetFrameRect(QFrame* self, QRect* frameRect);
QTLIBC_API bool QFrame_Event(QFrame* self, QEvent* e);
QTLIBC_API void QFrame_OnEvent(QFrame* self, intptr_t slot);
QTLIBC_API bool QFrame_QBaseEvent(QFrame* self, QEvent* e);
QTLIBC_API void QFrame_PaintEvent(QFrame* self, QPaintEvent* param1);
QTLIBC_API void QFrame_OnPaintEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBasePaintEvent(QFrame* self, QPaintEvent* param1);
QTLIBC_API void QFrame_ChangeEvent(QFrame* self, QEvent* param1);
QTLIBC_API void QFrame_OnChangeEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseChangeEvent(QFrame* self, QEvent* param1);
QTLIBC_API void QFrame_InitStyleOption(const QFrame* self, QStyleOptionFrame* option);
QTLIBC_API void QFrame_OnInitStyleOption(const QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseInitStyleOption(const QFrame* self, QStyleOptionFrame* option);
QTLIBC_API libqt_string QFrame_Tr2(const char* s, const char* c);
QTLIBC_API libqt_string QFrame_Tr3(const char* s, const char* c, int n);
QTLIBC_API int QFrame_DevType(const QFrame* self);
QTLIBC_API void QFrame_OnDevType(const QFrame* self, intptr_t slot);
QTLIBC_API int QFrame_QBaseDevType(const QFrame* self);
QTLIBC_API void QFrame_SetVisible(QFrame* self, bool visible);
QTLIBC_API void QFrame_OnSetVisible(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseSetVisible(QFrame* self, bool visible);
QTLIBC_API QSize* QFrame_MinimumSizeHint(const QFrame* self);
QTLIBC_API void QFrame_OnMinimumSizeHint(const QFrame* self, intptr_t slot);
QTLIBC_API QSize* QFrame_QBaseMinimumSizeHint(const QFrame* self);
QTLIBC_API int QFrame_HeightForWidth(const QFrame* self, int param1);
QTLIBC_API void QFrame_OnHeightForWidth(const QFrame* self, intptr_t slot);
QTLIBC_API int QFrame_QBaseHeightForWidth(const QFrame* self, int param1);
QTLIBC_API bool QFrame_HasHeightForWidth(const QFrame* self);
QTLIBC_API void QFrame_OnHasHeightForWidth(const QFrame* self, intptr_t slot);
QTLIBC_API bool QFrame_QBaseHasHeightForWidth(const QFrame* self);
QTLIBC_API QPaintEngine* QFrame_PaintEngine(const QFrame* self);
QTLIBC_API void QFrame_OnPaintEngine(const QFrame* self, intptr_t slot);
QTLIBC_API QPaintEngine* QFrame_QBasePaintEngine(const QFrame* self);
QTLIBC_API void QFrame_MousePressEvent(QFrame* self, QMouseEvent* event);
QTLIBC_API void QFrame_OnMousePressEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseMousePressEvent(QFrame* self, QMouseEvent* event);
QTLIBC_API void QFrame_MouseReleaseEvent(QFrame* self, QMouseEvent* event);
QTLIBC_API void QFrame_OnMouseReleaseEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseMouseReleaseEvent(QFrame* self, QMouseEvent* event);
QTLIBC_API void QFrame_MouseDoubleClickEvent(QFrame* self, QMouseEvent* event);
QTLIBC_API void QFrame_OnMouseDoubleClickEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseMouseDoubleClickEvent(QFrame* self, QMouseEvent* event);
QTLIBC_API void QFrame_MouseMoveEvent(QFrame* self, QMouseEvent* event);
QTLIBC_API void QFrame_OnMouseMoveEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseMouseMoveEvent(QFrame* self, QMouseEvent* event);
QTLIBC_API void QFrame_WheelEvent(QFrame* self, QWheelEvent* event);
QTLIBC_API void QFrame_OnWheelEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseWheelEvent(QFrame* self, QWheelEvent* event);
QTLIBC_API void QFrame_KeyPressEvent(QFrame* self, QKeyEvent* event);
QTLIBC_API void QFrame_OnKeyPressEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseKeyPressEvent(QFrame* self, QKeyEvent* event);
QTLIBC_API void QFrame_KeyReleaseEvent(QFrame* self, QKeyEvent* event);
QTLIBC_API void QFrame_OnKeyReleaseEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseKeyReleaseEvent(QFrame* self, QKeyEvent* event);
QTLIBC_API void QFrame_FocusInEvent(QFrame* self, QFocusEvent* event);
QTLIBC_API void QFrame_OnFocusInEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseFocusInEvent(QFrame* self, QFocusEvent* event);
QTLIBC_API void QFrame_FocusOutEvent(QFrame* self, QFocusEvent* event);
QTLIBC_API void QFrame_OnFocusOutEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseFocusOutEvent(QFrame* self, QFocusEvent* event);
QTLIBC_API void QFrame_EnterEvent(QFrame* self, QEnterEvent* event);
QTLIBC_API void QFrame_OnEnterEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseEnterEvent(QFrame* self, QEnterEvent* event);
QTLIBC_API void QFrame_LeaveEvent(QFrame* self, QEvent* event);
QTLIBC_API void QFrame_OnLeaveEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseLeaveEvent(QFrame* self, QEvent* event);
QTLIBC_API void QFrame_MoveEvent(QFrame* self, QMoveEvent* event);
QTLIBC_API void QFrame_OnMoveEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseMoveEvent(QFrame* self, QMoveEvent* event);
QTLIBC_API void QFrame_ResizeEvent(QFrame* self, QResizeEvent* event);
QTLIBC_API void QFrame_OnResizeEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseResizeEvent(QFrame* self, QResizeEvent* event);
QTLIBC_API void QFrame_CloseEvent(QFrame* self, QCloseEvent* event);
QTLIBC_API void QFrame_OnCloseEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseCloseEvent(QFrame* self, QCloseEvent* event);
QTLIBC_API void QFrame_ContextMenuEvent(QFrame* self, QContextMenuEvent* event);
QTLIBC_API void QFrame_OnContextMenuEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseContextMenuEvent(QFrame* self, QContextMenuEvent* event);
QTLIBC_API void QFrame_TabletEvent(QFrame* self, QTabletEvent* event);
QTLIBC_API void QFrame_OnTabletEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseTabletEvent(QFrame* self, QTabletEvent* event);
QTLIBC_API void QFrame_ActionEvent(QFrame* self, QActionEvent* event);
QTLIBC_API void QFrame_OnActionEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseActionEvent(QFrame* self, QActionEvent* event);
QTLIBC_API void QFrame_DragEnterEvent(QFrame* self, QDragEnterEvent* event);
QTLIBC_API void QFrame_OnDragEnterEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseDragEnterEvent(QFrame* self, QDragEnterEvent* event);
QTLIBC_API void QFrame_DragMoveEvent(QFrame* self, QDragMoveEvent* event);
QTLIBC_API void QFrame_OnDragMoveEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseDragMoveEvent(QFrame* self, QDragMoveEvent* event);
QTLIBC_API void QFrame_DragLeaveEvent(QFrame* self, QDragLeaveEvent* event);
QTLIBC_API void QFrame_OnDragLeaveEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseDragLeaveEvent(QFrame* self, QDragLeaveEvent* event);
QTLIBC_API void QFrame_DropEvent(QFrame* self, QDropEvent* event);
QTLIBC_API void QFrame_OnDropEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseDropEvent(QFrame* self, QDropEvent* event);
QTLIBC_API void QFrame_ShowEvent(QFrame* self, QShowEvent* event);
QTLIBC_API void QFrame_OnShowEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseShowEvent(QFrame* self, QShowEvent* event);
QTLIBC_API void QFrame_HideEvent(QFrame* self, QHideEvent* event);
QTLIBC_API void QFrame_OnHideEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseHideEvent(QFrame* self, QHideEvent* event);
QTLIBC_API bool QFrame_NativeEvent(QFrame* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QFrame_OnNativeEvent(QFrame* self, intptr_t slot);
QTLIBC_API bool QFrame_QBaseNativeEvent(QFrame* self, libqt_string eventType, void* message, intptr_t* result);
QTLIBC_API void QFrame_InputMethodEvent(QFrame* self, QInputMethodEvent* param1);
QTLIBC_API void QFrame_OnInputMethodEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseInputMethodEvent(QFrame* self, QInputMethodEvent* param1);
QTLIBC_API QVariant* QFrame_InputMethodQuery(const QFrame* self, int param1);
QTLIBC_API void QFrame_OnInputMethodQuery(const QFrame* self, intptr_t slot);
QTLIBC_API QVariant* QFrame_QBaseInputMethodQuery(const QFrame* self, int param1);
QTLIBC_API bool QFrame_FocusNextPrevChild(QFrame* self, bool next);
QTLIBC_API void QFrame_OnFocusNextPrevChild(QFrame* self, intptr_t slot);
QTLIBC_API bool QFrame_QBaseFocusNextPrevChild(QFrame* self, bool next);
QTLIBC_API bool QFrame_EventFilter(QFrame* self, QObject* watched, QEvent* event);
QTLIBC_API void QFrame_OnEventFilter(QFrame* self, intptr_t slot);
QTLIBC_API bool QFrame_QBaseEventFilter(QFrame* self, QObject* watched, QEvent* event);
QTLIBC_API void QFrame_TimerEvent(QFrame* self, QTimerEvent* event);
QTLIBC_API void QFrame_OnTimerEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseTimerEvent(QFrame* self, QTimerEvent* event);
QTLIBC_API void QFrame_ChildEvent(QFrame* self, QChildEvent* event);
QTLIBC_API void QFrame_OnChildEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseChildEvent(QFrame* self, QChildEvent* event);
QTLIBC_API void QFrame_CustomEvent(QFrame* self, QEvent* event);
QTLIBC_API void QFrame_OnCustomEvent(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseCustomEvent(QFrame* self, QEvent* event);
QTLIBC_API void QFrame_ConnectNotify(QFrame* self, QMetaMethod* signal);
QTLIBC_API void QFrame_OnConnectNotify(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseConnectNotify(QFrame* self, QMetaMethod* signal);
QTLIBC_API void QFrame_DisconnectNotify(QFrame* self, QMetaMethod* signal);
QTLIBC_API void QFrame_OnDisconnectNotify(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseDisconnectNotify(QFrame* self, QMetaMethod* signal);
QTLIBC_API int QFrame_Metric(const QFrame* self, int param1);
QTLIBC_API void QFrame_OnMetric(const QFrame* self, intptr_t slot);
QTLIBC_API int QFrame_QBaseMetric(const QFrame* self, int param1);
QTLIBC_API void QFrame_InitPainter(const QFrame* self, QPainter* painter);
QTLIBC_API void QFrame_OnInitPainter(const QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseInitPainter(const QFrame* self, QPainter* painter);
QTLIBC_API QPaintDevice* QFrame_Redirected(const QFrame* self, QPoint* offset);
QTLIBC_API void QFrame_OnRedirected(const QFrame* self, intptr_t slot);
QTLIBC_API QPaintDevice* QFrame_QBaseRedirected(const QFrame* self, QPoint* offset);
QTLIBC_API QPainter* QFrame_SharedPainter(const QFrame* self);
QTLIBC_API void QFrame_OnSharedPainter(const QFrame* self, intptr_t slot);
QTLIBC_API QPainter* QFrame_QBaseSharedPainter(const QFrame* self);
QTLIBC_API void QFrame_DrawFrame(QFrame* self, QPainter* param1);
QTLIBC_API void QFrame_OnDrawFrame(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseDrawFrame(QFrame* self, QPainter* param1);
QTLIBC_API void QFrame_UpdateMicroFocus(QFrame* self);
QTLIBC_API void QFrame_OnUpdateMicroFocus(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseUpdateMicroFocus(QFrame* self);
QTLIBC_API void QFrame_Create(QFrame* self);
QTLIBC_API void QFrame_OnCreate(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseCreate(QFrame* self);
QTLIBC_API void QFrame_Destroy(QFrame* self);
QTLIBC_API void QFrame_OnDestroy(QFrame* self, intptr_t slot);
QTLIBC_API void QFrame_QBaseDestroy(QFrame* self);
QTLIBC_API bool QFrame_FocusNextChild(QFrame* self);
QTLIBC_API void QFrame_OnFocusNextChild(QFrame* self, intptr_t slot);
QTLIBC_API bool QFrame_QBaseFocusNextChild(QFrame* self);
QTLIBC_API bool QFrame_FocusPreviousChild(QFrame* self);
QTLIBC_API void QFrame_OnFocusPreviousChild(QFrame* self, intptr_t slot);
QTLIBC_API bool QFrame_QBaseFocusPreviousChild(QFrame* self);
QTLIBC_API QObject* QFrame_Sender(const QFrame* self);
QTLIBC_API void QFrame_OnSender(const QFrame* self, intptr_t slot);
QTLIBC_API QObject* QFrame_QBaseSender(const QFrame* self);
QTLIBC_API int QFrame_SenderSignalIndex(const QFrame* self);
QTLIBC_API void QFrame_OnSenderSignalIndex(const QFrame* self, intptr_t slot);
QTLIBC_API int QFrame_QBaseSenderSignalIndex(const QFrame* self);
QTLIBC_API int QFrame_Receivers(const QFrame* self, const char* signal);
QTLIBC_API void QFrame_OnReceivers(const QFrame* self, intptr_t slot);
QTLIBC_API int QFrame_QBaseReceivers(const QFrame* self, const char* signal);
QTLIBC_API bool QFrame_IsSignalConnected(const QFrame* self, QMetaMethod* signal);
QTLIBC_API void QFrame_OnIsSignalConnected(const QFrame* self, intptr_t slot);
QTLIBC_API bool QFrame_QBaseIsSignalConnected(const QFrame* self, QMetaMethod* signal);
QTLIBC_API void QFrame_Delete(QFrame* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
